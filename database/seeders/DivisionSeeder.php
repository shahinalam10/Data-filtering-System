<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use App\Models\Division;

class DivisionSeeder extends Seeder
{
    public function run()
    {
        $divisions = ['Dhaka','Chattogram','Khulna','Barishal','Sylhet'];
        foreach($divisions as $div){
            Division::create(['name'=>$div]);
        }
    }
}