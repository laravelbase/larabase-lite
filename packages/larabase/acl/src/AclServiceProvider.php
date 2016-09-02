<?php
namespace Larabase\ACL;

use Illuminate\Auth\Access\Gate;
use Illuminate\Contracts\Auth\Access\Gate as GateContract;
use Illuminate\Foundation\AliasLoader;
use Illuminate\Routing\Router;
use Illuminate\Support\Facades\Schema;
use Illuminate\Support\ServiceProvider;
use Larabase\ACL\Models\Permission;


class AclServiceProvider extends ServiceProvider
{

    protected $namespace;
    protected $baseDir;

    public function register()
    {
    }

    public function boot(Router $router, GateContract $gate)
    {
        $this->baseDir = __DIR__.'/../';

        $this->namespace = 'Larabase\ACL';

        $this->loadRoutes($router);
        $this->loadViewsFrom($this->baseDir.'views', 'ACL');

        $this->publishes([
            "{$this->baseDir}migrations/" => base_path('database/migrations')
        ], 'migrations');

        // Dynamically register permissions with Laravel's Gate.
        /*if(Schema::hasTable('permissions')){
            foreach ($this->getPermissions() as $permission) {
                $gate->define($permission->name, function ($user) use ($permission) {
                    return $user->hasPermission($permission);
                });
            }
        }*/

    }

    protected function getPermissions()
    {
        return Permission::with('roles')->get();
    }

    protected function loadRoutes(Router $router)
    {
        $dir = $this->baseDir;
        $router->group([
            'namespace' => $this->namespace.'\Http',
            'prefix'=>'acl',
            'middleware'=>'web'
        ], function ($r) use ($dir) {
            require "{$dir}routes.php";
        });
    }

    public function registerMiddleware(Router $router)
    {
       // $router->middleware('forum.api.auth', APIAuth::class);
    }
}
