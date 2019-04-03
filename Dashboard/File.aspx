<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="File.aspx.cs" Inherits="Dashboard_File" %>

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
    <link href="../css/Dashboard/File.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="container-fluid">
        <div class="tong">
            <div class="row content">
                <h1 class="h3 mb-4 text-gray-800">Files</h1>
                <div class="col-sm-10">
                    <div class="tong2">
                        <a class="ls" data-toggle="modal" data-target="#myModal" ><span class="createe"><i class="fa fa-folder"></i> Create folder</span></a>
                        <a class="ls" data-toggle="modal" data-target="#myModal2" ><span><i class="fa fa-cloud-upload"></i> Upload the file</span></a>

                    </div>
                </div>
            </div>

        </div>

        <div class="container-fluid">
        <!-- Modal -->
        <div class="modal fade" id="myModal" role="dialog">
            <div class="modal-dialog">

                <!-- Modal content-->
                <div class="modal-content">
                    <div class="modal-header">
                        
                        <h2 class="modal-title kc" >Create new folder</h2>
                    </div>
                    <div class="modal-body">
                        <form>
                            <div class="form-group">
                                <label class="kc">Folder name</label>
                                <input class="form-control">
                            </div>
                            <div class="form-group">
                                <label class="kc">Describe</label>
                                <input class="form-control">
                            </div>

                        </form>
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-default closee" data-dismiss="modal" >Close</button>
                        <button type="submit" class="btn btn-info creatt" ><a href="File.aspx" class="creatt2">Create</a></button>
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
                                    
                                    <h2 class="modal-title kc" >Upload documents / files</h2>
                                </div>
                                <div class="modal-body linkk">
                                    <div >
                                    <input style="position: absolute;opacity: 0;" type="file" name="file-2[]" id="file-2" class="inputfile inputfile-2" data-multiple-caption="{count} files selected" multiple="">
                                    <label class="kc" for="file-2"><i class="fa fa-paperclip"></i><span>File attached...</span></label>
                                </div>
                                </div>
                                <div class="modal-footer">
                                    <button type="submit" class="btn btn-info upfiless"><a href="UpFile.aspx" class="creatt2">Completed</a></button>
                                </div>
                            </div>
                </div>
        </div>
    </div>
    <div class="table-responsive">
        <table class="table table-hover tablee" >
            <thead>
                <tr>
                    <th class="textname">NAME</th>
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
                        <a href="#" class="iconn" title="See directory contents"><i class="fa fa-search"></i></a>
                        <a href="#" class="iconn" data-toggle="modal" data-target="#myModal3" title="Edit content"><i class="fa fa-cog"></i></a>
                        <a href="#" class="iconn" title="Delete this folder"><i class="fa fa-trash"></i></a>
                        <!-- Modal -->
                        <div class="modal fade" id="myModal3" role="dialog">
                            <div class="modal-dialog">

                                <!-- Modal content-->
                                <div class="modal-content">
                                    <div class="modal-header">
                                        
                                        <h2 class="modal-title kc" >Change directory information</h2>
                                    </div>
                                    <div class="modal-body">
                                        <form>
                                            <div class="form-group">
                                                <label class="kc">Folder name</label>
                                                <input class="form-control">
                                            </div>
                                            <div class="form-group">
                                                <label class="kc">Describe</label>
                                                <input class="form-control">
                                            </div>

                                        </form>
                                    </div>
                                    <div class="modal-footer">
                                        <button type="button" class="btn btn-default closee" data-dismiss="modal" >Close</button>
                                        <button type="submit" class="btn btn-info creatt" ><a href="File.aspx" class="creatt2">Save</a></button>
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
</asp:Content>

