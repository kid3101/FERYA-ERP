<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="AddOffice.aspx.cs" Inherits="Setting_AddOffice" %>

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
    <div class="container-fluid" style="margin-top: -23px;;width: 100%;height: 119px;background-color:#eee;">
        <div style="line-height: 1;display: inline-block;margin-left: 40px;vertical-align: middle;">
            <a style="text-decoration:none;" class="abc tab-content" href="InstallationAndConfiguration.html">
                <span><h2 style="cursor:pointer;">Install personnel <span><i style="padding-left: 20px;color: black;padding-right: 20px;" class="fa fa-angle-right"></i></span><a href="#" style="color:black;text-decoration:none;">Office</a></h2></span>
            </a>
        </div>
        <ul class="nav nav-tabs" style=" margin-block-start: 1em;padding-inline-start: 40px;margin-top: 48px;">
            <li class="active " style="margin-right: 20px;">
                <a data-toggle="tab" href="#" style="cursor:pointer;">
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
                                            <label style="float:left;margin-top: 13px;">
                                                <span>Key word</span>
                                            </label>
                                            <input style="float: left;margin-left: 20px;margin-bottom: 20px;height: 37px;width: 76%;" type="text" />
                                        </td>

                                    </tr>
                                    <tr>
                                        <td colspan="2">
                                            <button class="timkiem"><a style="color:white;" href="SearchOffice.html">Search</a></button>
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
        </ul>
        <div class="container-fluid" style="margin-top: -34px;margin-left: 791px;">
            <div class="container" style="float:left;">
                <div class="row">
                    <div class="col-sm-5 sidenav" style="margin-top: -52px;margin-left: -168px;">
                        <a data-toggle="modal" data-target="#myModal" style="float:right;text-decoration:none;" class="nutchamcong" data-toggle="tooltip" href="#" title="Timekeeping" style="color:white;margin-left: 15px;"><i class="fa fa-plus-circle"></i> CREATE AN OFFICE</a>
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
                                                    <span>Tên</span>
                                                    <span style="color:red;">*</span>
                                                    <input style="display:block;height:25px" type="text" />
                                                </div>
                                                <div style="margin-right: 10px;">
                                                    <span>Address</span>
                                                    <input style="display:block;height:25px" type="text" />
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
                                                    <span>IP is timed <i class="fa fa-info-circle" style="cursor:pointer;" title="Your current IP is 15.169.34.171"></i></span>
                                                    <input style="display:block;height:25px" type="text" />
                                                </div>
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
                                    <table class="table table-hover" style="border: 1px solid rgba(34,36,38,.15);margin-left: 3px;">
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
                                                    <button><i class="fa fa-trash"></i></button>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td><button type="submit" class="nutchamcong2" style="border:none;padding-left: 20px;padding-right: 20px;width: 200px;"><a href="#" style="color:white;text-decoration:none;"><i class="fa fa-plus"></i> Add shift</a></button></td>
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
                                    <button type="submit" class="nutchamcong2" style="border:none;padding: 8px;"><a href="AddOffice.aspx"  style="color:white;text-decoration:none;">Create an office</a></button>
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
            <table class="table table-hover" style="width:100%; color:grey;margin-top: 20px;">
                <thead>
                    <tr>
                        <th style="color:black;">SID</th>
                        <th rowspan="2">NAME</th>
                        <th>ADDRESS</th>
                        <th>WORKING TIME</th>
                        <th>PUBLIC PEOPLE</th>
                        <th>IP ATTENDED</th>
                        <th>CREATOR</th>
                        <th>DATE CREATED <i class="fa fa-info-circle" style="cursor:pointer;" title="Your current IP is 15.169.34.171"></i></th>
                        <th></th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td>fdf</td>
                        <td>fdf</td>
                        <td>fd</td>
                        <td>fdf</td>
                        <td>fdf</td>
                        <td>dfd</td>
                        <td>dfdf</td>
                        <td>fdfd</td>
                        <td style="float:right;">
                            <a href="#"  data-toggle="modal" data-target="#myModal4" style="margin-right: 20px;text-decoration:none;">Edit</a>
                            <a class="as" href="#" style="text-decoration:none;">Delete</a>
                        </td>
                    </tr>
                </tbody>
            </table>
            <!-- Modal -->
            <div class="modal fade" id="myModal4" role="dialog">
                <div class="modal-dialog modal-lg">

                    <!-- Modal content-->
                    <div class="modal-content" style="width: 1000px;">
                        <div class="modal-header">
                            
                            <h2 class="modal-title" style="float:left;">Office update:</h2>
                            <span style="font-size: 30px;"> fdf</span>
                        </div>
                        <div class="modal-body" style="margin-bottom: -116px;height:300px;">
                            <div class="row content">
                                <div class="col-sm-3 sidenav">
                                    <h4>General information</h4>
                                </div>

                                <div class="col-sm-9">
                                    <div style="display:flex;margin-bottom: 30px;">
                                        <div style="margin-right: 10px;">
                                            <span>Tên</span>
                                            <span style="color:red;">*</span>
                                            <input style="display:block;height:25px" type="text" />
                                        </div>
                                        <div style="margin-right: 10px;">
                                            <span>Address</span>
                                            <input style="display:block;height:25px" type="text" />
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
                                            <span>IP is timed <i class="fa fa-info-circle" style="cursor:pointer;" title="Your current IP is 15.169.34.171"></i></span>
                                            <input style="display:block;height:25px" type="text" />
                                        </div>
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
                                                    <button><i class="fa fa-trash"></i></button>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td><button type="submit" class="nutchamcong2" style="border:none;padding-left: 20px;padding-right: 20px;width: 200px;"><a href="#" style="color:white;text-decoration:none;"><i class="fa fa-plus"></i> Add shift</a></button></td>
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
                            <button type="submit" class="nutchamcong2" style="border:none;padding-left: 20px;padding-right: 20px;"><a href="#" style="color:white;text-decoration:none;">Update</a></button>
                        </div>
                    </div>

                </div>
            </div>
        </div>
    </div>
</asp:Content>

