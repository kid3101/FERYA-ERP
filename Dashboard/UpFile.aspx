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
                        <a class="ls" data-toggle="modal" data-target="#myModal2"><span><i class="fas fa-cloud-upload-alt"></i> Upload the file</span></a>

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
    <div class="table-responsive" style="margin-top: 40px;">
        <table class="table table-bordered" id="mytable" style="width:100%; color:grey;margin-top: 20px;">
            <thead>
                <tr>
                    <th>Name</th>
                    <th rowspan="2">Type</th>
                    <th>Size</th>
                    <th> Date Created</th>
                    <th>Made By</th>
                    <th>Action</th>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <td><i class="fa fa-folder"></i> Demo</td>
                    <td>Directory</td>
                    <td>2 Kb</td>
                    <td>16:23, 23/02/2019</td>
                    <td>Jonh</td>
                    <td>
                        
                        <a href="#" title="See directory contents" style="margin-right:20px;color:grey;"><i class="fa fa-search" style="color:grey;"></i></a>
                        <a data-toggle="modal" data-target="#myModal3" title="Edit content" style="margin-right:20px;"><i class="fa fa-cog" style="color:grey;"></i></a>
                        <button type="button" style="border:none;background-color:floralwhite" onclick="del()"><i class="fas fa-trash-alt" style="color:red"></i></button>
                        <!-- Modal -->
                        <div class="modal fade" id="myModal3" role="dialog">
                            <div class="modal-dialog">

                                <!-- Modal content-->
                                <div class="modal-content">
                                    <div class="modal-header">
                                        
                                        <h2 class="modal-title" style="float:left;">Change directory information</h2>
                                    </div>
                                    <div class="modal-body">
                                        <form>
                                            <div class="form-group">
                                                <label style="float:left;">Folder name</label>
                                                <input class="form-control" value="Demo">
                                            </div>
                                            <div class="form-group">
                                                <label style="float:left;">Describe</label>
                                                <input class="form-control" value="Text Demo">
                                            </div>

                                        </form>
                                    </div>
                                    <div class="modal-footer">
                                        <button type="button" class="btn btn-default" data-dismiss="modal" style="border: none;border-radius: 17px;margin-right: 10px;padding-left: 20px;padding-right: 20px;">Close</button>
                                        <button type="submit" class="btn btn-facebook" style="border:none;padding-left: 20px;padding-right: 20px;"><a href="UpFile.aspx" style="color:white;text-decoration:none;">Save</a></button>
                                    </div>
                                </div>

                            </div>
                        </div>
                    </td>
                </tr>
                <tr>
                    <td><i class="fa fa-file"></i> FileDemo</td>
                    <td>Directory</td>
                    <td>1 Kb</td>
                    <td>18:00, 01/01/2019</td>
                    <td>Anna</td>
                    <td>
                        <div>
                            <a href="#" data-toggle="modal" data-target="#myModal6" title="Preview" style="margin-right: 20px;"><i class="fa fa-eye" style="color:grey;"></i></a>
                            <a href="#" id="btnExport4" title="Download" style="margin-right: 20px;"><i class="fa fa-download" style="color:grey;"></i></a>
                            <a href="#" data-toggle="modal" data-target="#myModal7" title="Edit content" style="margin-right: 20px;"><i class="fa fa-cog" style="color:grey;"></i></a>
                            <button type="button" style="border:none;background-color:floralwhite" onclick="del()"><i class="fas fa-trash-alt" style="color:red"></i></button>
                            <!-- Modal -->
                            <div class="modal fade" id="myModal6" role="dialog">
                                <div class="modal-dialog">

                                    <!-- Modal content-->
                                    <div class="modal-content">
                                        <div class="modal-header">
                                            
                                            <h2 class="modal-title" style="float:left;">[Preview]</h2>
                                            <span style="font-size: 30px;margin-left: -251px;">trtr</span>
                                            <a id="btnExport2" href="#" title="Download" style="float: right;font-size: 23px;margin-top: 7px;text-decoration:none;"><i class="fa fa-download" style="color:grey;"></i></a>
                                        </div>
                                        <div class="modal-body">
                                            <form></form>
                                        </div>
                                        <div class="modal-footer">
                                            <button type="button" class="btn btn-default" data-dismiss="modal" style="border: none;border-radius: 17px;margin-right: 10px;padding-left: 20px;padding-right: 20px;">Close</button>
                                            <button id="btnExport" type="submit" class="nutchamcong" style="border:none;padding-left: 20px;padding-right: 20px;"><a href="#" style="color:white;text-decoration:none;">Download</a></button>
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
                                                <input class="form-control" value="FileDemo">
                                            </div>
                                            <div class="form-group">
                                                <label style="float:left;">Describe</label>
                                                <input class="form-control" value="Text FileDemo">
                                            </div>
                                        </div>
                                        <div class="modal-footer">
                                            <button type="button" class="btn btn-default" data-dismiss="modal" style="border: none;border-radius: 17px;margin-right: 10px;padding-left: 20px;padding-right: 20px;">Close</button>
                                            <button id="btnExport3" type="submit"  class="nutchamcong" style="border:none;padding-left: 20px;padding-right: 20px;"><a href="#" style="color:white;text-decoration:none;">Download</a></button>
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
    <script>
        function del(){
            alert("Are You Sure?");
        }
    </script>
    <script>
        $("#btnExport").click(function(e) {
    window.open('data:application/vnd.ms-excel,' + 
                '<table>' + $('#mytable > table').html() + '</table>');
    e.preventDefault();
});
    </script>
    <script>
        $("#btnExport2").click(function(e) {
    window.open('data:application/vnd.ms-excel,' + 
                '<table>' + $('#mytable > table').html() + '</table>');
    e.preventDefault();
});
    </script>
    <script>
        $("#btnExport3").click(function(e) {
    window.open('data:application/vnd.ms-excel,' + 
                '<table>' + $('#mytable > table').html() + '</table>');
    e.preventDefault();
});
    </script>
    <script>
        $("#btnExport4").click(function(e) {
    window.open('data:application/vnd.ms-excel,' + 
                '<table>' + $('#mytable > table').html() + '</table>');
    e.preventDefault();
});
    </script>
</asp:Content>

