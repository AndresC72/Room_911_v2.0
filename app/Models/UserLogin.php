<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class UserLogin extends Model
{
    use HasFactory;

    protected $fillable = ['user_id', 'email', 'login_at', 'successful', 'ip_address', 'user_agent'];

    public function user()
    {
        return $this->belongsTo(User::class);
    }
}
