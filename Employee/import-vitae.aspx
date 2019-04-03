<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="import-vitae.aspx.cs" Inherits="Employee_import_vitae" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link href="../css/employee.css/import-vitae.css" rel="stylesheet" />
    <link href="../css/Attendance/History.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <div class="container-fluid" >
        <h1 >
            <a style="text-decoration:none;" href="KeepingHistory.html">Employee</a>
            <span> > </span>
            Import resume
        </h1>
    </div>
    <div class="segment">
            <form class="ui form">
                <div class="fields" style="margin-top:10px; margin-left:10px">
                    <div class="left" style="width:50%;">
                        <h4>
                            <span>
                                Import Excel file
                            </span>
                        </h4>
                        <br />
                        <p>
                            Upload Excel file with the following format:
                        </p>
                        <a style="text-decoration:none" href="https://www.w3schools.com/html/"> >> Click here to download the sample file</a>
                    </div>

                    <div class="right" style="width:100% ;  margin-left:60px">

                        <div class="col-sm-7">
                            <label>Excel file<a style=" margin-left:0.2em;color: #DB2828;">*</a></label>
                            <form method="POST" action="#" enctype="multipart/form-data">
                                <!-- COMPONENT START -->
                                <div class="form-group">
                                    <div class="input-group input-file" name="Fichier1">
                                        <input type="text" class="form-control" placeholder='Select file' />
                                        <span class="input-group-btn">
                                            <button class="btn btn-default btn-choose" type="button" ><i class="fas fa-cloud-upload-alt"></i> Select file</button>
                                        </span>


                                    </div>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
                <div class="bottom">
                    <div class="field wide hideonsmall four" style=" margin-top: 10px;">
                        <p class="requirebox">
                            <span>* : </span>
                            <span>
                                Obligatory
                            </span>
                        </p>
                    </div>
                    <div>
                        <a class="btn btn-facebook" href="#">
                            UPLOAD FILE
                        </a>
                    </div>
                </div>
            </form>
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

    </script>

</asp:Content>

