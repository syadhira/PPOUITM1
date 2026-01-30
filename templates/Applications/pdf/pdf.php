<!DOCTYPE html>
<html lang="en">
<head>
    <title>Application</title>
    <style>
        @page{
            margin: 0px !important;
            padding: 0px !important;
        }

        .right{
            text-align: right;
            padding-right: 50px;
        }
body{
            font-family: Arial, Helvetica, sans-serif;
            font-size: 13px;
        }

    .content{
        margin-left: 70px;
        margin-right: 70px;
    }
    .capital{
        text-transform: uppercase;
    }
    .justify{
        text-align: justify;
    }
     .top{
        width: 100%;
        margin: auto;
        }

     .one{
        width:72%;
        height: 25px;
        background: #292983;
        float: left;
        }

    .two{
        margin-left: 15%;
        height: 25px;
        background: #912891;
        }
    
.qr{
    width: 100px;
}
    </style>
</head>

<body>
     <section class= "top">
                <div class="one"></div>
                <div class="two"></div>
            </section>


<div class="text-end my-4 me-5">
       <?php echo $this->Html->image('../img/surat/logouitm.png',['width'=>'180px', 'fullBase' => true]); ?>
</div>
<br />

        <div class="content">
        <table width="320px" align="right">
            <tr>
                <td width="70px">Surat Kami</td>
                <td>:</td>
                <td>UiTM-<?= $application->branch->code; ?> (HEA-<?= $application->faculty->code; ?>.<?= $application->program->code; ?>/<?= h($application->id) ?>)</td>
            </tr>
            <tr>
                <td>Tarikh</td>
                <td>:</td>
                <td><?php echo date('d F Y', strtotime($application->created)); ?></td>
            </tr>
        </table>



        <?= h($application->company_name) ?><br />
        <?= h($application->company_street1) ?><br />
        <?= h($application->company_street2) ?><br />
        <?= h($application->company_postcode) ?>,
        <?= h($application->company_city) ?><br />
      <strong><?= h($application->company_state) ?></strong>
        <br /><br />
        <strong>Untuk Perhatian : <?= h($application->pic_name) ?> (<?= h($application->pic_email) ?>)</strong>
        <br /><br />
        Tuan/Puan
        <br /><br />
         <strong>PENEMPATAN PROGRAM PROFESSIONAL OFFERED (PPO) UNIVERSITI TEKNOLOGI MARA (UITM) </strong>
        <br /><br />
        <table class="table table-bordered table-sm table_transparent capital">
<tr>
    <td>NAMA STAFF</td>
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
    Dengan segala hormatnya saya merujuk kepada perkara di atas. Saya ingin memaklumkan bahawa pihak universiti telah meluluskan permohonan penempatan Program Professional Offered (PPO) seperti butiran di atas. <?= h($application->branch->name) ?>.
    <br /><br />
    2.&nbsp;&nbsp; &nbsp; &nbsp; &nbsp; Berdasarkan rekod kami, penempatan ini adalah untuk tempoh <strong><?php echo date('d F Y', strtotime($application->start_date)) ?></strong> hingga <strong><?php echo date('d F Y', strtotime($application->end_date)) ?></strong>. Sepanjang tempoh penempatan ini, pihak universiti akan memastikan bahawa pengajar yang ditempatkan di program <?= h($application->program->name) ?> akan mematuhi segala peraturan dan etika yang telah ditetapkan oleh pihak UiTM.
    <br /><br />
    3. &nbsp; &nbsp; &nbsp; &nbsp; Sehubungan itu, pihak kami amat berbesar hati sekiranya pihak tuan/puan dapat memberikan kerjasama sepenuhnya kepada pengajar yang ditempatkan di program ini. Segala bentuk bantuan dan sokongan daripada pihak tuan/puan akan sangat dihargai bagi memastikan kelancaran pelaksanaan program ini.
     <br /><br />
     <ol type="a">
        <li>&nbsp; &nbsp; &nbsp; &nbsp; Surat pelantikan rasmi</li>
        <li>&nbsp; &nbsp; &nbsp; &nbsp; Penempatan ini adalah tertakluk kepada terma dan syarat yang telah ditetapkan oleh pihak universiti.</li>
    
     </ol>
    4. &nbsp; &nbsp; &nbsp; &nbsp; Diharapkan pelantikan ini akan mendapat pertimbangan dan kerjasama daripada pihak tuan/puan. Sekiranya terdapat sebarang pertanyaan atau maklumat lanjut, pihak tuan/puan boleh menghubungi pihak kami melalui emel ppo@uitm.edu.my. Sekiranya tiada sebarang jawapan diterima dalam tempoh dua (2) minggu dari tarikh surat ini, penempatan ini dianggap diterima.
      <br /><br />
    <br /><br />
    <table width="100%">
<tr>
    <td width="85%" style="vertical-align: top;">
          Sekian, terima kasih.
          <br /><br />
          Jabatan Pengurusan Pejabat
          <br /><br />
          Universiti Teknologi MARA
         <br /><br />
         <strong> CETAKAN BERKOMPUTER SAHAJA TIDAK MEMERLUKAN TANDATANGAN</strong>';
    </td>
    <td width="5%" class="right">
        <img src="http://localhost/ppoappointment/js/qr-pdf/qrcode.php?s=qrh&d=<?php echo $this->request->getUri(); ?>" class= "qr" ?>
    </td>
</tr>
    </table>
</div>
</div>

<br /><br />
<div class="right">
     <?php echo $this->Html->image('../img/surat/logoiceps.png', ['width'=>'180px', 'fullBase' => true]); ?>
        <br />
         <?php echo $this->Html->image('../img/surat/bottom.png', ['width'=>'180px', 'fullBase' => true]); ?>
</div>
</body>

</html>