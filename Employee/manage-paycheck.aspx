<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="manage-paycheck.aspx.cs" Inherits="Employee_manage_paycheck" %>

 <asp:Content ID="Content3" ContentPlaceHolderID="head" Runat="Server">
    <link href="../css/employee.css/list-point-employee.css" rel="stylesheet" />
    <link href="../css/employee.css/employee.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">



              <div class="container-fluid">
                    <h1 class ="h3 mb-4 text-gray-800">Company paycheck</h1>

        
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
                <a class="btn btn-info"  href="add-paycheck.aspx" title="Add new" > <i class="fa fa-plus-circle"></i> ADD NEW</a>
                <a class="btn btn-info"  href="import-paycheck.aspx"><i class="fas fa-cloud-upload-alt"></i>  IMPORT</a>
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


        <br>
    </div>

       <div class="table">
            <table  class="tables">
                <thead>
                    <tr>
                        <th>
                            <a class="sortable" >SID</a>
                        </th>
                        <th class="clo">EMPLOYEES</th>
                        <th class="clo">GRADE ROADS</th>
                        <th class="clo">TOTAL SALARY</th>
                        <th class="clo">FORM OF PAYMENT</th>
                        <th class="clo">SALARY</th>
                        <th class="clo">STATUS</th>
                        <th class="clo">CREATOR</th>
                        <th class="clo">DATE CREATED</th>
                        <th></th>
                    </tr>
                </thead>
                <tbody>
                <tr>
                    <td>18787</td>
                    <td>Thông Huyền Trang</td>
                    <td>
                        <a href="update-paycheck.aspx" >s</a>
                    </td>
                    <td>134,234,467</td>
                    <td>Pay 1 time</td>
                    <td>
                        <span >-</span>
                        <span>(</span><span>Lần #</span><span>23</span><span>)</span>
                    </td>
                    <td>
                        <span style="background-color: #fdd;color: #ab0707;">Disabled</span>
                    </td>
                    <td>
                        <span>Thong Huyen Trang</span>
                    </td>
                    <td >
                        <span class="" title="14:41, 25/03/2019" >14:41, To day</span>
                    </td>
                    <td>
                        <span>
                            <a href="update-paycheck.aspx"  title="Click here to update data">
                                <small>EDIT</small>
                            </a>

                        </span>
                    </td>
                </tr>
            </tbody>
            </table>
        </div>



</asp:Content>

