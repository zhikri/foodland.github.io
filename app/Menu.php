<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Menu extends Model
{
    public function products()
    {
        return $this->hasMany(Product::class,'menu_id', 'id');
    }
}
