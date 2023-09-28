<?php

namespace Database\Seeders;

use App\Models\User;
use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\Hash;

class UsersTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $this->createRootUser();
        $this->createAdminUser();
        $this->createVisitorUser();
    }

    private function createRootUser()
    {
        $rootUser = User::factory()->create([
            'first_name' => 'Root',
            'email' => 'root@example.com',
            'password' => Hash::make('secret'),
            'mobile' => '01234567890',
            'is_active' => true,
        ]);
        $permissions = config('acl.permissions');

        foreach ($permissions as $permission => $value) {
            if(in_array('root',  $value)){
                $rootUser->givePermissionTo($permission);
            }
        }
        $rootUser->assignRole('root');
    }

    private function createAdminUser()
    {
        $adminUser = User::factory()->create([
            'first_name' => 'Admin',
            'email' => 'admin@example.com',
            'password' => Hash::make('secret'),
            'mobile' => '01234567891',
        ]);

        $permissions = config('acl.permissions');
        foreach ($permissions as  $permission => $value) {
            if(in_array('admin',  $value)){
                $adminUser->givePermissionTo($permission);
            }
        }

        $adminUser->assignRole('admin');
    }

    private function createVisitorUser()
    {
        $visitorUser = User::factory()->create([
            'first_name' => 'Visitor',
            'email' => 'visitor@example.com',
            'password' => Hash::make('secret'),
            'mobile' => '01000000000',
        ]);

        $visitorUser->assignRole('visitor');
    }
}
