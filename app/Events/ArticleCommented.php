<?php

namespace App\Events;

use App\Events\Event;
use Illuminate\Queue\SerializesModels;
use Illuminate\Contracts\Broadcasting\ShouldBroadcast;

class ArticleCommented extends Event
{
    use SerializesModels;

    public $post;
    public $comment_author;
    public $comment;

    public function __construct($post,$comment_author,$comment)
    {
        $this->post=$post;
        $this->comment_author =$comment_author;
        $this->comment = $comment;
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
