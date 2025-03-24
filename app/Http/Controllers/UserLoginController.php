<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\UserLogin; // Asegúrate de que este modelo exista

class UserLoginController extends Controller
{
    public function index(Request $request)
    {
        // Obtén los parámetros de fecha del formulario
        $startDate = $request->input('start_date');
        $endDate = $request->input('end_date');

        // Construye la consulta
        $query = UserLogin::query();

        if ($startDate) {
            $query->whereDate('login_at', '>=', $startDate);
        }

        if ($endDate) {
            $query->whereDate('login_at', '<=', $endDate);
        }

        // Obtén los resultados paginados
        $logins = $query->with('user')->paginate(10);

        // Retorna la vista con los datos
        return view('user_logins.index', compact('logins'));
    }
}

