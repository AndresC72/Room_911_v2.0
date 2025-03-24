<?php
    
namespace App\Http\Controllers;
    
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Models\User;
use Spatie\Permission\Models\Role;
use DB;
use Hash;
use Illuminate\Support\Arr;
use Illuminate\View\View;
use Illuminate\Http\RedirectResponse;
//
use App\Models\UserLogin; // Asegúrate de tener este modelo
//
use Barryvdh\DomPDF\Facade\Pdf;



    
class UserController extends Controller
{

    public function downloadLoginsPdf(Request $request, $id)
    {
        // Obtén el usuario
        $user = User::findOrFail($id);

        // Obtén los parámetros de filtro
        $startDate = $request->input('start_date');
        $endDate = $request->input('end_date');

        // Construye la consulta para los logins
        $query = UserLogin::where('user_id', $id);

        if ($startDate) {
            $query->whereDate('login_at', '>=', $startDate);
        }

        if ($endDate) {
            $query->whereDate('login_at', '<=', $endDate);
        }

        $logins = $query->orderBy('login_at', 'desc')->get();

        // Genera el PDF
        $pdf = Pdf::loadView('users.logins_pdf', compact('user', 'logins', 'startDate', 'endDate'));

        // Descarga el PDF
        return $pdf->download('login_history_' . $user->name . '.pdf');
    }

    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index(Request $request)
    {
        // Obtén los parámetros de búsqueda
        $searchId = $request->input('id');
        $searchName = $request->input('name');
        $searchEmail = $request->input('email');
        $searchRole = $request->input('role');

        // Construye la consulta
        $query = User::query();

        if ($searchId) {
            $query->where('id', $searchId);
        }

        if ($searchName) {
            $query->where('name', 'like', '%' . $searchName . '%');
        }

        if ($searchEmail) {
            $query->where('email', 'like', '%' . $searchEmail . '%');
        }

        if ($searchRole) {
            $query->whereHas('roles', function ($q) use ($searchRole) {
                $q->where('name', $searchRole);
            });
        }

        // Obtén los resultados paginados
        $data = $query->latest()->paginate(5);

        // Obtén todos los roles para el filtro
        $roles = Role::pluck('name', 'name');

        // Retorna la vista con los datos
        return view('users.index', compact('data', 'roles', 'searchId', 'searchName', 'searchEmail', 'searchRole'))
            ->with('i', ($request->input('page', 1) - 1) * 5);
    }

    public function show(Request $request, $id)
{
    // Obtén el usuario por ID
    $user = User::findOrFail($id);

    // Obtén los parámetros de filtro de fecha
    $startDate = $request->input('start_date');
    $endDate = $request->input('end_date');

    // Construye la consulta para el historial de inicio de sesión
    $query = UserLogin::where('user_id', $id);

    if ($startDate) {
        $query->whereDate('login_at', '>=', $startDate);
    }

    if ($endDate) {
        $query->whereDate('login_at', '<=', $endDate);
    }

    // Obtén los resultados ordenados
    $logins = $query->orderBy('login_at', 'desc')->get();

    // Retorna la vista con el usuario y su historial filtrado
    return view('users.show', compact('user', 'logins', 'startDate', 'endDate'));
}
    
    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create(): View
    {
        $roles = Role::pluck('name','name')->all();
        return view('users.create',compact('roles'));
    }
    
    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request): RedirectResponse
    {
        $this->validate($request, [
            'name' => 'required',
            'email' => 'required|email|unique:users,email',
            'password' => 'required|same:confirm-password',
            'roles' => 'required'
        ]);
    
        $input = $request->all();
        $input['password'] = Hash::make($input['password']);
    
        $user = User::create($input);
        $user->assignRole($request->input('roles'));
    
        return redirect()->route('users.index')
                        ->with('success','Employee created successfully');
    }
    
    
    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id): View
    {
        $user = User::find($id);
        $roles = Role::pluck('name','name')->all();
        $userRole = $user->roles->pluck('name','name')->all();
    
        return view('users.edit',compact('user','roles','userRole'));
    }
    
    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id): RedirectResponse
    {
        $this->validate($request, [
            'name' => 'required',
            'email' => 'required|email|unique:users,email,'.$id,
            'password' => 'same:confirm-password',
            'roles' => 'required'
        ]);
    
        $input = $request->all();
        if(!empty($input['password'])){ 
            $input['password'] = Hash::make($input['password']);
        }else{
            $input = Arr::except($input,array('password'));    
        }
    
        $user = User::find($id);
        $user->update($input);
        DB::table('model_has_roles')->where('model_id',$id)->delete();
    
        $user->assignRole($request->input('roles'));
    
        return redirect()->route('users.index')
                        ->with('success','Employee updated successfully');
    }
    
    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id): RedirectResponse
    {
        User::find($id)->delete();
        return redirect()->route('users.index')
                        ->with('success','Employee deleted successfully');
    }

    public function disableUser($id) {
        $user = User::findOrFail($id);
        $user->syncRoles(['Disable']); // Chance the role to "Disable"
        return redirect()->route('users.index')->with('success', 'Employee disable successfully');
    }


   
    
}