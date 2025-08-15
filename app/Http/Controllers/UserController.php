<?php

namespace App\Http\Controllers;

use App\Models\User;
use App\Models\Division;
use App\Models\District;
use App\Models\Thana;
use Illuminate\Http\Request;

class UserController extends Controller
{
    public function index(Request $request)
{
   
    $query = User::query();

    // Name filter
    if($request->filled('name')){
        $query->where('name','like','%'.$request->name.'%');
    }

    // Age range filter
    if($request->filled('start_age') && $request->filled('end_age')){
        $query->whereBetween('age', [$request->start_age, $request->end_age]);
    } elseif($request->filled('start_age')){
        $query->where('age', '>=', $request->start_age);
    } elseif($request->filled('end_age')){
        $query->where('age', '<=', $request->end_age);
    }

    // Division filter
    if($request->filled('division_id')){
        $query->where('division_id',$request->division_id);
    }

    // District filter
    if($request->filled('district_id')){
        $query->where('district_id',$request->district_id);
    }

    // Thana filter
    if($request->filled('thana_id')){
        $query->where('thana_id',$request->thana_id);
    }

   
    // Pagination 10 per page
    $users = $query->paginate(10)->withQueryString();

    // Always get all divisions
    $divisions = Division::all();

    // Districts: if division selected → filter, else → all
    $districts = District::when($request->division_id, function($qdata) use ($request){
        return $qdata->where('division_id', $request->division_id);
    }, function($qdata){
        return $qdata->getQuery(); // no filter, return all
    })->get();

    // Thanas: if district selected → filter, else → all
    $thanas = Thana::when($request->district_id, function($qdata) use ($request){
        return $qdata->where('district_id', $request->district_id);
    }, function($qdata){
        return $qdata->getQuery(); // no filter, return all
    })->get();

    return view('users.index', compact('users','divisions','districts','thanas'));

    }
        public function getDistricts($division_id)
        {
            $districts = \App\Models\District::where('division_id', $division_id)->get();
            return response()->json($districts);
        }

        public function getThanas($district_id)
        {
            $thanas = \App\Models\Thana::where('district_id', $district_id)->get();
            return response()->json($thanas);
        }
    
}
