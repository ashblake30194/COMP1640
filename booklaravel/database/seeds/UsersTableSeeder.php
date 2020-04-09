<?php

use Illuminate\Database\Seeder;
use App\User;
use App\Role;

class UsersTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        User::truncate();
        DB::table('role_user')->truncate();
        $adminRole =Role::where('name', 'admin')->first();
        $staffRole =Role::where('name', 'staff')->first();
        $admin = User::create([
            'name' => 'admin',
            'email'=> 'admin@gmail.com',
            'password' => Hash::make('admin')
            ]);
        $admin->roles()->attach($adminRole);
    }
}
