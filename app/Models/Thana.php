<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Thana extends Model
{
    protected $fillable = ['name', 'district_id'];

    // Thana belongs to ekta district
    public function district()
    {
        return $this->belongsTo(District::class);
    }

    // Thana er under e thaka users
    public function users()
    {
        return $this->hasMany(User::class);
    }
}
