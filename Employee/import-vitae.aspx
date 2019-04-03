<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="import-vitae.aspx.cs" Inherits="Employee_import_vitae" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link href="../css/Attendance/History.css" rel="stylesheet" />
    <link href="../css/employee.css/import-list.css" rel="stylesheet" />
    <link href="../css/employee.css/import-transfer.css" rel="stylesheet" />
    <link href="../css/employee.css/addemployee.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <div class="container-fluid" >
        <h1 class ="h3 mb-4 text-gray-800">
             Employee
            <span> > </span>
            Import employee list
        </h1>
    </div>

    <div class="segment">
            <form class="ui form">
                <div class="top" >
                    <div class="left">
                        <h4>Import Excel file</h4>
                        <p>Upload Excel file with the following format:</p>
                        <a href="https://www.w3schools.com/html/"> >> Click here to download the sample file</a>
                    </div>
                    <div class="right">
                        <div class="col-xs-5">
                            <label>Excel file<span class="star-sign">*</span></label>
                            <div>
                                <form method="POST" action="#" enctype="multipart/form-data">
                                    <div class="form-group">
                                        <div class="input-group input-file" name="Fichier1">
                                            <input type="text" class="form-control" placeholder='Select file' />
                                            <span class="input-group-btn">
                                                <button class="btn btn-default btn-choose" type="button"><i class="fas fa-cloud-upload-alt"></i> Select file</button>
                                            </span>
                                        </div>
                                    </div>
                                </form>
                            </div>
                        </div>
                    </div>  
                </div>
        <div >

            <div class="col-sm-8" id="col-8" >
                <div >
                    <a  class="btn btn-facebook"> Upload file</a>
                </div>
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
    </script>


</asp:Content>


