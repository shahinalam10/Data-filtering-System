<?php
namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Division extends Model
{
    protected $fillable = ['name'];

    // Division er multiple districts thakte pare
    public function districts()
    {
        return $this->hasMany(District::class);
    }

    // Division er under e thaka users
    public function users()
    {
        return $this->hasMany(User::class);
    }
}
