<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="list-leave.aspx.cs" Inherits="Employee_list_leave" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link href="../css/Attendance/History.css" rel="stylesheet" />
    <link href="../css/employee.css/list-point-employee.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <div class="container-fluid" style="width: 100%;height: 119px;background-color:#eee;margin-top: -23px;">
        <div style="line-height: 1;display: inline-block;margin-left: 40px;vertical-align: middle;">
            <a class="abc tab-content" style="text-decoration:none;" href="#"><span><h2 style="cursor:pointer;"> Please take leave</h2></span></a>
        </div>
        <ul class="nav nav-tabs" style="margin-block-start: 1em;padding-inline-start: 40px;position: absolute;padding-top: 32px;">
            <li class="active" style="margin-right: 20px;">
                <a data-toggle="tab" href="#" style="cursor:pointer;text-decoration:none;">
                    <span style="color:black;">All</span>
                    <span class="number">1</span>
                </a>
            </li>
            <li class="dropdown">
                <a class="dropdown-toggle" data-toggle="dropdown" style="padding-right: 30px;color:black;cursor:pointer;" title="Turn on / off the search function">Filter & search ...</a>
                <ul class="dropdown-menu filterbarfull filterbar" style="top: 0px;transform: translate3d(0px, 26px, 0px);width: 354px;margin-top: 185px;">
                    <li>
                        <form class="ui form">
                            <table width="100%" cellpadding="10">
                                <tbody>
                                    <tr>
                                        <td>
                                            <label>
                                                <span style="margin-right:10px;">Key word</span>
                                            </label>
                                        </td>
                                        <td>
                                            <div class="text" style="cursor:pointer;">
                                                <input type="text" name="keyword" value="" style="height: 31px;width: 221px;border-radius: 6px;margin-bottom: 12px;margin-left: 3px;border-style: groove;">
                                            </div>
                                        </td>
                                    </tr>
                                     <tr>
                                        <td>
                                            <label>
                                                <span style="margin-right:10px;">Employee</span>
                                            </label>
                                        </td>
                                        <td>
                                            <div class="text" style="cursor:pointer;">
                                                <select class="form-control" style="cursor:pointer;border-radius: 7px;">
                                                    <option>----</option>
                                                    <option>Employee 1</option>
                                                    <option>Employee 2</option>
                                                </select>
                                            </div>
                                            <i class="dropdown icon"></i>
                                        </td>
                                    </tr>
                                    
                                    <tr>
                                        <td>
                                            <label>
                                                <span style="margin-right:10px;">Date created</span>
                                            </label>
                                        </td>
                                        <td>
                                            <div>
                                                <input style="height: 31px;width: 221px;border-radius: 6px;margin-bottom: 12px;margin-left: 3px;border-style: groove;" type="date" />

                                            </div>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td colspan="2">
                                            <button class="timkiem"><a href="search-leave.aspx" style="color:white;text-decoration:none;">Search</a></button>
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
        <div class="container-fluid" style="margin-top: -34px;margin-left: 380px;">
            <div class="container" style="float:left;">
                <a class="ls" style="margin-left: 15px;text-decoration:none;" href="#"><i class="fa fa-cog"></i> Setting</a>
                <a class="ls" style="margin-left: 15px;text-decoration:none;" title="Waiting for you to browse" href="browser-leave.aspx"><i class="fa fa-clock"></i> Wait for you to browse </a>
                
                <a class="nutchamcong"  href="add-leave.aspx" title="Create a new leave application" style="color:white;margin-left: 15px;padding-left: 20px;padding-right: 20px;text-decoration:none;" > <i class="fa fa-plus-circle"></i>CREATE A NEW LICENSE APPLICATION</a>
            </div>
            <div class="container" style="display: inline-flex;padding-left: 500px; padding-top: 20px;">
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
    <div style="padding-top: 0px; padding-bottom: 0px; display: block; min-height: 724px;" class="ui segment tc-scrolled">
            <table id="hrmleavetable" style="margin:0;" class="table">
                <thead>
                    <tr>
                        <th>
                            <a class="sortable" style="text-decoration:none; cursor: pointer; color:black;">SID</a>
                        </th>
                        <th></th>
                        <th class="clo">EMPLOYEES</th>
                        <th class="clo">REASON</th>
                        <th class="clo">TIME</th>
                        <th class="clo">STATUS</th>
                        <th class="clo">DATE CREATED</th>
                        <th></th>
                    </tr>
                </thead>

                <thead id="data" onclick="myFunction()">
                    <tr>
                        <td>
                            <a style="text-decoration:none; cursor: pointer; color:black;">9431</a>
                        </td>
                        <td></td>
                        <td>
                            <span>
                                <a style="text-decoration:none; color:#111010;" data-toggle="tooltip" title="Thông Huyền Trang">
                                    <img style="width:19px;height:19px;" src="#">
                                    <span>Thông Huyền Trang</span>
                                </a>
                            </span>
                        </td>
                        <td>
                            	wewre
                        </td>
                        <td>26/03/2019 - 29/03/2019</td>
                        <td><label style="background-color: #E8E8E8!important;padding:5px 20px;"><span style="font-size:12px;">Wait for round 1</span></label></td>
                        <td>
                           13:21, 28/03
                        </td>
                        <td><i class="fa fa-trash"></i></td>
                    </tr>
                </thead>
            </table>
            <div id="myDIV" style="display: none; margin: 10px 300px 0px 20px; width:93%">
                <div class="w3-table  w3-border " style="border: 15px solid #3498db!important;">
                    <table class=" table " style="width:100%;">
                        <tr style="background-color: #f0f0f0;padding: 15px;">
                            <td>Details for taking leave</td>
                            <td><a style="display:inline-block;padding:3px;float:right;padding:5px;color:#007eff"><i class="fa fa-times"></i></a></td>
                        </tr>
                        <tr>
                            <td>
                                <p>Time: 26/03/2019 - 29/03/2019</p>
                                <p>Number of vacation hours: 136</p>
                                <p>Paid holidays: 1</p>
                                <p>Unpaid time off: 1</p>
                                <p>Reason: wewre</p>
                                <p>Note: ruacon</p>
                            </td>
                            <td></td>
                        </tr>
                    </table>
                </div>
            </div>
        </div>

    <script>
        $(document).ready(function () {
            $('[data-toggle="tooltip"]').tooltip();
        });

        function myFunction() {
            var x = document.getElementById("myDIV");
            if (x.style.display === "none") {
                x.style.display = "block";
            } else {
                x.style.display = "none";
            }
        }
    </script>
</asp:Content>

