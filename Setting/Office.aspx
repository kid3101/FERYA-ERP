<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Office.aspx.cs" Inherits="Setting_Office" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Personnel settings -> Office</title>
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

    <link href="../css/Setting/Office.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="container-fluid">
        <h1 class="h3 mb-4 text-gray-800">Setting  > Office</h1>
        
        <%--<ul class="nav" style=" margin-block-start: 1em;padding-inline-start: 40px;margin-top: 48px;">
            <li class="active " style="margin-right: 20px;">
                <a data-toggle="tab" href="#" style="cursor:pointer;">
                    <span style="color:black;">All</span>
                    <span class="number">0</span>
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
                                            <label style="float:left;margin-top: 13px;">
                                                <span>Key word</span>
                                            </label>
                                            <input style="float: left;margin-left: 20px;margin-bottom: 20px;height: 37px;width: 76%;" type="text" />
                                        </td>

                                    </tr>
                                    <tr>
                                        <td colspan="2">
                                            <button class="timkiem"><a style="color:white;text-decoration:none;" href="SearchOffice.aspx">Search</a></button>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td colspan="2" style="text-align:center;padding-top: 17px;">
                                            <a href="#">Closed</a>
                                        </td>
                                    </tr>
                                </tbody>
                            </table>
                        </form>
                    </li>

                </ul>
            </li>
        </ul>--%>
        <div class="container-fluid" style="margin-top: -34px;margin-left: 791px;margin-top: -24px;">
            <div class="container" style="float:left;">
                <div class="row">
                    <div class="col-sm-5 sidenav" style="margin-top: -52px;margin-left: -168px;">
                        <a data-toggle="modal" data-target="#myModal" style="float:right;text-decoration:none;" class="btn btn-info" href="#" title="Create Office" style="color:white;margin-left: 15px;"><i class="fa fa-plus-circle"></i> CREATE OFFICE</a>
                    </div>
                    <!-- Modal -->
                    <div class="modal fade" id="myModal" role="dialog">
                        <div class="modal-dialog modal-lg">

                            <!-- Modal content-->
                            <div class="modal-content" style="width: 1000px;">
                                <div class="modal-header">
                                    
                                    <h2 class="modal-title" style="float:left;">Add new office</h2>
                                </div>
                                <div class="modal-body" style="margin-bottom: -116px;height:300px;">
                                    <div class="row content">
                                        <div class="col-sm-3 sidenav">
                                            <h4>General information</h4>
                                        </div>

                                        <div class="col-sm-9">
                                            <div style="display:flex;margin-bottom: 30px;">
                                                <div style="margin-right: 10px;">
                                                    <span>Name</span>
                                                    <span style="color:red;">*</span>
                                                    <input id="txtName" style="display:block;height:25px" type="text" />
                                                </div>
                                                <div style="margin-right: 10px;">
                                                    <span>Address</span>
                                                    <input id="txtAddress" style="display:block;height:25px" type="text" />
                                                </div>
                                                <div style="margin-right: 10px;">
                                                    <span>City</span>
                                                    <select style="display:block;height:25px;width:140px;">
                                                        <option>---</option>
                                                        <option>Ho Chi Minh </option>
                                                        <option>Ha Noi</option>
                                                        <option>Da Nang</option>
                                                        <option>Can Tho</option>
                                                    </select>
                                                </div>
                                                <div style="margin-right: 10px;">
                                                    <label for="pwd">Company</label>
                                                     <select id="selectList" class="form-control" style="height: 38px;margin-top: -10px;width: 175px;">
                                                         <%for (int j = 0; j < listCompany.Count; j++)
                                                             { %>
                                                            <option value="<%=listCompany[j].CompanyId %>"><%=listCompany[j].CompanyName %></option>
                                                            <%} %>
                                                        </select>
                                                </div>
                                               <%-- <%for (int i = 0; i < listOffice.Count; i++) { %>
                                                <div style="margin-right: 10px;">
                                                    <%List<Company> listOfficeCat = new List<Company>();
                                                        CompanyManager om = new CompanyManager();
                                                        listOfficeCat = om.GetListID(listOffice[i].OfficeId);
                                                        for(int e=0;e<listOfficeCat.Count;e++)
                                                        {%>
                                                            <%=listOfficeCat[e].CompanyName %></br>
                                                       <% }
                                                            %>
                                                </div>
                                                 <%} %>--%>
                                                <%--<div style="margin-right: 10px;">
                                                    <span>IP is timed <i class="fa fa-info-circle" style="cursor:pointer;" title="Your current IP is 15.169.34.171"></i></span>
                                                    <input style="display:block;height:25px" type="text" />
                                                </div>--%>
                                            </div>
                                            <div style="display:flex;">
                                                <div style="margin-right: 10px;">
                                                    <span>Work time</span>
                                                    <select style="display:block;height:25px;width:179px;">
                                                        <option>---</option>
                                                        <option>00 Hours</option>
                                                        <option>01 Hours</option>
                                                        <option>02 Hours</option>
                                                        <option>03 Hours</option>
                                                        <option>04 Hours</option>
                                                        <option>05 Hours</option>
                                                        <option>06 Hours</option>
                                                        <option>07 Hours</option>
                                                        <option>08 Hours</option>
                                                        <option>09 Hours</option>
                                                        <option>10 Hours</option>
                                                        <option>11 Hours</option>
                                                        <option>12 Hours</option>
                                                        <option>13 Hours</option>
                                                        <option>14 Hours</option>
                                                        <option>15 Hours</option>
                                                        <option>16 Hours</option>
                                                        <option>17 Hours</option>
                                                        <option>18 Hours</option>
                                                        <option>19 Hours</option>
                                                        <option>20 Hours</option>
                                                        <option>21 Hours</option>
                                                        <option>22 Hours</option>
                                                        <option>23 Hours</option>
                                                    </select>
                                                </div>
                                                <div style="margin-right: 10px;">
                                                    <input type="hidden" />
                                                    <select style="display:block;height:25px;width:178px;margin-top: 23px;">
                                                        <option>---</option>
                                                        <option>00 Minutes</option>
                                                        <option>01 Minutes</option>
                                                        <option>02 Minutes</option>
                                                        <option>03 Minutes</option>
                                                        <option>04 Minutes</option>
                                                        <option>05 Minutes</option>
                                                        <option>06 Minutes</option>
                                                        <option>07 Minutes</option>
                                                        <option>08 Minutes</option>
                                                        <option>09 Minutes</option>
                                                        <option>10 Minutes</option>
                                                        <option>11 Minutes</option>
                                                        <option>12 Minutes</option>
                                                        <option>13 Minutes</option>
                                                        <option>14 Minutes</option>
                                                        <option>15 Minutes</option>
                                                        <option>16 Minutes</option>
                                                        <option>17 Minutes</option>
                                                        <option>18 Minutes</option>
                                                        <option>19 Minutes</option>
                                                        <option>20 Minutes</option>
                                                        <option>21 Minutes</option>
                                                        <option>22 Minutes</option>
                                                        <option>23 Minutes</option>
                                                        <option>24 Minutes</option>
                                                        <option>25 Minutes</option>
                                                        <option>26 Minutes</option>
                                                        <option>27 Minutes</option>
                                                        <option>28 Minutes</option>
                                                        <option>29 Minutes</option>
                                                        <option>30 Minutes</option>
                                                        <option>31 Minutes</option>
                                                        <option>32 Minutes</option>
                                                        <option>33 Minutes</option>
                                                        <option>34 Minutes</option>
                                                        <option>35 Minutes</option>
                                                        <option>36 Minutes</option>
                                                        <option>37 Minutes</option>
                                                        <option>38 Minutes</option>
                                                        <option>39 Minutes</option>
                                                        <option>40 Minutes</option>
                                                        <option>41 Minutes</option>
                                                        <option>42 Minutes</option>
                                                        <option>43 Minutes</option>
                                                        <option>44 Minutes</option>
                                                        <option>45 Minutes</option>
                                                        <option>46 Minutes</option>
                                                        <option>47 Minutes</option>
                                                        <option>48 Minutes</option>
                                                        <option>49 Minutes</option>
                                                        <option>50 Minutes</option>
                                                        <option>51 Minutes</option>
                                                        <option>52 Minutes</option>
                                                        <option>53 Minutes</option>
                                                        <option>54 Minutes</option>
                                                        <option>55 Minutes</option>
                                                        <option>56 Minutes</option>
                                                        <option>57 Minutes</option>
                                                        <option>58 Minutes</option>
                                                        <option>59 Minutes</option>
                                                    </select>
                                                </div>
                                                <div style="margin-right: 10px;">
                                                    <span>Shift hour</span>
                                                    <select style="display:block;height:25px;width:140px;">
                                                        <option>---</option>
                                                        <option>00 Hours</option>
                                                        <option>01 Hours</option>
                                                        <option>02 Hours</option>
                                                        <option>03 Hours</option>
                                                        <option>04 Hours</option>
                                                        <option>05 Hours</option>
                                                        <option>06 Hours</option>
                                                        <option>07 Hours</option>
                                                        <option>08 Hours</option>
                                                        <option>09 Hours</option>
                                                        <option>10 Hours</option>
                                                        <option>11 Hours</option>
                                                        <option>12 Hours</option>
                                                        <option>13 Hours</option>
                                                        <option>14 Hours</option>
                                                        <option>15 Hours</option>
                                                        <option>16 Hours</option>
                                                        <option>17 Hours</option>
                                                        <option>18 Hours</option>
                                                        <option>19 Hours</option>
                                                        <option>20 Hours</option>
                                                        <option>21 Hours</option>
                                                        <option>22 Hours</option>
                                                        <option>23 Hours</option>
                                                    </select>
                                                </div>
                                                <div style="margin-right: 10px;">
                                                    <input type="hidden" />
                                                    <select style="display:block;height:25px;width:177px;margin-top: 24px;">
                                                        <option>---</option>
                                                        <option>00 Minutes</option>
                                                        <option>01 Minutes</option>
                                                        <option>02 Minutes</option>
                                                        <option>03 Minutes</option>
                                                        <option>04 Minutes</option>
                                                        <option>05 Minutes</option>
                                                        <option>06 Minutes</option>
                                                        <option>07 Minutes</option>
                                                        <option>08 Minutes</option>
                                                        <option>09 Minutes</option>
                                                        <option>10 Minutes</option>
                                                        <option>11 Minutes</option>
                                                        <option>12 Minutes</option>
                                                        <option>13 Minutes</option>
                                                        <option>14 Minutes</option>
                                                        <option>15 Minutes</option>
                                                        <option>16 Minutes</option>
                                                        <option>17 Minutes</option>
                                                        <option>18 Minutes</option>
                                                        <option>19 Minutes</option>
                                                        <option>20 Minutes</option>
                                                        <option>21 Minutes</option>
                                                        <option>22 Minutes</option>
                                                        <option>23 Minutes</option>
                                                        <option>24 Minutes</option>
                                                        <option>25 Minutes</option>
                                                        <option>26 Minutes</option>
                                                        <option>27 Minutes</option>
                                                        <option>28 Minutes</option>
                                                        <option>29 Minutes</option>
                                                        <option>30 Minutes</option>
                                                        <option>31 Minutes</option>
                                                        <option>32 Minutes</option>
                                                        <option>33 Minutes</option>
                                                        <option>34 Minutes</option>
                                                        <option>35 Minutes</option>
                                                        <option>36 Minutes</option>
                                                        <option>37 Minutes</option>
                                                        <option>38 Minutes</option>
                                                        <option>39 Minutes</option>
                                                        <option>40 Minutes</option>
                                                        <option>41 Minutes</option>
                                                        <option>42 Minutes</option>
                                                        <option>43 Minutes</option>
                                                        <option>44 Minutes</option>
                                                        <option>45 Minutes</option>
                                                        <option>46 Minutes</option>
                                                        <option>47 Minutes</option>
                                                        <option>48 Minutes</option>
                                                        <option>49 Minutes</option>
                                                        <option>50 Minutes</option>
                                                        <option>51 Minutes</option>
                                                        <option>52 Minutes</option>
                                                        <option>53 Minutes</option>
                                                        <option>54 Minutes</option>
                                                        <option>55 Minutes</option>
                                                        <option>56 Minutes</option>
                                                        <option>57 Minutes</option>
                                                        <option>58 Minutes</option>
                                                        <option>59 Minutes</option>
                                                    </select>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <hr />
                                <div class="table-responsive">
                                    <table class="table table-boreded" style="border: 1px solid rgba(34,36,38,.15);margin-left: 3px;">
                                        <thead>
                                            <tr>
                                                <th>Order</th>
                                                <th rowspan="2">Name</th>
                                                <th>Color</th>
                                                <th>Start</th>
                                                <th>Finish</th>
                                                <th>Status</th>
                                                <th>Coefficient</th>
                                                <th>Break <i class="fa fa-info-circle" style="cursor:pointer;" title="Enter the break time entered in 24-hour style (2 hours 2 minutes = 14:02) and in the format: hour: minute-hour: minute, hour: minute-hour: minute, ..... (eg : 2 hours break: 1 break from 14:00 to 15:00, 2 breaks from 16:00 to 17:00 = 14: 00-15: 00.16: 00-17: 00)"></i></th>
                                                <th></th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <tr>
                                                <td>
                                                    <input type="text" style="width: 50%;" />
                                                </td>
                                                <td>
                                                    <input type="text" />
                                                </td>
                                                <td>
                                                    <input type="color" name="favcolor" value="#ff0000">
                                                </td>
                                                <td>
                                                    <div style="display:flex;">
                                                        <select>
                                                           <option>---</option>
                                                        <option>00 Hours</option>
                                                        <option>01 Hours</option>
                                                        <option>02 Hours</option>
                                                        <option>03 Hours</option>
                                                        <option>04 Hours</option>
                                                        <option>05 Hours</option>
                                                        <option>06 Hours</option>
                                                        <option>07 Hours</option>
                                                        <option>08 Hours</option>
                                                        <option>09 Hours</option>
                                                        <option>10 Hours</option>
                                                        <option>11 Hours</option>
                                                        <option>12 Hours</option>
                                                        <option>13 Hours</option>
                                                        <option>14 Hours</option>
                                                        <option>15 Hours</option>
                                                        <option>16 Hours</option>
                                                        <option>17 Hours</option>
                                                        <option>18 Hours</option>
                                                        <option>19 Hours</option>
                                                        <option>20 Hours</option>
                                                        <option>21 Hours</option>
                                                        <option>22 Hours</option>
                                                        <option>23 Hours</option>
                                                        </select><select>
                                                           <option>---</option>
                                                        <option>00 Minutes</option>
                                                        <option>01 Minutes</option>
                                                        <option>02 Minutes</option>
                                                        <option>03 Minutes</option>
                                                        <option>04 Minutes</option>
                                                        <option>05 Minutes</option>
                                                        <option>06 Minutes</option>
                                                        <option>07 Minutes</option>
                                                        <option>08 Minutes</option>
                                                        <option>09 Minutes</option>
                                                        <option>10 Minutes</option>
                                                        <option>11 Minutes</option>
                                                        <option>12 Minutes</option>
                                                        <option>13 Minutes</option>
                                                        <option>14 Minutes</option>
                                                        <option>15 Minutes</option>
                                                        <option>16 Minutes</option>
                                                        <option>17 Minutes</option>
                                                        <option>18 Minutes</option>
                                                        <option>19 Minutes</option>
                                                        <option>20 Minutes</option>
                                                        <option>21 Minutes</option>
                                                        <option>22 Minutes</option>
                                                        <option>23 Minutes</option>
                                                        <option>24 Minutes</option>
                                                        <option>25 Minutes</option>
                                                        <option>26 Minutes</option>
                                                        <option>27 Minutes</option>
                                                        <option>28 Minutes</option>
                                                        <option>29 Minutes</option>
                                                        <option>30 Minutes</option>
                                                        <option>31 Minutes</option>
                                                        <option>32 Minutes</option>
                                                        <option>33 Minutes</option>
                                                        <option>34 Minutes</option>
                                                        <option>35 Minutes</option>
                                                        <option>36 Minutes</option>
                                                        <option>37 Minutes</option>
                                                        <option>38 Minutes</option>
                                                        <option>39 Minutes</option>
                                                        <option>40 Minutes</option>
                                                        <option>41 Minutes</option>
                                                        <option>42 Minutes</option>
                                                        <option>43 Minutes</option>
                                                        <option>44 Minutes</option>
                                                        <option>45 Minutes</option>
                                                        <option>46 Minutes</option>
                                                        <option>47 Minutes</option>
                                                        <option>48 Minutes</option>
                                                        <option>49 Minutes</option>
                                                        <option>50 Minutes</option>
                                                        <option>51 Minutes</option>
                                                        <option>52 Minutes</option>
                                                        <option>53 Minutes</option>
                                                        <option>54 Minutes</option>
                                                        <option>55 Minutes</option>
                                                        <option>56 Minutes</option>
                                                        <option>57 Minutes</option>
                                                        <option>58 Minutes</option>
                                                        <option>59 Minutes</option>
                                                        </select>
                                                    </div>
                                                </td>
                                                <td>
                                                    <div style="display:flex;">
                                                        <select>
                                                            <option>---</option>
                                                        <option>00 Hours</option>
                                                        <option>01 Hours</option>
                                                        <option>02 Hours</option>
                                                        <option>03 Hours</option>
                                                        <option>04 Hours</option>
                                                        <option>05 Hours</option>
                                                        <option>06 Hours</option>
                                                        <option>07 Hours</option>
                                                        <option>08 Hours</option>
                                                        <option>09 Hours</option>
                                                        <option>10 Hours</option>
                                                        <option>11 Hours</option>
                                                        <option>12 Hours</option>
                                                        <option>13 Hours</option>
                                                        <option>14 Hours</option>
                                                        <option>15 Hours</option>
                                                        <option>16 Hours</option>
                                                        <option>17 Hours</option>
                                                        <option>18 Hours</option>
                                                        <option>19 Hours</option>
                                                        <option>20 Hours</option>
                                                        <option>21 Hours</option>
                                                        <option>22 Hours</option>
                                                        <option>23 Hours</option>
                                                        </select><select>
                                                            <option>---</option>
                                                        <option>00 Minutes</option>
                                                        <option>01 Minutes</option>
                                                        <option>02 Minutes</option>
                                                        <option>03 Minutes</option>
                                                        <option>04 Minutes</option>
                                                        <option>05 Minutes</option>
                                                        <option>06 Minutes</option>
                                                        <option>07 Minutes</option>
                                                        <option>08 Minutes</option>
                                                        <option>09 Minutes</option>
                                                        <option>10 Minutes</option>
                                                        <option>11 Minutes</option>
                                                        <option>12 Minutes</option>
                                                        <option>13 Minutes</option>
                                                        <option>14 Minutes</option>
                                                        <option>15 Minutes</option>
                                                        <option>16 Minutes</option>
                                                        <option>17 Minutes</option>
                                                        <option>18 Minutes</option>
                                                        <option>19 Minutes</option>
                                                        <option>20 Minutes</option>
                                                        <option>21 Minutes</option>
                                                        <option>22 Minutes</option>
                                                        <option>23 Minutes</option>
                                                        <option>24 Minutes</option>
                                                        <option>25 Minutes</option>
                                                        <option>26 Minutes</option>
                                                        <option>27 Minutes</option>
                                                        <option>28 Minutes</option>
                                                        <option>29 Minutes</option>
                                                        <option>30 Minutes</option>
                                                        <option>31 Minutes</option>
                                                        <option>32 Minutes</option>
                                                        <option>33 Minutes</option>
                                                        <option>34 Minutes</option>
                                                        <option>35 Minutes</option>
                                                        <option>36 Minutes</option>
                                                        <option>37 Minutes</option>
                                                        <option>38 Minutes</option>
                                                        <option>39 Minutes</option>
                                                        <option>40 Minutes</option>
                                                        <option>41 Minutes</option>
                                                        <option>42 Minutes</option>
                                                        <option>43 Minutes</option>
                                                        <option>44 Minutes</option>
                                                        <option>45 Minutes</option>
                                                        <option>46 Minutes</option>
                                                        <option>47 Minutes</option>
                                                        <option>48 Minutes</option>
                                                        <option>49 Minutes</option>
                                                        <option>50 Minutes</option>
                                                        <option>51 Minutes</option>
                                                        <option>52 Minutes</option>
                                                        <option>53 Minutes</option>
                                                        <option>54 Minutes</option>
                                                        <option>55 Minutes</option>
                                                        <option>56 Minutes</option>
                                                        <option>57 Minutes</option>
                                                        <option>58 Minutes</option>
                                                        <option>59 Minutes</option>
                                                        </select>
                                                    </div>
                                                </td>
                                                <td>
                                                    <div>
                                                        <select>
                                                            <option>Enable</option>
                                                            <option>Disable</option>
                                                        </select>
                                                    </div>
                                                </td>
                                                <td>
                                                    <input type="text" style="width: 50%;text-align:center;" value="1.00" />
                                                </td>
                                                <td>
                                                    <input type="text" />
                                                </td>
                                                <td>
                                                    <button type="button" style="border:none;background-color:floralwhite" onclick="del()"><i class="fas fa-trash-alt" style="color:red"></i></button>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>1</td>
                                                <td>Shift 1</td>
                                                <td><input type="color" name="favcolor" value="#0cf380"></td>
                                                <td>8:15</td>
                                                <td>17:30</td>
                                                <td>Enable</td>
                                                <td>1.00</td>
                                                <td>30 Minutes</td>
                                                <td>
                                                    <button type="button" style="border:none;background-color:floralwhite" onclick="del()"><i class="fas fa-trash-alt" style="color:red"></i></button>
                                                </td>
                                                <td></td>
                                            </tr>
                                            <tr>
                                                <td>2</td>
                                                <td>Shift 2</td>
                                                <td><input type="color" name="favcolor" value="#e2dc15"></td>
                                                <td>12:00</td>
                                                <td>18:30</td>
                                                <td>Enable</td>
                                                <td>1.00</td>
                                                <td>30 Minutes</td>
                                                <td>
                                                    <button type="button" style="border:none;background-color:floralwhite" onclick="del()"><i class="fas fa-trash-alt" style="color:red"></i></button>
                                                </td>
                                                <td></td>
                                            </tr>
                                            <tr>
                                                <td><button type="submit" class="btn btn-info" style="border:none;padding-left: 20px;padding-right: 20px;width: 200px;"><a href="#" style="color:white;text-decoration:none;"><i class="fa fa-plus"></i> Add shift</a></button></td>
                                                <td></td>
                                                <td></td>
                                                <td></td>
                                                <td></td>
                                                <td></td>
                                                <td></td>
                                                <td></td>
                                                <td></td>

                                            </tr>
                                        </tbody>
                                    </table>
                                </div>
                                <div class="modal-footer">
                                    <button type="button" class="btn btn-default" data-dismiss="modal" style="border: none;border-radius: 17px;margin-right: 10px;padding-left: 20px;padding-right: 20px;">Close</button>
                                    <button type="button" class="btn btn-info" style="border:none;padding: 8px; " onclick="addnew()">Create office</button>
                                </div>
                            </div>

                        </div>
                    </div>
                    <div class="col-sm-6 sidenav">

                    </div>
                </div>

            </div>
            <div class="container" style="display: inline-flex;padding-left: 114px;">
                <a href="#" style="height: 20px;width: 20px;color: #555;"><i class="fa fa-chevron-left"></i></a>
                <div style="margin-right: 6px;">
                    <a href="#" style="color:#555;text-decoration:none;">
                        <span>Page</span>
                        <span>0</span>
                        <span>/</span>
                        <span>0</span>
                    </a>
                </div>
                <a href="#" style="height: 48px;width: 48px;color: #555;"><i class="fa fa-chevron-right"></i></a>
            </div>
        </div>
        <br>

        <div>
        <div class="table-responsive">
            <table class="table table-bordered" style="width:100%; color:grey;margin-top: 20px;">
                <thead>
                    <tr>
                        <th style="color:black;">Sid</th>
                        <th rowspan="2">Office Name</th>
                        <th>Company Name</th>
                        <th>Address</th>
                        <th>Working Time</th>
                        <%--<th>Public People</th>--%>
                       <%-- <th>Ip Attenđe</th>--%>
                        <th>Telephone</th>
                        <th>Date Created <i class="fa fa-info-circle" style="cursor:pointer;" title="Your current IP is 15.169.34.171"></i></th>
                        <th>Action</th>
                        
                    </tr>
                </thead>
                <tbody>
                    <%for (int i = listOffice.Count - 1; i > -1; i--)
                    {%>
                    <tr>
                       <td><%=listOffice[i].OfficeId %></td>
                        <td><%=listOffice[i].OfficeName%></td>
                        <td>
                        <%for(int j=0;j<listCompany.Count;j++) {
                            if(listCompany[j].CompanyId==listOffice[i].CompanyId){%>
                        <%=listCompany[j].CompanyName %>
                        <% break;}%>
                        <%}%>  
                            </td>
                        <td><%=listOffice[i].OfficeAddress%></td>
                        <td></td>
                        <td><%=listOffice[i].Phone%></td>
                        <td><%=listOffice[i].CreatedDate%></td>

                        <td>
                            <a href="#" onclick="edit1(<%=listOffice[i].OfficeId%>)" data-toggle="modal" data-target="#myModal7" style="margin-right: 20px;text-decoration:none;"  ><i style="width: 25px" class="fas fa-pen"></i></a>
                         
                            <button type="button" style="border:none;background-color:floralwhite" onclick="clickdelete(<%=listOffice[i].OfficeId%>)"><i class="fas fa-trash-alt" style="color:red"></i></button>
                        </td>
                         <%}%>
                    </tr>
                </tbody>
            </table>

        </div>
    </div>
    </div>
      <!-- Modal -->
            <div class="modal fade" id="myModal7" role="dialog">
                <div class="modal-dialog modal-lg">

                    <!-- Modal content-->
                    <div class="modal-content" style="width: 1000px;">
                        <div class="modal-header">
                            
                            <h2 class="modal-title" style="float:left;">Office update:fdf</h2>
                            
                        </div>
                        <div class="modal-body" style="margin-bottom: -116px;height:300px;">
                            <div class="row content">
                                <div class="col-sm-3 sidenav">
                                    <h4>General information</h4>
                                </div>

                                <div class="col-sm-9">
                                    <div style="display:flex;margin-bottom: 30px;">
                                        <div style="margin-right: 10px;">
                                            <span>Name</span>
                                            <span style="color:red;">*</span>
                                            <input id="txtName1" style="display:block;height:25px" type="text" />
                                        </div>
                                        <div style="margin-right: 10px;">
                                            <span>Address</span>
                                            <input id="txtAddress1" style="display:block;height:25px" type="text" />
                                        </div>
                                        <div style="margin-right: 10px;">
                                            <span>City</span>
                                            <select style="display:block;height:25px;width:140px;">
                                                <option>---</option>
                                                <option>Ho Chi Minh </option>
                                                <option>Ha Noi</option>
                                                <option>Da Nang</option>
                                                <option>Can Tho</option>
                                            </select>
                                        </div>
                                        <div style="margin-right: 10px;">
                                                    <label for="pwd">Company</label>
                                                     <select id="selectList1" class="form-control" style="height: 38px;margin-top: -10px;width: 175px;">
                                                         <%for (int j = 0; j < listCompany.Count; j++)
                                                             { %>
                                                            <option value="<%=listCompany[j].CompanyId %>"><%=listCompany[j].CompanyName %></option>
                                                            <%} %>
                                                        </select>
                                                </div>
                                        <%--<div style="margin-right: 10px;">
                                            <span>IP is timed <i class="fa fa-info-circle" style="cursor:pointer;" title="Your current IP is 15.169.34.171"></i></span>
                                            <input style="display:block;height:25px" type="text" />
                                        </div>--%>
                                    </div>
                                    <div style="display:flex;">
                                                <div style="margin-right: 10px;">
                                                    <span>Work time</span>
                                                    <select style="display:block;height:25px;width:179px;">
                                                        <option>---</option>
                                                        <option>00 Hours</option>
                                                        <option>01 Hours</option>
                                                        <option>02 Hours</option>
                                                        <option>03 Hours</option>
                                                        <option>04 Hours</option>
                                                        <option>05 Hours</option>
                                                        <option>06 Hours</option>
                                                        <option>07 Hours</option>
                                                        <option>08 Hours</option>
                                                        <option>09 Hours</option>
                                                        <option>10 Hours</option>
                                                        <option>11 Hours</option>
                                                        <option>12 Hours</option>
                                                        <option>13 Hours</option>
                                                        <option>14 Hours</option>
                                                        <option>15 Hours</option>
                                                        <option>16 Hours</option>
                                                        <option>17 Hours</option>
                                                        <option>18 Hours</option>
                                                        <option>19 Hours</option>
                                                        <option>20 Hours</option>
                                                        <option>21 Hours</option>
                                                        <option>22 Hours</option>
                                                        <option>23 Hours</option>
                                                    </select>
                                                </div>
                                                <div style="margin-right: 10px;">
                                                    <input type="hidden" />
                                                    <select style="display:block;height:25px;width:178px;margin-top: 23px;">
                                                        <option>---</option>
                                                        <option>00 Minutes</option>
                                                        <option>01 Minutes</option>
                                                        <option>02 Minutes</option>
                                                        <option>03 Minutes</option>
                                                        <option>04 Minutes</option>
                                                        <option>05 Minutes</option>
                                                        <option>06 Minutes</option>
                                                        <option>07 Minutes</option>
                                                        <option>08 Minutes</option>
                                                        <option>09 Minutes</option>
                                                        <option>10 Minutes</option>
                                                        <option>11 Minutes</option>
                                                        <option>12 Minutes</option>
                                                        <option>13 Minutes</option>
                                                        <option>14 Minutes</option>
                                                        <option>15 Minutes</option>
                                                        <option>16 Minutes</option>
                                                        <option>17 Minutes</option>
                                                        <option>18 Minutes</option>
                                                        <option>19 Minutes</option>
                                                        <option>20 Minutes</option>
                                                        <option>21 Minutes</option>
                                                        <option>22 Minutes</option>
                                                        <option>23 Minutes</option>
                                                        <option>24 Minutes</option>
                                                        <option>25 Minutes</option>
                                                        <option>26 Minutes</option>
                                                        <option>27 Minutes</option>
                                                        <option>28 Minutes</option>
                                                        <option>29 Minutes</option>
                                                        <option>30 Minutes</option>
                                                        <option>31 Minutes</option>
                                                        <option>32 Minutes</option>
                                                        <option>33 Minutes</option>
                                                        <option>34 Minutes</option>
                                                        <option>35 Minutes</option>
                                                        <option>36 Minutes</option>
                                                        <option>37 Minutes</option>
                                                        <option>38 Minutes</option>
                                                        <option>39 Minutes</option>
                                                        <option>40 Minutes</option>
                                                        <option>41 Minutes</option>
                                                        <option>42 Minutes</option>
                                                        <option>43 Minutes</option>
                                                        <option>44 Minutes</option>
                                                        <option>45 Minutes</option>
                                                        <option>46 Minutes</option>
                                                        <option>47 Minutes</option>
                                                        <option>48 Minutes</option>
                                                        <option>49 Minutes</option>
                                                        <option>50 Minutes</option>
                                                        <option>51 Minutes</option>
                                                        <option>52 Minutes</option>
                                                        <option>53 Minutes</option>
                                                        <option>54 Minutes</option>
                                                        <option>55 Minutes</option>
                                                        <option>56 Minutes</option>
                                                        <option>57 Minutes</option>
                                                        <option>58 Minutes</option>
                                                        <option>59 Minutes</option>
                                                    </select>
                                                </div>
                                                <div style="margin-right: 10px;">
                                                    <span>Shift hour</span>
                                                    <select style="display:block;height:25px;width:140px;">
                                                        <option>---</option>
                                                        <option>00 Hours</option>
                                                        <option>01 Hours</option>
                                                        <option>02 Hours</option>
                                                        <option>03 Hours</option>
                                                        <option>04 Hours</option>
                                                        <option>05 Hours</option>
                                                        <option>06 Hours</option>
                                                        <option>07 Hours</option>
                                                        <option>08 Hours</option>
                                                        <option>09 Hours</option>
                                                        <option>10 Hours</option>
                                                        <option>11 Hours</option>
                                                        <option>12 Hours</option>
                                                        <option>13 Hours</option>
                                                        <option>14 Hours</option>
                                                        <option>15 Hours</option>
                                                        <option>16 Hours</option>
                                                        <option>17 Hours</option>
                                                        <option>18 Hours</option>
                                                        <option>19 Hours</option>
                                                        <option>20 Hours</option>
                                                        <option>21 Hours</option>
                                                        <option>22 Hours</option>
                                                        <option>23 Hours</option>
                                                    </select>
                                                </div>
                                                <div style="margin-right: 10px;">
                                                    <input type="hidden" />
                                                    <select style="display:block;height:25px;width:177px;margin-top: 24px;">
                                                        <option>---</option>
                                                        <option>00 Minutes</option>
                                                        <option>01 Minutes</option>
                                                        <option>02 Minutes</option>
                                                        <option>03 Minutes</option>
                                                        <option>04 Minutes</option>
                                                        <option>05 Minutes</option>
                                                        <option>06 Minutes</option>
                                                        <option>07 Minutes</option>
                                                        <option>08 Minutes</option>
                                                        <option>09 Minutes</option>
                                                        <option>10 Minutes</option>
                                                        <option>11 Minutes</option>
                                                        <option>12 Minutes</option>
                                                        <option>13 Minutes</option>
                                                        <option>14 Minutes</option>
                                                        <option>15 Minutes</option>
                                                        <option>16 Minutes</option>
                                                        <option>17 Minutes</option>
                                                        <option>18 Minutes</option>
                                                        <option>19 Minutes</option>
                                                        <option>20 Minutes</option>
                                                        <option>21 Minutes</option>
                                                        <option>22 Minutes</option>
                                                        <option>23 Minutes</option>
                                                        <option>24 Minutes</option>
                                                        <option>25 Minutes</option>
                                                        <option>26 Minutes</option>
                                                        <option>27 Minutes</option>
                                                        <option>28 Minutes</option>
                                                        <option>29 Minutes</option>
                                                        <option>30 Minutes</option>
                                                        <option>31 Minutes</option>
                                                        <option>32 Minutes</option>
                                                        <option>33 Minutes</option>
                                                        <option>34 Minutes</option>
                                                        <option>35 Minutes</option>
                                                        <option>36 Minutes</option>
                                                        <option>37 Minutes</option>
                                                        <option>38 Minutes</option>
                                                        <option>39 Minutes</option>
                                                        <option>40 Minutes</option>
                                                        <option>41 Minutes</option>
                                                        <option>42 Minutes</option>
                                                        <option>43 Minutes</option>
                                                        <option>44 Minutes</option>
                                                        <option>45 Minutes</option>
                                                        <option>46 Minutes</option>
                                                        <option>47 Minutes</option>
                                                        <option>48 Minutes</option>
                                                        <option>49 Minutes</option>
                                                        <option>50 Minutes</option>
                                                        <option>51 Minutes</option>
                                                        <option>52 Minutes</option>
                                                        <option>53 Minutes</option>
                                                        <option>54 Minutes</option>
                                                        <option>55 Minutes</option>
                                                        <option>56 Minutes</option>
                                                        <option>57 Minutes</option>
                                                        <option>58 Minutes</option>
                                                        <option>59 Minutes</option>
                                                    </select>
                                                </div>
                                            </div>
                                            <div style="margin-top:20px;display:flex;">
                                                <div style="margin-right: 7px;">
                                                    <div>Public reviewer</div>
                                                    <select style="height:25px;width:179px;">
                                                        <option>---</option>
                                                    </select>
                                                </div>
                                                <div style="margin-right: 7px;">
                                                    <div>PLimit date of public review</div>
                                                    <input type="text" value="0" style="height:25px;" />
                                                </div>
                                                <div style="margin-right: 7px;">
                                                    <div>Time to work late <span><i class="fa fa-info-circle" style="cursor:pointer;" title="Calculated in minutes (equal to 0 if not installed)"></i></span></div>
                                                    <input type="text" value="0" style="height:25px;width: 135px;" />
                                                </div>
                                                <div>
                                                    <div>Time to leave early <span><i class="fa fa-info-circle" style="cursor:pointer;" title="Calculated in minutes (equal to 0 if not installed)"></i></span></div>
                                                    <input type="text" value="0" style="height:25px;" />
                                                </div>
                                            </div>
                                </div>
                            </div>
                        </div>
                        <hr />
                        <div class="table-responsive">
                            <table class="table table-hover" style="border: 1px solid rgba(34,36,38,.15);width: 95%;margin-left: 20px;">
                                <thead>
                                    <tr>
                                        <th>Order</th>
                                        <th rowspan="2">Name</th>
                                        <th>Color</th>
                                        <th>Start</th>
                                        <th>Finish</th>
                                        <th>Status</th>
                                        <th>Coefficient</th>
                                        <th>Break <i class="fa fa-info-circle" style="cursor:pointer;" title="Enter the break time entered in 24-hour style (2 hours 2 minutes = 14:02) and in the format: hour: minute-hour: minute, hour: minute-hour: minute, ..... (eg : 2 hours break: 1 break from 14:00 to 15:00, 2 breaks from 16:00 to 17:00 = 14: 00-15: 00.16: 00-17: 00)"></i></th>
                                    </tr>
                                </thead>
                                <tbody>
                                            <tr>
                                                <td>
                                                    <input type="text" style="width: 50%;" />
                                                </td>
                                                <td>
                                                    <input type="text" />
                                                </td>
                                                <td>
                                                    <input type="color" name="favcolor" value="#ff0000">
                                                </td>
                                                <td>
                                                    <div style="display:flex;">
                                                        <select>
                                                            <option>---</option>
                                                        <option>00 Hours</option>
                                                        <option>01 Hours</option>
                                                        <option>02 Hours</option>
                                                        <option>03 Hours</option>
                                                        <option>04 Hours</option>
                                                        <option>05 Hours</option>
                                                        <option>06 Hours</option>
                                                        <option>07 Hours</option>
                                                        <option>08 Hours</option>
                                                        <option>09 Hours</option>
                                                        <option>10 Hours</option>
                                                        <option>11 Hours</option>
                                                        <option>12 Hours</option>
                                                        <option>13 Hours</option>
                                                        <option>14 Hours</option>
                                                        <option>15 Hours</option>
                                                        <option>16 Hours</option>
                                                        <option>17 Hours</option>
                                                        <option>18 Hours</option>
                                                        <option>19 Hours</option>
                                                        <option>20 Hours</option>
                                                        <option>21 Hours</option>
                                                        <option>22 Hours</option>
                                                        <option>23 Hours</option>
                                                        </select><select>
                                                            <option>---</option>
                                                        <option>00 Minutes</option>
                                                        <option>01 Minutes</option>
                                                        <option>02 Minutes</option>
                                                        <option>03 Minutes</option>
                                                        <option>04 Minutes</option>
                                                        <option>05 Minutes</option>
                                                        <option>06 Minutes</option>
                                                        <option>07 Minutes</option>
                                                        <option>08 Minutes</option>
                                                        <option>09 Minutes</option>
                                                        <option>10 Minutes</option>
                                                        <option>11 Minutes</option>
                                                        <option>12 Minutes</option>
                                                        <option>13 Minutes</option>
                                                        <option>14 Minutes</option>
                                                        <option>15 Minutes</option>
                                                        <option>16 Minutes</option>
                                                        <option>17 Minutes</option>
                                                        <option>18 Minutes</option>
                                                        <option>19 Minutes</option>
                                                        <option>20 Minutes</option>
                                                        <option>21 Minutes</option>
                                                        <option>22 Minutes</option>
                                                        <option>23 Minutes</option>
                                                        <option>24 Minutes</option>
                                                        <option>25 Minutes</option>
                                                        <option>26 Minutes</option>
                                                        <option>27 Minutes</option>
                                                        <option>28 Minutes</option>
                                                        <option>29 Minutes</option>
                                                        <option>30 Minutes</option>
                                                        <option>31 Minutes</option>
                                                        <option>32 Minutes</option>
                                                        <option>33 Minutes</option>
                                                        <option>34 Minutes</option>
                                                        <option>35 Minutes</option>
                                                        <option>36 Minutes</option>
                                                        <option>37 Minutes</option>
                                                        <option>38 Minutes</option>
                                                        <option>39 Minutes</option>
                                                        <option>40 Minutes</option>
                                                        <option>41 Minutes</option>
                                                        <option>42 Minutes</option>
                                                        <option>43 Minutes</option>
                                                        <option>44 Minutes</option>
                                                        <option>45 Minutes</option>
                                                        <option>46 Minutes</option>
                                                        <option>47 Minutes</option>
                                                        <option>48 Minutes</option>
                                                        <option>49 Minutes</option>
                                                        <option>50 Minutes</option>
                                                        <option>51 Minutes</option>
                                                        <option>52 Minutes</option>
                                                        <option>53 Minutes</option>
                                                        <option>54 Minutes</option>
                                                        <option>55 Minutes</option>
                                                        <option>56 Minutes</option>
                                                        <option>57 Minutes</option>
                                                        <option>58 Minutes</option>
                                                        <option>59 Minutes</option>
                                                        </select>
                                                    </div>
                                                </td>
                                                <td>
                                                    <div style="display:flex;">
                                                        <select>
                                                            <option>---</option>
                                                        <option>00 Hours</option>
                                                        <option>01 Hours</option>
                                                        <option>02 Hours</option>
                                                        <option>03 Hours</option>
                                                        <option>04 Hours</option>
                                                        <option>05 Hours</option>
                                                        <option>06 Hours</option>
                                                        <option>07 Hours</option>
                                                        <option>08 Hours</option>
                                                        <option>09 Hours</option>
                                                        <option>10 Hours</option>
                                                        <option>11 Hours</option>
                                                        <option>12 Hours</option>
                                                        <option>13 Hours</option>
                                                        <option>14 Hours</option>
                                                        <option>15 Hours</option>
                                                        <option>16 Hours</option>
                                                        <option>17 Hours</option>
                                                        <option>18 Hours</option>
                                                        <option>19 Hours</option>
                                                        <option>20 Hours</option>
                                                        <option>21 Hours</option>
                                                        <option>22 Hours</option>
                                                        <option>23 Hours</option>
                                                        </select><select>
                                                            <option>---</option>
                                                        <option>00 Minutes</option>
                                                        <option>01 Minutes</option>
                                                        <option>02 Minutes</option>
                                                        <option>03 Minutes</option>
                                                        <option>04 Minutes</option>
                                                        <option>05 Minutes</option>
                                                        <option>06 Minutes</option>
                                                        <option>07 Minutes</option>
                                                        <option>08 Minutes</option>
                                                        <option>09 Minutes</option>
                                                        <option>10 Minutes</option>
                                                        <option>11 Minutes</option>
                                                        <option>12 Minutes</option>
                                                        <option>13 Minutes</option>
                                                        <option>14 Minutes</option>
                                                        <option>15 Minutes</option>
                                                        <option>16 Minutes</option>
                                                        <option>17 Minutes</option>
                                                        <option>18 Minutes</option>
                                                        <option>19 Minutes</option>
                                                        <option>20 Minutes</option>
                                                        <option>21 Minutes</option>
                                                        <option>22 Minutes</option>
                                                        <option>23 Minutes</option>
                                                        <option>24 Minutes</option>
                                                        <option>25 Minutes</option>
                                                        <option>26 Minutes</option>
                                                        <option>27 Minutes</option>
                                                        <option>28 Minutes</option>
                                                        <option>29 Minutes</option>
                                                        <option>30 Minutes</option>
                                                        <option>31 Minutes</option>
                                                        <option>32 Minutes</option>
                                                        <option>33 Minutes</option>
                                                        <option>34 Minutes</option>
                                                        <option>35 Minutes</option>
                                                        <option>36 Minutes</option>
                                                        <option>37 Minutes</option>
                                                        <option>38 Minutes</option>
                                                        <option>39 Minutes</option>
                                                        <option>40 Minutes</option>
                                                        <option>41 Minutes</option>
                                                        <option>42 Minutes</option>
                                                        <option>43 Minutes</option>
                                                        <option>44 Minutes</option>
                                                        <option>45 Minutes</option>
                                                        <option>46 Minutes</option>
                                                        <option>47 Minutes</option>
                                                        <option>48 Minutes</option>
                                                        <option>49 Minutes</option>
                                                        <option>50 Minutes</option>
                                                        <option>51 Minutes</option>
                                                        <option>52 Minutes</option>
                                                        <option>53 Minutes</option>
                                                        <option>54 Minutes</option>
                                                        <option>55 Minutes</option>
                                                        <option>56 Minutes</option>
                                                        <option>57 Minutes</option>
                                                        <option>58 Minutes</option>
                                                        <option>59 Minutes</option>
                                                        </select>
                                                    </div>
                                                </td>
                                                <td>
                                                    <div>
                                                        <select>
                                                            <option>Enable</option>
                                                            <option>Disable</option>
                                                        </select>
                                                    </div>
                                                </td>
                                                <td>
                                                    <input type="text" style="width: 50%;text-align:center;" value="1.00" />
                                                </td>
                                                <td>
                                                    <input type="text" />
                                                </td>
                                                <td>
                                                    <button type="button" style="border:none;background-color:floralwhite" onclick="del()"><i class="fas fa-trash-alt" style="color:red"></i></button>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>1</td>
                                                <td>Shift 1</td>
                                                <td><input type="color" name="favcolor" value="#0cf380"></td>
                                                <td>8:15</td>
                                                <td>17:30</td>
                                                <td>Enable</td>
                                                <td>1.00</td>
                                                <td>30 Minutes</td>
                                                <td>
                                                    <button type="button" style="border:none;background-color:floralwhite" onclick="del()"><i class="fas fa-trash-alt" style="color:red"></i></button>

                                                </td>
                                                <td></td>
                                            </tr>
                                            <tr>
                                                <td>2</td>
                                                <td>Shift 2</td>
                                                <td><input type="color" name="favcolor" value="#e2dc15"></td>
                                                <td>12:00</td>
                                                <td>18:30</td>
                                                <td>Enable</td>
                                                <td>1.00</td>
                                                <td>30 Minutes</td>
                                                <td>
                                                    <button type="button" style="border:none;background-color:floralwhite" onclick="del()"><i class="fas fa-trash-alt" style="color:red"></i></button>

                                                </td>
                                                <td></td>
                                            </tr>
                                            <tr>
                                                <td><button type="submit" class="btn btn-info" style="border:none;padding-left: 20px;padding-right: 20px;width: 200px;"><a href="#" style="color:white;text-decoration:none;"><i class="fa fa-plus"></i> Add shift</a></button></td>
                                                <td></td>
                                                <td></td>
                                                <td></td>
                                                <td></td>
                                                <td></td>
                                                <td></td>
                                                <td></td>
                                                <td></td>

                                            </tr>
                                        </tbody>
                            </table>
                        </div>
                        <div class="modal-footer">
                            <button type="button" class="btn btn-default" data-dismiss="modal" style="border: none;border-radius: 17px;margin-right: 10px;padding-left: 20px;padding-right: 20px;">Close</button>
                            <button type="button" class="btn btn-facebook" style="border:none;padding-left: 20px;padding-right: 20px;" onclick="edit(<%=editoffice.OfficeId%>)">Update</button>
                        </div>
                    </div>

                </div>
            </div>
    <script>
        function del(){
            alert("Are You Sure?");
        }

        function addnew()
        {
            var name = $("#txtName").val();
            var address = $("#txtAddress").val();
            var company = $("#selectList").val();
            
            $.post ("/do/Setting/add-new-office.aspx", {
                name: name,
                address: address,
                company: company
             
            }, function (data) {
                if (data == 1) {
                    alert("Success");
                    location.href = "/Setting/Office.aspx";
                }
                else {
                    alert("Error", data);
                }
            });
            }
        function clickdelete(id) {
            confirm("Are you sure Delete?", function () {
                $.post("/do/Setting/delete-office.aspx", {
                    id: id,
                }, function (data) {
                    if (data == 1) {
                        alert("Success")
                        location.href = "/Setting/Office.aspx";
                    }
                    else {
                        alert("Error", data)
                    }
                })
            });
        }

        function edit(id)
        {
            var name = $("#txtName1").val();
            var address = $("#txtAddress1").val();
            var company = $("#selectList1").val();
            $.post('/do/Setting/edit-office.aspx', {
                id:id,
                name: name,
                address: address,
                company: company

            }, function (data) {
                    if (data == 1) {
                        alert("Success");
                        location.href = "/Setting/Office.aspx";
                    }
                    else {
                        alert("Error", data)
                    }
                });


        }

        function edit1(id) {
            location.href = "/cp/Edit-User.aspx?id=" + id;
        }
    </script>
</asp:Content>

