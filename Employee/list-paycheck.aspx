﻿<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="list-paycheck.aspx.cs" Inherits="Employee_list_paycheck" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link href="../css/employee.css/employee.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

     <div class="container-fluid">
          <h1 class ="h3 mb-4 text-gray-800">My paycheck</h1>

        <%--<ul class="nav nav-tabs" style="margin-block-start: 1em;padding-inline-start: 40px;position: absolute;padding-top: 32px;">
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
                                                <input type="text" name="keyword" value="" style="height: 31px;width: 221px;border-radius: 6px;margin-bottom: 12px;margin-left: 3px;border-style: groove;" />
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
                                                <span style="margin-right:10px;">Status</span>
                                            </label>
                                        </td>
                                        <td>
                                            <div class="text" style="cursor:pointer;">
                                                <select class="form-control" style="cursor:pointer;border-radius: 7px;">
                                                    <option>All</option>
                                                    <option>Effective</option>
                                                    <option>Disabled</option>
                                                </select>
                                            </div>
                                            <i class="dropdown icon"></i>
                                        </td>
                                    </tr>
                                     <tr>
                                        <td>
                                            <label>
                                                <span style="margin-right:10px;">Source</span>
                                            </label>
                                        </td>
                                        <td>
                                            <div class="text" style="cursor:pointer;">
                                                <select class="form-control" style="cursor:pointer;border-radius: 7px;">
                                                    <option>All</option>
                                                    <option>Hand in</option>
                                                    <option>Import</option>
                                                </select>
                                            </div>
                                            <i class="dropdown icon"></i>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <label>
                                                <span style="margin-right:10px;">Form of payment</span>
                                            </label>
                                        </td>
                                        <td>
                                            <div class="text" style="cursor:pointer;">
                                                <select class="form-control" style="cursor:pointer;border-radius: 7px;">
                                                    <option>All </option>
                                                    <option>Pay 1 time</option>
                                                    <option>Pay by day</option>
                                                    <option>Pay by month</option>
                                                    <option>Pay by year</option>
                                                </select>
                                            </div>
                                            <i class="dropdown icon"></i>
                                        </td>
                                    </tr>
                                         <tr>
                                        <td>
                                            <label>
                                                <span style="margin-right:10px;">Creator</span>
                                            </label>
                                        </td>
                                        <td>
                                            <div class="text" style="cursor:pointer;">
                                                <select class="form-control" style="cursor:pointer;border-radius: 7px;">
                                                    <option>Employee</option>
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
                                            <div>
                                                <input style="height: 31px;width: 221px;border-radius: 6px;margin-bottom: 12px;margin-left: 3px;border-style: groove;" />

                                            </div>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td colspan="2">
                                            <button class="timkiem"><a href="search-paycheck.aspx" style="color:white;text-decoration:none;">Search</a></button>
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
        </ul>--%>

         <div class="col-sm-5" id="searchblog"> 
        <div class="search-container">
                <form action="#">
                    <input type="text" placeholder="Search.." name="search">
                    <button type="submit"><i class="fa fa-search"></i></button>
                </form>
            </div>
        </div>

         <div class="container-fluid" style="margin-top: -34px;margin-left: 450px;">
            <div class="container" id="container">

               
                <a class="btn btn-info"  href="manage-paycheck.aspx" title="For management" > <i class="fa fa-cog"></i>  FOR MANAGEMENT</a>
            </div>
            <div class="container" style="display: inline-flex;padding-left: 500px; padding-top: 20px;">
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
        <br />
    </div>



    <div class="col-md-12">
        <div>
            <table class="table table-bordered" id="dataTable" >
            <thead>
                <tr>
                    <th>
                        <a class="sortable mytip" href="javascript:(void(0))" title="System ID" data-sortby="id" data-nameorigin="SID" data-reactid=".9.0.2.0.0.0.0.0">SID</a>
                    </th>
                    <th>Employee</th>
                    <th>Title of paycheck</th>
                    <th>Total salary</th>
                    <th>Form of payment</th>
                    <th>Salary</th>
                    <th >Status</th>
                    <th>Date created</th>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <td>18787</td>
                    <td>Thông Huyền Trang</td>
                    <td>
                        <a href="javascript:void(0)" data-toggle="modal" data-target="#myModal">s</a>
                    </td>
                    <td>134,234,467</td>
                    <td>Pay 1 time</td>
                    <td>
                        <span >03/2021</span>
                        <span>(</span><span>Lần #</span><span>23</span><span>)</span>
                    </td>
                    <td>
                        <span style="background-color: #fdd!important;color: #ab0707;">Disabled</span>
                    </td>
                    <td >
                        <span class="" title="14:41, 25/03/2019" >14:41, To day</span>
                    </td>
                </tr>
            </tbody>
        </table>
    </div>
    </div>
    <div class="modal fade" id="myModal" role="dialog">
    <div class="modal-dialog">
    
      <!-- Modal content-->
      <div class="modal-content">
        <div class="modal-header">
          <h3 class="modal-title">Detail</h3>
        </div>
        <div class="modal-body">
                <div style="border-bottom: 1px solid gainsboro;">
                    <label>Employee</label>
                    <p>
                        <img class="ui avatar image" src="https://api.teamcrop.com/v1/photoavatar/t/6fe428/113bd/40.jpg">Thong Huyen Trang
                    </p>
                </div>
            <div style="border-bottom: 1px solid gainsboro;">
                    <label>Form of payment</label>
                <p>Pay 1 time </p>
                </div>
                <div style="border-bottom: 1px solid gainsboro;">
                    <label>Title of paycheck</label>
                    <p>
                        s
                    </p>
                </div>
                <div style="border-bottom: 1px solid gainsboro;">
                    <label>Total salary</label>
                    <p>
                        134,234,467
                    </p>
                </div>
                <div style="border-bottom: 1px solid gainsboro;">
                    <label>Order in pay period</label>
                    <p>
                        23
                    </p>
                </div>
            <div style="border-bottom: 1px solid gainsboro;">
                    <label>Status</label>
                    <p>
                        Disabled
                    </p>
                </div>
        </div>
         <div class="modal-footer">
            <button type="button" class="btn btn-default" data-dismiss="modal" style="border: none;border-radius: 17px;margin-right: 10px;padding-left: 20px;padding-right: 20px;color: white;background-color: #0048ff;">Close</button>
        </div>
      </div>
      
    </div>
  </div>
    

</asp:Content>

