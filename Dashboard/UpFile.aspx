<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="UpFile.aspx.cs" Inherits="css_Dashboard_UpFile" %>

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
    <link href="../css/Dashboard/UpFile.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="container-fluid">
        <div style="margin-bottom: -11px;margin-top: -20px;">
            <div class="row content">
                <h1 class="h3 mb-4 text-gray-800">Files</h1>
                <div class="col-sm-10">
                    <div style="font-size:20px;margin-top: 24px;float: right;">
                        <a class="ls" data-toggle="modal" data-target="#myModal"><span style="margin-right: 25px;"><i class="fa fa-folder"></i> Create folder</span></a>
                        <a class="ls" data-toggle="modal" data-target="#myModal2"><span><i class="fa fa-cloud-upload"></i> Upload the file</span></a>

                    </div>
                </div>
            </div>

        </div>
    </div>
    <div class="container">
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
    <div class="table-responsive">
        <table class="table table-hover" style="width:100%; color:grey;margin-top: 20px;">
            <thead>
                <tr>
                    <th style="text-transform:uppercase;">NAME</th>
                    <th rowspan="2">TYPE</th>
                    <th>SIZE</th>
                    <th> DATE CREATED</th>
                    <th>MADE BY</th>
                    <th></th>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <td><i class="fa fa-folder"></i> Demo</td>
                    <td>Directory</td>
                    <td>2 Kb</td>
                    <td>16:23, 23/02/2019</td>
                    <td>Jonh</td>
                    <td style="float: right;">
                        <a href="#" title="See directory contents" style="margin-right:20px;color:grey;"><i class="fa fa-search" style="color:grey;"></i></a>
                        <a data-toggle="modal" data-target="#myModal3" title="Edit content" style="margin-right:20px;"><i class="fa fa-cog" style="color:grey;"></i></a>
                        <a title="Delete this folder" style="margin-right:20px;"><i class="fa fa-trash " style="color:grey;"></i></a>
                        <!-- Modal -->
                        <div class="modal fade" id="myModal3" role="dialog">
                            <div class="modal-dialog">

                                <!-- Modal content-->
                                <div class="modal-content">
                                    <div class="modal-header">
                                        <button type="button" class="close" data-dismiss="modal">&times;</button>
                                        <h2 class="modal-title" style="float:left;">Change directory information</h2>
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
                                        <button type="submit" class="nutchamcong" style="border:none;padding-left: 20px;padding-right: 20px;"><a href="File.html" style="color:white;">Save</a></button>
                                    </div>
                                </div>

                            </div>
                        </div>
                    </td>
                </tr>
                <tr>
                    <td>FileDemo</td>
                    <td>Directory</td>
                    <td>1 Kb</td>
                    <td>18:00, 01/01/2019</td>
                    <td>Anna</td>
                    <td>
                        <div style="float: right;">
                            <a href="#" data-toggle="modal" data-target="#myModal6" title="Preview" style="margin-right: 20px;"><i class="fa fa-eye" style="color:grey;"></i></a>
                            <a href="#" title="Download" style="margin-right: 20px;"><i class="fa fa-download" style="color:grey;"></i></a>
                            <a href="#" data-toggle="modal" data-target="#myModal7" title="Edit content" style="margin-right: 20px;"><i class="fa fa-cog" style="color:grey;"></i></a>
                            <a href="#" title="Delete" style="margin-right: 20px;"><i class="fa fa-trash" style="color:grey;"></i></a>
                            <!-- Modal -->
                            <div class="modal fade" id="myModal6" role="dialog">
                                <div class="modal-dialog">

                                    <!-- Modal content-->
                                    <div class="modal-content">
                                        <div class="modal-header">
                                            
                                            <h2 class="modal-title" style="float:left;">[Preview]</h2>
                                            <span style="font-size: 30px;margin-left: -251px;">trtr</span>
                                            <a href="#" title="Download" style="float: right;font-size: 23px;margin-top: 7px;text-decoration:none;"><i class="fa fa-download" style="color:grey;"></i></a>
                                        </div>
                                        <div class="modal-body">
                                            <form></form>
                                        </div>
                                        <div class="modal-footer">
                                            <button type="button" class="btn btn-default" data-dismiss="modal" style="border: none;border-radius: 17px;margin-right: 10px;padding-left: 20px;padding-right: 20px;">Close</button>
                                            <button type="submit" class="nutchamcong" style="border:none;padding-left: 20px;padding-right: 20px;"><a href="#" style="color:white;">Download</a></button>
                                        </div>
                                    </div>

                                </div>
                            </div>
                            <!-- Modal -->
                            <div class="modal fade" id="myModal7" role="dialog">
                                <div class="modal-dialog">

                                    <!-- Modal content-->
                                    <div class="modal-content">
                                        <div class="modal-header">
                                            
                                            <h2 class="modal-title" style="float:left;">Upload documents / files</h2>
                                        </div>
                                        <div class="modal-body">
                                            <div class="form-group">
                                                <label style="float:left;">File name</label>
                                                <input class="form-control">
                                            </div>
                                            <div class="form-group">
                                                <label style="float:left;">Describe</label>
                                                <input class="form-control">
                                            </div>
                                        </div>
                                        <div class="modal-footer">
                                            <button type="button" class="btn btn-default" data-dismiss="modal" style="border: none;border-radius: 17px;margin-right: 10px;padding-left: 20px;padding-right: 20px;">Close</button>
                                            <button type="submit" class="nutchamcong" style="border:none;padding-left: 20px;padding-right: 20px;"><a href="#" style="color:white;text-decoration:none;">Download</a></button>
                                        </div>
                                    </div>

                                </div>
                            </div>
                        </div>
                    </td>
                </tr>
            </tbody>
        </table>
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

