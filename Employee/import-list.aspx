<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="import-list.aspx.cs" Inherits="Employee_import_list" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link href="../css/Attendance/History.css" rel="stylesheet" />
    <link href="../css/employee.css/import-list.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

     <div class="container" style="background-color: #eee;height: 94px;width: 100%;">
        <div style="margin-bottom: -11px;margin-top: -20px;">
            <br />
            <a class="abc tab-content" style="text-decoration:none;" href="KeepingHistory.html"><span><h2 style="cursor:pointer;">Employee</h2></span></a>
            <ul class="nav nav-tabs" style="margin-right:-202px;padding-inline-start: 40px;">
                <li class="active"><a href="#" style="cursor:pointer;text-decoration:none;">Import employee list</a></li>
            </ul>
            <br>
        </div>
    </div>
    <div>
        <form>
            <div style="margin-top: 30px;">
                <div style="margin-left: 24px; width: 40%;float:left;">
                    <h3><strong> Import Excel file</strong></h3>
                    <p style="font-size: 17px;"> Upload Excel file with the following format:</p>
                    <a style="text-decoration:none" href="https://www.w3schools.com/html/"> >> Click here to download the sample file</a>
                </div>
                <div style="width:60%;font-size: 17px; display:inline;">
                    <div style="width:30%;font-size: 17px;float:left;">
                        <div class="form-group" style="margin-left: -12px;">
                            <label for="usr">Excel file<span style="color:red;"> *</span></label>
                            <div>
                               <form method="POST" action="#" enctype="multipart/form-data">
                                    <div class="form-group">
                                        <div class="input-group input-file" name="Fichier1">
                                            <input type="text" class="form-control" placeholder='Select file' />
                                            <span class="input-group-btn">
                                                <button class="btn btn-choose" type="button"><i class="fas fa-cloud-upload-alt"></i> Select file</button>
                                            </span>
                                        </div>
                                    </div>
                                </form>
                            </div>
                        </div>
                    <div class="tool">
                        <a onclick="myFunction()" href="#" data-toggle="tooltip" title="Note the value for some data columns that appear in the Excel file to import" style="text-decoration:none;"> >>See the data column notes for the sample file ..</a>
                            <div id="myDIV" style="display: none;">
                                    <table style=" color:#4e4b4b; width:178%; display:table">
                                        <tr>
                                            <td>FULL NAME</td>
                                            <td>Name</td>
                                        </tr>
                                        <tr>
                                            <td>GENDER</td>
                                            <td>
                                                <div>
                                                    <label style="background:none; width:150px">0</label>
                                                    <span>:</span>
                                                    <label class="label" style="background-color:#1b1c1d; color:white">
                                                        Unknown
                                                    </label>
                                                </div>
                                                <div>
                                                    <label style="background:none; width:150px">1</label>
                                                    <span>:</span>
                                                    <label class="label" style="background-color:#1b1c1d; color:white">
                                                        Female
                                                    </label>
                                                </div>
                                                <div>
                                                    <label style="background:none; width:150px">2</label>
                                                    <span>:</span>
                                                    <label class="label" style="background-color:#1b1c1d; color:white">
                                                        Male
                                                    </label>
                                                </div>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>EMAIL</td>
                                            <td>Email</td>
                                        </tr>
                                        <tr>
                                            <td>PASSWORD</td>
                                            <td>Password</td>
                                        </tr>
                                        <tr>
                                            <td>JOB_TITLE</td>
                                            <td>Position</td>
                                        </tr>
                                        <tr>
                                            <td>Department</td>
                                            <td>
                                                <div>
                                                    <label style="background:none; width:100px">6010</label>
                                                    <span>:</span>
                                                    <label class="label" style="background-color:#ac725e; color:white">
                                                        abc
                                                    </label>
                                                </div>
                                                <div>
                                                    <label style="background:none; width:100px">6011</label>
                                                    <span>:</span>
                                                    <label class="label" style="background-color:#ac725e; color:white">
                                                        aa
                                                    </label>
                                                </div>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>OFFICE_ID</td>
                                            <td></td>
                                        </tr>
                                        <tr>
                                            <td>PHONE</td>
                                            <td>Phone</td>
                                        </tr>

                                    </table>
                                </div>
                    </div>
                </div>
            </div>
            </div>
        </form>
    </div>
    <div style="float: left;margin-left: -25px;display: inline-flex;width: 110%;background-color: #eee;height: 80px;margin-top: 33px;">
        <br />
        <div class="container">
            <p style="font-size:20px;">
                <span>* : </span>
                <span>Obligatory</span>
            </p>
        </div>
        <div class="container" style="margin-left: -253px;margin-top: 20px;">
            <button class="nutchamcong" style="background-color:#00ff21; border: none;padding-left: 20px;padding-right: 20px;"><a href="#" style="color:white;text-decoration:none;">UPLOAD FILE</a></button>
        </div>
    </div>
    
    <script>
    function bs_input_file() {
            $(".input-file").before(
                function () {
                    if (!$(this).prev().hasClass('input-ghost')) {
                        var element = $("<input type='file' class='input-ghost' style='visibility:hidden; height:0'>");
                        element.attr("name", $(this).attr("name"));
                        element.change(function () {
                            element.next(element).find('input').val((element.val()).split('\\').pop());
                        });
                        $(this).find("button.btn-choose").click(function () {
                            element.click();
                        });
                        $(this).find('input').css("cursor", "pointer");
                        $(this).find('input').mousedown(function () {
                            $(this).parents('.input-file').prev().click();
                            return false;
                        });
                        return element;
                    }
                }
            );
        }
        $(function () {
            bs_input_file();
        });


        $(document).ready(function () {
            $('[data-toggle="tooltip"]').tooltip();
        });

        function myFunction() {
            var x = document.getElementById("myDIV");
            if (x.style.display === "none") {
                x.style.display = "block";
            } else {
                x.style.display = "none";
            }
        }
    </script>


</asp:Content>

