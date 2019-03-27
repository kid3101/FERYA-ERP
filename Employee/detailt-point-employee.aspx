<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="detailt-point-employee.aspx.cs" Inherits="Employee_detailt_point_employee" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">

    <link href="../css/employee.css/detailt-point-employee.css" rel="stylesheet" />

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

<div class="row">
  <div class="column">
    <div class="card">
        <div class="card1">
          <a href="detailt-point-employee.aspx" style="width:90%; text-decoration:none">Employee grading history / Details - Staff: a</a>
            <input type="date" />
        </div>
    </div>
  </div>
  <div class="column">
          <div class="card2">
          <div class="card2-left" style="width:50%; margin-right:15px">
              <table class="table table-bordered">
                  <thead>
                      <tr>
                          <th>Species</th>
                          <th></th>
                      </tr>
                  </thead>
                  <tbody>
                      <tr>
                          <td>Good mark</td>
                          <td style="color:green;" >10 points</td>
                      </tr>
                      <tr>
                          <td>Bad point</td>
                          <td style="color:red;">0 points</td>
                      </tr>
                      <tr>
                          <td>
                              <span>Good mark</span>
                              <span > - </span>
                              <span>Bad point</span>
                          </td>
                          <td style="color:green">10 points</td>
                      </tr>
                  </tbody>
              </table>
          </div>
          <div class="card2-right" style="width:50%">
              <table class="table table-bordered">
                  <thead>
                      <tr>
                          <th></th>
                          <th>Good</th>
                          <th>Bad</th>
                          <th>Total criteria</th>
                      </tr>
                  </thead>
                    <tbody>
                        <tr>
                            <td>Thông Huyền Trang</td>
                            <td class="employeepointaddpoint" style="background-size:100%;" title="100%">10 point</td>
                            <td class="employeepointsubpoint" style="background-size:100%; background-color: #fdf0df;" title="100%">0 point</td>
                            <td>1 criterion</td>
                        </tr>
                    </tbody>
              </table>
          </div>
        </div>
      </div>
    <div class="column">
        <div class="card3">
          <table class="table">
              <thead>
                  <tr>
                      <th>Criteria</th>
                      <th>Point</th>
                      <th>Creator</th>
                      <th>Status</th>
                      <th>Date created</th>
                      <th></th>
                  </tr>
              </thead>
              <tbody>
                  <tr>
                    <td>
                        <a href="#" class="label blue">sas</a>
                    </td>
                    <td>
                        <lable style="padding: 10px 10px;background-color: gainsboro;">10</lable>
                    </td>
                    <td>Thông Huyền Trang</td>
                    <td>
                        <span> </span>
                        <lable style="padding: 10px 10px;background-color:#08ef38; color:white">Effective</lable>
                    </td>
                    <td>22:21, 24/03/2019</td>
                    <td>
                        <a href="update-point-employee.aspx" style="text-decoration:none;padding: 8px 8px;border: 1px solid gray;">
                            <i class="fa fa-pencil-alt"></i>
                            <span>Update</span>
                        </a>
                    </td>
                  </tr>
              </tbody>
          </table>
        </div>
    </div>
  </div>



</asp:Content>

