﻿<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="AddDepartment.aspx.cs" Inherits="Setting_AddDepartment" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Personnel settings -> Department</title>
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

    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>

    <link href="../css/Setting/AddDepartment.css" rel="stylesheet" />

    <link href="dist/vanillatree.css" rel="stylesheet" />
    <script src="dist/vanillatree.js"></script>
    <link href="../css/Setting/Derpartment.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="container-fluid">
        <h1 class="h3 mb-4 text-gray-800">Setting > Derpartment</h1>
        <%--<ul class="nav" style=" margin-block-start: 1em;padding-inline-start: 40px;margin-top: 48px;">
            <li class="active " style="margin-right: 20px;">
                <a data-toggle="tab" href="#" style="cursor:pointer;text-decoration:none;">
                    <span style="color:black;">All</span>
                    <span class="number">1</span>
                </a>
            </li>

        </ul>--%>
        <div class="container-fluid tong">
            <div class="container kk">
                <div class="row">
                    <div class="col-sm-5 sidenav coll">
                        <a data-toggle="modal" data-target="#myModal"  class="btn btn-info aa" href="#" ><i class="fa fa-plus-circle"></i> CREATE BOARD ROOM</a>
                    </div>
                    <!-- Modal -->
                    <div class="modal fade" id="myModal" role="dialog">
                        <div class="modal-dialog">

                            <!-- Modal content-->
                            <div class="modal-content">
                                <div class="modal-header">
                                    
                                    <h2 class="modal-title kk">Add a new department</h2>
                                </div>
                                <div class="modal-body">
                                    <form>
                                        <div class="form-group">
                                            <label class="kk">Name</label>
                                            <span class="mau">*</span>
                                            <input class="form-control">
                                        </div>
                                        <div class="form-group">
                                            <label>Office</label>
                                            <select class="officee">
                                                <option>Office 1</option>
                                                <option>Office 2</option>
                                                <option>Office 3</option>
                                            </select>
                                        </div>

                                    </form>
                                </div>
                                <div class="modal-footer">
                                    <button type="button" class="btn btn-default" data-dismiss="modal" class="closee">Close</button>
                                    <button type="submit" class="btn btn-info" class="addd"><a href="AddDepartment.aspx" class="hv">Create departments</a></button>
                                </div>
                            </div>

                        </div>
                    </div>
                    <div class="col-sm-6 sidenav">

                    </div>
                </div>

            </div>

        </div>
        <br>
        <div class="content">
        <main>
            <%--<div data-toggle="modal" data-target="#myModal2" style="margin-left: 40px;margin-top: 20px;"><a href="#" style="text-decoration:none;"><i class="fa fa-folder"></i> #6010.abc (0)</a></div>--%>
            <div class="dii">
            <table class="table table-bordered">
                <thead>
                    <tr>
                        <th>Department name</th>
                        <th>Office name</th>
                        <th></th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td>Department 1</td>
                        <td>Office 1</td>
                        <td data-toggle="modal" data-target="#myModal2"><i class="fa fa-pen"></i></td>
                    </tr>
                    <tr>
                        <td>Department 2</td>
                        <td>Office 2</td>
                        <td data-toggle="modal" data-target="#myModal2"><i class="fa fa-pen"></i></td>
                    </tr>
                </tbody>
            </table>
        </div>
        </main>
    </div>
    <!-- Modal -->
    <div class="modal fade" id="myModal2" role="dialog">
        <div class="modal-dialog">

            <!-- Modal content-->
            <div class="modal-content">
                <div class="modal-header">
                    
                    <h2 class="modal-title kk">Update departments</h2>
                </div>
                <div class="modal-body">
                    <form>
                        <div class="form-group">
                            <label class="kk">Name</label>
                            <span class="mau">*</span>
                            <input class="form-control" value="Department 1">
                        </div>
                        <div class="form-group">
                            <label>Office</label>
                            <select class="officee">
                                <option>Office 1</option>
                                <option>Office 2</option>
                            </select>
                        </div>

                    </form>
                </div>
                <div class="modal-footer">
                    <a href="#" onclick="del()" class="av">Delete this department</a>
                    <button type="button" class="btn btn-default" data-dismiss="modal closee">Close</button>
                    <button type="submit" class="btn btn-facebook addd" ><a href="AddDepartment.aspx" class="hv">Update</a></button>
                </div>
            </div>

        </div>
    </div>
    </div>
     <script>
        function del(){
            alert("Are You Sure?");
        }
    </script>
    
</asp:Content>

