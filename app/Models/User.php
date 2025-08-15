<?php

namespace App\Models;

// use Illuminate\Contracts\Auth\MustVerifyEmail;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Foundation\Auth\User as Authenticatable;
use Illuminate\Notifications\Notifiable;

class User extends Authenticatable
{
    /** @use HasFactory<\Database\Factories\UserFactory> */
    use HasFactory, Notifiable;

    /**
     * The attributes that are mass assignable.
     *
     * @var list<string>
     */
      protected $fillable = [
        'name', 'email', 'password', 'age', 'division_id', 'district_id', 'thana_id'
    ];

    // User belongs to ekta division
    public function division()
    {
        return $this->belongsTo(Division::class);
    }

    // User belongs to ekta district
    public function district()
    {
        return $this->belongsTo(District::class);
    }

    // User belongs to ekta thana
    public function thana()
    {
        return $this->belongsTo(Thana::class);
    }

    /**
     * The attributes that should be hidden for serialization.
     *
     * @var list<string>
     */
    protected $hidden = [
        'password',
        'remember_token',
    ];

    /**
     * Get the attributes that should be cast.
     *
     * @return array<string, string>
     */
    protected function casts(): array
    {
        return [
            'email_verified_at' => 'datetime',
            'password' => 'hashed',
        ];
    }
}
