<?php
namespace App\Listeners;

use Illuminate\Auth\Events\Login;
use Illuminate\Support\Facades\DB;
use Illuminate\Auth\Events\Failed;
use App\Models\UserLogin;

class LogSuccessfulLogin
{
    /**
     * Handle the event.
     */
    public function handle(Login $event): void
    {
        DB::table('user_logins')->insert([
            'user_id' => $event->user->id,
            'login_at' => now(),
        ]);
    }
}

class LogLoginAttempt
{
    /**
     * Manejar intentos exitosos de inicio de sesión.
     */
    public function handleLogin(Login $event): void
    {
        UserLogin::create([
            'user_id' => $event->user->id,
            'email' => $event->user->email,
            'login_at' => now(),
            'successful' => true,
            'ip_address' => request()->ip(),
            'user_agent' => request()->header('User-Agent'),
        ]);
    }

    /**
     * Manejar intentos fallidos de inicio de sesión.
     */
    public function handleFailed(Failed $event): void
    {
        UserLogin::create([
            'user_id' => null, // No hay usuario asociado en intentos fallidos
            'email' => $event->credentials['email'] ?? null,
            'login_at' => now(),
            'successful' => false,
            'ip_address' => request()->ip(),
            'user_agent' => request()->header('User-Agent'),
        ]);
    }
}