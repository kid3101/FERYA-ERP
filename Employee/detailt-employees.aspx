﻿<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="detailt-employees.aspx.cs" Inherits="Employee_DetailtEmployees" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link href="../css/employee.css/detail-employee.css" rel="stylesheet" />
    <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

           <div class="heading">
            <div class="container">
                <h3 class="title"> Employee</h3>
                <ul class="nav nav-tabs" style="display:block; list-style-type:disc; ">
                    <li class="active">
                        <a data-toggle="tab" href="#" style="cursor:pointer;">
                            <span style="color:black;"> Detail</span>
                        </a>
                    </li>
                </ul>
            </div>
        </div>
        <div class="segment">
            <form class="ui form">
                <div class="top" style="margin-top:10px;">
                    <div class="left" style="width:25%;">
                        <div class="image">
                            <img src="#" style="width:180px; height:180px;margin-left:20px" />
                        </div>
                    </div>
                    <div class="right" style="width:100% ; margin-top: 8px; margin-right:-250px">
                        <a style="color:#000;">Name</a>
                        <div class="meta">
                            <span>Office</span>
                            <span>-</span>
                            <span>Type of work</span>
                        </div>
                        <div class="meta">
                            <span>Rank</span>
                            <span>-</span>
                            <span>Position</span>
                        </div>
                        <div class="meta">
                            <span>Email</span>
                            <span>-</span>
                            <span>Phone</span>
                        </div>
                    </div>
                </div>
            </form>
        </div>
        <div class="w3-container">

            <div class="w3-row">
                <a href="javascript:void(0)" onclick="openCity(event, 'Curriculum');">
                    <div class="w3-third tablink w3-bottombar w3-hover-light-grey w3-padding">Curriculum vitae</div>
                </a>
                <a href="javascript:void(0)" onclick="openCity(event, 'Account');">
                    <div class="w3-third tablink w3-bottombar w3-hover-light-grey w3-padding">Account</div>
                </a>
                <a href="javascript:void(0)" onclick="openCity(event, 'Contact');">
                    <div class="w3-third tablink w3-bottombar w3-hover-light-grey w3-padding">Contact</div>
                </a>
                <a href="javascript:void(0)" onclick="openCity(event, 'Work');">
                    <div class="w3-third tablink w3-bottombar w3-hover-light-grey w3-padding">Work progress</div>
                </a>
                <a href="javascript:void(0)" onclick="openCity(event, 'Timekeeping');">
                    <div class="w3-third tablink w3-bottombar w3-hover-light-grey w3-padding">Timekeeping</div>
                </a>
                <a href="javascript:void(0)" onclick="openCity(event, 'Salary');">
                    <div class="w3-third tablink w3-bottombar w3-hover-light-grey w3-padding">Salary</div>
                </a>
                <a href="javascript:void(0)" onclick="openCity(event, 'Vacation');">
                    <div class="w3-third tablink w3-bottombar w3-hover-light-grey w3-padding">Vacation</div>
                </a>
                <a href="javascript:void(0)" onclick="openCity(event, 'Discipline');">
                    <div class="w3-third tablink w3-bottombar w3-hover-light-grey w3-padding">Discipline reward</div>
                </a>
            </div>

            <div id="Curriculum" class="w3-container city" style="display:none">
                <div class="tab">
                    <button class="tablinks" onclick="openCity1(event, 'personal')"><i class="fa fa-user"></i><p>Personal</p></button>
                    <button class="tablinks" onclick="openCity1(event, 'contact')"><i class="fa fa-home"></i><p>Contact</p></button>
                    <button class="tablinks" onclick="openCity1(event, 'professional')"><i class="fa fa-briefcase"></i><p>Professional</p></button>
                    <button class="tablinks" onclick="openCity1(event, 'health')"><i class="fa fa-heart"></i><p>Health</p></button>
                </div>
            </div>

            <div id="personal" class="tabcontent">
                <div style="display:block">
                    <div style="display:flex;margin-bottom: 10px;">
                        <div class="tableft">
                            <label>Place of birth</label>
                        </div>
                        <div class="tabright">
                            <input type="text" style="border: 1px solid #c0bdbc; border-radius:3px;width: 70%;" />
                        </div>
                    </div>
                    <div style="display:flex;margin-bottom: 10px;">
                        <div class="tableft">
                            <label>Home town</label>
                        </div>
                        <div class="tabright">
                            <input type="text" style="border: 1px solid #c0bdbc; border-radius:3px;width: 70%;" />
                        </div>
                    </div>
                    <div style="display:flex;margin-bottom: 10px;">
                        <div class="tableft">
                            <label>Home town</label>
                        </div>
                        <div class="tabright">
                            <input type="text" style="border: 1px solid #c0bdbc; border-radius:3px;width: 70%;" />
                        </div>
                    </div>
                    <div style="display:flex;margin-bottom: 10px;">
                        <div class="tableft">
                            <label>Religion</label>
                        </div>
                        <div class="tabright">
                            <input type="text" style="border: 1px solid #c0bdbc; border-radius:3px;width: 70%;" />
                        </div>
                    </div>
                    <div style="display:flex;margin-bottom: 10px;">
                        <div class="tableft">
                            <label>Permanent address</label>
                        </div>
                        <div class="tabright">
                            <input type="text" style="border: 1px solid #c0bdbc; border-radius:3px;width: 70%;" />
                        </div>
                    </div>
                    <div style="display:flex;margin-bottom: 10px;">
                        <div class="tableft">
                            <label>Temporary residence address</label>
                        </div>
                        <div class="tabright">
                            <input type="text" style="border: 1px solid #c0bdbc; border-radius:3px;width: 70%;" />
                        </div>
                    </div>
                    <div style="display:flex;margin-bottom: 10px;">
                        <div class="tableft">
                            <label>Birthday</label>
                        </div>
                        <div class="tabright">
                            <input type="date" style="border: 1px solid #c0bdbc; border-radius:3px;width: 70%;" />
                        </div>
                    </div>
                    <div style="display:flex;margin-bottom: 10px;">
                        <div class="tableft">
                        </div>
                        <div class="tabright">
                            <input type="submit" class="btn btn-primary" value="Save" style="background-color: #2196F3;">
                        </div>
                    </div>
                </div>
            </div>

            <div id="contact" class="tabcontent">
                <div style="display:block">
                    <div style="display:flex;margin-bottom: 10px;">
                        <div class="tableft">
                            <label>Tax code</label>
                        </div>
                        <div class="tabright">
                            <input type="text" style="border: 1px solid #c0bdbc; border-radius:3px;width: 70%;" />
                        </div>
                    </div>
                    <div style="display:flex;margin-bottom: 10px;">
                        <div class="tableft">
                            <label>ID number</label>
                        </div>
                        <div class="tabright">
                            <input type="text" style="border: 1px solid #c0bdbc; border-radius:3px;width: 70%;" />
                        </div>
                    </div>
                    <div style="display:flex;margin-bottom: 10px;">
                        <div class="tableft">
                            <label>Place of issuing ID card</label>
                        </div>
                        <div class="tabright">
                            <input type="text" style="border: 1px solid #c0bdbc; border-radius:3px;width: 70%;" />
                        </div>
                    </div>
                    <div style="display:flex;margin-bottom: 10px;">
                        <div class="tableft">
                            <label>Date of issuing ID card</label>
                        </div>
                        <div class="tabright">
                            <input type="date" style="border: 1px solid #c0bdbc; border-radius:3px;width: 70%;" />
                        </div>
                    </div>
                    <div style="display:flex;margin-bottom: 10px;">
                        <div class="tableft">
                        </div>
                        <div class="tabright">
                            <input type="submit" class="btn btn-primary" value="Save" style="background-color: #2196F3;">
                        </div>
                    </div>
                </div>
            </div>

            <div id="professional" class="tabcontent">
                <div style="display:block">
                    <div style="display:flex;margin-bottom: 10px;">
                        <div class="tableft">
                            <label>Foreign Language</label>
                        </div>
                        <div class="tabright">
                            <input type="text" style="border: 1px solid #c0bdbc; border-radius:3px;width: 70%;" />
                        </div>
                    </div>
                    <div style="display:flex;margin-bottom: 10px;">
                        <div class="tableft">
                            <label>Computer skill</label>
                        </div>
                        <div class="tabright">
                            <input type="text" style="border: 1px solid #c0bdbc; border-radius:3px;width: 70%;" />
                        </div>
                    </div>
                    <div style="display:flex;margin-bottom: 10px;">
                        <div class="tableft">
                            <label>Educational level</label>
                        </div>
                        <div class="tabright">
                            <input type="text" style="border: 1px solid #c0bdbc; border-radius:3px;width: 70%;" />
                        </div>
                    </div>
                    <div style="display:flex;margin-bottom: 10px;">
                        <div class="tableft">
                            <label>Academic level</label>
                        </div>
                        <div class="tabright">
                            <input type="text" style="border: 1px solid #c0bdbc; border-radius:3px;width: 70%;" />
                        </div>
                    </div>
                    <div style="display:flex;margin-bottom: 10px;">
                        <div class="tableft">
                            <label>Specialized</label>
                        </div>
                        <div class="tabright">
                            <input type="text" style="border: 1px solid #c0bdbc; border-radius:3px;width: 70%;" />
                        </div>
                    </div>
                    <div style="display:flex;margin-bottom: 10px;">
                        <div class="tableft">
                        </div>
                        <div class="tabright">
                            <input type="submit" class="btn btn-primary" value="Save" style="background-color: #2196F3;">
                        </div>
                    </div>
                </div>
            </div>

            <div id="health" class="tabcontent">
                <div style="display:block">
                    <div style="display:flex;margin-bottom: 10px;">
                        <div class="tableft">
                            <label>Insurance number</label>
                        </div>
                        <div class="tabright">
                            <input type="text" style="border: 1px solid #c0bdbc; border-radius:3px;width: 70%;" />
                        </div>
                    </div>
                    <div style="display:flex;margin-bottom: 10px;">
                        <div class="tableft">
                            <label>Date of insurance participation</label>
                        </div>
                        <div class="tabright">
                            <input type="date" style="border: 1px solid #c0bdbc; border-radius:3px;width: 70%;" />
                        </div>
                    </div>
                    <div style="display:flex;margin-bottom: 10px;">
                        <div class="tableft">
                            <label>Registered address</label>
                        </div>
                        <div class="tabright">
                            <input type="text" style="border: 1px solid #c0bdbc; border-radius:3px;width: 70%;" />
                        </div>
                    </div>
                    <div style="display:flex;margin-bottom: 10px;">
                        <div class="tableft">
                            <label>Medical treatment</label>
                        </div>
                        <div class="tabright">
                            <input type="text" style="border: 1px solid #c0bdbc; border-radius:3px;width: 70%;" />
                        </div>
                    </div>
                    <div style="display:flex;margin-bottom: 10px;">
                        <div class="tableft">
                            <label>Health</label>
                        </div>
                        <div class="tabright">
                            <input type="text" style="border: 1px solid #c0bdbc; border-radius:3px;width: 70%;" />
                        </div>
                    </div>
                    <div style="display:flex;margin-bottom: 10px;">
                        <div class="tableft">
                            <label>Weight</label>
                        </div>
                        <div class="tabright">
                            <input type="text" style="border: 1px solid #c0bdbc; border-radius:3px;width: 65%;" value="0" />
                            <label style="border: 1px solid #b6b5b5; margin-left:-9px;padding: 1px 6px;">kg</label>
                        </div>
                    </div>
                    <div style="display:flex;margin-bottom: 10px;">
                        <div class="tableft">
                            <label>Height</label>
                        </div>
                        <div class="tabright">
                            <input type="text" style="border: 1px solid #c0bdbc; border-radius:3px;width: 65%;" value="0" />
                            <label style="border: 1px solid #b6b5b5; margin-left:-9px;padding: 1px 3px;">cm</label>
                        </div>
                    </div>
                    <div style="display:flex;margin-bottom: 10px;">
                        <div class="tableft">
                        </div>
                        <div class="tabright">
                            <input type="submit" class="btn btn-primary" value="Save" style="background-color: #2196F3;">
                        </div>
                    </div>
                </div>
            </div>



            <div id="Account" class="w3-container city" style="display:none">
                <table class="w3-table w3-bordered">
                    <tr style="color: darkgrey; font-size:10px;">
                        <th>BANK NAME</th>
                        <th>ACCOUNT NUMBER</th>
                        <th>NOTE</th>
                        <th>STATUS</th>
                        <th></th>
                        <th></th>
                    </tr>
                    <tr>
                        <td>abc</td>
                        <td>
                            <span class="cog" data-toggle="modal" data-target="#myModal">
                                <a style="text-decoration:none;color: #1377da;">123</a>
                            </span>

                        </td>

                        <td>wellcome</td>

                        <td><label style="background-color:#c9ffd6;">Effective</label></td>

                        <td>
                            <span class="cog" data-toggle="modal" data-target="#myModal">
                                <i class="fa fa-pencil"></i>
                            </span>

                        </td>
                        <td><i class="fa fa-trash-o"></i></td>
                    </tr>
                </table>
                <div class="cog" style="padding-top:20px">
                    <button class="w3-button w3-black w3-round-xxlarge" data-toggle="modal" data-target="#myModal1">
                        <i class="fa fa-plus" title="Add a new account"></i>
                        <span>Add a new account</span>
                    </button>

                </div>
            </div>

            <div id="Contact" class="w3-container city" style="display:none">
                <table class="w3-table w3-bordered">
                    <tr style="color: darkgrey; font-size:10px;">
                        <th>NAME</th>
                        <th>SOME CONTRACTS</th>
                        <th>TYPE OF CONTRACT</th>
                        <th>TOTAL SALARY</th>
                        <th>INTEREST RATE</th>
                        <th>EFFECTIVE DATE</th>
                        <th>SIGNED COMPANY REPRESENTATIVE</th>
                        <th>FILE</th>
                        <th></th>
                        <th></th>
                    </tr>
                    <tr>
                        <td class="cog" data-toggle="modal" data-target="#myModal2" style="color: #1377da;"><a style="text-decoration:none">1</a></td>
                        <td>1</td>
                        <td>Probation</td>
                        <td>2,214,432</td>
                        <td>34,456</td>
                        <td>24/03/2019 - 31/03/2019</td>
                        <td><img class="ui avatar image" src="#">we</td>
                        <td></td>
                        <td>
                            <span class="cog" data-toggle="modal" data-target="#myModal2">
                                <i class="fa fa-pencil"></i>
                            </span>

                        </td>
                        <td><i class="fa fa-trash-o"></i></td>
                    </tr>
                </table>

                <div class="cog" data-toggle="modal" data-target="#myModal3" style="padding-top:20px">
                    <button class="w3-button w3-black w3-round-xxlarge">
                        <i class="fa fa-plus" title="Add a new account"></i>
                        <span>Add a new account</span>
                    </button>
                </div>
            </div>

            <div id="Work" class="w3-container city" style="display:none">
                <table class="w3-table w3-bordered">
                    <tr style="color: darkgrey; font-size:10px;">
                        <th>TIME</th>
                        <th>TITLE</th>
                        <th>TRANSFER A NEW DEPARTMENT</th>
                        <th>TRANSFER THE NEW BOARD</th>
                        <th>TRANSFER A NEW SERVICE</th>
                        <th>TRANSFORMING NEW WORK TYPE</th>
                        <th>NEW LEVEL TRANSFER</th>
                        <th>FILE</th>
                        <th></th>
                        <th></th>
                    </tr>
                    <tr>
                        <td>17/04/2019</td>
                        <td class="cog" data-toggle="modal" data-target="#myModal4" style="color: #1377da;"><a style="text-decoration:none">d</a></td>
                        <td>Main office</td>
                        <td>Board of directors</td>
                        <td>assistant</td>
                        <td>Probation</td>
                        <td>Employees</td>
                        <td></td>
                        <td>
                            <span class="cog" data-toggle="modal" data-target="#myModal4">
                                <i class="fa fa-pencil"></i>
                            </span>

                        </td>
                        <td><i class="fa fa-trash-o"></i></td>
                    </tr>
                </table>
                <div class="cog" data-toggle="modal" data-target="#myModal5" style="padding-top:20px">
                    <button class="w3-button w3-black w3-round-xxlarge">
                        <i class="fa fa-plus" title="Add a new account"></i>
                        <span>Add a new account</span>
                    </button>
                </div>
            </div>

            <div id="Timekeeping" class="w3-container city" style="display:none">
                <table class="w3-table w3-bordered">
                    <tr style="color: darkgrey; font-size:10px;">
                        <th>DAY</th>
                        <th>HEADQUARTERS</th>
                        <th>SHIFT</th>
                        <th>EMPLOYEES</th>
                        <th>TIME</th>
                        <th>NOTE</th>
                        <th>TIME</th>
                        <th>STATUS</th>
                        <th>CONFIRM</th>
                        <th>IP ADDRESS</th>
                        <th>IMAGE</th>
                    </tr>
                </table>
                <div style="padding-top:20px">
                    <a class="w3-btn w3-white w3-border w3-border-blue w3-round-large" style="text-decoration:none;" href="TimeAttendance.html">Add more</a>
                </div>
            </div>

            <div id="Salary" class="w3-container city" style="display:none">
                <table class="w3-table w3-bordered">
                    <tr style="color: darkgrey; font-size:10px;">
                        <th>EMPLOYEES</th>
                        <th>SOURCE</th>
                        <th>GRADE ROADS</th>
                        <th>TOTAL SALARY</th>
                        <th>FORM OF PAYMENT</th>
                        <th>SALARY</th>
                        <th>ORDER IN THE PERIOD OF STATE</th>
                        <th>STATUS</th>
                        <th>CREATOR</th>
                        <th>DATE CREATED</th>
                    </tr>
                </table>
                <div style="padding-top:20px">
                    <a class="w3-btn w3-white w3-border w3-border-blue w3-round-large" style="text-decoration:none;" href="addmore_employee.html">Add more</a>
                </div>
            </div>

            <div id="Vacation" class="w3-container city" style="display:none">
                <table class="w3-table w3-bordered">
                    <tr style="color: darkgrey; font-size:10px;">

                        <th>EMPLOYEES</th>
                        <th>REASON</th>
                        <th>TIME</th>
                        <th>STATUS</th>
                        <th>DATE CREATED</th>
                    </tr>
                </table>
                <div style="padding-top:20px">
                    <a class="w3-btn w3-white w3-border w3-border-blue w3-round-large" style="text-decoration:none;" href="addmore_employee.html">Add more</a>
                </div>
            </div>

            <div id="Discipline" class="w3-container city" style="display:none">
                <table class="w3-table w3-bordered">
                    <tr style="color: darkgrey; font-size:10px;">
                        <th>EMPLOYEES</th>
                        <th>SOURCE</th>
                        <th>GRADE ROADS</th>
                        <th>TOTAL SALARY</th>
                        <th>FORM OF PAYMENT</th>
                        <th>SALARY</th>
                        <th>ORDER IN THE PERIOD OF STATE</th>
                        <th>STATUS</th>
                        <th>CREATOR</th>
                        <th>DATE CREATED</th>
                    </tr>
                </table>
                <div style="padding-top:20px">
                    <a class="w3-btn w3-white w3-border w3-border-blue w3-round-large" style="text-decoration:none;" href="addmore_history.html">Add more</a>
                </div>
            </div>
        </div>
    </div>

    <div class="modal fade" id="myModal" role="dialog">
        <div class="modal-dialog">

            <div class="modal-content" style="width: 70%;">
                <div class="modal-header">

                    <h4 class="modal-title" style="color:black;"><b>Update account</b></h4>
                </div>
                <div class="modal-body">
                    <form class="w3-container " style="padding: 0.01em 16px;margin-right: 0px;padding-top: 0px;">
                        <p>
                            <label>Bank name<a style="margin-top: -0.2em; margin-left:0.2em;color: #DB2828;">*</a></label>
                            <input class="w3-input w3-border" type="text">
                        </p>
                        <p>
                            <label>Account number<a style="margin-top: -0.2em; margin-left:0.2em;color: #DB2828;">*</a></label>
                            <input class="w3-input w3-border" type="text">
                        </p>
                        <p>
                            <label>Note</label>
                            <input class="w3-input w3-border" type="text">
                        </p>
                        <p>
                            <label>Status</label>
                            <select class="w3-select w3-border" name="option">
                                <option value="0">Effective</option>
                                <option value="1">Disabled</option>
                            </select>
                        </p>
                    </form>

                </div>
                <div class="modal-footer">
                    <a class="btn btn-default" data-dismiss="modal">Close</a>
                    <a class="btn bg-teal-active" style="margin-left:10px; text-decoration:none;">Save</a>
                </div>
            </div>

        </div>
    </div>

    <div class="modal fade" id="myModal1" role="dialog">
        <div class="modal-dialog">

            <div class="modal-content" style="width: 70%;">
                <div class="modal-header">

                    <h4 class="modal-title" style="color:black;"><b>Add a new account</b></h4>
                </div>
                <div class="modal-body">
                    <form class="w3-container " style="padding: 0.01em 16px;margin-right: 0px;padding-top: 0px;">
                        <p>
                            <label>Bank name<a style="margin-top: -0.2em; margin-left:0.2em;color: #DB2828;">*</a></label>
                            <input class="w3-input w3-border" type="text">
                        </p>
                        <p>
                            <label>Account number<a style="margin-top: -0.2em; margin-left:0.2em;color: #DB2828;">*</a></label>
                            <input class="w3-input w3-border" type="text">
                        </p>
                        <p>
                            <label>Note</label>
                            <input class="w3-input w3-border" type="text">
                        </p>
                    </form>

                </div>
                <div class="modal-footer">
                    <a class="btn btn-default" data-dismiss="modal">Close</a>
                    <a class="btn bg-teal-active" style="margin-left:10px; text-decoration:none;">Add new</a>
                </div>
            </div>

        </div>
    </div>

    <div class="modal fade" id="myModal2" role="dialog">
        <div class="modal-dialog">

            <div class="modal-content" style="width: 150%;">
                <div class="modal-header">

                    <h4 class="modal-title" style="color:black;"><b>Update the contract</b></h4>
                </div>
                <div class="modal-body">
                    <div class="w3-cell-row">
                        <div class="col-sm-6">
                            <label for="inputdefault">Some contracts</label>
                            <input class="form-control" type="text" value="">
                        </div>
                        <div class="col-sm-6">
                            <label>Sign day</label>
                            <input class="form-control" type="date">
                        </div>
                    </div>

                    <div class="w3-cell-row">
                        <div class="col-sm-12">
                            <label>Name</label>
                            <input class="form-control" type="text">
                        </div>
                    </div>

                    <div class="w3-cell-row">
                        <div class="col-sm-6">
                            <label>Contract type</label>
                            <select class="form-control">
                                <option>
                                    Official
                                </option>
                                <option>
                                    Probation
                                </option>
                                <option>
                                    Appendix
                                </option>
                            </select>
                        </div>
                    </div>

                    <div class="w3-cell-row">
                        <div class="col-sm-6">
                            <label for="inputdefault">Effective date</label>
                            <input class="form-control" type="date">
                        </div>
                        <div class="col-sm-6">
                            <label>Expiry date</label>
                            <input class="form-control" type="date">
                        </div>
                    </div>

                    <div class="w3-cell-row">
                        <div class="col-sm-6">
                            <label>Office</label>
                            <select class="form-control">
                                <option>
                                    >>Board of directors
                                </option>
                                <option></option>
                            </select>
                        </div>
                        <div class="col-sm-6">
                            <label>Headquarters</label>
                            <select class="form-control">
                                <option>
                                    Main office
                                </option>
                                <option></option>

                            </select>
                        </div>
                    </div>

                    <div class="w3-cell-row">
                        <div class="col-sm-6">
                            <label>Type of work</label>
                            <select class="form-control">
                                <option>Official staff</option>
                                <option>Part-time</option>
                                <option>Probation</option>
                                <option>Extra work</option>
                                <option>Part-time employee</option>
                                <option>Project</option>
                            </select>
                        </div>
                        <div class="col-sm-6">
                            <label>Rank</label>
                            <select class="form-control">
                                <option>New graduate / Internship</option>
                                <option>Employees</option>
                                <option>Team Leader / Supervisor</option>
                                <option>Deputy</option>
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
                    </div>

                    <div class="w3-cell-row">
                        <div class="col-sm-6">
                            <label for="inputdefault">Gross salary</label>
                            <input class="form-control" type="text" value="0">
                        </div>
                        <div class="col-sm-6">
                            <label>Real wages</label>
                            <input class="form-control" type="text" value="0">
                        </div>
                    </div>

                    <div class="w3-cell-row">
                        <div class="col-sm-6">
                            <label>Basic salary</label>
                            <input class="form-control" type="text" value="0" />
                        </div>
                        <div class="col-sm-6">
                            <label>Pay forms</label>
                            <select class="form-control">
                                <option>Cash</option>
                                <option>Bank</option>
                                <option></option>
                            </select>
                        </div>
                    </div>

                    <div class="w3-cell-row">
                        <div class="col-sm-6">
                            <label>Salary insurance</label>
                            <input class="form-control" type="text" value="0" />
                        </div>
                        <div class="col-sm-6">
                            <label>Percentage of salaries</label>
                            <input class="form-control" type="text" value="0" />
                        </div>
                    </div>

                    <div class="w3-cell-row">
                        <div class="col-sm-12">
                            <label>Wage allowance</label>
                            <input class="form-control" type="text" value="0">
                        </div>
                    </div>

                    <div class="w3-cell-row">
                        <div class="col-sm-6">
                            <label>Company representative signed</label>
                            <select class="form-control">
                                <option>Name</option>

                            </select>
                        </div>
                        <div class="col-sm-6">
                            <label>Representative position</label>
                            <select class="form-control" id="sel">
                                <option>New graduate / Internship</option>
                                <option>Employees</option>
                                <option>Team Leader / Supervisor deputy</option>
                                <option>Shop management assistant</option>
                            </select>
                        </div>
                    </div>

                    <div class="w3-cell-row">
                        <div class="col-sm-12">
                            <label>Note</label>
                            <input class="form-control" type="text" value="">
                        </div>
                    </div>

                    <div class="w3-cell-row">
                        <div class="col-sm-12">
                            <label>File</label>
                            <div class="box">
                                <input type="file" name="file-2[]" id="file-2" class="inputfile inputfile-2" data-multiple-caption="{count} files selected" multiple="">
                                <label for="file-2"><i class="fa fa-paperclip"></i><span>File attached...</span></label>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="modal-footer">
                    <a class="btn btn-default" data-dismiss="modal">Close</a>
                    <a class="btn bg-teal-active" style="margin-left:10px; text-decoration:none;">Save</a>
                </div>
            </div>

        </div>
    </div>

    <div class="modal fade" id="myModal3" role="dialog">
        <div class="modal-dialog">

            <div class="modal-content" style="width: 150%;">
                <div class="modal-header">

                    <h4 class="modal-title" style="color:black;"><b>Update the contract</b></h4>
                </div>
                <div class="modal-body">
                    <div class="w3-cell-row">
                        <div class="col-sm-6">
                            <label for="inputdefault">Some contracts</label>
                            <input class="form-control" type="text" value="">
                        </div>
                        <div class="col-sm-6">
                            <label>Sign day</label>
                            <input class="form-control" type="date">
                        </div>
                    </div>

                    <div class="w3-cell-row">
                        <div class="col-sm-12">
                            <label>Name</label>
                            <input class="form-control" type="text">
                        </div>
                    </div>

                    <div class="w3-cell-row">
                        <div class="col-sm-6">
                            <label>Contract type</label>
                            <select class="form-control">
                                <option>
                                    Official
                                </option>
                                <option>
                                    Probation
                                </option>
                                <option>
                                    Appendix
                                </option>
                            </select>
                        </div>
                    </div>

                    <div class="w3-cell-row">
                        <div class="col-sm-6">
                            <label for="inputdefault">Effective date</label>
                            <input class="form-control" type="date">
                        </div>
                        <div class="col-sm-6">
                            <label>Expiry date</label>
                            <input class="form-control" type="date">
                        </div>
                    </div>

                    <div class="w3-cell-row">
                        <div class="col-sm-6">
                            <label>Office</label>
                            <select class="form-control">
                                <option>
                                    >>Board of directors
                                </option>
                                <option></option>
                            </select>
                        </div>
                        <div class="col-sm-6">
                            <label>Headquarters</label>
                            <select class="form-control">
                                <option>
                                    Main office
                                </option>
                                <option></option>

                            </select>
                        </div>
                    </div>

                    <div class="w3-cell-row">
                        <div class="col-sm-6">
                            <label>Type of work</label>
                            <select class="form-control">
                                <option>Official staff</option>
                                <option>Part-time</option>
                                <option>Probation</option>
                                <option>Extra work</option>
                                <option>Part-time employee</option>
                                <option>Project</option>
                            </select>
                        </div>
                        <div class="col-sm-6">
                            <label>Rank</label>
                            <select class="form-control">
                                <option>New graduate / Internship</option>
                                <option>Employees</option>
                                <option>Team Leader / Supervisor</option>
                                <option>Deputy</option>
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
                    </div>

                    <div class="w3-cell-row">
                        <div class="col-sm-6">
                            <label for="inputdefault">Gross salary</label>
                            <input class="form-control" type="text" value="0">
                        </div>
                        <div class="col-sm-6">
                            <label>Real wages</label>
                            <input class="form-control" type="text" value="0">
                        </div>
                    </div>

                    <div class="w3-cell-row">
                        <div class="col-sm-6">
                            <label>Basic salary</label>
                            <input class="form-control" type="text" value="0" />
                        </div>
                        <div class="col-sm-6">
                            <label>Pay forms</label>
                            <select class="form-control">
                                <option>Cash</option>
                                <option>Bank</option>
                                <option></option>
                            </select>
                        </div>
                    </div>

                    <div class="w3-cell-row">
                        <div class="col-sm-6">
                            <label>Salary insurance</label>
                            <input class="form-control" type="text" value="0" />
                        </div>
                        <div class="col-sm-6">
                            <label>Percentage of salaries</label>
                            <input class="form-control" type="text" value="0" />
                        </div>
                    </div>

                    <div class="w3-cell-row">
                        <div class="col-sm-12">
                            <label>Wage allowance</label>
                            <input class="form-control" type="text" value="0">
                        </div>
                    </div>

                    <div class="w3-cell-row">
                        <div class="col-sm-6">
                            <label>Company representative signed</label>
                            <select class="form-control">
                                <option>Name</option>

                            </select>
                        </div>
                        <div class="col-sm-6">
                            <label>Representative position</label>
                            <select class="form-control" id="sel">
                                <option>New graduate / Internship</option>
                                <option>Employees</option>
                                <option>Team Leader / Supervisor deputy</option>
                                <option>Shop management assistant</option>
                            </select>
                        </div>
                    </div>

                    <div class="w3-cell-row">
                        <div class="col-sm-12">
                            <label>Note</label>
                            <input class="form-control" type="text" value="">
                        </div>
                    </div>

                    <div class="w3-cell-row">
                        <div class="col-sm-12">
                            <label>File</label>
                            <div class="box">
                                <input type="file" name="file-2[]" id="file-2" class="inputfile inputfile-2" data-multiple-caption="{count} files selected" multiple="">
                                <label for="file-2"><i class="fa fa-paperclip"></i><span>File attached...</span></label>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="modal-footer">
                    <a class="btn btn-default" data-dismiss="modal">Close</a>
                    <a class="btn bg-teal-active" style="margin-left:10px; text-decoration:none;">Add new</a>
                </div>
            </div>
        </div>
    </div>

    <div class="modal fade" id="myModal4" role="dialog">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <h4 class="modal-title" style="color:black;"><b>Update the contract</b></h4>
                </div>
                <div class="modal-body">
                    <div class="w3-cell-row">
                        <div class="col-sm-12">
                            <label>Title</label>
                            <input class="form-control" type="text" value="d">
                        </div>
                    </div>

                    <div class="w3-cell-row">
                        <div class="col-sm-12">
                            <label>Move new position</label>
                            <input class="form-control" type="text" value="assistant">
                        </div>
                    </div>

                    <div class="w3-cell-row">
                        <div class="col-sm-12">
                            <label>Move the new office</label>
                            <select class="form-control" id="sel">
                                <option>Main office</option>
                                <option></option>
                            </select>
                        </div>
                    </div>
                    <div class="w3-cell-row">
                        <div class="col-sm-12">
                            <label>Change the type of new job</label>
                            <select class="form-control" id="sel">
                                <option>>> Board of directors</option>
                                <option></option>
                            </select>
                        </div>
                    </div>

                    <div class="w3-cell-row">
                        <div class="col-sm-12">
                            <label>Transfer new departments</label>
                            <select class="form-control" id="sel">
                                <option>Official staff</option>
                                <option>Part-time</option>
                                <option>Probation</option>
                                <option>Extra work</option>
                                <option>Part-time employee</option>
                                <option>Project</option>
                            </select>
                        </div>
                    </div>

                    <div class="w3-cell-row">
                        <div class="col-sm-12">
                            <label>Move new rank</label>
                            <select class="form-control" id="sel">
                                <option>New graduate / Internship</option>
                                <option>Employees</option>
                                <option>Team Leader / Supervisor</option>
                                <option>Deputy</option>
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
                    </div>

                    <div class="w3-cell-row">
                        <div class="col-sm-12">
                            <label>Note</label>
                            <input class="form-control" type="text" value="">
                        </div>
                    </div>

                    <div class="w3-cell-row">
                        <div class="col-sm-12">
                            <label>File</label>
                            <div class="box">
                                <input type="file" name="file-2[]" id="file-2" class="inputfile inputfile-2" data-multiple-caption="{count} files selected" multiple="">
                                <label for="file-2"><i class="fa fa-paperclip"></i><span>File attached...</span></label>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="modal-footer">
                    <a class="btn btn-default" data-dismiss="modal">Close</a>
                    <a class="btn bg-teal-active" style="margin-left:10px; text-decoration:none;">Save</a>
                </div>
            </div>
        </div>
    </div>

    <div class="modal fade" id="myModal5" role="dialog">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <h4 class="modal-title" style="color:black;"><b>Update the contract</b></h4>
                </div>
                <div class="modal-body">
                    <div class="w3-cell-row">
                        <div class="col-sm-12">
                            <label>Title</label>
                            <input class="form-control" type="text" value="">
                        </div>
                    </div>

                    <div class="w3-cell-row">
                        <div class="col-sm-12">
                            <label>Move new position</label>
                            <input class="form-control" type="text" value="">
                        </div>
                    </div>

                    <div class="w3-cell-row">
                        <div class="col-sm-12">
                            <label>Move the new office</label>
                            <select class="form-control" id="sel">
                                <option>Main office</option>
                                <option></option>
                            </select>
                        </div>
                    </div>
                    <div class="w3-cell-row">
                        <div class="col-sm-12">
                            <label>Change the type of new job</label>
                            <select class="form-control" id="sel">
                                <option>>> Board of directors</option>
                                <option></option>
                            </select>
                        </div>
                    </div>

                    <div class="w3-cell-row">
                        <div class="col-sm-12">
                            <label>Transfer new departments</label>
                            <select class="form-control" id="sel">
                                <option>Official staff</option>
                                <option>Part-time</option>
                                <option>Probation</option>
                                <option>Extra work</option>
                                <option>Part-time employee</option>
                                <option>Project</option>
                            </select>
                        </div>
                    </div>

                    <div class="w3-cell-row">
                        <div class="col-sm-12">
                            <label>Move new rank</label>
                            <select class="form-control" id="sel">
                                <option>New graduate / Internship</option>
                                <option>Employees</option>
                                <option>Team Leader / Supervisor</option>
                                <option>Deputy</option>
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
                    </div>

                    <div class="w3-cell-row">
                        <div class="col-sm-12">
                            <label>Note</label>
                            <input class="form-control" type="text" value="">
                        </div>
                    </div>

                    <div class="w3-cell-row">
                        <div class="col-sm-12">
                            <label>File</label>
                            <div class="box">
                                <input type="file" name="file-2[]" id="file-2" class="inputfile inputfile-2" data-multiple-caption="{count} files selected" multiple="">
                                <label for="file-2"><i class="fa fa-paperclip"></i><span>File attached...</span></label>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="modal-footer">
                    <a class="btn btn-default" data-dismiss="modal">Close</a>
                    <a class="btn bg-teal-active" style="margin-left:10px; text-decoration:none;">Add new</a>
                </div>
            </div>
        </div>
    </div>

    <script>
        function openCity(evt, cityName) {
            var i, x, tablinks;
            x = document.getElementsByClassName("city");
            for (i = 0; i < x.length; i++) {
                x[i].style.display = "none";
            }
            tablinks = document.getElementsByClassName("tablink");
            for (i = 0; i < x.length; i++) {
                tablinks[i].className = tablinks[i].className.replace(" w3-border-red", "");
            }
            document.getElementById(cityName).style.display = "block";
            evt.currentTarget.firstElementChild.className += " w3-border-red";
        }

        function openCity1(evt, cityName) {
            var i, tabcontent, tablinks;
            tabcontent = document.getElementsByClassName("tabcontent");
            for (i = 0; i < tabcontent.length; i++) {
                tabcontent[i].style.display = "none";
            }
            tablinks = document.getElementsByClassName("tablinks");
            for (i = 0; i < tablinks.length; i++) {
                tablinks[i].className = tablinks[i].className.replace(" active", "");
            }
            document.getElementById(cityName).style.display = "block";
            evt.currentTarget.className += " active";
        }


        'use strict';

        ; (function (document) {
            var inputs = document.querySelectorAll('.inputfile');
            Array.prototype.forEach.call(inputs, function (input) {
                var label = input.nextElementSibling,
                    labelVal = label.innerHTML;

                input.addEventListener('change', function (e) {
                    var fileName = '';
                    if (this.files && this.files.length > 1)
                        fileName = (this.getAttribute('data-multiple-caption') || '').replace('{count}', this.files.length);
                    else
                        fileName = e.target.value.split('\\').pop();

                    if (fileName)
                        label.querySelector('span').innerHTML = fileName;
                    else
                        label.innerHTML = labelVal;
                });

                // Firefox bug fix
                input.addEventListener('focus', function () { input.classList.add('has-focus'); });
                input.addEventListener('blur', function () { input.classList.remove('has-focus'); });
            });
        }(document, window, 0));
    </script>


</asp:Content>

