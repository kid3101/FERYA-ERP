<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="point-employee.aspx.cs" Inherits="Employee_point_employee" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <div class="headered" style="display:flex;margin:10px">
          <div class="lefted" style="width:35%; color:black">
              <h2> Employee grading history</h2>
          </div>
          <div class="righted" style="margin-top: 12px;width: 100%;">
              <div class="icon" style="text-align: right; margin-bottom:10px">
                  <div class="imported" style="margin-right: 200px;">
                     <span class="time">
                            <a  href="EmployeeGradingCriteria2.html"  class="cog" style="text-decoration:none;">
                                <i class="fa fa-cog"></i>
                                Setting criteria
                            </a>

                            <span class="cog" data-toggle="modal" data-target="#myModal"><i class="fa fa-download"></i>Export Excel</span>

                            <div class="modal fade" id="myModal" role="dialog">
                                <div class="modal-dialog">

                                    <div class="modal-content">
                                        <div class="modal-header">

                                            <h4 class="modal-title" style="color:black;"><b>Export Excel</b></h4>
                                        </div>
                                        <div class="modal-body">
                                            <div class="modal-table" >
                                                <label style="color:black; margin-right:30px">
                                                    Headquarters
                                                </label>
                                                <select class="form-control">
                                                    <option>All</option>
                                                    <option></option>
                                                </select>
                                            </div>
                                            <div class="modal-table" >
                                                <label style="color:black;margin-right:50px">
                                                    Employees
                                                </label>
                                                <select class="form-control">
                                                    <option>-----</option>
                                                    <option></option>
                                                </select>
                                            </div>
                                            <div class="modal-table" >
                                                <label style="color:black;margin-right:40px">Date created</label>
                                                <input type="date" />
                                            </div>
                                        </div>
                                        <div class="modal-footer">
                                            <a class="btn btn-default" data-dismiss="modal">Close</a>
                                            <a class="btn bg-teal-active" style="margin-left:10px; text-decoration:none;color: white;">Download the excel file</a>
                                        </div>
                                    </div>

                                </div>
                            </div>

                            <a class="cog" style="text-decoration:none ;" href="synthetic-point-employee.aspx" >
                               <i class="fas fa-chart-pie"></i>
                                Synthetic by employess
                            </a>
                        </span>
                  </div>
                  <div class="added" style=" margin-top: -35px;">
                    <a class="btn asc" style="margin-left:100px;" href="add-point-employee.aspx">
                      <i class="fas fa-plus-square"></i> ADD THE REVIEW
                    </a>
                  </div>
              </div>
              <div class="paged" style="display: inline-flex; margin-left: 750px;cursor: pointer;">
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
                    <span class="number">0</span>
                </a>
            </li>
            <li class="dropdown">
              <a class="dropdown-toggle" data-toggle="dropdown" style="" title="Turn on / off the search function">Filter & search ...</a>
             </li>
             </ul>
        </div>
        <div class="segment" style="display: block; min-height: 558px;">
            <div class="zerodata">
                <div>
                    <div class="zerodataimage">
                        <img src="/img/employee.png" width="240" height="240">
                    </div>
                    <h3 style="color: darkgray; font-size:30px;">
                        No evaluation information yet.
                    </h3>
                    <p style="color: darkgray;">
                        You start evaluating employees by pressing the button below.
                    </p>
                     <div class="zerodatabutton">
                        <a class="btn them" href="add-point-employee.aspx">
                            Add new
                        </a>
                    </div>
                </div>
            </div>
        </div>

</asp:Content>

