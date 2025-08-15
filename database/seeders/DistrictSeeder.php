<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use App\Models\District;
use App\Models\Division;

class DistrictSeeder extends Seeder
{
    public function run()
    {
        $districts = [
            'Dhaka'=>['Gazipur','Narsingdi','Tangail'],
            'Chattogram'=>['Comilla','Feni','Cox’s Bazar'],
            'Khulna'=>['Jessore','Satkhira','Bagerhat'],
            'Barishal'=>['Barishal Sadar','Patuakhali','Bhola'],
            'Sylhet'=>['Sylhet Sadar','Moulvibazar','Habiganj']
        ];

        foreach($districts as $div => $dists){
            $division_id = Division::where('name',$div)->first()->id;
            foreach($dists as $dist){
                District::create(['name'=>$dist,'division_id'=>$division_id]);
            }
        }
    }
}
