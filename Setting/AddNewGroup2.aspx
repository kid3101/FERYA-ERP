﻿<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="AddNewGroup2.aspx.cs" Inherits="Setting_AddNewGroup2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Personnel settings -> Group of employees</title>
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
    <link href="../css/Setting/AddGroup2.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="container-fluid" style="margin-top:-23px;width: 100%;height: 119px;background-color:#eee;">
        <div style="line-height: 1;display: inline-block;margin-left: 40px;vertical-align: middle;">
            <a class="abc tab-content" href="#" style="text-decoration:none;"><span><h2 style="cursor:pointer;">Install personnel <span><i style="padding-left: 20px;color: black;padding-right: 20px;" class="fa fa-angle-right"></i></span><a href="#" style="color:black;text-decoration:none;">Group of employees</a></h2></span></a>
        </div>
        <ul class="nav nav-tabs" style="margin-block-start: 1em;padding-inline-start: 40px;position: absolute;padding-top: 32px;">
            <li class="active" style="margin-right: 20px;">
                <a data-toggle="tab" href="#" style="cursor:pointer;">
                    <span style="color:black;">All</span>
                    <span class="number">1</span>
                </a>
            </li>
            <li class="dropdown">
                <a class="dropdown-toggle" data-toggle="dropdown" style="padding-right: 30px;color:black;cursor:pointer;" title="Turn on / off the search function">Filter & search ...</a>
                <ul class="dropdown-menu filterbarfull filterbar" style="width: 358px;top: 41.1146px;left: -2.319px;">
                    <li>
                        <form class="ui form">
                            <table width="100%" cellpadding="10">
                                <tbody>
                                    <tr>
                                        <td>
                                            <label>
                                                <span>Key word</span>
                                                <span>:</span>
                                            </label>
                                        </td>
                                        <td>
                                            <input class="form-control" />
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <label>
                                                <span>Creator</span>
                                                <span>:</span>
                                            </label>
                                        </td>
                                        <td>
                                            <div class="text" style="cursor:pointer;">
                                                <select class="form-control" style="cursor:pointer;margin-top: 20px;">
                                                    <option>-----</option>
                                                </select>
                                            </div>
                                            <i class="dropdown icon"></i>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <label>
                                                <span>Date</span>
                                            </label>
                                        </td>
                                        <td>
                                            <div>
                                                <input style="height: 31px;width: 243px;margin-left: 25px;margin-bottom: 12px;margin-left: 4px;border-style: groove;" />
                                                <i class="fa fa-calendar" style="margin-left: -30px;"></i>
                                            </div>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td colspan="2">
                                            <button class="timkiem"><a href="SearchGroup.aspx" style="color:white;text-decoration:none;">Search</a></button>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td colspan="2" style="text-align:center;padding-top: 17px;">
                                            <a href="#" style="text-decoration:none;">Closed</a>
                                        </td>
                                    </tr>
                                </tbody>
                            </table>
                        </form>
                    </li>

                </ul>
            </li>
        </ul>
        <div class="container-fluid" style="margin-top: -34px;margin-left: 791px;">
            <div class="container" style="float:left;display: inline-flex;padding-left: 320px;">
                <a href="AddNewGroup.html" class="nutchamcong" data-toggle="tooltip" title="Create group of employees" style="color:white;"><i class="fa fa-plus"></i> CREATE ANY WORKING GROUP</a>
            </div>
            <div class="container" style="display: inline-flex;padding-left: 320px;">
                <a href="#" style="height: 20px;width: 20px;color: #555;"><i class="fa fa-chevron-left"></i></a>
                <div style="margin-right: 6px;">
                    <a href="#" style="color:#555;">
                        <span>Page</span>
                        <span>1</span>
                        <span>/</span>
                        <span>1</span>
                    </a>
                </div>
                <a href="#" style="height: 48px;width: 48px;color: #555;"><i class="fa fa-chevron-right"></i></a>
            </div>
        </div>
        <br>
    </div>
    <div class="table-responsive">
        <table style="width: 98%;margin-left: 20px;margin-top: 25px;" class="table table-hover">
            <thead>
                <tr>
                    <th>SID</th>
                    <th rowspan="2">COLOR</th>
                    <th>NAME</th>
                    <th>CODE</th>
                    <th>DESCRIBE</th>
                    <th>NUMBER OF EMPLOYEES</th>
                    <th>CREATOR</th>
                    <th>DATE CREATED</th>
                    <th></th>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <td>1</td>
                    <td>de</td>
                    <td>dsd</td>
                    <td>sds</td>
                    <td>sds</td>
                    <td>sds</td>
                    <td>sds</td>
                    <td>sd</td>
                    <td style="float:right;">
                        <a href="#" title="Click here to update data" style="text-transform:uppercase;text-decoration:none;">Employee synchronization</a>
                        <a href="EditGroup.aspx" title="Click here to update data" style="text-decoration:none;margin-left:20px;text-transform:uppercase;">Edit</a>
                    </td>
                </tr>
            </tbody>
        </table>
    </div>
</asp:Content>

