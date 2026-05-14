<style type="text/css" media="all">
    body {
        color: #000;
    }

    table,
    th,
    tr {
        text-align: center;
    }

    #wrapper {
        max-width: 650px;
        margin: 0 auto;
        padding-top: 20px;
    }

    .btn {
        margin-bottom: 5px;
    }

    .table {
        border-radius: 3px;
    }

    .table th {
        background: #f5f5f5;
    }

    .table th,
    .table td {
        vertical-align: middle !important;
    }

    h3 {
        margin: 5px 0;
    }

    @media print {
        .no-print {
            display: none;
        }

        #wrapper {
            max-width: 480px;
            width: 100%;
            min-width: 250px;
            margin: 0 auto;
        }
    }

    tfoot tr th:first-child {
        text-align: right;
    }
</style>
<?php if ($this->session->flashdata('message')) { ?>
<div class="col-lg-12 alerts">
    <div class="alert alert-dismissible alert-success">
        <button type="button" class="close" data-dismiss="alert">&times;</button>
        <h4> <i class="icon fa fa-check"></i> Sukses</h4>
        <p><?php echo $this->session->flashdata('message'); ?></p>
    </div>
</div>
<?php } else { } ?>
<section class='content'>
    <div class='row'>
        <div class='col-xs-12'>
            <div class='box box-primary'>
                <div class='box-header  with-border'>
                    <h3 class='box-title'>BUKTI PEMBAYARAN</h3>
                </div>
                <div id="print-area" style="font-size: 11px;">
                    <!-- <div class="box-body"style="border:solid 1px black;"> -->
                        <!-- <div id="wrapper" class="" style="border:solid 1px blue;"> -->
                            <div id="receiptData" style="width: auto; max-width: 200px; min-width: 50px;">
                                <div id="receipt-data">
                                    <div>
                                        <div style="text-align:center;font: size 11px;">
                                            <img src="<?php echo base_url(); ?>assets/images/logostruk.png" style="max-width:150px;" alt="BILBILWEST">
                                            <p style="text-align:center; font-size: 11px;"><strong>Toko Mumu</strong><br>Kp.babakan gorobog, Ds.Kadubale, Kec.Banjar, Kab.Pandeglang BANTEN 085774956742</p>
                                            <p><HR></HR></p>
                                        
                                        <p>
                                            Tanggal : <?php echo $tanggal . ' ' . $jam; ?> <br>
                                            Nomor Transaksi : <?php echo $nota; ?><br>
                                            Nama Pelanggan : <?php echo $pelanggan; ?> <br>
                                            Kasir : <?php echo $operator; ?> <br>
                                        </p>
                                        </div>
                                        <div style="clear:both;"></div>
                                        <table class="table table-striped table-condensed"style="font-size:10px;">
                                            <thead>
                                                <tr>
                                                    <th class="" style="width: 100%; border-bottom: 2px solid #ddd;">Nama Barang</th>
                                                    <th class="" style="width: 12%; border-bottom: 2px solid #ddd;">QTY</th>
                                                    <th class="" style="width: 24%; border-bottom: 2px solid #ddd;">Harga</th>
                                                    <th class="" style="width: 26%; border-bottom: 2px solid #ddd;">Subtotal</th>
                                                </tr>
                                            </thead>
                                            <tbody>
                                                <?php foreach ($result as $row) { ?>
                                                <tr>
                                                    <td style="text-align:left;"><?php echo $row->nama_barang; ?></td>
                                                    <td style="text-align:center;"><?php echo $row->jumlah_stok; ?></td>
                                                    <td class="">Rp.<?php echo $row->harga_barang; ?></td>
                                                    <td class="text-right">Rp.<?php echo $row->sub_total; ?></td>
                                                </tr>
                                                <?php } ?>
                                            </tbody>
                                            <tfoot>
                                                <tr>
                                                    <th colspan="2">Total</th>
                                                    <th colspan="2" class="text-right">Rp.<?php echo number_format($total); ?></th>
                                                </tr>
                                                <tr>
                                                    <th colspan="2">Diskon</th>
                                                    <th colspan="2" class="text-right"><?php echo $diskon; ?>%</th>
                                                </tr>
                                                <tr>
                                                    <th colspan="2">Grand Total</th>
                                                    <th colspan="2" class="text-right">Rp.<?php echo number_format($grand_total); ?></th>
                                                </tr>
                                                <tr>
                                                    <th colspan="2">Transaksi</th>
                                                    <th colspan="2" class="text-right"><?php echo $metode; ?></th>
                                                </tr>
                                                <tr>
                                                    <th colspan="2">Bayar</th>
                                                    <th colspan="2" class="text-right">Rp.<?php echo number_format($bayar); ?></th>
                                                </tr>
                                                <tr>
                                                    <th colspan="2">Kembalian</th>
                                                    <th colspan="2" class="text-right">Rp.<?php echo number_format($kembalian); ?></th>
                                                </tr>

                                                <?php if ($metode == 'Transfer') : ?>
                                                <tr>
                                                    <th colspan="2">No Rekening:</th>
                                                    <th colspan="2" class="text-right"><?php
                                                            $norek = substr($rekening,4);
                                                            $nrk = 'xxxx'.$norek;
                                                            echo $nrk;
                                                            ?></th>
                                                    <tr>
                                                    <th colspan="2">Via:</th>
                                                    <th colspan="2" class="text-right"><?php echo $bank; ?></th>
                                                    </tr>
                                                    <tr>
                                                    <th colspan="2">Atas Nama(A/N)</th>
                                                    <th colspan="2" class="text-right"><?php echo strtoupper($atasnama); ?></th>
                                                    </tr>
                                                </tr>
                                                <?php else : ?>
                                                <?php endif; ?>


                                            </tfoot>



                                        </table>
                                        <table class="table table-striped table-condensed" style="margin-top:10px;font-size: 11px; max-width: 10px;">
                                            <tbody>
                                               
                                                
                                            </tbody>
                                        </table>
                                        <div class="well well-sm" style="margin-top:10px;">
                                            <div style="text-align: center;">Terimakasih Sudah Belanja :)</div>
                                        </div>
                                    </div>
                                    <div style="clear:both;"></div>
                                </div>
                            </div>
                            <div id="buttons" style="padding-top:10px; text-transform:uppercase;" class="no-print">
                                <span class="pull-right col-xs-12">
                                    <button onclick="printDiv('print-area')" class="btn btn-block btn-primary">Print</button> </span>
                                <span class="col-xs-12">
                                    <a class="btn btn-block btn-warning" href="<?php echo base_url() ?>index.php/penjualan">Kembali ke Penjualan</a>
                                </span>
                                <div style="clear:both;"></div>
                            </div>
                        </div>
                    </div>
                </div><!-- /.modal -->
            </div><!-- /.modal -->
        </div><!-- /.box-body -->
    </div><!-- /.box -->
</section><!-- /.content -->


<script type="text/javascript">
    function printDiv(divName) {
        let printContents = document.getElementById(divName).innerHTML;
        let originalContents = document.body.innerHTML;
        document.body.innerHTML = printContents;
        window.print();
        document.body.innerHTML = originalContents;
        location.reload(true);
        setTimeout(function() {}, 1000);
    }
</script>