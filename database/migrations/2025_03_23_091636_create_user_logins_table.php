<?php
use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    public function up(): void
    {
        Schema::create('user_logins', function (Blueprint $table) {
            $table->id();
            $table->foreignId('user_id')->constrained()->onDelete('cascade');
            $table->timestamp('login_at');
            $table->string('ip_address')->nullable();
            // Nuevas columnas
            $table->boolean('successful')->default(false)->after('login_at'); // Indica si el intento fue exitoso
            $table->string('email')->nullable()->after('user_id'); // Email usado en el intento
            $table->timestamps(); 
        });
    }

    public function down(): void
    {
        Schema::dropIfExists('user_logins');

        Schema::table('user_logins', function (Blueprint $table) {
            $table->dropColumn(['successful', 'email']);
        });
    }
};