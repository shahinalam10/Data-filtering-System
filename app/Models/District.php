<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class District extends Model
{
    protected $fillable = ['name', 'division_id'];

    // District belongs to ekta division
    public function division()
    {
        return $this->belongsTo(Division::class);
    }

    // District er multiple thanas thakte pare
    public function thanas()
    {
        return $this->hasMany(Thana::class);
    }

    // District er under e thaka users
    public function users()
    {
        return $this->hasMany(User::class);
    }
}
