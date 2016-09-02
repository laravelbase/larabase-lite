<?php
namespace Larabase\OauthProviders;

use Laravel\Socialite\Contracts\Provider as ProviderInterface;
use Laravel\Socialite\Two\User;

class QQProvider extends AbstractProvider implements ProviderInterface
{


    private $openId;


    protected function getAuthUrl($state)
    {
        return $this->buildAuthUrlFromBase('https://graph.qq.com/oauth2.0/authorize', $state);
    }

    /**
     * {@inheritdoc}
     */
    protected function getTokenUrl()
    {
        return 'https://graph.qq.com/oauth2.0/token';
    }

    /**
     * {@inheritdoc}
     */
    protected function getUserByToken($token)
    {

        $this->openId = $this->getOpenId($token);
        $userUrl = 'https://graph.qq.com/user/get_user_info?access_token=' . $token . '&oauth_consumer_key=' . $this->clientId . '&openid=' . $this->openId;
        $response = $this->getHttpClient()->get($userUrl);
        $user = json_decode($response->getBody(), true);
        return $user;
    }


    protected function mapUserToObject(array $user)
    {
        return (new User)->setRaw($user)->map([
            'id' => $this->openId, 'nickname' => $user['nickname'], 'name' => '',
            'email' => '', 'avatar' => $user['figureurl_qq_2'] ?: $user['figureurl_qq_1'],
        ]);
    }

    /**
     * Get the default options for an HTTP request.
     *
     * @return array
     */
    protected function getTokenFields($code)
    {
        $fields = parent::getTokenFields($code);
        $fields['grant_type'] = 'authorization_code';
        return $fields;
    }

    protected function getOpenId($token)
    {

        $openIdUrl = "https://graph.qq.com/oauth2.0/me?access_token=" . $token;
        $response = $this->getHttpClient()->get($openIdUrl);
        $body = $response->getBody();
        $start = strpos($body, '(');
        $length = strrpos($body, ')');
        $body = trim(substr($body, $start + 1, $length - $start - 1));
        return json_decode($body, true)['openid'];
    }

    protected function parseAccessToken($body)
    {
        parse_str($body, $temp);
        return $temp['access_token'];
    }

}