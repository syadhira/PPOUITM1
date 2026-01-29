<?php
/**
 * @var \App\View\AppView $this
 * @var \App\Model\Entity\Application $application
 * @var string[]|\Cake\Collection\CollectionInterface $users
 * @var string[]|\Cake\Collection\CollectionInterface $faculties
 * @var string[]|\Cake\Collection\CollectionInterface $programs
 * @var string[]|\Cake\Collection\CollectionInterface $appointments
 * @var string[]|\Cake\Collection\CollectionInterface $branches
 */
?>
<!--Header-->
<div class="row text-body-secondary">
	<div class="col-10">
		<h1 class="my-0 page_title"><?php echo $title; ?></h1>
		<h6 class="sub_title text-body-secondary"><?php echo $system_name; ?></h6>
	</div>
	<div class="col-2 text-end">
		<div class="dropdown mx-3 mt-2">
			<button class="btn p-0 border-0" type="button" id="orederStatistics" data-bs-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
			<i class="fa-solid fa-bars text-primary"></i>
			</button>
				<div class="dropdown-menu dropdown-menu-end" aria-labelledby="orederStatistics">
            <?= $this->Form->postLink(
                __('Delete'),
                ['action' => 'delete', $application->id],
                ['confirm' => __('Are you sure you want to delete # {0}?', $application->id), 'class' => 'dropdown-item', 'escapeTitle' => false]
            ) ?>
            <?= $this->Html->link(__('List Applications'), ['action' => 'index'], ['class' => 'dropdown-item', 'escapeTitle' => false]) ?>
				</div>
		</div>
    </div>
</div>
<div class="line mb-4"></div>
<!--/Header-->

<div class="card rounded-0 mb-3 bg-body-tertiary border-0 shadow">
    <div class="card-body text-body-secondary">
            <?= $this->Form->create($application) ?>
            <fieldset>
                <legend><?= __('Edit Application') ?></legend>
                
                    <?php echo $this->Form->control('user_id', ['options' => $users]); ?>
                    <?php echo $this->Form->control('faculty_id', ['options' => $faculties]); ?>
                    <?php echo $this->Form->control('program_id', ['options' => $programs]); ?>
                    <?php echo $this->Form->control('appointment_id', ['options' => $appointments]); ?>
                    <?php echo $this->Form->control('branch_id', ['options' => $branches]); ?>
                    <?php echo $this->Form->control('application_date'); ?>
                    <?php echo $this->Form->control('phone'); ?>
                    <?php echo $this->Form->control('nric'); ?>
                    <?php echo $this->Form->control('matrix'); ?>
                    <?php echo $this->Form->control('pic_name'); ?>
                    <?php echo $this->Form->control('pic_email'); ?>
                    <?php echo $this->Form->control('company_name'); ?>
                    <?php echo $this->Form->control('company_street1'); ?>
                    <?php echo $this->Form->control('company_street2'); ?>
                    <?php echo $this->Form->control('company_postcode'); ?>
                    <?php echo $this->Form->control('company_city'); ?>
                    <?php echo $this->Form->control('company_state'); ?>
                    <?php echo $this->Form->control('start_date'); ?>
                    <?php echo $this->Form->control('end_date'); ?>
                    <?php echo $this->Form->control('cv'); ?>
                    <?php echo $this->Form->control('cv_dir'); ?>
                    <?php echo $this->Form->control('status'); ?>
                    <?php echo $this->Form->control('approval_name'); ?>
                    <?php echo $this->Form->control('approval_post'); ?>
                    <?php echo $this->Form->control('approval_satus'); ?>
                    <?php echo $this->Form->control('ref_no'); ?>
               
            </fieldset>
				<div class="text-end">
				  <?= $this->Form->button('Reset', ['type' => 'reset', 'class' => 'btn btn-outline-warning']); ?>
				  <?= $this->Form->button(__('Submit'),['type' => 'submit', 'class' => 'btn btn-outline-primary']) ?>
                </div>
        <?= $this->Form->end() ?>
    </div>
</div>