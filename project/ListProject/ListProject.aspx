<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="ListProject.aspx.cs" Inherits="ListProject" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>



<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">

    <div class="container" style="background-color: #eee; height: 106px; width: 100%; margin-top: -19px;">
        <div style="margin-bottom: -11px; margin-top: -20px;">
            <br />
            <a class="abc tab-content" href="Project.html"></a>
            <!-- Page Heading -->
            <h1 style="font-size: 20px">PROJECT</h1>



            <button style="float: right; margin-top: -42px; font-size: 17px; color: white; background-color: black; border-radius: 17px; height: 40px; font-family: -webkit-body;">
                <a style="color: white" href="CreateProject.html"><i class="fas fa-plus-circle"></i>Create New Project</a>

            </button>
            <i class="fas fa-angle-left" style="margin-left: 950px;"></i>Page 1/1
                <i class="fas fa-angle-right"></i>

            <ul class="nav nav-tabs" style="margin-right: -202px">

                <li class="active"><a href="#" style="cursor: pointer; height: 44px;">All</a></li>


                <li class="dropdown">
                    <a class="dropdown-toggle" data-toggle="dropdown" style="padding-right: 30px; color: black; cursor: pointer;" title="Turn on / off the search function">Filter & search ...</a>
                    <ul class="dropdown-menu filterbarfull filterbar" style="top: 41.1146px; left: -2.319px;">
                        <li>
                            <form class="ui form">
                                <table style="margin: 10px">
                                    <tbody style="width: 100%; height: 100%">
                                        <tr>
                                            <td style="text-align: right">
                                                <label>Key word</label>
                                            </td>
                                            <td>
                                                <div class="col-sm-10"></div>
                                                <input class="form-control" type="text" name="keyword" />
                                            </td>

                                        </tr>
                                        <tr>
                                            <td style="text-align: right">
                                                <label>Status</label>
                                            </td>
                                            <td>
                                                <div class="form-group"></div>
                                                <div class="col-sm-10"></div>
                                                <select class="form-control">
                                                    <option>All</option>
                                                    <option>Working</option>
                                                </select>
                                            </td>

                                        </tr>
                                        <tr>
                                           <td style="text-align: center; padding-top: 10px;" colspan="2">
                                                <button type="button" class="timkiem">Search</button>
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
    <br>
</div>

    <div class="row-content">
        <div class="row">
            <div class="col-sm-9" style="border-right-style:inset">
                <table class="table">
                    <tbody>
                        <tr>
                            <td style="width:30px">No</td>
                            <td>Name</td>
                            <td style="width:30px"  >Work</td>
                            <td >Member</td>
                            <td >Start day</td>
                            <td>Status</td>
                            <td></td>
                        </tr>
                    </tbody>
                    <tr>
                        <td>1</td>
                        <td style="color: blue">Orrcode</td>
                        <td style="color: blue">Working</td>
                        <td>
                            <img style="width: 19px; height: 19px" src="/image/40.jpg" /></td>
                        <td>2014</td>
                        <td>
                            <button style="background: #fff1c9">New</button></td>
                        <td style="margin-left:20px">

                            <i style="width: 40px" class="fas fa-book-open"></i>
                            <i style="width: 40px"class="fas fa-exclamation-circle"></i>
                            <i style="width: 40px" class="fas fa-pen"></i>
                        </td>

                    </tr>
                </table>

            </div>
            <div style="margin: 0; margin-left: -113px;" class="col-sm-4">

                <div style="width: 25%; float: right;">
                    <div style="cursor: pointer; font-size: 40px; text-align: center">

                        <div style="text-align: center;">
                            <i style="font-size: 15px" class="fas fa-bars"></i>
                            <br />
                            <label style="font-size: 15px">
                                0
                                Task<br />
                                late
                            </label>
                        </div>

                    </div>
                </div>
                <div style="width: 25%; float: right; border-right-style: inset">
                    <div style="cursor: pointer; font-size: 40px; text-align: right">
                        <div style="text-align: center;">
                            <i style="font-size: 15px" class="fas fa-bars"></i>
                            <br />
                            <label style="font-size: 15px">
                                0
                                work
                                <br />
                                unfinished
                            </label>
                        </div>
                    </div>
                </div>
                <div style="width: 25%; cursor: pointer; font-size: 40px; text-align: center; border-right-style: inset; float: right;">

                    <div>
                        <i style="font-size: 15px" class="fas fa-suitcase"></i>
                        <br />
                        <label style="font-size: 15px">
                            0 Project
                            <br />
                            doing
                        </label>
                    </div>
                </div>
            </div>
        </div>
    </div>


</asp:Content>

