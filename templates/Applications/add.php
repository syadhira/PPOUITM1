<?php
/**
 * @var \App\View\AppView $this
 * @var \App\Model\Entity\Application $application
 * @var \Cake\Collection\CollectionInterface|string[] $users
 * @var \Cake\Collection\CollectionInterface|string[] $faculties
 * @var \Cake\Collection\CollectionInterface|string[] $programs
 * @var \Cake\Collection\CollectionInterface|string[] $appointments
 * @var \Cake\Collection\CollectionInterface|string[] $branches
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
            <?= $this->Html->link(__('List Applications'), ['action' => 'index'], ['class' => 'dropdown-item', 'escapeTitle' => false]) ?>
				</div>
		</div>
    </div>
</div>
<div class="line mb-4"></div>
<!--/Header-->




<div class="card rounded-0 mb-3 bg-body-tertiary border-0 shadow">
    <div class="card-body text-body-secondary">

    <div class="card-title mb-0 mt-3">Personal Information</div>
<div class="tricolor_line mb-3"></div>

            <?= $this->Form->create($application, ['type' => 'file']) ?>
            <fieldset>
                
                <div class="row">
                    <div class="col-md-6"> <?php echo $this->Form->control('faculty_id', [
                                'options' => $faculties,
                                'empty' => 'Select Faculty/College',
                                'id' => 'faculty-select',
                                'class '=>'form-select']); ?></div>
                    <div class="col-md-6"> <?php echo $this->Form->control('program_id', [
                                'options' => $programs,
                                'empty' => 'Select Program',
                                'id' => 'program-select',
                                'class '=>'form-select']); ?></div>
                </div>  
                   
                   <div class="row">
                    <div class="col-md-4"> <?php echo $this->Form->control('appointment_id', ['options' => $appointments, 'empty' => 'Select Appointment',
                                'class '=>'form-select']); ?></div>
                    <div class="col-md-4"><?php echo $this->Form->control('branch_id', ['options' => $branches,'empty' => 'Select Branch',
                                'class '=>'form-select']); ?></div>
                    <div class="col-md-4"><?php echo $this->Form->control('application_date',['value'=>date('Y-m-d'),
                    'readonly'=>true]); ?></div>
                    <div class="col-md-4"> <?php echo $this->Form->control('phone'); ?></div>
                    <div class="col-md-4"> <?php echo $this->Form->control('nric',['label' => 'IC Number']); ?></div>
                    <div class="col-md-4"> <?php echo $this->Form->control('matrix',['label' => 'Student ID']); ?></div>
                    <div class="col-md-4"> <?php echo $this->Form->control('start_date'); ?></div>
                    <div class="col-md-4"> <?php echo $this->Form->control('end_date'); ?></div>
                    <div class="col-md-4"><label>Upload CV <?php echo $this->Form->control('cv',['type' => 'file','label' => false]); ?></div>
                   </div>
                   
                   
    <div class="card-title mb-0 mt-3">Branch Details</div>
<div class="tricolor_line mb-3"></div>


                   
         <div class="row">
            <col-md-6> <?php echo $this->Form->control('pic_name',['label' => 'Person In-Charge Name']); ?></col-md-6>
            <col-md-6> <?php echo $this->Form->control('pic_email',['label' => 'Person In-Charge Email']); ?></col-md-6>
         </div>           
          
         <?php echo $this->Form->control('company_name',['label' => 'Appointed Branch Name']); ?>

      <div class="row">
        <div class="col-md-6"> <?php echo $this->Form->control('company_street1',['label' => 'Street 1']); ?></div>
        <div class="col-md-6"><?php echo $this->Form->control('company_street2',['label' => 'Street 2']); ?></div>
      </div>             

      <div class="row">
        <div class="col-md-4"><?php echo $this->Form->control('company_postcode',['label' => 'Postcode']); ?></div>
        <div class="col-md-4"><?php echo $this->Form->control('company_city',['label' => 'City']); ?></div>
        <div class="col-md-4"><?php echo $this->Form->control('company_state',[
            'options' => [
                'Johor'=>'Johor',
                'Kedah'=>'Kedah',
                'Kelantan'=>'Kelantan',
                'Melaka'=>'Melaka',
                'Negeri Sembilan'=>'Negeri Sembilan',
                'Pahang'=>'Pahang',
                'Perak'=>'Perak',
                'Perlis'=>'Perlis',
                'Pulau Pinang'=>'Pulau Pinang',
                'Sabah'=>'Sabah',
                'Sarawak'=>'Sarawak',
                'Selangor'=>'Selangor',
                'Terengganu'=>'Terengganu',
                'W.P. Kuala Lumpur'=>'W.P. Kuala Lumpur',
                'W.P. Labuan'=>'W.P. Labuan',
                'W.P. Putrajaya'=>'W.P. Putrajaya'],

                'empty' => 'Select State',
                'class '=>'form-select',
            'label' => 'Branch State']); ?></div>
      </div>


            
            </fieldset>
				<div class="text-end">
				  <?= $this->Form->button('Reset', ['type' => 'reset', 'class' => 'btn btn-outline-warning']); ?>
				  <?= $this->Form->button(__('Submit'),['type' => 'submit', 'class' => 'btn btn-outline-primary']) ?>
                </div>
        <?= $this->Form->end() ?>
    </div>
</div>

<script>
document.addEventListener('DOMContentLoaded', function() {
    const facultySelect = document.getElementById('faculty-select');
    const programSelect = document.getElementById('program-select');
    
    // Program data with faculty associations
    const programsData = <?php echo json_encode($programsData); ?>;
    
    function filterPrograms() {
        const selectedFacultyId = facultySelect.value;
        
        // Clear current options except the empty one
        const emptyOption = programSelect.querySelector('option[value=""]');
        programSelect.innerHTML = '';
        if (emptyOption) {
            programSelect.appendChild(emptyOption.cloneNode(true));
        }
        
        // Add filtered programs
        if (selectedFacultyId) {
            Object.keys(programsData).forEach(id => {
                const program = programsData[id];
                if (String(program.faculty_id) === selectedFacultyId) {
                    const option = document.createElement('option');
                    option.value = program.id;
                    option.text = program.text;
                    programSelect.appendChild(option);
                }
            });
        } else {
            // Show all programs if no faculty selected
            Object.keys(programsData).forEach(id => {
                const program = programsData[id];
                const option = document.createElement('option');
                option.value = program.id;
                option.text = program.text;
                programSelect.appendChild(option);
            });
        }
    }
    
    facultySelect.addEventListener('change', filterPrograms);
    
    // Initial filter on page load if faculty is pre-selected (edit mode)
    if (facultySelect.value) {
        filterPrograms();
    }
});
</script>
    </div>
</div>