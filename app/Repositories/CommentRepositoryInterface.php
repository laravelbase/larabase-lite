<?php
namespace App\Repositories;


Interface CommentRepositoryInterface{

    public function model();

    public function getCommentWithUser($comment);

    public function getCommentChildren($id);

    public function getCommentChildrenCount($id);

}