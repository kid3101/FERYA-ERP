﻿<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="CompanyDocuments.aspx.cs" Inherits="Dashboard_CompanyDocuments" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
        <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Files</title>
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
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css"></script>

    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
    <link href="../css/Dashboard/CompanyDocument.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="container" style="margin-top:-23px;background-color: #eee;height: 70px;width: 100%;">
        <div style="margin-bottom: -11px;margin-top: -20px;">
            <div class="row content">
                <div class="col-sm-6 sidenav">
                    <a class="abc tab-content" style="text-decoration:none;" href="CompanyDocuments.aspx"><span><h2 style="cursor:pointer;padding-top: 3px;">Files</h2></span></a>
                </div>
                <div class="col-sm-6">
                    <div style="font-size:20px;margin-top: 24px;float: right;">
                        <a class="ls" data-toggle="modal" data-target="#myModal" style="text-decoration:none;"><span style="margin-right: 25px;"><i class="fa fa-folder"></i> Create folder</span></a>
                        <a class="ls" data-toggle="modal" data-target="#myModal2" style="text-decoration:none;"><span><i class="fa fa-cloud-upload"></i> Upload the file</span></a>

                    </div>
                </div>
            </div>

        </div>
    </div>
    <div class="container">
        <div class="row content">
            <div class="col-sm-2 sidenav">

            </div>
            <div class="col-sm-8" style="text-align:center;margin-top: 50px;">
                <img src="../img/general.png" style="height: 300px;">
                <div><h1 style="color:#777;">No documents yet</h1></div>
                <div><h3 style="color:rgba(0,0,0,0.2)">Click the button below to upload the document.</h3></div>
                <div style="margin-top: 20px;">
                    <a class="nut2" style="text-decoration:none;" href="#" data-toggle="modal" data-target="#myModal">Create folder</a>
                    <!-- Modal -->
                    <div class="modal fade" id="myModal" role="dialog">
                        <div class="modal-dialog">

                            <!-- Modal content-->
                            <div class="modal-content">
                                <div class="modal-header">
                                    
                                    <h2 class="modal-title" style="float:left;">Create new folder</h2>
                                </div>
                                <div class="modal-body">
                                    <form>
                                        <div class="form-group">
                                            <label style="float:left;">Folder name</label>
                                            <input class="form-control">
                                        </div>
                                        <div class="form-group">
                                            <label style="float:left;">Describe</label>
                                            <input class="form-control">
                                        </div>

                                    </form>
                                </div>
                                <div class="modal-footer">
                                    <button type="button" class="btn btn-default" data-dismiss="modal" style="border: none;border-radius: 17px;margin-right: 10px;padding-left: 20px;padding-right: 20px;">Close</button>
                                    <button type="submit" class="nutchamcong" style="border:none;padding-left: 20px;padding-right: 20px;"><a href="File.aspx" style="color:white;text-decoration:none;">Create</a></button>
                                </div>
                            </div>

                        </div>
                    </div>
                    <a class="nut2" href="#" style="text-decoration:none;" data-toggle="modal" data-target="#myModal2">Upload the file</a>
                    <!-- Modal -->
                    <div class="modal fade" id="myModal2" role="dialog">
                        <div class="modal-dialog">

                            <!-- Modal content-->
                            <div class="modal-content">
                                <div class="modal-header">
                                    
                                    <h2 class="modal-title" style="float:left;">Upload documents / files</h2>
                                </div>
                                <div class="modal-body linkk">
                                    <div >
                                    <input style="position: absolute;opacity: 0;" type="file" name="file-2[]" id="file-2" class="inputfile inputfile-2" data-multiple-caption="{count} files selected" multiple="">
                                    <label style="float:left;" for="file-2"><i class="fa fa-paperclip"></i><span>File attached...</span></label>
                                </div>
                                </div>
                                <div class="modal-footer">
                                    <button type="submit" class="nutchamcong" style="border:none;padding-left: 20px;padding-right: 20px;"><a href="UpFile.aspx" style="color:white;text-decoration:none;">Completed</a></button>
                                </div>
                            </div>

                        </div>
                    </div>
                </div>
            </div>
            <div class="col-sm-2">


            </div>
        </div>
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
