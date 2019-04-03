<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="employee.aspx.cs" Inherits="NhanVien_Employees" %>


<asp:Content ID="Content3" ContentPlaceHolderID="head" Runat="Server">
<link href="../css/Attendance/History.css" rel="stylesheet" />
<link href="../css/employee.css/list-point-employee.css" rel="stylesheet" />
<link href="../css/employee.css/employee.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <div class="container-fluid">

                    <span style="color:black;">All</span>
                    <span class="number">1</span>
                </a>
            </li>

                    <li>
                        <form class="ui form">
                            <table width="100%" cellpadding="3">
                                <tbody>
                                    <tr>
                                        <td>

                                            </label>
                                        </td>
                                        <td>
                                            <div class="text" >
                                                <input type="text" name="keyword" value="" class="form-control">
                                            </div>
                                        </td>
                                    </tr>
                                     <tr>
                                        <td>

                                            </label>
                                        </td>
                                        <td>
                                            <div class="text">
                                                <select class="form-control">
                                                    <option>All</option>
                                                    <option></option>
                                                </select>
                                            </div>
                                            <i class="dropdown icon"></i>
                                        </td>
                                    </tr>
                                    
                                     <tr>
                                        <td>

                                            </label>
                                        </td>
                                        <td>
                                            <div class="text" >
                                                <select class="form-control">
                                                    <option>All</option>
                                                    <option></option>
                                                </select>
                                            </div>
                                            <i class="dropdown icon"></i>
                                        </td>
                                    </tr>
                                     <tr>
                                        <td>

                                            </label>
                                        </td>
                                        <td>
                                            <div class="text">
                                                <select class="form-control">
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

                                            </label>
                                        </td>
                                        <td>
                                            <div class="text">
                                                <select class="form-control" >
                                                    <option>All</option>
                                                    <option>New graduate / Internship</option>
                                                    <option>Employees</option>
                                                    <option>Team Leader / Supervisor</option>
                                                    <option>deputy</option>
                                                    <option>Shop management assistant</option>
                                                    <option>Manager</option>
                                                    <option>Store manager</option>
                                                    <option>Vice president</option>
                                                    <option>Manager</option>
                                                    <option>Managing director</option>
                                                    <option>Vice president</option>
                                                    <option>Chairman</option>
                                                </select>
                                            </div>
                                            <i class="dropdown icon"></i>
                                        </td>
                                    </tr>

                                    <tr>
                                        <td>

                                                <span >Type of work</span>
                                            </label>
                                        </td>
                                        <td>
                                            <div class="text" >
                                                <select class="form-control">
                                                    <option>All</option>
                                                    <option>Official staff</option>
                                                    <option>Part-time</option>
                                                    <option>Probation</option>
                                                    <option>Extra work</option>
                                                    <option>Part-time employee</option>
                                                    <option>Project</option>
                                                </select>
                                            </div>
                                            <i class="dropdown icon"></i>
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
            <div class="container" id="container">

                <div class="dropdown" style="position: relative;display: inline-block;">



                    <ul class="dropdown-menu " role="menu" aria-labelledby="menu1" style="width: 200px;">
                        <li role="presentation" class="icons"><a role="menuitem" tabindex="-1" class="iconses" href="import-list.aspx"><i class="fas fa-cloud-upload-alt"></i> Import employee list</a></li>
                        <li role="presentation" class="icons"><a role="menuitem" tabindex="-1" class="iconses" href="import-vitae.aspx"><i class="fas fa-cloud-upload-alt"></i> Import curriculum vitae</a></li>
                        <li role="presentation" class="icons"><a role="menuitem" tabindex="-1" class="iconses" href="import-transfer.aspx"><i class="fas fa-cloud-upload-alt"></i> Import work transfer</a></li>
                    </ul>
                </div>

               
                <a class="btn btn-info"  href="add-employees.aspx" title="Create a new leave application" > <i class="fas fa-plus-square"></i> ADD NEW STAFF</a>
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
            <table  class="table table-bordered">
                <thead>
                    <tr>
                        <th style="width:5px">
                            <input type="checkbox" />

                            <a class="sortable" style="text-decoration:none; cursor: pointer;color:black;" >SID</a>
                        </th>
                        <th ></th>
                        <th class="clo">NAME</th>
                        <th class="clo">OFFICE</th>
                        <th class="clo">RANK</th>
                        <th class="clo">TYPE</th>
                        <th class="clo">EMAIL</th>
                        <th class="clo">INTERNAL</th>
                        <th class="clo">STATUS</th>
                        <th class="clo">CREATOR</th>
                        <th class="clo">CREATED</th>
                        <th></th>
                        <th></th>
                    </tr>
                    <tr>
                         
                        <td>
                            <input type="checkbox" />

                            <a href="update-employee.aspx" >1</a>
                        </td>
                        <td>
                            <img class="img" src="https://api.teamcrop.com/v1/photoavatar/a/5c53f5/7a013/40.jpg">
                        </td>
                        <td>

                            <br />
                            <span>ferya@</span>
                        </td>
                        <td> Office 1</td>
                        <td> Manager </td>
                        <td>Official staff</td>
                        <td>

                            <br />
                            <span>345678</span>
                        </td>
                        <td>7</td>
                        <td> <label style="background-color:#93ef93;">Effective</label></td>
                        <td> Nguyen Van A</td>
                        <td>14:06, Today</td>
                        <td style="width:5px">
                            <a href="edit-employee.aspx" class="edit" title="Click here to update data"><i style="width: 25px" class="fas fa-pen"></i></a>
                        </td>
                        <td style="width:5px" >
                            <a href="#" ><i style="width: 25px" class="fas fa-trash-alt"></i></a>                                                                                                                                                                                                                                                                                                                    
                        </td>
                       
                    </tr>
                </thead>
            </table>
            <div class="bottom" >
             
                    <tr>
                        

                                <span>&nbsp;</span>
                                <span>1</span>
                                <span>&nbsp;</span>
                                <span>element</span>
                            <select class="selection ">
                                <option value="">
                                    --Choose action--
                                </option>
                                <option value="1">
                                    Effective
                                </option>
                                <option value="3">
                                    Disabled
                                </option>
                                <option value="5">Deletes</option>
                            </select>
                            <span>
                                <button type="button" class="btn btn-primary">
                                    Perform
                                </button>
                            </span>
                        </th>
                        <th>
                            <div  class="right">
                                <button class="btn btn-facebook" data-toggle="modal" data-target="#myModal">
                                    <i class="fa fa-download"></i>
                                    <span>
                                        Export data
                                    </span>
                                    <span>
                                        <span> (</span><span>1</span><span> </span><span>current</span><span>)</span>
                                    </span>
                                </button>
                                <div class="modal fade" id="myModal" role="dialog">
                                    <div class="modal-dialog">

                                        <div class="modal-content">
                                            <div class="modal-header">
                                                <h4 class="modal-title" >You want to export 1 lines from the system.</h4>
                                            </div>
                                            <div class="modal-footer">
                                                <button class="btn btn-default" data-dismiss="modal">Close</button>
                                                <button class="btn btn-facebook">Download</button>
                                            </div>

                                        </div>

                                    </div>
                                </div>
                            </div>
                        </th>
                    </tr>
            </div>
        </div>
    <script>
        $(document).ready(function () {
            $('[data-toggle="tooltip"]').tooltip();
        });

    </script>
</asp:Content>


