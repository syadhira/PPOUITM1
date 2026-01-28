<?php
declare(strict_types=1);

namespace App\Test\Fixture;

use Cake\TestSuite\Fixture\TestFixture;

/**
 * ApplicationsFixture
 */
class ApplicationsFixture extends TestFixture
{
    /**
     * Init method
     *
     * @return void
     */
    public function init(): void
    {
        $this->records = [
            [
                'id' => 1,
                'user_id' => 1,
                'faculty_id' => 1,
                'program_id' => 1,
                'appointment_id' => 1,
                'branch_id' => 1,
                'application_date' => '2026-01-26',
                'phone' => 'Lorem ipsum d',
                'nric' => 'Lorem ipsu',
                'matrix' => 'Lorem ip',
                'pic_name' => 'Lorem ipsum dolor sit amet',
                'pic_email' => 'Lorem ipsum dolor sit amet',
                'company_name' => 'Lorem ipsum dolor sit amet',
                'company_street1' => 'Lorem ipsum dolor sit amet',
                'company_street2' => 'Lorem ipsum dolor sit amet',
                'company_postcode' => 'Lorem ip',
                'company_city' => 'Lorem ipsum dolor sit amet',
                'company_state' => 'Lorem ipsum dolor sit amet',
                'start_date' => '2026-01-26',
                'end_date' => '2026-01-26',
                'cv' => 'Lorem ipsum dolor sit amet',
                'cv_dir' => 'Lorem ipsum dolor sit amet',
                'status' => 1,
                'approval_name' => 'Lorem ipsum dolor sit amet',
                'approval_post' => 'Lorem ipsum dolor sit a',
                'approval_satus' => 1,
                'ref_no' => 'Lorem ipsum dolor sit amet',
                'created' => '2026-01-26 15:40:42',
                'modified' => '2026-01-26 15:40:42',
            ],
        ];
        parent::init();
    }
}
