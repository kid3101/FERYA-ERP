<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="add-point-employee.aspx.cs" Inherits="Employee_point_employee" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
     <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Employee grading history</title>
    <!-- Tell the browser to be responsive to screen width -->
    <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
    <!-- Bootstrap 3.3.7 -->
    <link rel="stylesheet" href="bower_components/bootstrap/dist/css/bootstrap.min.css">

    <!-- Font Awesome -->
    <link rel="stylesheet" href="bower_components/font-awesome/css/font-awesome.min.css">
    <!-- Ionicons -->
    <link rel="stylesheet" href="bower_components/Ionicons/css/ionicons.min.css">
    <!-- Theme style -->
    <link rel="stylesheet" href="dist/css/AdminLTE.min.css">
    <!-- AdminLTE Skins. Choose a skin from the css/skins
         folder instead of downloading all of them to reduce the load. -->
    <link rel="stylesheet" href="dist/css/skins/_all-skins.min.css">
    <!-- Morris chart -->
    <link rel="stylesheet" href="bower_components/morris.js/morris.css">
    <!-- jvectormap -->
    <link rel="stylesheet" href="bower_components/jvectormap/jquery-jvectormap.css">
    <!-- Date Picker -->
    <link rel="stylesheet" href="bower_components/bootstrap-datepicker/dist/css/bootstrap-datepicker.min.css">
    <!-- Daterange picker -->
    <link rel="stylesheet" href="bower_components/bootstrap-daterangepicker/daterangepicker.css">
    <!-- bootstrap wysihtml5 - text editor -->
    <link rel="stylesheet" href="plugins/bootstrap-wysihtml5/bootstrap3-wysihtml5.min.css">
    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
    <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
    <!-- Google Font -->
    <link href="Style/Trang.css" rel="stylesheet" />
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,600,700,300italic,400italic,600italic">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>

    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
    <link href="../css/employee.css/add-point-employee.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <div class="heading">
            <div class="container">
                <h3 class="title">Employee grading history</h3>
                <ul class="nav nav-tabs" style="display:block; list-style-type:disc; ">
                    <a data-toggle="tab" href="#" style="cursor:pointer;">
                        <span style="color:black;">Add new</span>
                    </a>
                </ul>
            </div>
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
                                Headquarters<a style="margin-top: -0.2em; margin-left:0.2em;color: #DB2828;">*</a>
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
                                        <td>1. sas</td>
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
        <div style="background-color:#eee;width:100%;height:80px;">
            <div class="col-sm-4 sidenav" style="margin-top:20px;">
                <span>*: Obligatory</span>
            </div>

            <div class="col-sm-8" style="text-align:center;">
                <div style="margin-top:-13px;">
                    <a href="list-point-employee.aspx" class="addnew" style="width: 30%;border: none;"> MORE</a>
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

