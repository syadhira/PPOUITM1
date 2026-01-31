<?php
/**
 * @var \App\View\AppView $this
 * @var \App\Model\Entity\Application $application
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
							<li><?= $this->Html->link(__('Edit Application'), ['action' => 'edit', $application->id], ['class' => 'dropdown-item', 'escapeTitle' => false]) ?></li>
				<li><?= $this->Form->postLink(__('Delete Application'), ['action' => 'delete', $application->id], ['confirm' => __('Are you sure you want to delete # {0}?', $application->id), 'class' => 'dropdown-item', 'escapeTitle' => false]) ?></li>
				<li><hr class="dropdown-divider"></li>
				<li><?= $this->Html->link(__('List Applications'), ['action' => 'index'], ['class' => 'dropdown-item', 'escapeTitle' => false]) ?></li>
				<li><?= $this->Html->link(__('New Application'), ['action' => 'add'], ['class' => 'dropdown-item', 'escapeTitle' => false]) ?></li>
							</div>
		</div>
    </div>
</div>
<div class="line mb-4"></div>
<!--/Header-->

<div class="row">
	<div class="col-md-9">
		<div class="card rounded-0 mb-3 bg-body-tertiary border-0 shadow">
			<div class="card-body text-body-secondary">
        

<style>
                    .capital {
                        text-transform: uppercase;
                    }

                    .justify {
                        text-align: justify;
                    }

                    .top {
                        width: 100%;
                        margin: auto;
                    }

                    .one {
                        width: 72%;
                        height: 25px;
                        background: #292983;
                        float: left;
                    }

                    .two {
                        margin-left: 15%;
                        height: 25px;
                        background: #912890;
                    }
                </style>

            <section class= "top">
                <div class="one"></div>
                <div class="two"></div>
            </section>


<div class="text-end my-4 me-5">
       <?php echo $this->Html->image('../img/surat/logouitm.png',['width'=>'180px']); ?>
</div>

        <hr />

        <table width="100%" >
            <tr>
                <td width="78%" class="text-end">Surat Kami &nbsp;:  &nbsp; </td>
                <td>
                    <?php if ($application->approval_status == 0){
                        echo'-';
                    }elseif ($application->approval_status == 1){
                        echo $application->ref_no;
                    }else
                        echo 'Rejected';
                    ?>
                </td>
            </tr>
            <tr>
                <td class="text-end">Tarikh &nbsp;:  &nbsp; </td>
               <td> 
                <?php if ($application->approval_status == 0){
                        echo'-';
                    }elseif ($application->approval_status == 1){
                        echo date('d F Y', strtotime($application->created));
                    }else 
                        echo 'Rejected';
                    ?>
                </td>
            </tr>
        </table>



        <?= h($application->company_name) ?>
        <br />
        <?= h($application->company_street1) ?>
        <br />
        <?= h($application->company_street2) ?>
        <br />
        <?= h($application->company_postcode) ?>,
        <?= h($application->company_city) ?>
        <br />
      <strong><?= h($application->company_state) ?></strong>
        <br /><br />
        <strong>Untuk Perhatian : <?= h($application->pic_name) ?> (<?= h($application->pic_email) ?>)</strong>
        <br /><br />
         <strong>PENEMPATAN PROGRAM PROFFESIONAL OFFERED (PPO) UNIVERSITI TEKNOLOGI MARA (UITM)</strong>
        <br /><br />
        <table class="table table-bordered table-sm capital table_transparent capital">
<tr>
    <td>NAMA STAFF PENEMPATAN</td>
    <td>:</td>
    <td><?= h($application->user->fullname) ?></td>
</tr>
<tr>
    <td>NO. KAD PENGENALAN</td>
    <td>:</td>
    <td><?= h($application->nric) ?></td>
</tr>
<tr>
    <td>NO. STAFF UITM</td>
    <td>:</td>
    <td><?= h($application->matrix) ?></td>
</tr>
<tr>
    <td>PROGRAM PENGAJIAN</td>
    <td>:</td>
    <td><?= h($application->program->name) ?></td>
</tr>
<tr>
    <td>FAKULTI</td>
    <td>:</td>
    <td><?= h($application->faculty->name) ?></td>
</tr>
<tr>
    <td>NO. TEEFON BIMBIT</td>
    <td>:</td>
    <td><?= h($application->phone) ?></td>  
</tr>
        </table>

<br/>

<div class="justify">
    Dengan segala hormatnya saya merujuk kepada perkara di atas. Saya ingin memaklumkan bahawa pihak universiti telah meluluskan permohonan penempatan Program Professional Offered (PPO) seperti butiran di atas di kampus <?= h($application->branch->name) ?>.
    <br /><br />
    2.&nbsp;&nbsp; &nbsp; &nbsp; &nbsp; Berdasarkan rekod kami, penempatan ini adalah untuk tempoh <strong><?php echo date('d F Y', strtotime($application->start_date)) ?></strong> hingga <strong><?php echo date('d F Y', strtotime($application->end_date)) ?></strong>. Sepanjang tempoh penempatan ini, pihak universiti akan memastikan bahawa pengajar yang ditempatkan di program <?= h($application->program->name) ?> akan mematuhi segala peraturan dan etika yang telah ditetapkan oleh pihak UiTM.
    <br /><br />
    3. &nbsp; &nbsp; &nbsp; &nbsp; Sehubungan itu, pihak kami amat berbesar hati sekiranya pihak tuan/puan dapat memberikan kerjasama sepenuhnya kepada pengajar yang ditempatkan di program ini. Segala bentuk bantuan dan sokongan daripada pihak tuan/puan akan sangat dihargai bagi memastikan kelancaran pelaksanaan program ini.
     <br /><br />
     <ol type="a">
        <li>&nbsp; &nbsp; &nbsp; &nbsp; Resume: Link</li>
        <li>&nbsp; &nbsp; &nbsp; &nbsp; Penempatan ini adalah tertakluk kepada terma dan syarat yang telah ditetapkan oleh pihak universiti.</li>
        <li>&nbsp; &nbsp; &nbsp; &nbsp; Borang penerimaan</li>
     </ol>
    4. &nbsp; &nbsp; &nbsp; &nbsp; Diharapkan pelantikan ini akan mendapat pertimbangan dan kerjasama daripada pihak tuan/puan. Sekiranya terdapat sebarang pertanyaan atau maklumat lanjut, pihak tuan/puan boleh menghubungi pihak kami melalui emel ppo@uitm.edu.my. Sekiranya tiada sebarang jawapan diterima dalam tempoh dua (2) minggu dari tarikh surat ini, penempatan ini dianggap tidak diterima.
      <br /><br />

    Sekian, terima kasih.
    <br /><br />
    <?php if ($application->approval_status==0){
        echo '<strong class ="text-danger">[Dalam Proses Semakan]</strong>';
    }elseif ($application->approval_status==1){
        echo 'Jabatan Pengurusan Pejabat<br/>';
        echo 'Universiti Teknologi MARA<br/>';
        echo '<strong> CETAKAN BERKOMPUTER SAHAJA TIDAK MEMERLUKAN TANDATANGAN</strong>';
    }else
        echo 'Rejected';
    ?>

</div>

<hr/>
<div class="text-end my-4 me-5">
     <?php echo $this->Html->image('../img/surat/logoiceps.png', ['width'=>'180px']) ?>
        <br />
         <?php echo $this->Html->image('../img/surat/bottom.png', ['width'=>'180px']); ?>
        </div>
	</div>
</div>
</div>
	<div class="col-md-3">
	  <div class="card bg-body-tertiary border-0 shadow rounded-0">
        <div class="card-body">

        <div class="card-title mb-0 ">Application Data</div>
        <div class="tricolor_line mb-3"></div>
        <table class="table table-sm table-hover">
        <tr>
            <td>Application Date</td>
            <td><?php echo date('M d, Y', strtotime($application->created)); ?></td>
        </tr>
        <tr>
            <td>Approval Date</td>
            <td><?php echo date('M d, Y', strtotime($application->modified)); ?></td>
        </tr>
        <tr>
            <td>Application Status</td>
            <td>
                <?php
						if($application->approval_status == 0){		
							echo '<span class="badge bg-warning">Pending</span>';		
						}else if($application->approval_status == 1){
							echo '<span class="badge bg-success">Approved</span>';
						}else if ($application->approval_status == 2){
							echo '<span class="badge bg-danger">Rejected</span>';
						}else 
							echo '<span class="badge bg-danger">Error</span>';
						?> </td>
        </tr>
        </table>
        
        <?php if($application->approval_status == 1){ ?>
            <?php echo $this->Html->link(('Download PDF'),['action'=>'pdf',$application->id],['class'=>'btn btn-sm btn-outline-primary','escapeTitle'=>false]); ?>
        <?php } ?>
        </div>
      </div>
	</div>
</div>




