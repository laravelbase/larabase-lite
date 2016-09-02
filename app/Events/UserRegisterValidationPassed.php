<?php

namespace App\Events;

use App\Events\Event;
use Illuminate\Http\Request;
use Illuminate\Queue\SerializesModels;
use Illuminate\Contracts\Broadcasting\ShouldBroadcast;

class UserRegisterValidationPassed extends Event
{
    use SerializesModels;

    public $request;
    public function __construct($request)
    {
        $this->request = $request;
    }

    /**
     * Get the channels the event should be broadcast on.
     *
     * @return array
     */
    public function broadcastOn()
    {
        return [];
    }
}
