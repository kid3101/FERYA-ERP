<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="add-point-employee.aspx.cs" Inherits="Employee_point_employee" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link href="../css/employee.css/add-point-employee.css" rel="stylesheet" />
    <link href="../css/employee.css/addemployee.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <div class="container-fluid">     
            <h1 class ="h3 mb-4 text-gray-800">Employee grading history
                <span> > </span>
                Add new
            </h1>
    </div>
    <div class="segment">
            <form class="ui form">
                <div class="fields" style="margin-top:10px;display:flex">
                    <div class="left" style="width:25%;">
                        <h4>
                            <span>
                                Detailed scoring staff
                            </span>
                        </h4>
                        <p>
                            Detailed scoring information for employees
                        </p>
                    </div>
                    <div class="right" style="width:100% ; margin-top: 8px;">
                        <div class="col-sm-7" style="margin-left:50px">
                            <label>
                                Headquarters<span class=".star-sign">*</span>
                            </label>
                            <select onclick="myFunction()" class="form-control">
                                <option disabled="" selected="">-----</option>
                                <option>dfd</option>
                            </select>
                        </div>
                    </div>
                </div>
                <div class="w3-container" id="myDIV" style="display: none">
                    <div class="container-fluid">
                        <div class="row">
                            <div class="col-md-12">
                                    <div class="table-responsive">
                                <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                                    <thead>
                                    <tr>
                                        <th>Criteria</th>
                                        <th>Employees</th>
                                        <th></th>
                                        <th>Note</th>
                                        <th>Attached file (3 file limit)</th>
                                        <th>Point</th>
                                    </tr>
                                    </thead>
                                    <tfoot>
                                    <tr>
                                        <td>1. bye</td>
                            <td>
                                <select  style="width:200px;">
                                    <option value="" disabled selected>-----</option>
                                    <option value="1"></option>
                                </select>
                            </td>
                            <td>
                                <div style="width: 80px">
                                    <a style="text-decoration:none; color:#3498db; font-size: 12px;">All employee</a>
                                    <br />
                                    <a style="text-decoration:none; color:#3498db; font-size: 12px;">Uncheck all</a>
                                </div>
                            </td>
                            <td>
                                <input type="text" style="width:200px;" name="">
                            </td>
                            <td>
                                <div class="box">
                                    <input type="file" name="file-2[]" id="file-2" class="inputfile inputfile-2" data-multiple-caption="{count} files selected" multiple="">
                                    <label for="file-2"><i class="fa fa-paperclip"></i><span>File attached...</span></label>
                                </div>
                            </td>
                            <td>
                                <a href="#"><label style="font-size:12px; background-color: #2185D0;border-color: #2185D0;color: #FFF;padding: 7px 10px;">10</label></a>
                            </td>
                                    </tr>
                                    </tfoot>
                  
                                </table>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

                <div >

                    <div class="col-sm-8" id="col-8" >
                         <div >
                            <a href="list-point-employee.aspx" class="btn btn-info"> Add</a>
                        </div>
                    </div>
                </div>
            </form>
        </div>





    <script>

        function myFunction() {
            var x = document.getElementById("myDIV");
            if (x.style.display === "none") {
                x.style.display = "block";
            } else {
                x.style.display = "none";
            }
        }

        'use strict';

        ; (function (document) {
            var inputs = document.querySelectorAll('.inputfile');
            Array.prototype.forEach.call(inputs, function (input) {
                var label = input.nextElementSibling,
                    labelVal = label.innerHTML;

                input.addEventListener('change', function (e) {
                    var fileName = '';
                    if (this.files && this.files.length > 1)
                        fileName = (this.getAttribute('data-multiple-caption') || '').replace('{count}', this.files.length);
                    else
                        fileName = e.target.value.split('\\').pop();

                    if (fileName)
                        label.querySelector('span').innerHTML = fileName;
                    else
                        label.innerHTML = labelVal;
                });

                // Firefox bug fix
                input.addEventListener('focus', function () { input.classList.add('has-focus'); });
                input.addEventListener('blur', function () { input.classList.remove('has-focus'); });
            });
        }(document, window, 0));

    </script>

</asp:Content>

