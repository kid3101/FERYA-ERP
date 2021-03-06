﻿<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="AccessRight.aspx.cs" Inherits="Setting_AccessRight" %>

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
    
    <link href="../dist/fastselect.css" rel="stylesheet" />
    <script src="../dist/fastselect.js"></script>
    <link href="../dist/fastselect.min.css" rel="stylesheet" />
    <script src="../dist/fastselect.min.js"></script>
    <script src="../dist/fastselect.standalone.js"></script>
    <script src="../dist/fastselect.standalone.min.js"></script>
   <link href="../css/Setting/AccessRight.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="container-fluid">
        <div class="tong">
            <div class="row content" >
                <div class="col-sm-6 sidenav">
                    <h1 class="h3 mb-4 text-gray-800">Setting > Access right</h1>
                    
                </div>
                <div class="col-sm-6 sidenav">
                    <a href="#" class="ls l"><i class="fa fa-history"></i> See the whole Log works</a>
                </div>
                <!-- Modal -->
                <div class="modal fade" id="myModal" role="dialog">
                    <div class="modal-dialog">

                        <!-- Modal content-->
                        <div class="modal-content">
                            <div class="modal-header">
                                
                                <h2 class="modal-title kk" >Install / Add new</h2>
                            </div>
                            <div class="modal-body">
                                <form>
                                    <div class="form-group">
                                        <label class="kk">Name</label>
                                        <span class="mau">*</span>
                                        <input class="form-control">
                                    </div>
                                    <div class="form-group">
                                        <label>Assign employees</label>
                                        <%--<select style="display:block;height:35px;width:100%;">
                                            <option>---------</option>
                                        </select>--%>
                                        <select class="multipleSelect" multiple name="language">
                                            <option value="Bangladesh">Mr.Hung</option>
                                            <option selected value="Barbados">Mr.Trung</option>
                                            <option selected value="Belarus">Mr.Ti</option>
                                            <option value="Belgium">Mr.Quang</option>
                                        </select>
                                    </div>

                                </form>
                            </div>
                            <div class="modal-footer">
                               
                                <button type="button" class="btn btn-default closse" data-dismiss="modal">Close</button>
                                <button type="submit" class="btn btn-info addd" ><a href="AddAccessRight.aspx" class="hv">Add new</a></button>
                            </div>
                        </div>

                    </div>
                </div>

            </div>

        </div>

    </div>
    <br>
    <div class="row content roww">
        <div class="col-sm-4 sidenav coll">
            <h3>See rights</h3>
            <p>See the rights of a specific employee</p>
        </div>
        <div class="col-sm-6" style="display:-webkit-inline-box;;">

            <!--<input type="text" multiple class="tagsInput"/>-->
            <%--<select style="display:block;height:35px;width:60%;">
                <option>---------</option>
            </select>--%>

            <select class="multipleSelect" multiple name="language">
                <option value="Bangladesh">Mr.Hung</option>
                <option selected value="Barbados">Mr.Trung</option>
                <option selected value="Belarus">Mr.Ti</option>
                <option value="Belgium">Mr.Quang</option>
            </select>
            <div class="divv">
                <button type="button" class="btn btn-success seee"><a href="SeeAccess.aspx" class="hv">See</a></button>
            </div>
        </div>
    </div>
    <div class="table-responsive mg" >
        <table class="table tablee">
            <thead>
                <tr>
                    <th>SID</th>
                    <th rowspan="2">Function</th>
                    <th>Root Admin</th>
                    <th><button type="submit" data-toggle="modal" data-target="#myModal" class="btn btn-info addd"><a href="#" class="hv"><i class="fa fa-plus"></i> Add permissions group</a></button></th>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <td>262</td>
                    <td>employee.manage <i class="fa fa-question-circle"></i></td>
                    <td>
                        <label class="switch">
                            <input type="checkbox" checked disabled>
                            <span class="slider round nen"></span>
                        </label>
                    </td>
                    <td></td>

                </tr>
                <tr>
                    <td>307</td>
                    <td>employee.add <i class="fa fa-question-circle"></i></td>
                    <td>
                        <label class="switch">
                            <input type="checkbox" checked disabled>
                            <span class="slider round nen"></span>
                        </label>
                    </td>
                    <td></td>

                </tr>
                <tr>
                    <td>308</td>
                    <td>employee.detail <i class="fa fa-question-circle"></i></td>
                    <td>
                        <label class="switch">
                            <input type="checkbox" checked disabled>
                            <span class="slider round nen"></span>
                        </label>
                    </td>
                    <td></td>

                </tr>
                <tr>
                    <td>263</td>
                    <td>employee.manageworktime <i class="fa fa-question-circle"></i></td>
                    <td>
                        <label class="switch">
                            <input type="checkbox" checked disabled>
                            <span class="slider round nen"></span>
                        </label>
                    </td>
                    <td></td>

                </tr>
                <tr>
                    <td>326</td>
                    <td>employee.checkinterminal <i class="fa fa-question-circle"></i></td>
                    <td>
                        <label class="switch">
                            <input type="checkbox" checked disabled>
                            <span class="slider round nen"></span>
                        </label>
                    </td>
                    <td></td>

                </tr>
                <tr>
                    <td>264</td>
                    <td>employee.managepoin <i class="fa fa-question-circle"></i></td>
                    <td>
                        <label class="switch">
                            <input type="checkbox" checked disabled>
                            <span class="slider round nen"></span>
                        </label>
                    </td>
                    <td></td>

                </tr>
                <tr>
                    <td>266</td>
                    <td>project.manage <i class="fa fa-question-circle"></i></td>
                    <td>
                        <label class="switch">
                            <input type="checkbox" checked disabled>
                            <span class="slider round nen"></span>
                        </label>
                    </td>
                    <td></td>

                </tr>
                <tr>
                    <td>268</td>
                    <td>file.manage <i class="fa fa-question-circle"></i></td>
                    <td>
                        <label class="switch">
                            <input type="checkbox" checked disabled />
                            <span class="slider round nen"></span>
                        </label>
                    </td>
                    <td></td>

                </tr>
                <tr>
                    <td>287</td>
                    <td>workschedule.review <i class="fa fa-question-circle"></i></td>
                    <td>
                        <label class="switch">
                            <input type="checkbox" checked disabled>
                            <span class="slider round nen"></span>
                        </label>
                    </td>
                    <td></td>

                </tr>
                <tr>
                    <td>306</td>
                    <td>workschedule.change <i class="fa fa-question-circle"></i></td>
                    <td>
                        <label class="switch">
                            <input type="checkbox" checked disabled>
                            <span class="slider round nen"></span>
                        </label>
                    </td>
                    <td></td>

                </tr>
                <tr>
                    <td>301</td>
                    <td>elearning.manage <i class="fa fa-question-circle"></i></td>
                    <td>
                        <label class="switch">
                            <input type="checkbox" checked disabled>
                            <span class="slider round nen"></span>
                        </label>
                    </td>
                    <td></td>

                </tr>
                <tr>
                    <td>320</td>
                    <td>blog.managepost <i class="fa fa-question-circle"></i></td>
                    <td>
                        <label class="switch">
                            <input type="checkbox" checked disabled>
                            <span class="slider round nen"></span>
                        </label>
                    </td>
                    <td></td>

                </tr>
                <tr>
                    <td>321</td>
                    <td>blog.managecomment <i class="fa fa-question-circle"></i></td>
                    <td>
                        <label class="switch">
                            <input type="checkbox" checked disabled>
                            <span class="slider round nen"></span>
                        </label>
                    </td>
                    <td></td>

                </tr>
                <tr>
                    <td>327</td>
                    <td>employee.checkinedit <i class="fa fa-question-circle"></i></td>
                    <td>
                        <label class="switch">
                            <input type="checkbox" checked disabled>
                            <span class="slider round nen"></span>
                        </label>
                    </td>
                    <td></td>
                </tr>
            </tbody>
        </table>
    </div>
    <script>
        $('.multipleSelect').fastselect();
    </script>
</asp:Content>

