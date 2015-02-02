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
    <%@ include file="hscript.jsp" %>
</head>
<body>
<%@ include file="titlebar.jsp" %>
<nav class="uk-hidden-small uk-overflow-container">
    <%@ include file="sidebar.jsp" %>
</nav>
<section class="container">
    <div class="good-info" style="display: none;">


        <div class="info-title">
            <a href="#" class="uk-close"></a>
            <div class="flex">
                <h3 class="good-title"><span class="sys-subtitle">ชื่อครุภัณฑ์</span>Notebook Toshiba M300 No.91</h3>
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
                    <td><a href="#">เอกสารการรับ</a></td>
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
                    <td><a href="#">จซ. 1925-22</a></td>
                </tr>
                <tr>
                    <td>บริจาค มูลนิธิ วว/ดด/ปป</td>
                    <td><a href="#">บจ. 145/22-7</a></td>
                </tr>
            </table>
            <h3><span class="sys-subtitle">หมายเหตุ</span>KP 78/104-39</h3>
        </div>


    </div>
    <div class="sys-search">
        <ul class="uk-breadcrumb">
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
            <tr onclick="opnInfo()">
                <td>1 ก.ค. 2547</td>
                <td>OPDC ; 01-042497-00-0000.1</td>
                <td>ชั้นไม้วางเอกสารขนาด 16x27x29 "</td>
                <td>700</td>
                <td>รับโอน ก.พ.</td>
                <td>ภูมิภาค</td>
            </tr>
            <tr onclick="opnInfo()">
                <td>1 ก.ค. 2547</td>
                <td>OPDC ; 01-042497-00-0000.2</td>
                <td>ชั้นไม้วางเอกสาร 3 ชั้น ขนาด 24x16x32 ลักกี้ รุ่น SN-1624</td>
                <td>1,500</td>
                <td>รับโอน ก.พ.</td>
                <td>ภูมิภาค</td>
            </tr>
            <tr onclick="opnInfo()">
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
</section>
<script type="text/javascript">
    var info = false;

    function opnInfo() {
        if (info == false) {
            $(".good-info").toggle("slide", {direction: "right"}, 200);
            info = true;
        }
    }



    $('.taphover').on("touchstart", function (e) {
        'use strict';
        var link = $(this);
        if (link.hasClass('hover')) {
            return true;
        } else {
            link.addClass('hover');
            $('.taphover').not(this).removeClass('hover');
            e.preventDefault();
            return false;
        }
    });

    $('table tr td').addClass("taphover");

    $('.good-info .uk-close').click(function () {
        if (info) {
            $(".good-info").toggle("slide", {direction: "right"}, 200);
            info = false;
        }
    });
</script>
</body>
</html>
