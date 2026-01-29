<?php
declare(strict_types=1);

namespace App\Test\Fixture;

use Cake\TestSuite\Fixture\TestFixture;

/**
 * BranchesFixture
 */
class BranchesFixture extends TestFixture
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
                'created' => '2026-01-26 15:38:15',
                'modified' => '2026-01-26 15:38:15',
            ],
        ];
        parent::init();
    }
}
