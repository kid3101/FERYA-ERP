<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="synthetic-point-employee.aspx.cs" Inherits="Employee_synthetic_point_employee" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link href="../css/Attendance/History.css" rel="stylesheet" />

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

     <div class="container-fluid" style="width: 100%;height: 119px;background-color:#eee;margin-top: -23px;">
        <div style="line-height: 1;display: inline-block;margin-left: 40px;vertical-align: middle;">
            <a class="abc tab-content" style="text-decoration:none;" href="#"><span><h2 style="cursor:pointer;">Employee grading history</h2></span></a>
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
                                                <span style="margin-right:10px;">Headquarters</span>
                                            </label>
                                        </td>
                                        <td>
                                            <div class="text" style="cursor:pointer;">
                                                <select class="form-control" style="cursor:pointer;border-radius: 7px;">
                                                    <option>All</option>
                                                    <option>Main office</option>
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
                                            <div class="text" style="cursor:pointer;">
                                                <select class="form-control" style="cursor:pointer;border-radius: 7px;">
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
                                                <span style="margin-right:10px;">Date</span>
                                            </label>
                                        </td>
                                        <td>
                                            <div>
                                                <input style="height: 31px;width: 221px;border-radius: 6px;margin-bottom: 12px;margin-left: 3px;border-style: groove;" />

                                            </div>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td colspan="2">
                                            <button class="timkiem"><a href="search-synthetic-point-employee.aspx" style="color:white;text-decoration:none;">Search</a></button>
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
        </div>
    <div style="padding-top:0;padding-bottom:0;" class="segment">
        <table class="table" data-reactid=".8.0.2.0">
            <thead>
                <tr>
                    <th>Headquarters</th>
                    <th>
                        Employee
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
                        <a href="detailt-point-employee.aspx"style="border: 1px solid #808080;padding: 8px 8px; text-decoration:none">Detail</a>
                    </td>
                </tr>
            </tbody>
        </table>
    </div>

</asp:Content>

