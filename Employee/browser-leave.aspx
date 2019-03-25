<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="browser-leave.aspx.cs" Inherits="Employee_browser_leave" %>

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
                            <a  href="#"  class="cog" style="text-decoration:none;">
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
                            <span>0</span>
                            <span class="total">
                                <span>/</span>
                                <span>0</span>
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
                    <span class="number">0  </span>
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
            <table id="employeetable" style="margin:0;" class="table">
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
                        <th class="clo">
                            DATE CREATED
                        </th>
                        <th></th>
                    </tr>
                </thead>
            </table>
            <div style="color:black; margin-left:500px; margin-top:10px;">
                <i class="fa fa-exclamation-circle"></i>There are no applications!
            </div>
        </div>


</asp:Content>

