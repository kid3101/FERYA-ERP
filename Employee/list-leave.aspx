<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="list-leave.aspx.cs" Inherits="Employee_list_leave" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <div class="headered" style="display:flex;margin:10px">
          <div class="lefted" style="width:30%; color:black">
              <h2> Please take leave</h2>
          </div>
          <div class="righted" style="margin-top: 12px;width: 100%;">
              <div class="icon" style="text-align: right; margin-bottom:10px">
                  <div class="imported" style="margin-right: 400px;">
                     <span class="time">
                            <a  href="EmployeeGradingCriteria2.html"  class="cog" style="text-decoration:none;">
                                <i class="fa fa-cog"></i> Setting </a>
                             <a   class="cog" style="text-decoration:none ;" href="browser-leave.aspx">
                                <i class="fa fa-clock"></i> Wait for you to browse </a>
                    </span>
                           
                  </div>
                  <div class="added" style=" margin-top: -35px;">
                    <a class="btn asc" style="margin-left:100px;" href="add-leave.aspx">
                       <i class="fa fa-plus-circle"></i>
                            CREATE A NEW LICENSE APPLICATION
                    </a>
                  </div>
              </div>
              <div class="paged" style="display: inline-flex; margin-left: 700px;cursor: pointer;">
                    <a href="#" style="height:20px; width:20px; color:#555;">
                        <i class="fa fa-angle-left"></i>
                    </a>
                    <div style="margin-left:7px;">
                        <a style="display:block; text-decoration: none; color:#555; ">
                            <span>Page</span>
                            <span>1</span>
                            <span class="total">
                                <span>/</span>
                                <span>1</span>
                            </span>
                        </a>
                    </div>
                    <a href="#" style="height:15px; color:#555; margin-left: 20px;">
                        <i class="fa fa-angle-right"></i>
                    </a>
                </div>
          </div>
      </div>
    <div class="container">
          <ul class="nav nav-tabs">
            <li class="active">
                <a data-toggle="tab" href="#" style="cursor:pointer;">
                    <span style="color:black;">All</span>
                    <span class="number">1</span>
                </a>
            </li>
            <li class="dropdown">
              <a class="dropdown-toggle" data-toggle="dropdown" style="" title="Turn on / off the search function">Filter & search ...</a>
              <ul class="dropdown-menu filterbarfull filterbar" style="position: absolute; will-change: transform;">
                    <li>
                        <form class="ui form">
                            <table width="100%" >
                                <tbody>

                                    <tr>
                                        <td>
                                            <span style="margin-right:10px;">Key word</span>
                                        </td>
                                        <td>
                                            <div>
                                                <input style="height: 31px;width: 221px;border-radius: 6px;margin-bottom: 12px;margin-left: 3px;border-style: groove;" />

                                            </div>
                                        </td>
                                    </tr>

                                    <tr>
                                        <td>
                                            <label>
                                                <span style="margin-right:10px">Employee</span>
                                            </label>
                                        </td>
                                        <td>
                                            <div class="text">
                                                <select class="form-control"style="width: 100%;border-radius: 5px;">
                                                    <option>Employee 1</option>
                                                    <option>Employee 2</option>
                                                    <option></option>
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
                                            <div class="text">
                                                <input type="date" />
                                            </div>
                                            <i class="dropdown icon"></i>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td colspan="2">
                                            <button class="search"><a href="#" style="color:white;">Search</a></button>
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
        </div>
    <div style="padding-top: 0px; padding-bottom: 0px; display: block; min-height: 724px;" class="ui segment tc-scrolled">
            <table id="hrmleavetable" style="margin:0;" class="table">
                <thead>
                    <tr>
                        <th>
                            <a class="sortable" style="text-decoration:none; cursor: pointer; color:black;">SID</a>
                        </th>
                        <th></th>
                        <th class="clo">
                            EMPLOYEES
                        </th>
                        <th class="clo">
                            REASON
                        </th>
                        <th class="clo">TIME</th>
                        <th class="clo">ROUND 1</th>
                        <th class="clo">ROUND 2</th>
                        <th class="clo">ROUND 3</th>
                        <th class="clo">STATUS</th>
                        <th class="clo">DATE CREATED</th>
                        <th></th>
                    </tr>
                </thead>

                <thead id="data" onclick="myFunction()">
                    <tr>
                        <td>
                            <a style="text-decoration:none; cursor: pointer; color:black;">9281</a>
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
                            ưer
                        </td>
                        <td>18/03/2019 - 18/03/2019</td>
                        <td>
                            <button class="w3-button w3-white w3-border">Pending</button>
                        </td>
                        <td>
                            <a data-toggle="tooltip" title="Wait for round 1" style="color:#3498db"><i class="fa fa-ellipsis-h"></i></a>
                        </td>
                        <td>
                            <a data-toggle="tooltip" title="Wait for round 2" style="color:#3498db"><i class="fa fa-ellipsis-h"></i></a>
                        </td>
                        <td><label style="background-color: #E8E8E8!important;padding:5px 20px;"><span style="font-size:12px;">Wait for round 1</span></label></td>
                        <td>
                            16:44, 18/03
                        </td>
                        <td><i class="fa fa-trash"></i></td>
                    </tr>
                </thead>
            </table>
            <div id="myDIV" style="display: none; margin: 10px 300px 0px 20px;">
                <div class="w3-table  w3-border " style="border: 15px solid #3498db!important;">
                    <table class=" table " style="width:100%;">
                        <tr style="background-color: #f0f0f0;padding: 15px;">
                            <td>Details for taking leave</td>
                            <td><a style="display:inline-block;padding:3px;float:right;padding:5px;color:#007eff"><i class="fa fa-times"></i></a></td>
                        </tr>
                        <tr>
                            <td>
                                <p>Time: 18/03/2019 - 18/03/2019</p>
                                <p>Number of breaks: 0</p>
                                <p>Paid holidays: 2</p>
                                <p>Unpaid time off: 4</p>
                                <p>Reason: er</p>
                                <p>Note: ẻ</p>
                            </td>
                            <td></td>
                        </tr>
                        <tr>
                            <td style="display:flex">
                                <span style="margin-right:20px">
                                    <p>Round 1:</p>
                                    <p>Status: <label style="background-color:gainsboro;color:#0e0e0e">Pending</label></p>
                                </span>
                                <span style="margin-right:20px">
                                    <p>Round 1:</p>
                                    <p>Status: <label style="background-color:gainsboro;color:#0e0e0e">Pending</label></p>
                                </span>
                                <span>
                                    <p>Round 1:</p>
                                    <p>Status: <label style="background-color:gainsboro;color:#0e0e0e">Pending</label></p>
                                </span>
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

