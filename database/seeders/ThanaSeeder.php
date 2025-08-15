<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use App\Models\Thana;
use App\Models\District;

class ThanaSeeder extends Seeder
{
    public function run()
    {
        $thanas = [
            'Gazipur'=>['Kaliakoir','Sreepur'],
            'Narsingdi'=>['Belabo','Raipura'],
            'Tangail'=>['Mirzapur','Gopalpur'],
            'Comilla'=>['Sadar','Daudkandi'],
            'Feni'=>['Parshuram','Chhagalnaiya'],
            'Cox’s Bazar'=>['Chakaria','Ukhia'],
            'Jessore'=>['Kotwali','Monirampur'],
            'Satkhira'=>['Tala','Debhata'],
            'Bagerhat'=>['Mongla','Fakirhat'],
            'Barishal Sadar'=>['Barishal Town','Bakerganj'],
            'Patuakhali'=>['Dumki','Galachipa'],
            'Bhola'=>['Sadar','Charfesson'],
            'Sylhet Sadar'=>['Ambarkhana','Zindabazar'],
            'Moulvibazar'=>['Sadar','Rajnagar'],
            'Habiganj'=>['Sadar','Bahubal']
        ];

        foreach($thanas as $dist => $thanasArr){
            $district_id = District::where('name',$dist)->first()->id;
            foreach($thanasArr as $thana){
                Thana::create(['name'=>$thana,'district_id'=>$district_id]);
            }
        }
    }
}
