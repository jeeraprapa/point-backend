<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;

class RewardSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $rewards = [
            [
                'id' => 1,
                'title' => 'McDonald\'s',
                'description' => 'ใช้ 65 คะแนนแลกซื้อ ไก่ทอดแมค 2 ชิ้น (รสดั้งเดิม หรือ สไปซี่) + เฟรนช์ฟรายส์ + Coke (M) 16oz. เพียง 89.- (ปกติ 208-275.-)',
                'points' => 65,
                'image' => 'https://privilege.ais.co.th/PrivImages/cloud_display-webapp_1735395627959.jpg',
                'start_date' => '2025-01-01',
                'expiry_date' => '2025-12-31',
            ],
            [
                'id' => 2,
                'title' => 'ไก่บอนชอน',
                'description' => 'ใช้ 110 คะแนน แลกส่วนลด 100.- ทุกเมนู',
                'points' => 110,
                'image' => 'https://privilege.ais.co.th/PrivImages/cloud_display-webapp_1738315271834.jpg',
                'start_date' => '2025-02-01',
                'expiry_date' => '2025-06-30',
            ],
            [
                'id' => 3,
                'title' => 'Sizzler',
                'description' => 'ใช้ 110 คะแนน แลกส่วนลด 100.- สำหรับเมนูที่ร่วมรายการ + สลัดบาร์ไม่อั้น',
                'points' => 110,
                'image' => 'https://privilege.ais.co.th/PrivImages/cloud_display-webapp_1735724667971.jpg',
                'start_date' => '2025-01-01',
                'expiry_date' => '2025-12-31',
            ],
            [
                'id' => 4,
                'title' => 'Potato Corner',
                'description' => 'ใช้ 30 คะแนน แลกรับส่วนลด 30.- ทุกเมนู (ราคาปกติ)',
                'points' => 30,
                'image' => 'https://privilege.ais.co.th/PrivImages/cloud_display-webapp_1736762695743.jpg',
                'start_date' => '2025-01-15',
                'expiry_date' => '2025-06-30',
            ],
            [
                'id' => 5,
                'title' => 'นิตยาไก่ย่าง',
                'description' => 'ใช้ 55 คะแนน แลกรับส่วนลด 50.- เมื่อทานครบ 300.-',
                'points' => 55,
                'image' => 'https://privilege.ais.co.th/PrivImages/cloud_display-webapp_1738311907229.jpg',
                'start_date' => '2025-02-01',
                'expiry_date' => '2025-04-30',
            ],
            [
                'id' => 6,
                'title' => 'KFC',
                'description' => 'ใช้ 1 คะแนน แลกซื้อชุดซิงเกอร์เบอร์เกอร์ 1 ชิ้น + ชิคเก้นป๊อป 7 ชิ้น เพียง 99.- (ปกติ 108.-)',
                'points' => 1,
                'image' => 'https://privilege.ais.co.th/PrivImages/cloud_display-webapp_1718190408462.jpg',
                'start_date' => '2024-07-01',
                'expiry_date' => '2025-03-31',
            ],
            [
                'id' => 7,
                'title' => 'Katsuya',
                'description' => 'ใช้ 1 คะแนน แลกซื้อเมนูที่ร่วมรายการในราคาพิเศษ',
                'points' => 1,
                'image' => 'https://privilege.ais.co.th/PrivImages/cloud_display-webapp_1735214160376.jpg',
                'start_date' => '2025-01-01',
                'expiry_date' => '2025-06-30',
            ],
            [
                'id' => 8,
                'title' => 'The Pizza Company',
                'description' => 'ใช้ 55 คะแนน แลกรับส่วนลด 50.- เมื่อสั่งเมนูจานเดี่ยว (A La Carte) ครบ 350 บาท',
                'points' => 55,
                'image' => 'https://privilege.ais.co.th/PrivImages/cloud_display-webapp_1738304644848.jpg',
                'start_date' => '2025-02-01',
                'expiry_date' => '2025-06-30',
            ],
            [
                'id' => 9,
                'title' => 'Pepper Lunch',
                'description' => 'ใช้ 1 คะแนนแลกซื้อเมนูในราคาพิเศษ',
                'points' => 1,
                'image' => 'https://privilege.ais.co.th/PrivImages/cloud_display-webapp_1735394455692.jpg',
                'start_date' => '2025-01-01',
                'expiry_date' => '2025-06-30',
            ],
            [
                'id' => 10,
                'title' => 'ZEN Restaurant',
                'description' => 'ใช้ 110 คะแนน แลกรับส่วนลด 100 บาท เมื่อทานครบ 500 บาทขึ้นไป/ใบเสร็จ',
                'points' => 110,
                'image' => 'https://privilege.ais.co.th/PrivImages/cloud_display-webapp_1735396793305.jpg',
                'start_date' => '2025-01-01',
                'expiry_date' => '2025-12-31',
            ],
        ];

        \DB::table('rewards')->insert($rewards);
    }
}
