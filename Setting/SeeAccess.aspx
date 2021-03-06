﻿<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="SeeAccess.aspx.cs" Inherits="Setting_SeeAccess" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
     <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Personnel settings -> Access rsight</title>
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
    
    <link rel="stylesheet" href="dist/fastselect.min.css">
    <script src="dist/fastselect.standalone.js"></script>
    <link href="../css/Setting/AccessRight.css" rel="stylesheet" />
    <link href="../dist/fastselect.css" rel="stylesheet" />
    <script src="../dist/fastselect.js"></script>
    <link href="../dist/fastselect.min.css" rel="stylesheet" />
    <script src="../dist/fastselect.min.js"></script>
    <script src="../dist/fastselect.standalone.js"></script>
    <script src="../dist/fastselect.standalone.min.js"></script>
    
    <style>
        .fstMultipleMode .fstControls 
        {
            box-sizing: border-box;
            padding: 0.5em 0.5em 0em 0.5em;
            overflow: hidden;
            width: 26em;
            cursor: text;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="container" style="background-color: #eee;height: 70px;width: 100%;margin-top: -23px;">
        <div style="margin-bottom: -11px;margin-top: -20px;">
            <div class="row content" >
                <div class="col-sm-6 sidenav">
                    <a class="abc tab-content" href="#" style="text-decoration:none;">
                        <span>
                            <h2 style="cursor:pointer;">
                                Install personnel
                                <span>
                                    <i style="padding-left: 20px;color: black;padding-right: 20px;" class="fa fa-angle-right"></i>
                                </span>
                                <a href="#" style="color:black;text-decoration:none;">Access right</a>
                            </h2>
                        </span>
                    </a>
                </div>
                <div class="col-sm-6 sidenav">
                    <a style="float:right;font-size: 18px;margin-top:26px;text-decoration:none;" href="#" class="ls"><i class="fa fa-history"></i> See the whole Log works</a>
                </div>
                <!-- Modal -->
                <div class="modal fade" id="myModal" role="dialog">
                    <div class="modal-dialog">

                        <!-- Modal content-->
                        <div class="modal-content">
                            <div class="modal-header">
                                
                                <h2 class="modal-title" style="float:left;">Install / Add new</h2>
                            </div>
                            <div class="modal-body">
                                <form>
                                    <div class="form-group">
                                        <label style="float:left;">Name</label>
                                        <span style="color:red;">*</span>
                                        <input class="form-control">
                                    </div>
                                    <div class="form-group">
                                        <label>Assign employees</label>
                                        <%--<select style="display:block;height:35px;width:100%;">
                                            <option>---------</option>
                                        </select>--%>
                                        <select class="multipleSelect" multiple name="language">
                                            <option value="Bangladesh">Bangladesh</option>
                                            <option selected value="Barbados">Barbados</option>
                                            <option selected value="Belarus">Belarus</option>
                                            <option value="Belgium">Belgium</option>
                                        </select>
                                    </div>

                                </form>
                            </div>
                            <div class="modal-footer">
                                <span style="float: left;">* Obligatory</span>
                                <button type="button" class="btn btn-default" data-dismiss="modal" style="border: none;border-radius: 17px;margin-right: 10px;padding-left: 20px;padding-right: 20px;">Close</button>
                                <button type="submit" class="nutchamcong2" style="border:none;padding-left: 20px;padding-right: 20px;"><a href="AddAccessRight.aspx" style="color:white;text-decoration:none;">Add new</a></button>
                            </div>
                        </div>

                    </div>
                </div>

            </div>

        </div>

    </div>
    <br>
    <div class="row content" style="margin-bottom: 133px;">
        <div class="col-sm-4 sidenav">
            <h3>See rights</h3>
            <p>See the rights of a specific employee</p>
        </div>
        <div class="col-sm-8" style="display:flex;">

            <!--<input type="text" multiple class="tagsInput"/>-->
            <%--<select style="display:block;height:35px;width:60%;">
                <option>---------</option>
            </select>--%>

            <select class="multipleSelect" multiple name="language">
                <option value="Bangladesh">Bangladesh</option>
                <option selected value="Barbados">Barbados</option>
                <option selected value="Belarus">Belarus</option>
                <option value="Belgium">Belgium</option>
            </select>
            <div style="margin-top: 20px;margin-left: 20px;">
                <button type="button" class="btn btn-success" style="border-radius: 20px;width: 80px;"><a href="#" style="color:white;text-decoration:none;">See</a></button>
            </div>
            <div style="margin-top: 20px;margin-left: 20px;">
                <button type="button" class="btn btn-default" style="background-color: white;border-color: gray;border-radius: 20px;"><a href="AddAccessRight.aspx" style="color:black;text-decoration:none;">Delete form</a></button>
            </div>
        </div>
    </div>
    <div class="table-responsive" style="margin-top: -115px;">
        <table class="table" style="border: 1px solid rgba(34,36,38,.15);width: 95%;margin-left: 20px;">
            <thead>
                <tr>
                    <th>SID</th>
                    <th rowspan="2">Function</th>
                    <th>User Name</th>
                    <th></th>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <td>262</td>
                    <td>employee.manage</td>
                    <td></td>
                    <td></td>

                </tr>
                <tr>
                    <td>307</td>
                    <td>employee.add</td>
                    <td></td>
                    <td></td>

                </tr>
                <tr>
                    <td>308</td>
                    <td>employee.detail</td>
                    <td></td>
                    <td></td>

                </tr>
                <tr>
                    <td>263</td>
                    <td>employee.manageworktime</td>
                    <td></td>
                    <td></td>

                </tr>
                <tr>
                    <td>326</td>
                    <td>employee.checkinterminal</td>
                    <td></td>
                    <td></td>

                </tr>
                <tr>
                    <td>264</td>
                    <td>employee.managepoin</td>
                    <td></td>
                    <td></td>

                </tr>
                <tr>
                    <td>266</td>
                    <td>project.manage</td>
                    <td></td>
                    <td></td>

                </tr>
                <tr>
                    <td>268</td>
                    <td>file.manage</td>
                    <td></td>
                    <td></td>

                </tr>
                <tr>
                    <td>287</td>
                    <td>workschedule.review</td>
                    <td></td>
                    <td></td>

                </tr>
                <tr>
                    <td>306</td>
                    <td>workschedule.change</td>
                    <td></td>
                    <td></td>

                </tr>
                <tr>
                    <td>301</td>
                    <td>elearning.manage</td>
                    <td></td>
                    <td></td>

                </tr>
                <tr>
                    <td>320</td>
                    <td>blog.managepost</td>
                    <td></td>
                    <td></td>

                </tr>
                <tr>
                    <td>321</td>
                    <td>blog.managecomment</td>
                    <td></td>
                    <td></td>

                </tr>
                <tr>
                    <td>327</td>
                    <td>employee.checkinedit</td>
                    <td></td>
                    <td></td>
                </tr>
            </tbody>
        </table>
    </div>
    <script>
        $('.multipleSelect').fastselect();
    </script>
</asp:Content>

