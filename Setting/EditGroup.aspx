<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="EditGroup.aspx.cs" Inherits="Setting_EditGroup" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Install personnel -> Group of employees</title>
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
    <link href="../css/Setting/EditGroup.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="container-fluid">
        <div style="margin-bottom: -11px;margin-top: -20px;">
            <br />
            <h1 class="h3 mb-4 text-gray-800">Group of employees > Update</h1>
            
            <br>
        </div>
    </div>
    <div style="margin-top:20px;">
        <div class="row content" style="margin-left: 20px;">
            <div class="col-sm-3">
                <h3>Staff group information</h3>
                <p>Enter the name and description for the group of employees</p>
            </div>
            <div class="col-sm-9">
                <form>
                    <div class="form-group">
                        <div style="display:flex;">
                            <div>
                                <label for="email">Name</label>
                                <span style="color:red;">*</span>
                                <input type="text" class="form-control" style="width:  163%;;">
                            </div>
                            <div style="margin-left: 147px;">
                                <span>
                                    <p for="email"><b>Color</b></p>
                                    <input type="color" name="favcolor" value="#ff0000">
                                </span>
                            </div>
                        </div>
                    </div>

                    <div class="form-group">
                        <label for="pwd">Code</label>
                        <input type="text" class="form-control" style="width: 30%;">
                    </div>
                    <div class="form-group">
                        <label for="pwd">Describe</label>
                        <textarea type="text" class="form-control" style="width: 50%;"></textarea>
                    </div>
                </form>
            </div>
        </div>
        <hr />
        <div class="row content" style="margin-left: 20px;">
            <div class="col-sm-3">
                <h3>Staff group details</h3>
                <p>Create conditions to filter employees</p>
            </div>
            <div class="col-sm-9">
                <form>
                    <div class="form-group">
                        <label for="email">Rule</label>
                        <br />
                        <select style="width:30%;height:35px;">
                            <option>------</option>
                            <option>Employees</option>
                            <option>Rank</option>
                            <option>Office</option>
                            <option>Department</option>
                            <option>City</option>
                            <option>Type of work</option>
                        </select>
                    </div>
                    <div style="width:30%;font-size: 17px;float:right;margin-top:20px;">
                        <a href="#" class="chuphinh" style="margin-left: -569px;text-decoration:none;">Add the selected rule</a>
                    </div>
                    <div class="table-responsive">
                        <table class="table" style="border: 1px solid rgba(34,36,38,.15);width: 95%;margin-left: 0px;margin-top:81px;">
                            <thead>
                                <tr>
                                    <th>Rule</th>
                                    <th>Value type</th>
                                    <th>Value</th>
                                    <th>Value ends</th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <td></td>
                                    <td></td>
                                    <td><i class="fa fa-info"></i> No data found!</td>
                                    <td></td>
                                </tr>
                            </tbody>
                        </table>
                    </div>
                </form>
            </div>
        </div>
        <div style="width:100%;height:80px;margin-top: -3px;display:flex;">
            <div class="col-sm-4 sidenav" style="margin-top:20px;">
                <span>*: Obligatory</span>
            </div>

            <div class="col-sm-4" style="text-align:center;">
                <div style="margin-top:25px;">
                    <button class="btn btn-facebook" style="width: 30%;border: none;margin-left: -391px;"><a href="AddNewGroup2.aspx" style="color:white;text-decoration:none;"> SAVE</a></button>
                </div>
            </div>

            <div class="col-sm-4">

            </div>
        </div>
    </div>
</asp:Content>

