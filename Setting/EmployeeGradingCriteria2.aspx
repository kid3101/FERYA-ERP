<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="EmployeeGradingCriteria2.aspx.cs" Inherits="Setting_EmployeeGradingCriteria2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Personnel settings -> Employee grading criteria</title>
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
    <link href="../css/Setting/Grading2.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="container-fluid">
        <h1 class="h3 mb-4 text-gray-800">Setting > Employee grading criteria</h1>
        <%--<ul class="nav" style=" margin-block-start: 1em;padding-inline-start: 40px;margin-top: 48px;">
            <li class="active" style="margin-right: 20px;">
                <a data-toggle="tab" href="#" style="cursor:pointer;text-decoration:none;">
                    <span style="color:black;">All</span>
                    <span class="number">1</span>
                </a>
            </li>
            <li class="dropdown">
                <a class="dropdown-toggle" data-toggle="dropdown" style="padding-right: 30px;color:black;cursor:pointer;" title="Turn on / off the search function">Filter & search ...</a>
                <ul class="dropdown-menu filterbarfull filterbar" style="top: 41.1146px;left: -2.319px;">
                    <li>
                        <form class="ui form">
                            <table width="100%" cellpadding="10">
                                <tbody>
                                    <tr>
                                        <td>
                                            <label>
                                                <span style="padding-right: 7px;">Key word</span>
                                            </label>
                                        </td>
                                        <td>
                                            <input type="text" style="border-radius: 6px;height: 36px;width: 100%;margin-bottom: 15px;" />
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <label>
                                                <span style="padding-right: 7px;">Status:</span>
                                            </label>
                                        </td>
                                        <td>
                                            <div class="text" style="cursor:pointer;">
                                                <select class="form-control" style="border-radius: 7px;">
                                                    <option>All</option>
                                                    <option>Doing</option>
                                                    <option>Finish</option>
                                                    <option>Confirmed</option>
                                                    <option>Faulty</option>
                                                </select>
                                            </div>
                                            <i class="dropdown icon"></i>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <label>
                                                <span style="padding-right: 7px;">Headquarters:</span>
                                            </label>
                                        </td>
                                        <td>
                                            <div class="text" style="cursor:pointer;">
                                                <select class="form-control" style="cursor:pointer;border-radius: 7px;">
                                                    <option>All</option>
                                                </select>
                                            </div>
                                            <i class="dropdown icon"></i>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <label style="padding-right: 7px;">
                                                <span>Date:</span>
                                            </label>
                                        </td>
                                        <td>
                                            <div class="text" style="cursor:pointer;">
                                                <select class="form-control" style="cursor:pointer;border-radius: 7px;">
                                                    <option>-----</option>
                                                </select>
                                            </div>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td colspan="2">
                                            <button style="margin-top:20px;" class="timkiem"><a href="SearchEmployeeGradingCriteria.aspx" style="color:white;text-decoration:none;">Search</a></button>
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
        <div class="container-fluid" style="margin-top: -82px;margin-left: 505px;">
            <div class="container" style="float:left;display: inline-flex;padding-left: 242px;margin-top:20px;">
                <a href="AddNewEmployeeGradingCriteria.aspx" class="btn btn-info" data-toggle="tooltip" title="Create criteria for employee grading" style="color:white;text-decoration:none;"><i class="fa fa-plus"></i> CREATE CRITERIA FOR EMPLOYEE POINTS</a>
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
    </div>
    <div>
        <div class="table-responsive">
            <table style="width: 98%;margin-left: 20px;margin-top: 25px;" class="table table-bordered">
                <thead>
                    <tr>
                        <th>Sid</th>
                        <th rowspan="2">Criteria Name</th>
                        <th>Classify</th>
                        <th>Order Showing</th>
                        <th>Point</th>
                        <th>Status</th>
                        <th>Creator</th>
                        <th>Date Created</th>
                        <th>Action</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td>1</td>
                        <td>Criteria 1</td>
                        <td>Good</td>
                        <td>379</td>
                        <td>10</td>
                        <td>Effective</td>
                        <td>Jonh</td>
                        <td>13:39, 27/03</td>
                        <td>
                            <a href="EditEmployeeGradingCriteria.aspx" title="Click here to update data" style="margin-left:20px;text-decoration:none;"><i class="fa fa-pen"></i></a>
                        </td>
                    </tr>
                    <tr>
                        <td>2</td>
                        <td>Criteria 2</td>
                        <td>Good</td>
                        <td>564</td>
                        <td>10</td>
                        <td>Effective</td>
                        <td>Anna</td>
                        <td>20:05, 01/0a</td>
                        <td>
                            <a href="EditEmployeeGradingCriteria.aspx" title="Click here to update data" style="margin-left:20px;text-decoration:none;"><i class="fa fa-pen"></i></a>
                        </td>
                    </tr>
                </tbody>
            </table>
        </div>
    </div>
</asp:Content>

