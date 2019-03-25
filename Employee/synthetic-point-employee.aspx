<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="synthetic-point-employee.aspx.cs" Inherits="Employee_synthetic_point_employee" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <div class="headered" style="display:flex;margin:10px">
          <div class="lefted" style="width:35%; color:black">
              <h2>Employee grading history</h2>
          </div>
          
              <div class="paged" style="display: inline-flex; margin-left: 500px;cursor: pointer;">
                    <a href="#" style="height:20px; width:20px; color:#555;">
                        <i class="fa fa-angle-left"></i>
                    </a>
                    <div style="margin-left:10px;">
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
      <div class="container">
          <ul class="nav nav-tabs">
            <li class="active">
                <a data-toggle="tab" href="#" style="cursor:pointer;">
                    <span style="color:black;">All</span>
                    <span class="number">0</span>
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
                                        <label>
                                            <span style="margin-right:10px;">Headquarters</span>
                                        </label>
                                    </td>
                                    <td>
                                        <div class="text">
                                            <select class="form-control" style="width: 100%;border-radius: 5px;">
                                                <option>Main office</option>
                                                <option></option>
                                            </select>
                                        </div>
                                        <i class="dropdown icon"></i>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <label>
                                            <span style="margin-right:10px;">Employee</span>
                                        </label>
                                    </td>
                                    <td>
                                        <div class="text">
                                            <select class="form-control" style="width: 100%;border-radius: 5px;">
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
                                        <button class="search"><a href="searchEmployee.html" style="color:white;">Search</a></button>
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
    <div style="padding-top:0;padding-bottom:0;" class="segment">
        <table class="table" data-reactid=".8.0.2.0">
            <thead>
                <tr>
                    <th>Headquarters</th>
                    <th>
                        <a class="sortable" href="#"  data-nameorigin="Employee">Employee</a>
                    </th>
                    <th style="width:200px;">Number of criteria to be marked</th>
                    <th>Good</th>
                    <th></th>
                    <th>Bad</th>
                    <th> </th>
                    <th >
                        <span >Good</span>
                        <span > - </span>
                        <span>Bad</span>
                    </th>
                    <th></th>
                </tr>
            </thead>
            <tbody>
                <tr >
                    <td>dsd</td>
                    <td>
                        <span >a</span>
                    </td>
                    <td >
                        <a >1</a>
                    </td>
                    <td>
                        <a style="border: 1px solid #00ff31;padding: 8px 8px;">10</a>
                    </td>
                    <td>-</td>
                    <td>
                        <a style="border: 1px solid #ff0000;padding: 8px 8px;">0</a>
                    </td>
                    <td>=</td>
                    <td>
                        <a><label style="background-color: #24c82f; color:white;padding: 5px 15px;">10</label></a>
                    </td>
                    <td style="text-align:right;">
                        <a href="detailt-employees.aspx" style="border: 1px solid #808080;padding: 8px 8px; text-decoration:none">Detail</a>
                    </td>
                </tr>
            </tbody>
        </table>
    </div>

</asp:Content>

