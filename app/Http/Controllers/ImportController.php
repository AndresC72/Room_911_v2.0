<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

use App\Imports\UsersImport;
use Maatwebsite\Excel\Facades\Excel as Exel;


class ImportController extends Controller
{
    public function importCSV(Request $request)
    {
        $request->validate([
            'file' => 'required|mimes:csv,txt'
        ]);


        // Store the file in the public directory with the same name as the original file
        $fileName = $request->file('file')->getClientOriginalName();
        $request->file('file')->move(public_path(), $fileName);
        
        // Import the file
        Exel::import(new UsersImport, 'users.csv');

        return back();
    }
}
