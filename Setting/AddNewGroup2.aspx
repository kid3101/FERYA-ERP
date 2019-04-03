<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="AddNewGroup2.aspx.cs" Inherits="Setting_AddNewGroup2" %>

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
    <div class="container-fluid">
        <h1 class="h3 mb-4 text-gray-800">Setting > Group of employees</h1>
        <%--<ul class="nav" style="margin-block-start: 1em;padding-inline-start: 40px;position: absolute;padding-top: 32px;">
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
        </ul>--%>
          <div class="container-fluid" style="margin-top: -34px;margin-left: 522px;">
            <div class="container" style="float:left;display: inline-flex;padding-left: 264px;">
                <a href="AddNewGroup.aspx" class="btn btn-info" data-toggle="tooltip" title="Create group of employees" style="color:white;"><i class="fa fa-plus"></i> CREATE ANY WORKING GROUP</a>
            </div>
            <div class="container" style="display: inline-flex;padding-left: 320px;">
                <a href="#" style="height: 20px;width: 20px;color: #555;"><i class="fa fa-chevron-left"></i></a>
                <div style="margin-right: 6px;">
                    <a href="#" style="color:#555;text-decoration:none;">
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
        <div class="table-responsive">
        <table style="width: 98%;margin-left: 20px;margin-top: 25px;" class="table table-bordered">
            <thead>
                <tr>
                    <th>Sid</th>
                    <th rowspan="2">Color</th>
                    <th>Name</th>
                    <th>Code</th>
                    <th>Describe</th>
                    <th>Number Of Employees</th>
                    <th>Creator</th>
                    <th>Date Created</th>
                    <th>Action</th>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <td>1</td>
                    <td>
                        <div style="width: 20px;height: 20px;background-color: red;">

                        </div>
                    </td>
                    <td>Group 1</td>
                    <td>234</td>
                    <td>Demo</td>
                    <td>50</td>
                    <td>Jonh</td>
                    <td>21:10, To day</td>
                    <td>
                        <a href="#" title="Click here to update data" style="text-transform:uppercase;text-decoration:none;"><i class="fas fa-sync-alt"></i></a>
                        <a href="EditGroup.aspx" title="Click here to update data" style="text-decoration:none;margin-left:20px;text-transform:uppercase;"><i class="fa fa-pen"></i></a>
                    </td>
                </tr>
                <tr>
                    <td>2</td>
                    <td>
                        <div style="width: 20px;height: 20px;background-color: yellow;">

                        </div>
                    </td>
                    <td>Group 2</td>
                    <td>454</td>
                    <td>Demo</td>
                    <td>20</td>
                    <td>Anna</td>
                    <td>12:10, 20/03/2019</td>
                    <td>
                        <a href="#" title="Click here to update data" style="text-transform:uppercase;text-decoration:none;"><i class="fas fa-sync-alt"></i></a>
                        <a href="EditGroup.aspx" title="Click here to update data" style="text-decoration:none;margin-left:20px;text-transform:uppercase;"><i class="fa fa-pen"></i></a>
                    </td>
                </tr>
            </tbody>
        </table>
    </div>
    </div>
  
</asp:Content>

