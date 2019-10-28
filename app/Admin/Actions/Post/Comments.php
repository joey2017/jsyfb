<?php

namespace App\Admin\Actions\Post;

use Encore\Admin\Actions\RowAction;

class Comments extends RowAction
{
    public $name = '点评';

    public function href()
    {
        //return $this->getResource().'/'.$this->getKey();
        return url('admin/articles/addcomments/'.$this->getKey());
    }

}