<?php
declare(strict_types=1);

namespace App\Test\Fixture;

use Cake\TestSuite\Fixture\TestFixture;

/**
 * AppointmentsFixture
 */
class AppointmentsFixture extends TestFixture
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
                'code' => 'Lorem ip',
                'session' => 'Lorem ipsum dolor sit amet',
                'status' => 1,
                'created' => '2026-01-26 15:38:01',
                'modified' => '2026-01-26 15:38:01',
            ],
        ];
        parent::init();
    }
}
