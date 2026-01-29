<?php
declare(strict_types=1);

namespace App\Model\Table;

use Cake\ORM\Query\SelectQuery;
use Cake\ORM\RulesChecker;
use Cake\ORM\Table;
use Cake\Validation\Validator;

/**
 * Applications Model
 *
 * @property \App\Model\Table\UsersTable&\Cake\ORM\Association\BelongsTo $Users
 * @property \App\Model\Table\FacultiesTable&\Cake\ORM\Association\BelongsTo $Faculties
 * @property \App\Model\Table\ProgramsTable&\Cake\ORM\Association\BelongsTo $Programs
 * @property \App\Model\Table\AppointmentsTable&\Cake\ORM\Association\BelongsTo $Appointments
 * @property \App\Model\Table\BranchesTable&\Cake\ORM\Association\BelongsTo $Branches
 *
 * @method \App\Model\Entity\Application newEmptyEntity()
 * @method \App\Model\Entity\Application newEntity(array $data, array $options = [])
 * @method array<\App\Model\Entity\Application> newEntities(array $data, array $options = [])
 * @method \App\Model\Entity\Application get(mixed $primaryKey, array|string $finder = 'all', \Psr\SimpleCache\CacheInterface|string|null $cache = null, \Closure|string|null $cacheKey = null, mixed ...$args)
 * @method \App\Model\Entity\Application findOrCreate($search, ?callable $callback = null, array $options = [])
 * @method \App\Model\Entity\Application patchEntity(\Cake\Datasource\EntityInterface $entity, array $data, array $options = [])
 * @method array<\App\Model\Entity\Application> patchEntities(iterable $entities, array $data, array $options = [])
 * @method \App\Model\Entity\Application|false save(\Cake\Datasource\EntityInterface $entity, array $options = [])
 * @method \App\Model\Entity\Application saveOrFail(\Cake\Datasource\EntityInterface $entity, array $options = [])
 * @method iterable<\App\Model\Entity\Application>|\Cake\Datasource\ResultSetInterface<\App\Model\Entity\Application>|false saveMany(iterable $entities, array $options = [])
 * @method iterable<\App\Model\Entity\Application>|\Cake\Datasource\ResultSetInterface<\App\Model\Entity\Application> saveManyOrFail(iterable $entities, array $options = [])
 * @method iterable<\App\Model\Entity\Application>|\Cake\Datasource\ResultSetInterface<\App\Model\Entity\Application>|false deleteMany(iterable $entities, array $options = [])
 * @method iterable<\App\Model\Entity\Application>|\Cake\Datasource\ResultSetInterface<\App\Model\Entity\Application> deleteManyOrFail(iterable $entities, array $options = [])
 *
 * @mixin \Cake\ORM\Behavior\TimestampBehavior
 */
class ApplicationsTable extends Table
{
    /**
     * Initialize method
     *
     * @param array<string, mixed> $config The configuration for the Table.
     * @return void
     */
    public function initialize(array $config): void
    {
        parent::initialize($config);

        $this->setTable('applications');
        $this->setDisplayField('phone');
        $this->setPrimaryKey('id');

        $this->addBehavior('Timestamp');

        $this->belongsTo('Users', [
            'foreignKey' => 'user_id',
            'joinType' => 'INNER',
        ]);
        $this->belongsTo('Faculties', [
            'foreignKey' => 'faculty_id',
            'joinType' => 'INNER',
        ]);
        $this->belongsTo('Programs', [
            'foreignKey' => 'program_id',
            'joinType' => 'INNER',
        ]);
        $this->belongsTo('Appointments', [
            'foreignKey' => 'appointment_id',
            'joinType' => 'INNER',
        ]);
        $this->belongsTo('Branches', [
            'foreignKey' => 'branch_id',
            'joinType' => 'INNER',
        ]);
		$this->addBehavior('AuditStash.AuditLog');

        $this->addBehavior('Josegonzalez/Upload.Upload', [
            'cv' => [
                'fields' => [
                    'dir' => 'cv_dir' //capture the directory into this field
                    ],
                
                ]
            ]);
    


		$this->addBehavior('Search.Search');
		$this->searchManager()
			->value('id')
				->add('search', 'Search.Like', [
					//'before' => true,
					//'after' => true,
					'fieldMode' => 'OR',
					'multiValue' => true,
					'multiValueSeparator' => '|',
					'comparison' => 'LIKE',
					'wildcardAny' => '*',
					'wildcardOne' => '?',
					'fields' => ['id'],
				]);
    }

    /**
     * Default validation rules.
     *
     * @param \Cake\Validation\Validator $validator Validator instance.
     * @return \Cake\Validation\Validator
     */
    public function validationDefault(Validator $validator): Validator
    {
        $validator
            ->integer('faculty_id')
            ->notEmptyString('faculty_id');

        $validator
            ->integer('program_id')
            ->notEmptyString('program_id');

        $validator
            ->integer('appointment_id')
            ->notEmptyString('appointment_id');

        $validator
            ->integer('branch_id')
            ->notEmptyString('branch_id');

        $validator
            ->date('application_date')
            ->requirePresence('application_date', 'create')
            ->notEmptyDate('application_date');

        $validator
            ->scalar('phone')
            ->maxLength('phone', 15)
            ->requirePresence('phone', 'create')
            ->notEmptyString('phone');

        $validator
            ->scalar('nric')
            ->maxLength('nric', 12)
            ->requirePresence('nric', 'create')
            ->notEmptyString('nric');

        $validator
            ->scalar('matrix')
            ->maxLength('matrix', 10)
            ->requirePresence('matrix', 'create')
            ->notEmptyString('matrix');

        $validator
            ->scalar('pic_name')
            ->maxLength('pic_name', 255)
            ->requirePresence('pic_name', 'create')
            ->notEmptyString('pic_name');

        $validator
            ->scalar('pic_email')
            ->maxLength('pic_email', 255)
            ->requirePresence('pic_email', 'create')
            ->notEmptyString('pic_email');

        $validator
            ->scalar('company_name')
            ->maxLength('company_name', 255)
            ->requirePresence('company_name', 'create')
            ->notEmptyString('company_name');

        $validator
            ->scalar('company_street1')
            ->maxLength('company_street1', 255)
            ->requirePresence('company_street1', 'create')
            ->notEmptyString('company_street1');

        $validator
            ->scalar('company_street2')
            ->maxLength('company_street2', 255)
            ->requirePresence('company_street2', 'create')
            ->notEmptyString('company_street2');

        $validator
            ->scalar('company_postcode')
            ->maxLength('company_postcode', 10)
            ->requirePresence('company_postcode', 'create')
            ->notEmptyString('company_postcode');

        $validator
            ->scalar('company_city')
            ->maxLength('company_city', 255)
            ->requirePresence('company_city', 'create')
            ->notEmptyString('company_city');

        $validator
            ->scalar('company_state')
            ->maxLength('company_state', 255)
            ->requirePresence('company_state', 'create')
            ->notEmptyString('company_state');

        $validator
            ->date('start_date')
            ->requirePresence('start_date', 'create')
            ->notEmptyDate('start_date');

        $validator
            ->date('end_date')
            ->requirePresence('end_date', 'create')
            ->notEmptyDate('end_date');

        $validator
            ->allowEmptyFile('cv')
            ->add('cv', [
                'validExtension' => [
                    'rule' => ['extension', ['pdf',]],
                    'message' => 'Only .pdf files are allowed.',
                ],
            ]);

        return $validator;
    }

    /**
     * Returns a rules checker object that will be used for validating
     * application integrity.
     *
     * @param \Cake\ORM\RulesChecker $rules The rules object to be modified.
     * @return \Cake\ORM\RulesChecker
     */
    public function buildRules(RulesChecker $rules): RulesChecker
    {
        $rules->add($rules->existsIn(['user_id'], 'Users'), ['errorField' => 'user_id']);
        $rules->add($rules->existsIn(['faculty_id'], 'Faculties'), ['errorField' => 'faculty_id']);
        $rules->add($rules->existsIn(['program_id'], 'Programs'), ['errorField' => 'program_id']);
        $rules->add($rules->existsIn(['appointment_id'], 'Appointments'), ['errorField' => 'appointment_id']);
        $rules->add($rules->existsIn(['branch_id'], 'Branches'), ['errorField' => 'branch_id']);

        return $rules;
    }
}
