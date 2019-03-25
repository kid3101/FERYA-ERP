<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="manage-paycheck.aspx.cs" Inherits="Employee_manage_paycheck" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <div class="headered" style="display:flex;margin:10px">
          <div class="lefted" style="width:40%; color:black">
              <h2> Company paycheck</h2>
          </div>
          <div class="righted" style="margin-top: 12px;width: 100%;">
              <div class="icon" style="text-align: right; margin-bottom:10px">
                  <div class="added" style=" margin-top: -25px;">
                    <a class="btn asc" style="margin-left:100px;" href="import-paycheck.aspx">
                     <i class="fas fa-cloud-upload-alt"></i>  IMPORT
                    </a>
                  </div>
                  <div class="import" style=" margin-top: -35px;margin-right:150px">
                    <a class="btn asc" style="margin-left:100px;" href="add-paycheck.aspx">
                       <i class="fa fa-plus-circle"></i> ADD NEW
                    </a>
                  </div>
              </div>
              <div class="paged" style="display: inline-flex; margin-left: 650px;cursor: pointer;">
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
                                                <span style="margin-right:10px;">Status</span>
                                            </label>
                                        </td>
                                        <td>
                                            <div class="text">
                                                <select class="form-control" style="width: 100%;border-radius: 5px;">
                                                    <option>All</option>
                                                    <option>Effective</option>
                                                    <option> Disabled</option>
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
                                            <div class="text">
                                                <select class="form-control" style="width: 100%;border-radius: 5px;">
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
                                            <div class="text">
                                                <select class="form-control" style="width: 100%;border-radius: 5px;">
                                                    <option>All</option>
                                                    <option>Pay once</option>
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
                                            <div class="text">
                                                <select class="form-control" style="width: 100%;border-radius: 5px;">
                                                    <option>----</option>
                                                    <option></option>
                                                </select>
                                            </div>
                                            <i class="dropdown icon"></i>
                                        </td>
                                    </tr>
                                     <tr>
                                        <td>
                                            <span style="margin-right:10px;">Date created</span>
                                        </td>
                                        <td>
                                            <div>
                                                <input type="date" style="height: 31px;width: 221px;border-radius: 6px;margin-bottom: 12px;margin-left: 3px;border-style: groove;" />

                                            </div>
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

        <div style="padding-top: 0px; padding-bottom: 0px; display: block; min-height: 724px;" class="ui segment tc-scrolled">
            <table id="employeetable" style="margin:0;" class="table">
                <thead>
                    <tr>
                        <th>
                            <a class="sortable" style="text-decoration:none; cursor: pointer; color:black;">SID</a>
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
                        <a href="javascript:void(0)" data-toggle="modal" data-target="#myModal">s</a>
                    </td>
                    <td>134,234,467</td>
                    <td>Pay 1 time</td>
                    <td>
                        <span >-</span>
                        <span>(</span><span>Lần #</span><span>23</span><span>)</span>
                    </td>
                    <td>
                        <span style="background-color: #fdd!important;color: #ab0707;">Disabled</span>
                    </td>
                    <td>
                        <span>Thong Huyen Trang</span>
                    </td>
                    <td >
                        <span class="" title="14:41, 25/03/2019" >14:41, To day</span>
                    </td>
                    <td>
                        <span>
                            <a href="#" style="padding:0 5px 0 5px;" title="Click here to update data">
                                <small>EDIT</small>
                            </a>

                        </span>
                    </td>
                </tr>
            </tbody>
            </table>
        </div>



</asp:Content>

