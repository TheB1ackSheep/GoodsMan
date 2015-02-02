<%--
  Created by IntelliJ IDEA.
  User: FALOOK
  Date: 12/12/2014
  Time: 03:57
  To change this template use File | Settings | File Templates.
--%>
<!DOCTYPE html>
<%@page contentType="text/html" pageEncoding="UTF-8" %>
<html>
<head>
    <title>ระบบจัดการครุภัณฑ์ กพร.</title>
    <meta name="fragment" content="!">
    <meta content="text/html; charset=UTF-8" http-equiv="Content-Type">
    <meta content='width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0' name='viewport' />
    <link rel="stylesheet" href="uikit/css/uikit.min.css" />
    <link rel="stylesheet" href="jquery.ui/jquery-ui.min.css" />
    <link rel="stylesheet" href="jquery.ui/jquery-ui.theme.min.css" />
    <link rel="stylesheet" href="css/chart.styles.css" />
    <link rel="stylesheet" href="uikit/css/components/upload.min.css" />
    <link rel="stylesheet" href="uikit/css/components/placeholder.min.css" />
    <link rel="stylesheet" href="uikit/css/components/datepicker.min.css" />
    <link rel="stylesheet" href="uikit/css/components/form-select.min.css" />
    <link rel="stylesheet" href="uikit/css/components/notify.min.css" />
    <link rel="stylesheet" href="uikit/css/components/autocomplete.min.css" />
    <link rel="stylesheet" href="css/styles.css" />
    <!--<link rel="stylesheet" href="http://fonts.googleapis.com/earlyaccess/droidsansthai.css"/>-->
    <script src="js/jquery-1.11.1.min.js"></script>
    <script src="jquery.ui/jquery-ui.js"></script>
    <script src="js/jquery.autocomplete.min.js"></script>
    <script src="js/Chart.min.js"></script>
    <script src="uikit/js/uikit.js"></script>
    <script src="uikit/js/components/datepicker.min.js"></script>
    <script src="uikit/js/components/upload.min.js"></script>
    <script src="uikit/js/components/form-select.min.js"></script>
    <script src="uikit/js/components/notify.min.js"></script>
</head>
<body>
<div class="app">
    <header class="uk-hidden-small">
        <div class="sys-bar">
            <div class="sys-row">
                <div class="uk-text-left sys-name">
                    <a class="taphover" href="index.jsp">
                        กพร. ระบบจัดการครุภัณฑ์
                    </a>
                </div>
                <div class="uk-text-left sys-message">

                </div>
                <div class="uk-text-right sys-login">
                    <a class="taphover" >เข้าสู่ระบบ</a>
                </div>
            </div>
        </div>
    </header>
    <nav class="uk-hidden-small uk-overflow-container menu">
        <div class="show" id="nav-1">
            <span data-uk-toggle="{target:'#nav-1', cls:'show'}">แดชบอร์ด</span>
            <div id="nav-1-1">
                <span data-nav="overview">ภาพรวม</span>
            </div>
        </div>
        <div id="nav-2">
            <span data-uk-toggle="{target:'#nav-2', cls:'show'}">จัดครุภัณฑ์</span>
            <div id="nav-2-1">
                <span data-nav="goods">รายการครุภัณฑ์</span>
            </div>
            <div id="nav-2-2">
                <span data-nav="goods:transfer">โอนครุภัณฑ์/พัสดุ</span>
            </div>
        </div>
        <div id="nav-3">
            <span data-uk-toggle="{target:'#nav-3', cls:'show'}">การบำรุง/ซ่อมแซม</span>
            <div id="nav-3-1">
                <span data-nav="maintain">รายการแจ้งชำรุด</span>
            </div>
        </div>
        <div id="nav-4">
            <span data-uk-toggle="{target:'#nav-4', cls:'show'}">การเบิกครุภัณฑ์/พัสดุ</span>
            <div id="nav-4-1">
                <span data-nav="borrow">รายการเบิก/ยืม-คืน</span>
            </div>
        </div>
        <div id="nav-5">
            <span data-uk-toggle="{target:'#nav-5', cls:'show'}">การออกรายงาน</span>
            <div id="nav-5-1">
                <span>รายงาน 1</span>
            </div>
            <div id="nav-5-2">
                <span>รายงาน 2</span>
            </div>
        </div>
        <!--<ul class="tm-nav uk-nav" data-uk-nav="">
            <li class="uk-nav-header">แดชบอร์ด</li>
            <li><a data-toggle='{"target":".sys-dashboard", "animation":"uk-animation-slide-left"}'>แดชบอร์ด</a></li>
            <li class="uk-nav-header">การจัดการครุภัณฑ์</li>
            <li><a data-toggle='{"target":".sys-good-add", "animation":"uk-animation-slide-left"}'>เพิ่มครุภัณฑ์</a></li>
            <li><a data-toggle='{"target":".sys-goods-list", "animation":"uk-animation-slide-left"}'>รายการครุภัณฑ์</a></li>
            <li><a href="sale.jsp">ตัดจำหน่าย/บริจาค</a></li>
            <li><a href="transfer.jsp">โอนย้ายความเป็นเจ้าของ</a></li>
            <li class="uk-nav-header">ครุภัณฑ์ชำรุด</li>
            <li><a hre
                   f="repair-list.jsp">รายการซ่อม</a></li>
            <li><a href="goodrepairrep.jsp">แจ้งซ่อม</a></li>
            <li class="uk-nav-header">การเบิกพัสดุ</li>
            <li><a href="">รายการยืม-คืน</a></li>
            <li><a href="">เพิ่มรายการยืม-คืน</a></li>
            <li><a href="">แก้ไข/ลบ รายการยืม-คืน</a></li>
            <li class="uk-nav-header">รายงาน</li>
            <li><a href="">การออกรายงาน</a></li>
        </ul>-->
    </nav>
    <section class="container" data-uk-observe>
        <div class="sys-dashboard">
            <div class="container">
                <div class="uk-grid uk-grid-small" data-uk-grid-margin>
                    <div class="uk-width-small-1-1 uk-width-medium-1-3">
                        <div class="uk-panel uk-panel-box uk-overflow-container">
                            <h3>รายการใกล้คืน</h3>

                            <div class="uk-overflow-container">
                                <table class="uk-table uk-table-striped uk-table-condensed uk-text-nowrap">
                                    <thead>
                                    <tr>
                                        <th>เลขครุภัณฑ์</th>
                                        <th>รายการ</th>
                                        <th>เวลาคืน</th>
                                    </tr>
                                    </thead>
                                    <tfoot>
                                    <tr>
                                        <td>...</td>
                                        <td>...</td>
                                        <td>...</td>
                                    </tr>
                                    </tfoot>
                                    <tbody>
                                    <tr>
                                        <td>...</td>
                                        <td>...</td>
                                        <td>...</td>
                                    </tr>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>
                    <div class="uk-width-small-1-1 uk-width-medium-1-3">
                        <div class="uk-panel uk-panel-box ">
                            <h3>รายการต้องตัดจำหน่าย</h3>

                            <div class="uk-overflow-container">
                                <table class="uk-table uk-table-striped uk-table-condensed uk-text-nowrap">
                                    <thead>
                                    <tr>
                                        <th>เลขครุภัณฑ์</th>
                                        <th>รายการ</th>
                                        <th>จำนวน</th>
                                        <th>วันที่ตัดจำหน่าย</th>
                                    </tr>
                                    </thead>
                                    <tfoot>
                                    <tr>
                                        <td>...</td>
                                        <td>...</td>
                                        <td>...</td>
                                        <td>...</td>
                                    </tr>
                                    </tfoot>
                                    <tbody>
                                    <tr>
                                        <td>...</td>
                                        <td>...</td>
                                        <td>...</td>
                                        <td>...</td>
                                    </tr>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>
                    <div class="uk-width-small-1-1 uk-width-medium-1-3">
                        <div class="uk-panel uk-panel-box">
                            <h3>รายการแจ้งซ่อม</h3>

                            <div class="uk-overflow-container">
                                <table class="uk-table uk-table-striped uk-table-condensed uk-text-nowrap">
                                    <thead>
                                    <tr>
                                        <th>เลขครุภัณฑ์</th>
                                        <th>รายการ</th>
                                        <th>วันที่แจ้งซ่อม</th>
                                        <th>สถานะ</th>
                                    </tr>
                                    </thead>
                                    <tfoot>
                                    <tr>
                                        <td>...</td>
                                        <td>...</td>
                                        <td>...</td>
                                        <td>...</td>
                                    </tr>
                                    </tfoot>
                                    <tbody>
                                    <tr>
                                        <td>...</td>
                                        <td>...</td>
                                        <td>...</td>
                                        <td>...</td>
                                    </tr>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>
                    <div class="uk-width-small-1-1 uk-width-medium-1-3">
                        <div class="uk-panel uk-panel-box">
                            <h3>ครุภัณฑ์ประจำที่</h3>

                            <div class="canvas-holder">
                                <canvas id="canvas-place" width="300"></canvas>
                            </div>
                            <script>
                                var randomScalingFactor = function () {
                                    return Math.round(Math.random() * 100);
                                };
                                var radarChartData = [
                                    {
                                        value: randomScalingFactor(),
                                        color: "#F7464A",
                                        highlight: "#FF5A5E",
                                        label: "สถานที่ 1"
                                    },
                                    {
                                        value: randomScalingFactor(),
                                        color: "#46BFBD",
                                        highlight: "#5AD3D1",
                                        label: "สถานที่ 2"
                                    },
                                    {
                                        value: randomScalingFactor(),
                                        color: "#FDB45C",
                                        highlight: "#FFC870",
                                        label: "สถานที่ 3"
                                    },
                                    {
                                        value: randomScalingFactor(),
                                        color: "#949FB1",
                                        highlight: "#A8B3C5",
                                        label: "สถานที่ 4"
                                    },
                                    {
                                        value: randomScalingFactor(),
                                        color: "#4D5360",
                                        highlight: "#616774",
                                        label: "สถานที่ 5"
                                    }
                                ];
                                var myRadar = new Chart(document.getElementById("canvas-place").getContext("2d")).Doughnut(radarChartData, {
                                    responsive: true
                                });
                                var legendHolder = document.createElement('div');
                                legendHolder.innerHTML = myRadar.generateLegend();
                                document.getElementById("canvas-place").parentNode.parentNode.appendChild(legendHolder.firstChild);

                            </script>
                        </div>
                    </div>
                    <div class="uk-width-small-1-1 uk-width-medium-1-3">
                        <div class="uk-panel uk-panel-box">
                            <h3>ปริมาณการยืม-คืน</h3>

                            <div class="canvas-holder">
                                <canvas id="canvas-borrow" width="300"></canvas>
                            </div>
                            <ul class="bar-legend">
                                <li>
                                    <span style="background-color:rgba(220,220,220,0.5)"></span>ยืม
                                </li>
                                <li><span style="background-color:rgba(151,187,205,0.5)"></span>คืน
                                </li>
                            </ul>
                            <script>
                                var _1 = Math.round(Math.random() * 100);
                                var _2 = Math.round(Math.random() * 100);
                                var _3 = Math.round(Math.random() * 100);
                                var _4 = Math.round(Math.random() * 100);
                                var _5 = Math.round(Math.random() * 100);
                                var _6 = Math.round(Math.random() * 100);
                                var _7 = Math.round(Math.random() * 100);

                                var barChartData = {
                                    labels: ["January", "February", "March", "April", "May", "June", "July"],
                                    datasets: [
                                        {
                                            fillColor: "rgba(220,220,220,0.5)",
                                            strokeColor: "rgba(220,220,220,0.8)",
                                            highlightFill: "rgba(220,220,220,0.75)",
                                            highlightStroke: "rgba(220,220,220,1)",
                                            data: [_1, _2, _3, _4, _5, _6, _7],
                                            label: "ยืม",
                                            lineColor: "#4D5360"
                                        },
                                        {
                                            fillColor: "rgba(151,187,205,0.5)",
                                            strokeColor: "rgba(151,187,205,0.8)",
                                            highlightFill: "rgba(151,187,205,0.75)",
                                            highlightStroke: "rgba(151,187,205,1)",
                                            data: [Math.round(_1 * Math.random()),
                                                Math.round(_2 * Math.random()),
                                                Math.round(_3 * Math.random()),
                                                Math.round(_4 * Math.random()),
                                                Math.round(_5 * Math.random()),
                                                Math.round(_6 * Math.random()),
                                                Math.round(_7 * Math.random())],
                                            label: "คืน",
                                            lineColor: "#F7464A"
                                        }
                                    ]
                                }
                                var ctx = document.getElementById("canvas-borrow").getContext("2d");
                                myBar = new Chart(ctx).Bar(barChartData, {
                                    responsive: true
                                });

                            </script>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <div class="sys-goods-list uk-hidden">
            <div class="info-panel good-info hide">
                <div class="info-title">
                    <a  class="uk-close" data-info-panel="hide"></a>

                    <div class="flex">
                        <h3 class="good-title"><span class="sys-subtitle">ชื่อครุภัณฑ์</span>Notebook Toshiba M300 No.91
                        </h3>
                        <i class="uk-icon-pencil"></i>
                    </div>
                    <h3><span class="sys-subtitle">รหัสครุภัณฑ์</span>OPDC:01-042041-00-0001.130/51</h3>
                </div>


                <div class="sub-info">
                    <div class="flex">
                        <h3><span class="sys-subtitle">หมายเลขและทะเบียน</span>78361397W</h3>
                        <i class="uk-icon-pencil"></i>
                    </div>

                    <h3><span class="sys-subtitle">เจ้าของ</span>นาย... ...</h3>

                    <div class="flex ">
                        <div class="flex uk-width-1-2">
                            <h3><span class="sys-subtitle">ประเภท</span>ครุภัณฑ์สำนักงาน</h3>
                            <i class="uk-icon-pencil"></i>
                        </div>

                        <div class="flex uk-width-1-2">
                            <h3><span class="sys-subtitle">ชนิด</span>คอมพิวเตอร์</h3>
                            <i class="uk-icon-pencil"></i>
                        </div>


                    </div>
                    <div class="flex">
                        <h3 class="uk-width-1-2"><span class="sys-subtitle">ราคาต่อหนวย</span> 32,500 บาท</h3>

                        <h3 class="uk-width-1-2"><span class="sys-subtitle">จำนวน</span> 1 เครื่อง</h3>
                    </div>

                    <div class="flex">
                        <h3 class="uk-width-1-2"><span class="sys-subtitle">วิธีรับ</span>รับโอน ก.พ.</h3>

                        <h3 class="uk-width-1-2"><span class="sys-subtitle">วันที่รับ</span>1 ก.ค. 2547</h3>
                    </div>
                    <h3><span class="sys-subtitle">สถานะ</span>ปกติ</h3>

                    <h3><span class="sys-subtitle">ใช้ประจำที่</span>กลุ่มพัฒนาระบบ (จีระพร)</h3>

                    <h3><span class="sys-subtitle">วันหมดประกัน</span>1 ก.ค. 2550</h3>
                    <table id="good-doc" class="good uk-table uk-table-hover uk-table-striped">
                        <caption>เอกสารที่เกี่ยวข้อง</caption>
                        <tr>
                            <th style="width: 100px;">เอกสาร</th>
                        </tr>
                        <tr>
                            <td><a >เอกสารการรับ</a></td>
                        </tr>
                        <tr>
                            <td>เอกสารแจ้งซ่อม 12/06/48</td>
                        </tr>
                        <tr>
                            <td>เอกสารตัดจำหน่าย</td>
                        </tr>
                    </table>

                    <table id="good-borrow" class="good uk-table uk-table-hover uk-table-striped">
                        <caption>รายการยืม-คืน</caption>
                        <tr>
                            <th style="width: 100px;">ชื่อ-นามสกุล</th>
                            <th>ยืม</th>
                            <th>คืน</th>
                        </tr>
                        <tr>
                            <td>นาย... ....</td>
                            <td>1 ก.ค. 57</td>
                            <td>10 ก.ค. 57</td>
                        </tr>
                        <tr>
                            <td>นาย... ....</td>
                            <td>1 ก.ค. 57</td>
                            <td>10 ก.ค. 57</td>
                        </tr>
                        <tr>
                            <td>นาย... ....</td>
                            <td>1 ก.ค. 57</td>
                            <td>10 ก.ค. 57</td>
                        </tr>
                    </table>

                    <table id="good-item" class="good uk-table uk-table-hover uk-table-striped">
                        <caption>รายการครุภัณฑ์ย่อย</caption>
                        <tr>
                            <th style="width: 100px;">รายการ</th>
                            <th style="width: 50px;">หมายเลข</th>
                            <th>จำนวน</th>
                        </tr>
                        <tr>
                            <td>Adapter Toshiba</td>
                            <td>6032B0009901-0719-0096327</td>
                            <td>1 อัน</td>
                        </tr>
                        <tr>
                            <td>Mouse</td>
                            <td></td>
                            <td>1 อัน</td>
                        </tr>
                        <tr>
                            <td>กระเป๋า Toshiba</td>
                            <td></td>
                            <td>1 อัน</td>
                        </tr>
                    </table>

                    <table id="" class="good uk-table uk-table-hover uk-table-striped">
                        <caption>รายการเปลี่ยนแปลง</caption>
                        <tr>
                            <th style="width: 100px;">รายการ</th>
                            <th>เอกสาร</th>
                        </tr>
                        <tr>
                            <td>โอนย้ายเจ้าของ A</td>
                            <td></td>
                        </tr>
                        <tr>
                            <td>แจ้งซ่อม วว/ดด/ปป</td>
                            <td><a >จซ. 1925-22</a></td>
                        </tr>
                        <tr>
                            <td>บริจาค มูลนิธิ วว/ดด/ปป</td>
                            <td><a >บจ. 145/22-7</a></td>
                        </tr>
                    </table>
                    <h3><span class="sys-subtitle">หมายเหตุ</span>KP 78/104-39</h3>
                </div>


            </div>
            <div class="content-header">
                <ul class="uk-breadcrumb">
                    <li><span>การจัดการครุภัณฑ์</span></li>
                    <li class="uk-active"><span>รายการครุภัณฑ์</span></li>
                </ul>
                <form class="uk-form uk-form-stacked sys-search-form">
                    <div class="uk-form-row">
                        <div class="uk-form-icon sys-search-box">
                            <i class="uk-icon-search"></i>
                            <input type="text" placeholder="ค้นหา" class="uk-form-width-large">
                        </div>
                        <a class="uk-button uk-button-primary sys-search-button" style="margin-left: -5px;width:70px"><i
                                class="uk-icon-search"></i></a>
                    </div>
                </form>
            </div>
            <div class="table-header">
                <table class="uk-table goodlist" style="margin-bottom:0">
                    <thead>
                    <tr>
                        <th>
                            <div class="th-inner">วันที่รับ</div>
                        </th>
                        <th>
                            <div class="th-inner">เลขที่ หรือรหัส</div>
                        </th>
                        <th>
                            <div class="th-inner">รายละเอียด</div>
                        </th>
                        <th>
                            <div class="th-inner">ราคา</div>
                        </th>
                        <th>
                            <div class="th-inner">วิธีได้มา</div>
                        </th>
                        <th>
                            <div class="th-inner">ใช้ประจำที่</div>
                        </th>
                    </tr>
                    </thead>
                </table>
            </div>
            <div class="table-container">
                <table class="uk-table goodlist" style="margin-top:0">
                    <tbody>
                    <tr>
                        <td></td>
                        <td></td>
                        <td class="sys-color-blue sys-hover-bold sys-font-12 taphover"><i class="uk-icon-plus-square"></i>
                            เพิ่มครุภัณฑ์ใหม่
                        </td>
                        <td></td>
                        <td></td>
                        <td></td>
                    </tr>
                    <tr data-info-panel="show">
                        <td>1 ก.ค. 2547</td>
                        <td>OPDC ; 01-042497-00-0000.1</td>
                        <td>ชั้นไม้วางเอกสารขนาด 16x27x29 "</td>
                        <td>700</td>
                        <td>รับโอน ก.พ.</td>
                        <td>ภูมิภาค</td>
                    </tr>
                    <tr data-info-panel="show">
                        <td>1 ก.ค. 2547</td>
                        <td>OPDC ; 01-042497-00-0000.2</td>
                        <td>ชั้นไม้วางเอกสาร 3 ชั้น ขนาด 24x16x32 ลักกี้ รุ่น SN-1624</td>
                        <td>1,500</td>
                        <td>รับโอน ก.พ.</td>
                        <td>ภูมิภาค</td>
                    </tr>
                    <tr data-info-panel="show">
                        <td>1 ก.ค. 2547</td>
                        <td>OPDC ; 01-042497-00-0000.3</td>
                        <td>ชั้นเหล็ก ขนาด 16x24x27 ลักกี้ รุ่น SN-1624</td>
                        <td>7500</td>
                        <td>รับโอน ก.พ.</td>
                        <td>สลธ. (ห้องถ่ายเอกสาร 2)</td>
                    </tr>
                    <tr onclick="opnInfo()">
                        <td>1 ก.ค. 2547</td>
                        <td>OPDC ; 01-042497-00-0000.4</td>
                        <td>ชั้นไม้วางเอกสาร 3 ชั้น ขนาด 24x16x32 ลักกี้ รุ่น SN-1624</td>
                        <td>1,500</td>
                        <td>รับโอน ก.พ.</td>
                        <td>กลุ่มพัฒนาระบบ (จีระพร)</td>
                    </tr>
                    <tr onclick="opnInfo()">
                        <td>1 ก.ค. 2547</td>
                        <td>OPDC ; 01-042497-00-0000.5</td>
                        <td>ชั้นไม้วางเอกสาร 3 ชั้น ขนาด 24x16x32 ลักกี้ รุ่น SN-1624</td>
                        <td>1,500</td>
                        <td>รับโอน ก.พ.</td>
                        <td></td>
                    </tr>

                    <tr onclick="opnInfo()">
                        <td>1 ก.ค. 2547</td>
                        <td>OPDC ; 01-042497-00-0000.6</td>
                        <td>ชั้นไม้วางเอกสาร 3 ชั้น ขนาด 24x16x32 ลักกี้ รุ่น SN-1624</td>
                        <td>1,500</td>
                        <td>รับโอน ก.พ.</td>
                        <td></td>
                    </tr>
                    <tr>
                        <td>1 ก.ค. 2547</td>
                        <td>OPDC ; 01-042497-00-0000.5</td>
                        <td>ชั้นไม้วางเอกสาร 3 ชั้น ขนาด 24x16x32 ลักกี้ รุ่น SN-1624</td>
                        <td>1,500</td>
                        <td>รับโอน ก.พ.</td>
                        <td></td>
                    </tr>
                    <tr>
                        <td>1 ก.ค. 2547</td>
                        <td>OPDC ; 01-042497-00-0000.5</td>
                        <td>ชั้นไม้วางเอกสาร 3 ชั้น ขนาด 24x16x32 ลักกี้ รุ่น SN-1624</td>
                        <td>1,500</td>
                        <td>รับโอน ก.พ.</td>
                        <td></td>
                    </tr>
                    <tr>
                        <td>1 ก.ค. 2547</td>
                        <td>OPDC ; 01-042497-00-0000.5</td>
                        <td>ชั้นไม้วางเอกสาร 3 ชั้น ขนาด 24x16x32 ลักกี้ รุ่น SN-1624</td>
                        <td>1,500</td>
                        <td>รับโอน ก.พ.</td>
                        <td></td>
                    </tr>
                    <tr>
                        <td>1 ก.ค. 2547</td>
                        <td>OPDC ; 01-042497-00-0000.5</td>
                        <td>ชั้นไม้วางเอกสาร 3 ชั้น ขนาด 24x16x32 ลักกี้ รุ่น SN-1624</td>
                        <td>1,500</td>
                        <td>รับโอน ก.พ.</td>
                        <td></td>
                    </tr>
                    <tr>
                        <td>1 ก.ค. 2547</td>
                        <td>OPDC ; 01-042497-00-0000.5</td>
                        <td>ชั้นไม้วางเอกสาร 3 ชั้น ขนาด 24x16x32 ลักกี้ รุ่น SN-1624</td>
                        <td>1,500</td>
                        <td>รับโอน ก.พ.</td>
                        <td></td>
                    </tr>
                    <tr>
                        <td>1 ก.ค. 2547</td>
                        <td>OPDC ; 01-042497-00-0000.5</td>
                        <td>ชั้นไม้วางเอกสาร 3 ชั้น ขนาด 24x16x32 ลักกี้ รุ่น SN-1624</td>
                        <td>1,500</td>
                        <td>รับโอน ก.พ.</td>
                        <td></td>
                    </tr>
                    <tr>
                        <td>1 ก.ค. 2547</td>
                        <td>OPDC ; 01-042497-00-0000.5</td>
                        <td>ชั้นไม้วางเอกสาร 3 ชั้น ขนาด 24x16x32 ลักกี้ รุ่น SN-1624</td>
                        <td>1,500</td>
                        <td>รับโอน ก.พ.</td>
                        <td></td>
                    </tr>
                    <tr>
                        <td>1 ก.ค. 2547</td>
                        <td>OPDC ; 01-042497-00-0000.5</td>
                        <td>ชั้นไม้วางเอกสาร 3 ชั้น ขนาด 24x16x32 ลักกี้ รุ่น SN-1624</td>
                        <td>1,500</td>
                        <td>รับโอน ก.พ.</td>
                        <td></td>
                    </tr>
                    <tr>
                        <td>1 ก.ค. 2547</td>
                        <td>OPDC ; 01-042497-00-0000.5</td>
                        <td>ชั้นไม้วางเอกสาร 3 ชั้น ขนาด 24x16x32 ลักกี้ รุ่น SN-1624</td>
                        <td>1,500</td>
                        <td>รับโอน ก.พ.</td>
                        <td></td>
                    </tr>
                    </tbody>
                </table>
            </div>
        </div>
    </section>
    <script type="text/javascript">



        var APP = APP || {};
        APP.createNS = function (namespace) {
            var nsparts = namespace.split(".");
            var parent = APP;

            // we want to be able to include or exclude the root namespace so we strip
            // it if it's in the namespace
            if (nsparts[0] === "APP") {
                nsparts = nsparts.slice(1);
            }

            // loop through the parts and create a nested namespace if necessary
            for (var i = 0; i < nsparts.length; i++) {
                var partname = nsparts[i];
                // check if the current parent already has the namespace declared
                // if it isn't, then create it
                if (typeof parent[partname] === "undefined") {
                    parent[partname] = {};
                }
                // get a reference to the deepest element in the hierarchy so far
                parent = parent[partname];
            }
            // the parent is now constructed with empty namespaces and can be used.
            // we return the outermost namespace
            return parent;
        };

        var configs = APP.createNS("APP.CONFIG");
        var model = APP.createNS("APP.MODEL");
        var view = APP.createNS("APP.VIEW");

        configs = {
            NAV_BAR:{
                NAV_OVERVIEW:"#nav-1-1",
                NAV_GOODS:"#nav-2-1",
                NAV_GOODSTRANSFER:"#nav-2-2",
                NAV_MAINTAIN:"#nav-3-1",
                NAV_BORROW:"#nav-4-1"
            },
            MAIN_CONTAINER:{
                CONTAINER_NAME: "section.container"
            },
            UPLOAD_PANEL: {
                CONTAINER_NAME: ".upload-panel",
                CONTAINER_UPLOAD_NEW: "#upload-new",
                CONTAINER_DOC_GRID: ".doc-grid",
                CONTAINER_DOC_GALLERY: "#doc-gallery",
                TAB_DOC_UPLOAD: "#doc-upload-tab",
                TAB_DOC_URL: "#doc-url-tab",
                TAB_DOC_GALLERY: "#doc-gallery-tab",
                BUTTON_DOC_ATTACH: "#attach-docs"
            },
            INFO_PANEL:{
                CONTAINER_NAME: ".good-info"
            },
            FORM_ADD_GOOD: {
                CONTAINER_NAME: ".form-add-good",
                CONTAINER_RECV_METHOD: "#recv_method",
                CONTAINER_PERSONS: "#persons",
                CONTAINER_DOC_ATTACH: "#doc-attach",
                CONTAINER_CATEGORIES: "#categories",
                CONTAINER_SUB_CATEGORIES: "#sub_categories",
                CONTAINER_GPSC_NAME: "#gpsc_name",
                CONTAINER_GOOD_ID_EX: "#good-id-ex",
                CONTAINER_PLACES: "#places",
                CONTAINER_UNIT: "#units",
                INPUT_OWNER: "#owner",
                INPUT_CATEGORIES: "#cat",
                INPUT_SUB_CATEGORIES: "#sub_cat",
                INPUT_GPSC_CODE: "#gpsc_code",
                INPUT_GPSC_TYPE_1: "#gpsc_type_1",
                INPUT_GPSC_TYPE_2: "#gpsc_type_2",
                INPUT_PLACE: "#place",
                INPUT_UNIT: "#unit"

            },
            LOADING_MSG: '<i class="uk-icon-spinner uk-icon-spin"></i> กำลังโหลด...'
        };

        APP.nav = function(data){
            var html = '';
            switch (data){
                case 'goods':
                    html = '<div><div class="sys-menu-bar"><button data-nav="goods:add" class="uk-button uk-button-primary">เพิ่มครุภัณฑ์</button><button class="uk-button uk-button-danger" disabled>ลบ</button></div><div><table class="uk-table"><thead><tr><th></th><th><div>วันที่รับ</div></th><th><div>เลขที่ หรือรหัส</div></th><th><div>รายละเอียด</div></th><th><div>ราคา</div></th><th><div>วิธีได้มา</div></th><th><div>ใช้ประจำที่</div></th></tr></thead><tbody><tr data-info-panel="show"><td class="chkbox"><input type="checkbox"><span class="checked"></span></td><td>1 ก.ค. 2547</td><td>OPDC ; 01-042497-00-0000.1</td><td>ชั้นไม้วางเอกสารขนาด 16x27x29 "</td><td>700</td><td>รับโอน ก.พ.</td><td>ภูมิภาค</td></tr></tbody></table></div></div>';
                    $(configs.NAV_BAR.NAV_GOODS).addClass("active");
                    $(configs.NAV_BAR.NAV_GOODS).parent().addClass("show");
                    break;
                case 'goods:add':
                    html = '<div class="sys-good-add flex flex-column"><div class="sys-menu-bar"><button data-nav="goods" class="uk-button" style="margin-right:15px">กลับ</button><button class="uk-button uk-button-primary">บันทึก</button></div><div class="info-panel upload-panel hide"><div class="tab"><div class="tab-bar uk-width-1-1"><h3 id="doc-upload-tab" class="active" data-tab=\'{"target":"#t1"}\'>อัปโหลด</h3><h3 id="doc-url-tab" data-tab=\'{"target":"#t2"}\'>แนบลิงค์</h3><h3 id="doc-gallery-tab" data-tab=\'{"target":"#t3"}\'>คลังเอกสาร</h3><a  class="uk-close" data-upload-panel></a></div><div class="tab-content"><div id="t1" class="flex flex-column no-padding" style="padding-bottom: 50px;"><div id="progressbar" class="uk-progress uk-hidden"><div class="uk-progress-bar" style="width: 0%;">...</div></div><div id="upload-drop" class="upload-doc uk-placeholder uk-text-center" style="margin:0"><i class="uk-icon-cloud-upload uk-icon-medium uk-text-muted uk-margin-small-right"></i><a class="uk-form-file">อัปโหลดใหม<input id="upload-select" type="file" multiple>่</a></div><div id="upload-new" data-uk-observe class="doc-grid uk-overflow-container"></div></div><div id="t2" class="uk-hidden" style="padding-bottom: 50px;">url</div><div id="t3" class="uk-hidden flex flex-column no-padding" style="padding-bottom: 50px;"><div class="uk-form doc-search uk-width-1-1"><div class="uk-form-icon uk-width-1-1"><i class="uk-icon-search"></i><input type="text" class="uk-width-1-1" placeholder="ค้นหา"/></div></div><div id="doc-gallery" data-uk-observe class="doc-grid uk-overflow-container"></div></div></div><div class="doc-confirm"><button id="attach-docs" class="uk-button uk-button-primary" disabled>แนบเอกสาร</button></div></div></div><form action="goods/add" method="post" class="form-add-good uk-form uk-form-stacked"><div id="form-add-good"><div class="uk-grid"><div class="uk-width-small-1-1 uk-width-medium-1-3"><fieldset><legend>ข้อมูลทั่วไป</legend><div class="flex flex-wrap"><div class="uk-form-row"><label class="uk-form-label" for="name">ชื่อครุภัณฑ์</label><div class="uk-form-controls"><input required id="name" name="name" type="text" placeholder="ชื่อครุภัณฑ์" value=""/></div></div></div><div class="flex flex-wrap"><div style="width:100px;" class="uk-form-row"><label class="uk-form-label" for="price">ราคาต่อหน่วย</label><div class="uk-form-controls"><input required id="price" name="price" type="number" min="0" placeholder="ราคาต่อหน่วย" value=""/></div></div><div style="width:100px;" class="uk-form-row"><label class="uk-form-label" for="quantity">จำนวน</label><div class="uk-form-controls"><input  required id="quantity" name="quantity" type="number" min="0" placeholder="จำนวน" value="1"/></div></div><div style="width:100px;" class="uk-form-row"><label class="uk-form-label" for="unit">หน่วยนับ</label><div class="uk-form-controls"><input required type="text" id="units" placeholder="อัน, ตัว"/><input type="hidden" id="unit" name="unit"/></div></div></div><div class="uk-form-row"><label class="uk-form-label" for="detail">รายละเอียด/ลักษณะ</label><div class="uk-form-controls"><textarea id="detail" name="detail" cols="20" rows="4"placeholder="รายละเอียด/ลักษณะ เช่น ชั้นไม้วางเอกสารขนาด 16x27x29"></textarea></div></div></fieldset><fieldset><legend>ข้อมูลการรับ</legend><div  class="flex flex-wrap"><div style="width:150px"class="uk-form-row"><label class="uk-form-label">วิธีรับ</label><div id="recv_method" class="uk-form-controls"></div></div><div style="width:150px" class="uk-form-row"><label class="uk-form-label" for="recv_date">วันที่รับ</label><div class="uk-form-controls"><div class="uk-form-icon"><i class="uk-icon-calendar"></i><input required type="text" id="recv_date" name="recv_date" placeholder="วว/ดด/ปปปป"   data-uk-datepicker="{format:\'DD/MM/YYYY\'}" autocomplete="off"></div></div></div></div><div class="uk-form-row"><label class="uk-form-label" for="persons">เจ้าของ</label><div class="uk-form-controls"><input required type="text" id="persons" placeholder="เจ้าของ"/><input type="hidden" id="owner" name="owner"/></div></div></fieldset></div><div class="uk-width-small-1-1 uk-width-medium-1-3"><fieldset><legend>ข้อมูลอื่น ๆ</legend><div class="uk-form-row"><label class="uk-form-label" for="exp_date">วันตัดจำหน่าย</label><div class="uk-form-controls"><div class="uk-form-icon"><i class="uk-icon-calendar"></i><input type="text" id="exp_date" name="exp_date" placeholder="วว/ดด/ปปปป"   data-uk-datepicker="{format:\'DD/MM/YYYY\'}" autocomplete="off"></div></div></div><div class="uk-form-row"><label class="uk-form-label" for="exp_warn_date">วันหมดประกัน</label><div class="uk-form-controls"><div class="uk-form-icon"><i class="uk-icon-calendar"></i><input type="text" id="exp_warn_date" name="exp_warn_date" placeholder="วว/ดด/ปปปป"   data-uk-datepicker="{format:\'DD/MM/YYYY\'}" autocomplete="off"></div></div></div><div class="uk-form-row"><label class="uk-form-label" for="detail">สถานที่ใช้ประจำ</label><div class="uk-form-controls"><input id="places" placeholder="สถานที่ใช้ประจำ" autocomplete="off"/><input type="hidden" id="place" name="place" /></div></div></fieldset><fieldset><legend>การออกเลขครุภัณฑ์</legend><div class="flex flex-wrap"><div class="uk-form-row"><h3 id="good-id-ex" class="uk-text-center">OPDC ; XX-XXXXXX-XX-XXXX.YY</h3></div></div><div class="flex flex-wrap"><div class="uk-form-row"><label class="uk-form-label" for="gpsc_name">ชื่อสินค้าและบริการภาครัฐ (GPSC)</label><div class="uk-form-controls"><input required="" id="gpsc_name" placeholder="เช่น อาหารแมว, ปลั๊กไฟฟ้า"/><input type="hidden"  id="gpsc_code" name="gpsc_code"/></div></div></div><div class="flex flex-wrap"><div style="width:150px;" class="uk-form-row"><label class="uk-form-label">ประเภท</label><div class="uk-form-controls"><input required="" disabled="" id="categories" placeholder="ประเภท" autocomplete="off"><input type="hidden" id="cat" name="cat"></div></div><div style="width:150px;" class="uk-form-row"><label class="uk-form-label">ชนิด</label><div class="uk-form-controls"><input required="" id="sub_categories" placeholder="ชนิด" autocomplete="off"><input type="hidden" id="sub_cat" name="sub_cat"></div></div></div></fieldset></div><div class="uk-width-small-1-1 uk-width-medium-1-3"><fieldset><legend>เอกสารที่เกี่ยวข้อง</legend><div class="uk-form-row"><label class="uk-form-label" for="">แนบเอกสาร</label><div class="uk-form-controls" style="min-width:300px;"><div class="uk-placeholder uk-text-center"><div id="doc-attach-drop"><i class="uk-icon-cloud-upload uk-icon-medium uk-text-muted uk-margin-small-right"></i>แนบเอกสารโดยลากไฟล์มาไว้ที่นี้ <a class="uk-form-file" data-upload-panel>หรือคลิกเพื่อเลือก</a></div></div><div id="doc-attach"></div></div></div></fieldset></div></div></div><div class="container" id="form-add-confirm" style="display:none"><div class="sub-info"><h2>::ยืนยันการเพิ่มครุภัณฑ์::</h2><h3><span class="sys-subtitle">ชื่อครุภัณฑ์</span>Notebook Toshiba M300</h3><div class="uk-grid"><h3><span class="sys-subtitle">รายละเอียด</span>...</h3></div><div class="uk-grid" style="margin-top: 10px;"><h3><span class="sys-subtitle">ประเภทครุภัณฑ์</span>ครุภัณฑ์สำนักงาน</h3><h3><span class="sys-subtitle">ชนิด</span>คอมพิวเตอร์</h3></div><div class="uk-grid" style="margin-top: 10px;"><h3 class=""><span class="sys-subtitle">ราคาต่อหน่วย</span>35,000</h3><h3 class=""><span class="sys-subtitle">จำนวน</span>5</h3></div><div class="uk-grid" style="margin-top: 10px;"><h3 class=""><span class="sys-subtitle">รับมาด้วยวิธี</span>ตกลงราคา</h3><h3 class=""><span class="sys-subtitle">วันที่</span>1 มกราคม 2557</h3></div><div class="uk-grid" style="margin-top: 10px;"><h3 class=""><span class="sys-subtitle">เจ้าของ</span>... ...</h3></div></div></div></form></div>';
                    $(configs.NAV_BAR.NAV_GOODS).addClass("active");
                    $(configs.NAV_BAR.NAV_GOODS).parent().addClass("show");
                    break;
            }
            $(configs.MAIN_CONTAINER.CONTAINER_NAME).html(html);
            APP.domInit();
        }
        APP.alert = function (msg) {
            $.UIkit.notify("<i class='uk-icon-warning'></i> " + msg, {
                status: 'danger'
            });
        };
        APP.get = function (url,callback) {
            var request;
            if (window.XMLHttpRequest) { // Mozilla, Safari, IE7+ ...
                request = new XMLHttpRequest();
            } else if (window.ActiveXObject) { // IE 6 and older
                request = new ActiveXObject("Microsoft.XMLHTTP");
            }
            request.onreadystatechange = function(){
                if (request.readyState === 4) {
                    var data = JSON.parse(request.response);
                    if (request.status === 200 && data.result === "SUCCESS"){
                        data = data.msg;
                        callback(data);
                    }else if(data.result === "ERROR")
                        UIkit.notify("<i class='uk-icon-warning'></i> "+data.msg);
                }
            }
            request.open('GET', url); // `false` makes the request synchronous
            request.send();



        };
        APP.post = function (url, params,callback) {
            var request;
            if (window.XMLHttpRequest) { // Mozilla, Safari, IE7+ ...
                request = new XMLHttpRequest();
            } else if (window.ActiveXObject) { // IE 6 and older
                request = new ActiveXObject("Microsoft.XMLHTTP");
            }
            request.onreadystatechange = function(){
                if (request.readyState === 4) {
                    var data = JSON.parse(request.response);
                    if (request.status === 200 && data.result === "SUCCESS"){
                        data = data.msg;
                        callback(data);
                    }else if(data.result === "ERROR")
                        UIkit.notify("<i class='uk-icon-warning'></i> "+data.msg);
                }
            }
            request.open('POST', url);
            request.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
            request.send(params);

        }

        view.UPLOAD_PANEL = {
            config: configs.UPLOAD_PANEL,
            isShow: false,
            hide: function () {
                $(this.config.CONTAINER_NAME).addClass("hide");
                this.isShow = false;
            },
            show: function () {
                $(this.config.CONTAINER_NAME).removeClass("hide");
                this.isShow = true;
            },
            clear: function () {
                $(this.config.CONTAINER_UPLOAD_NEW).html("");
                $(this.config.CONTAINER_DOC_GRID + " .checked").removeClass("checked");
            }
        };
        view.INFO_PANEL = {
            config: configs.INFO_PANEL,
            isShow: false,
            hide: function () {
                $(this.config.CONTAINER_NAME).addClass("hide");
                this.isShow = false;
            },
            show: function () {
                $(this.config.CONTAINER_NAME).removeClass("hide");
                this.isShow = true;
            }
        }
        view.FORM_ADD_GOOD = {
            config: configs.FORM_ADD_GOOD,
            add: function (doc) {
                if (doc instanceof model.DOCUMENT) {
                    var c = "#close-" + doc.id;
                    var d = "#doc-" + doc.id;
                    var t = $(d).length;
                    if (t == 0) {
                        $(this.config.CONTAINER_DOC_ATTACH).append(doc.printMinimal());
                        $(c).click(function () {
                            $(d).remove();
                        })
                    }
                    view.UPLOAD_PANEL.hide();
                    view.UPLOAD_PANEL.clear();
                }
            },
            listMethod: function () {
                var that = this;
                var old_html = $(this.config.CONTAINER_RECV_METHOD).html();
                $(this.config.CONTAINER_RECV_METHOD).html(APP.LOADING_MSG);
                var o = model.RECEIVEMETHOD.list(function(o){
                    var html = '<select name="recv_method">';
                    $.each(o, function (idx, value) {
                        var id = value.id;
                        var name = value.name;
                        html += '<option value="' + id + '">' + name + '</option>';
                    });
                    html += "</select>";
                    $(that.config.CONTAINER_RECV_METHOD).html(html);
                });

            },
            listPerson: function () {
                var target = this.config.CONTAINER_PERSONS;
                $(target).html(this.config.LOADING_MSG);
                model.PERSON.list(function(o){
                    var lookups = [];
                    $.each(o, function (idx, value) {
                        lookups.push({
                            value: value.title + value.firstName + " " + value.lastName,
                            data: value.id + ""
                        });
                    });
                    $(target).autocomplete({
                        lookup: lookups,
                        onSearchStart: function(){
                            $(view.FORM_ADD_GOOD.config.INPUT_UNIT).val(0);
                        },
                        onSelect: function (s) {
                            $(view.FORM_ADD_GOOD.config.INPUT_OWNER).val(s.data)
                        }
                    });
                });

            },
            listSubCategories: function(){
                var target = this.config.CONTAINER_SUB_CATEGORIES;
                var old_html = $(target).html();
                $(target).html(this.config.LOADING_MSG);
                var o = model.CATEGORY.listSub(function(o){
                    var lookups = [];
                    $.each(o, function (idx, value) {
                        lookups.push({
                            value: value.name,
                            data: value
                        });
                    });
                    $(target).autocomplete({
                        showNoSuggestionNotice: true,
                        lookup: lookups,
                        onSearchStart: function(){
                            $(view.FORM_ADD_GOOD.config.INPUT_UNIT).val(0);
                        },
                        onSelect: function (s) {
                            $(view.FORM_ADD_GOOD.config.INPUT_SUB_CATEGORIES).val(s.data.id);
                            $(view.FORM_ADD_GOOD.config.INPUT_CATEGORIES).val(s.data.parent.id);
                            $(view.FORM_ADD_GOOD.config.CONTAINER_CATEGORIES).val(s.data.parent.name);
                        }
                    });
                });
            },
            listPlaces: function(){
                var target = this.config.CONTAINER_PLACES;
                var old_html = $(target).html();
                $(target).html(this.config.LOADING_MSG);
                var o = model.PLACE.list(function(o){
                    var lookups = [];
                    $.each(o, function (idx, value) {
                        lookups.push({
                            value: value.name,
                            data: value.id
                        });
                    });
                    $(target).autocomplete({
                        showNoSuggestionNotice: true,
                        lookup: lookups,
                        onSearchStart: function(){
                            $(view.FORM_ADD_GOOD.config.INPUT_UNIT).val(0);
                        },
                        onSelect: function (s) {
                            $(view.FORM_ADD_GOOD.config.INPUT_PLACE).val(s.data);
                        }
                    });
                });
            },
            listUnits: function(){
                var target = this.config.CONTAINER_UNIT;
                var old_html = $(target).html();
                $(target).html(this.config.LOADING_MSG);
                var o = model.UNIT.list(function(o){
                    var lookups = [];
                    $.each(o, function (idx, value) {
                        lookups.push({
                            value: value.name,
                            data: value.id
                        });
                    });
                    $(target).autocomplete({
                        lookup: lookups,
                        onSearchStart: function(){
                            $(view.FORM_ADD_GOOD.config.INPUT_UNIT).val(0);
                        },
                        onSelect: function (s) {
                            $(view.FORM_ADD_GOOD.config.INPUT_UNIT).val(s.data);
                        }
                    });
                });
            }
        };

        model.DOCUMENT = function () {
            this.map = function (o) {
                this.id = o.id;
                this.name = o.name;
                this.detail = o.detail;
                this.path = o.path;
                this.type = o.type;
                return this;
            };
            this.print = function(){
                var e = "";
                var t = this.path.lastIndexOf(".");
                if (t > 0) e = this.path.substring(t + 1);
                return '<div id="d' + this.id + '" class="document"><form><input name="id" type="hidden" value="' + this.id + '"/>' + '<div class="doc-preview no-selection selector ' + e + '" data-uk-toggle="{target:\'#d' + this.id + "',cls:'checked'}\">" + '<div class="uk-badge uk-badge-success">เลือก</div></div>' + '<div class="doc-detail"><h3 class="doc-title text-ellipsis" title="' + this.name + '"><input name="name" type="hidden" value="' + this.name + '"/><input type="hidden" name="path" value="' + this.path + '"/><a target="_blank" href="' + this.path + '">' + this.name + "</a>" + '<span class="sys-subtitle">' + this.type.name + "</span></h3>" + '<p class="doc-des  text-ellipsis" title=' + this.detail + ">" + this.detail + "</p></div></form></div>"
            };
            this.printMinimal = function(){
                return '<div id="doc-' + this.id + '" class="flex uk-placeholder"><div class="doc-link"><a href="' + this.path + '" target="_blank">' + this.name + '</a></div><input type="hidden" name="doc" value="' + this.id + '" /><a id="close-' + this.id + '" class="uk-close doc-close"></a></div>'
            };
        };
        model.DOCUMENT.list = function (callback) {
            var o = [];
            var p = APP.get("document/list",function(p){
                $.each(p, function (i, v) {
                    var a = new model.DOCUMENT();
                    o.push(a.map(v));
                });
                callback(o);
            });

        };
        model.DOCUMENT.get = function (id) {
            var p = APP.get("document/list?id=" + id);
            var a = new model.DOCUMENT();
            return a.map(p);
        };
        model.DOCUMENT.save = function (form,callback) {
            $(configs.UPLOAD_PANEL.BUTTON_DOC_ATTACH).text("กำลังบันทึก...");
            $(configs.UPLOAD_PANEL.BUTTON_DOC_ATTACH).disable();
            APP.post("document/add", $(form).serialize(),function(o){
                $(configs.UPLOAD_PANEL.BUTTON_DOC_ATTACH).text("แนบเอกสาร");
                $(configs.UPLOAD_PANEL.BUTTON_DOC_ATTACH).enable();
                var a = new model.DOCUMENT();
                callback(a.map(o));
            });

        };

        model.RECEIVEMETHOD = function () {
            this.map = function (o) {
                this.id = o.id;
                this.name = o.name;
                return this;
            }
        };
        model.RECEIVEMETHOD.list = function (callback) {
            var o = [];
            var p = APP.get("good/method/list",function(data){
                $.each(data, function (i, v) {
                    var a = new model.RECEIVEMETHOD();
                    o.push(a.map(v));
                });
                callback(o);
            });

        };

        model.PERSON = function () {
            this.map = function (o) {
                this.id = o.id;
                this.title = o.title;
                this.firstName = o.firstName;
                this.lastName = o.lastName;
                this.phone = o.phone;
                this.section = o.section;
                return this;
            }
        };
        model.PERSON.list = function (callback) {
            var o = [];
            var p = APP.get("person/list",function(data){
                $.each(data, function (i, v) {
                    var a = new model.PERSON();
                    o.push(a.map(v));
                });
                callback(o);
            });
        };

        model.CATEGORY = function(){
            this.map = function(o){
                this.id = o.id;
                this.name = o.name;
                if(o.parent != null)
                    this.parent = o.parent;
                return this;
            }
        }

        model.CATEGORY.list = function(callback){
            var o = [];
            var p = APP.get("cat/list",function(data){
                $.each(data, function (i, v) {
                    var a = new model.CATEGORY();
                    o.push(a.map(v));
                });
                callback(o);
            });

        }
        model.CATEGORY.listSub = function(callback){
            var o = [];
            var p = APP.get("cat/list",function(data){
                $.each(data, function (i, v) {
                    var a = new model.CATEGORY();
                    o.push(a.map(v));
                });
                callback(o);
            });

        }

        model.GPSC = function(){
            this.map = function(o){
                this.unspsc = o.unspsc;
                this.name = o.name;
                this.code = o.code;
                this.keyword = o.keyword;
                this.category = o.category;
                return this;
            }
        };

        model.GPSC.query = function(q,callback){
            var o = [];
            var p = APP.get("gpsc/search?q="+q,function(data){
                $.each(data, function (i, v) {
                    var a = new model.GPSC();
                    o.push(a.map(v));
                });
                callback(o);
            });

        }

        model.PLACE = function(){
            this.map = function(o){
                this.id = o.id;
                this.name = o.name;
                return this;
            }
        };

        model.PLACE.list = function(callback){
            var o = [];
            var p = APP.get("place/list",function(data){
                $.each(data, function (i, v) {
                    var a = new model.PLACE();
                    o.push(a.map(v));
                });
                callback(o);
            });
        }

        model.UNIT = function(){
            this.map = function(o){
                this.id = o.id;
                this.name = o.name;
                return this;
            }
        };

        model.UNIT.list = function(callback){
            var o = [];
            var p = APP.get("unit/list",function(data){
                $.each(data, function (i, v) {
                    var a = new model.UNIT();
                    o.push(a.map(v));
                });
                callback(o);
            });
        }


        APP.navFunc = function(){
            var hash = window.location.hash.replace("#!","");
            APP.nav(hash);
        };
        APP.domInit = function(){
            $("*[data-nav]").unbind("click");
            $("*[data-upload-panel]").unbind("click");
            $("*[data-info-panel]").unbind("click");
            $(configs.UPLOAD_PANEL.BUTTON_DOC_ATTACH).unbind("click");
            $(configs.UPLOAD_PANEL.TAB_DOC_GALLERY).unbind("click");
            $(".tab-bar>*[data-tab]").unbind("click");
            $("*[data-nav]").click(function(){
                var data = $(this).data('nav');
                if (typeof data != 'undefined') {
                    window.history.pushState({url:data},data+" - ระบบจัดการครุภัณฑ์", "#!"+data);
                    APP.nav(data);
                }
            });
            $(configs.UPLOAD_PANEL.CONTAINER_DOC_GRID)
            $("*[data-upload-panel]").click(function () {
                if (!view.UPLOAD_PANEL.isShow)
                    view.UPLOAD_PANEL.show();
                else
                    view.UPLOAD_PANEL.hide();
            });
            $("*[data-info-panel]").click(function () {
                if ($(this).data("info-panel") == "show")
                    view.INFO_PANEL.show();
                else
                    view.INFO_PANEL.hide();
            });
            $(configs.UPLOAD_PANEL.BUTTON_DOC_ATTACH).click(function () {
                $.each($("#upload-new .checked form"), function (index, value) {
                    var o = model.DOCUMENT.save(this,function(o){
                        view.FORM_ADD_GOOD.add(o);
                    });

                });
                $.each($("#doc-gallery .checked form"), function (idx, value) {
                    var a = new model.DOCUMENT();
                    var o = a.map($(value).serializeObject());
                    view.FORM_ADD_GOOD.add(o);
                });
            });
            $(configs.UPLOAD_PANEL.TAB_DOC_GALLERY).click(function () {
                $(configs.UPLOAD_PANEL.BUTTON_DOC_ATTACH).disable();
                var target = configs.UPLOAD_PANEL.CONTAINER_DOC_GALLERY;
                $(target).html(APP.LOADING_MSG);
                var docs = model.DOCUMENT.list(function(docs){
                    $(target).html("");
                    $.each(docs, function (idx, value) {
                        $(target).append(value.print());
                    });
                });

            });
            $(configs.UPLOAD_PANEL.CONTAINER_DOC_GRID).click(function () {
                var lists = $(configs.UPLOAD_PANEL.CONTAINER_DOC_GRID + " .checked");
                if (lists.length > 0) {
                    $(configs.UPLOAD_PANEL.BUTTON_DOC_ATTACH).enable();
                } else {
                    $(configs.UPLOAD_PANEL.BUTTON_DOC_ATTACH).disable();
                }
            });
            $(configs.FORM_ADD_GOOD.CONTAINER_GPSC_NAME).autocomplete({
                serviceUrl: 'gpsc/search',
                paramName:"q",
                ajaxOptions:{data:$(configs.FORM_ADD_GOOD.CONTAINER_GPSC_NAME).val()},
                transformResult: function(response) {
                    var lookups = [];
                    response = JSON.parse(response);
                    $.each(response.msg, function (idx, value) {
                        lookups.push({
                            value: value.name+" - "+value.code,
                            data: value.code
                        });
                    });
                    return {
                        suggestions: lookups
                    };
                },
                onSelect: function (s) {
                    $(configs.FORM_ADD_GOOD.INPUT_GPSC_CODE).val(s.data);
                    var year = (((new Date()).getFullYear())+543+"").substr(2,2);
                    $(configs.FORM_ADD_GOOD.CONTAINER_GOOD_ID_EX).text("OPDC ; "+ s.data.substr(0,2)+"-"+ s.data.substr(2,6)+"-"+ s.data.substr(8,2)+"-"+ s.data.substr(10,4));
                }
            });

            $('.menu li>a').click(function () {
                var data = $(this).data('toggle');
                if (typeof data.target != 'undefined') {
                    $("section.container>div").addClass('uk-hidden');
                    switch (data.target) {
                        case ".sys-good-add":
                            view.FORM_ADD_GOOD.listMethod();
                            view.FORM_ADD_GOOD.listPerson();
                            view.FORM_ADD_GOOD.listSubCategories();
                            view.FORM_ADD_GOOD.listPlaces();
                            view.FORM_ADD_GOOD.listUnits();
                            break;
                    }
                    $(data.target).removeClass('uk-hidden');
                    $.UIkit.offcanvas.hide([force = false]);
                }
            });
            $(".tab-bar>*[data-tab]").click(function () {
                var p = $(this).parent();
                p.children().removeClass("active");
                $(this).addClass("active");
                var data = $(this).data('tab');
                if (typeof data.target != 'undefined') {
                    var c = p.parent().children(".tab-content").children();
                    c.addClass("uk-hidden");
                    $(data.target).removeClass("uk-hidden");
                }
            });

        };
        APP.init = function () {
            $.fn.serializeObject = function () {
                var o = {};
                var a = this.serializeArray();
                $.each(a, function () {
                    if (o[this.name] !== undefined) {
                        if (!o[this.name].push) {
                            o[this.name] = [o[this.name]];
                        }
                        o[this.name].push(this.value || '');
                    } else {
                        o[this.name] = this.value || '';
                    }
                });
                return o;
            };
            $.fn.disable = function () {
                $(this).attr("disabled", "");
            };
            $.fn.enable = function () {
                $(this).removeAttr("disabled");
            };

            APP.navFunc();
            window.onpopstate = function(){
                APP.navFunc();
            }

            $(function () {
                var e = $("#progressbar"),
                        t = e.find(".uk-progress-bar"),
                        n = {
                            single: false,
                            action: "document/upload",
                            allow: "*.*",
                            loadstart: function () {
                                t.css("width", "0%").text("0%");
                                e.removeClass("uk-hidden")
                            },
                            progress: function (e) {
                                e = Math.ceil(e);
                                t.css("width", e + "%").text(e + "%")
                            },
                            allcomplete: function (n) {
                                n = $.parseJSON(n);
                                t.css("width", "100%").text("100%");
                                setTimeout(function () {
                                    e.addClass("uk-hidden")
                                }, 250);
                                if (n.result == "SUCCESS") {
                                    $.each(n.msg, function (e, t) {
                                        var n;
                                        switch (t.result) {
                                            case "SUCCESS":
                                                n = '<div id="' + t.id + '" class="document checked"><form action="doc/add" method="post">' + '<input type="hidden" name="path" value="' + t.path + '"/>' + '<div class="doc-preview no-selection selector ' + t.fileType + '" data-uk-toggle="{target:\'#' + t.id + "',cls:'checked'}\"><div class=\"uk-badge uk-badge-success\">เลือก</div></div>" + '<div class="doc-detail uk-form">' + '<div class="doc-title"><input type="text" name="name" placeholder="ชื่อเอกสาร" value="' + t.name + '"/></div>' + '<select name="type_id">' + '<option value="1">เอกสารการรับ/ใบเสร็จ</option>' + '<option value="2">เอกสารการโอน</option>' + '<option value="3">เอกสารการตัดจำหน่าย</option>' + '<option value="4">คู่มือ</option>' + '<option value="5">อื่น ๆ</option>' + "</select>" + '<textarea name="detail" placeholder="รายละเอียด"></textarea></div></form></div>';
                                                break;
                                            case "FAILED":
                                                n = '<div class="document">' + '<div class="doc-preview no-selection' + t.fileType + '"><div class="uk-badge uk-badge-danger">ล้มเหลว</div></div>' + '<div class="doc-detail">' + '<div class="doc-title"><h3 class="doc-title text-ellipsis" title="' + t.name + '">' + t.name + '<span class="sys-subtitle sys-color-red">อัพโหลดไฟล์ไม่สำเร็จ</span></h3></div>' + '<p class="doc-des text-ellipsis" title="' + t.msg + '" >' + t.msg + "</p>";
                                                break
                                        }
                                        $("#upload-new").append(n);
                                        $("#attach-docs").removeAttr("disabled")
                                    })
                                } else {
                                    alert("การอัพโหลดล้มเหลว")
                                }
                            }
                        };
                var r = $.UIkit.uploadSelect($("#upload-select"), n),
                        i = $.UIkit.uploadDrop($("#upload-drop"), n)
            });


        };


        $(document).ready(function () {
            APP.init();
        });


    </script>
</div>
</body>
</html>
