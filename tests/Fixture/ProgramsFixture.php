<?php
declare(strict_types=1);

namespace App\Test\Fixture;

use Cake\TestSuite\Fixture\TestFixture;

/**
 * ProgramsFixture
 */
class ProgramsFixture extends TestFixture
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
                'faculty_id' => 1,
                'code' => 'Lorem ip',
                'name' => 'Lorem ipsum dolor sit amet',
                'status' => 1,
                'created' => '2026-01-26 15:37:49',
                'modified' => '2026-01-26 15:37:49',
            ],
        ];
        parent::init();
    }
}
