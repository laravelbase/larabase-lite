<?php

namespace App\Events;

use App\Events\Event;
use Illuminate\Queue\SerializesModels;
use Illuminate\Contracts\Broadcasting\ShouldBroadcast;

class CommentReplied extends Event
{
    use SerializesModels;

    public $post;
    public $parent_comment;
    public $reply;

    public function __construct($post,$parent_comment,$reply)
    {
        $this->post = $post;
        $this->parent_comment = $parent_comment;
        $this->reply = $reply;
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
