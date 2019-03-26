<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="import-paycheck.aspx.cs" Inherits="Employee_import_paycheck" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link href="../css/employee.css/import-paycheck.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

   <div class="headered" style="display:flex;margin:10px">
          <div class="lefted" style="width:30%; color:black">
              <h2> Company paychecks</h2>
          </div>
    </div>
    <div class="container">
          <ul class="nav nav-tabs">
            <li class="active">
                <a data-toggle="tab" href="#" style="cursor:pointer;">
                    <span style="color:black;">Import</span>
                </a>
            </li>
              </ul>
        </div>
        <div class="segment">
            <form class="ui form">
                <div class="fields" style="margin-top:10px; display:flex">
                    <div class="left" style="width:25%;">
                        <h4>
                            <span>
                                Import paychecks
                            </span>
                        </h4>
                        <p>
                            Import the excel file to the paycheck
                        </p>
                    </div>
                    <div class="right" style="width:100% ; margin-top: 8px;">
                        <div class="col-sm-10">
                            <label>
                                Title of paycheck
                            </label>
                            <br />
                            <input class="form-control" name="title" style="width:70%;" />
                        </div>

                        <div class="col-sm-7" style="margin-right:1px; margin-top:30px">
                            <label>
                                Form of payment<a style="margin-top: -0.2em; margin-left:0.2em;color: #DB2828;">*</a>
                            </label>
                            <select class="form-control">
                                <option>-----</option>
                                <option>
                                    Pay once
                                </option>
                                <option>
                                    Pay by day
                                </option>
                                <option>
                                    Pay by month
                                </option>
                                <option>Pay by year</option>
                            </select>
                        </div>
                        <br />
                        <div class="col-sm-7" style="margin-right:1px; margin-top:30px">
                            <label>
                                Excel file<a style="margin-top: -0.2em; margin-left:0.2em;color: #DB2828;">*</a>
                            </label>
                            <form method="POST" action="#" enctype="multipart/form-data">
                                <!-- COMPONENT START -->
                                <div class="form-group">
                                    <div class="input-group input-file" name="Fichier1">
                                        <input type="text" class="form-control" placeholder='Select file' />
                                        <span class="input-group-btn">
                                            <button class="btn btn-default btn-choose" type="button" style="font-size:12px;height: 39px;font-size: 12px;background-color: gainsboro;border-radius: 0px;"> <i class="fas fa-cloud-upload-alt"></i>  Select file</button>
                                        </span>


                                    </div>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
                <div class="bottom" style="border-top-style:outset; margin-top: 10px;">
                    <div class="field wide hideonsmall four" style=" margin-top: 10px;">
                        <p class="requirebox">
                            <span>* : </span>
                            <span>
                                Obligatory
                            </span>
                        </p>
                    </div>
                    <div class="add" style=" margin-top: -30px; margin-left:200px">
                        <a class="btn file" href="my_paycheck.html">
                            Upload file
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
                        $(this).find("button.btn-reset").click(function () {
                            element.val(null);
                            $(this).parents(".input-file").find('input').val('');
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

