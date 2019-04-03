<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="synthetic-point-employee.aspx.cs" Inherits="Employee_synthetic_point_employee" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link href="../css/Attendance/History.css" rel="stylesheet" />
    <link href="../css/employee.css/employee.css" rel="stylesheet" />
    <link href="../css/employee.css/synthetic-point-employee.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">


     <div class="container-fluid">
        <h1 class ="h3 mb-4 text-gray-800">Employee grading history</h1>
       
        <ul class="nav" style="margin-top: -21px;">
            <li class="active">
                <a data-toggle="tabs" href="#" >
                    <span style="color:black;">All</span>
                    <span class="number">1</span>
                </a>
            </li>
            <li class="dropdown">
                <a class="dropdown-toggle" data-toggle="dropdown"  title="Turn on / off the search function">Filter & search ...</a>
                <ul class="dropdown-menu filterbarfull filterbar" style="top: 0px;transform: translate3d(0px, 26px, 0px);width: 354px;margin-top:0px;">
                    <li>
                        <form class="ui form">
                            <table width="100%" cellpadding="3">
                                <tbody>
                                    <tr>
                                        <td>
                                            <label class="lables" >
                                                <span>Headquarters</span>
                                            </label>
                                        </td>
                                         <td>
                                            <div class="text" >
                                                <select class="form-control" >
                                                    <option>All</option>
                                                    <option>Main office</option>
                                                </select>
                                            </div>
                                            <i class="dropdown icon"></i>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <label class="lables">
                                                <span>Employee</span>
                                            </label>
                                        </td>
                                        <td>
                                            <div class="text" >
                                                <select class="form-control" >
                                                    <option>Employee 1</option>
                                                    <option>Employee 2</option>
                                                </select>
                                            </div>
                                            <i class="dropdown icon"></i>
                                        </td>
                                    </tr>
                                     <tr>
                                        <td>
                                            <label class="lables">
                                                <span >Date</span>
                                            </label>
                                        </td>
                                        <td>
                                            <div>
                                                <input type="date" name="keyword" value="" class="form-control" />

                                            </div>
                                        </td>
                                    </tr>

                                    <tr>
                                        <td colspan="2">
                                            <button class="timkiem"><a href="search-employee.aspx" class="sea">Search</a></button>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td colspan="2" >
                                            <a href="#" class="close" >Closed</a>
                                        </td>
                                    </tr>
                                </tbody>
                            </table>
                        </form>
                    </li>
                </ul>
            </li>
        </ul>
        <div class="container-fluid" style="margin-top: -34px;margin-left: 450px;">
            <div class="container-1" style="">
                <a href="#" class="chevron-left" ><i class="fa fa-chevron-left"></i></a>
                <div class="page">
                    <a href="#" style="color:#555;text-decoration:none;">
                        <span>Page</span>
                        <span>1</span>
                        <span>/</span>
                        <span>1</span>
                    </a>
                </div>
                <a href="#" class="chevron-right" ><i class="fa fa-chevron-right"></i></a>
            </div>
        </div>
        <br>
    </div>

        <div class="table">
            <table  class="table table-bordered">
               <thead>
                <tr>
                    <th>Headquarters</th>
                    <th>
                        Employee
                    </th>
                    <th >Number of criteria to be marked</th>
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
                    <td>Office 1</td>
                    <td>
                        <span >Ferya</span>
                    </td>
                    <td >
                        <a >1</a>
                    </td>
                    <td>
                        <a class="good">10</a>
                    </td>
                    <td>-</td>
                    <td>
                        <a class="bad">0</a>
                    </td>
                    <td>=</td>
                    <td>
                        <a><label class="good-bad">10</label></a>
                    </td>
                    <td >
                        <a href="detailt-point-employee.aspx" class="detail">Detail</a>
                    </td>
                </tr>
            </tbody>
            </table>
        </div>
</asp:Content>

