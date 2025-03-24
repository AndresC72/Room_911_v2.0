<?php
use Illuminate\Auth\Events\Authenticated;
use App\Models\UserLogin;
use Illuminate\Support\Facades\Event;
use Illuminate\Foundation\Support\Providers\EventServiceProvider as ServiceProvider;
use App\Listeners\LogLoginAttempt;
use Illuminate\Auth\Events\Login;
use Illuminate\Auth\Events\Failed;

class EventServiceProvider extends ServiceProvider
{
    public function boot(): void
    {
        Event::listen(Authenticated::class, function ($event) {
            UserLogin::create([
                'user_id' => $event->user->id,
                'login_at' => now(),
            ]);
        });
    }

    protected $listen = [
        \Illuminate\Auth\Events\Login::class => [
            \App\Listeners\LogSuccessfulLogin::class,
        ],
        Login::class => [
            [LogLoginAttempt::class, 'handleLogin'],
        ],
        Failed::class => [
            [LogLoginAttempt::class, 'handleFailed'],
        ],
    ];

    

    
}
