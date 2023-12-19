<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Todo extends Model
{
    use HasFactory;
    protected $fillable =['name','images','tags','published'] ;
    protected $casts =['tags'=>'array', 'images'=>'array'] ;
}
