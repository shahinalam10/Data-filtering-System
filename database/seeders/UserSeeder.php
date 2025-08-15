<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use App\Models\User;
use App\Models\Division;
use App\Models\District;
use App\Models\Thana;

class UserSeeder extends Seeder
{
    public function run()
    {
        $users = [
            ['name'=>'Shahu Ahmed','age'=>25,'division'=>'Dhaka','district'=>'Gazipur','thana'=>'Kaliakoir'],
            ['name'=>'Rakib Hasan','age'=>30,'division'=>'Dhaka','district'=>'Narsingdi','thana'=>'Belabo'],
            ['name'=>'Nayeem Khan','age'=>28,'division'=>'Dhaka','district'=>'Gazipur','thana'=>'Sreepur'],
            ['name'=>'Mahin Uddin','age'=>22,'division'=>'Chattogram','district'=>'Comilla','thana'=>'Sadar'],
            ['name'=>'Saiful Islam','age'=>35,'division'=>'Chattogram','district'=>'Feni','thana'=>'Chhagalnaiya'],
            ['name'=>'Rifat Hossain','age'=>27,'division'=>'Chattogram','district'=>'Comilla','thana'=>'Daudkandi'],
            ['name'=>'Arifur Rahman','age'=>26,'division'=>'Khulna','district'=>'Jessore','thana'=>'Kotwali'],
            ['name'=>'Tanvir Alam','age'=>33,'division'=>'Khulna','district'=>'Satkhira','thana'=>'Tala'],
            ['name'=>'Farhana Akter','age'=>24,'division'=>'Khulna','district'=>'Jessore','thana'=>'Monirampur'],
            ['name'=>'Jannat Jahan','age'=>29,'division'=>'Khulna','district'=>'Satkhira','thana'=>'Debhata'],
            ['name'=>'Rina Sultana','age'=>31,'division'=>'Barishal','district'=>'Barishal Sadar','thana'=>'Barishal Town'],
            ['name'=>'Mizanur Rahman','age'=>23,'division'=>'Barishal','district'=>'Patuakhali','thana'=>'Dumki'],
            ['name'=>'Tasnim Ahmed','age'=>34,'division'=>'Barishal','district'=>'Bhola','thana'=>'Sadar'],
            ['name'=>'Fahim Khan','age'=>28,'division'=>'Sylhet','district'=>'Sylhet Sadar','thana'=>'Zindabazar'],
            ['name'=>'Nusrat Jahan','age'=>26,'division'=>'Sylhet','district'=>'Moulvibazar','thana'=>'Rajnagar'],
            ['name'=>'Sabbir Hossain','age'=>32,'division'=>'Sylhet','district'=>'Habiganj','thana'=>'Bahubal'],
            ['name'=>'Arman Rahman','age'=>27,'division'=>'Dhaka','district'=>'Tangail','thana'=>'Mirzapur'],
            ['name'=>'Rokeya Begum','age'=>24,'division'=>'Dhaka','district'=>'Tangail','thana'=>'Gopalpur'],
            ['name'=>'Hasan Ali','age'=>29,'division'=>'Chattogram','district'=>'Cox’s Bazar','thana'=>'Ukhia'],
            ['name'=>'Nabila Khan','age'=>25,'division'=>'Chattogram','district'=>'Cox’s Bazar','thana'=>'Chakaria'],
        ];

        foreach($users as $u){
            $division_id = Division::where('name',$u['division'])->first()->id;
            $district_id = District::where('name',$u['district'])->first()->id;
            $thana_id = Thana::where('name',$u['thana'])->first()->id;

            User::create([
                'name'=>$u['name'],
                'email'=>strtolower(str_replace(' ','',$u['name'])).'@test.com',
                'password'=>bcrypt('123456'),
                'age'=>$u['age'],
                'division_id'=>$division_id,
                'district_id'=>$district_id,
                'thana_id'=>$thana_id
            ]);
        }
    }
}
