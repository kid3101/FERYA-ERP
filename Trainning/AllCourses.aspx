<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="AllCourses.aspx.cs" Inherits="Trainning_AllCourses" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div id="container">
        <div>
            <div id="elearning-header" style="background-image:url(/imgs/elearning/bg-header.jpg);">
                <div class="elearning-heading-wrapper">
                    <div class="ui container">
                        <h1 class="elearning-heading elearning-uppercase" style="color:white;border-left: 6px solid #ffb606;">All Courses</h1>
                    </div>
                </div>
            </div>
            <div>
                <div id="elearning-breadcrumb" style="display:flex">
                    <a href="AllCourses.html" class="section" style="margin-right:15px; font-size:20px;"><span class="glyphicon glyphicon-home" style="margin-right:5px;"></span>Home</a>
                    <i style="font-size:20px; margin-right:10px">-</i>
                    <span style="font-size:20px">All Courses </span>
                </div>
                <hr width="1100px" align="center" />
                <div class="row">
                    <div class="col-sm-9" style="margin-left: -125px;margin-right:125px;">
                        <div class="sreach" style="display:flex;width: 900px; height:50px; margin-left:31%; background-color: aliceblue;">
                            <span style="margin-right:550px; margin-bottom:auto;margin-top:auto;"><a><span class="glyphicon glyphicon-th-list" style="margin-right:10px"></span></a>Result 0 - 0</span>
                            <input style="margin-bottom:auto;margin-top:auto;border-radius:5px;" type="text" placeholder="Search ..." value="" ;" /><a style=" margin-bottom:auto;margin-top:auto;margin-left:2px; background-color:aliceblue"><i class="fa fa-search" style="font-size:20px;"></i></a>
                        </div>
                        <div style="clear:both"></div>
                        <div style="margin-left:30%;margin-top:30px;">
                            <div class="col-sm-3">
                                <a href="#"><img src="imgs/zerodata/ys3.jpg" style="width:230px;height:150px;" /></a>
                            </div>
                            <div class="col-sm-8" style="margin-left: 5%">
                                <a style="font-size:20px;" href="DetailCourse.html"> <b> DIGITAL MARKETING </b></a>
                                <br />
                                <div>
                                    <div class="col-sm-4" style="border-right:1px solid #ffb606 ">Teacher Jonh </div>
                                    <div class="col-sm-4" style="border-right:1px solid #ffb606 ">Reviews: * * * * * *</div>
                                    <div class="col-sm-3">99 Registered</div>
                                </div>
                                <div style="clear:both;"></div>
                                <br />
                                <br />
                                <br />
                                <div>
                                    <div style="float:left;">
                                        <span style="font-size:20px;color:forestgreen"> <b>Free</b></span>
                                    </div>
                                    <div style="float:right;">
                                        <button style="font-size:20px;border-radius:10px; background-color:gold;color: white;font-weight: 600; border:none; padding-left:20px;padding-right:20px;"><a href="DetailCourse.html">Detail View</a></button>
                                    </div>
                                </div>
                            </div>

                        </div>
                    </div>
                    <div class="col-sm-3" style="">
                        <div class="four wide column " style="margin-right:19px;">
                            <div class="elearning-widget" style="border:none;">
                                <div class="elearning-widget-content" style="padding-left:0px;">
                                    <div class="ui relaxed list elearning-widget-cat">
                                        <div class="item elearning-widget-item"><a href="CourseManager.html" style="padding-left: 20px; padding-right: 20px;" class="coursemanager">Course Manager</a></div>
                                    </div>
                                </div>
                            </div>
                            <div class="elearning-widget">
                                <h2 class="elearning-widget-header elearning-uppercase ui header" style="border-left: 5px solid #ffb606!important;padding: .2em 0 .2em 12px!important">YOUR COURSES</h2>
                                <div class="elearning-widget-content">
                                    <div class="ui relaxed list elearning-widget-cat">
                                        <div class="item elearning-widget-item"><a href="MyCourse.html" class="content elearning-widget-link elearning-uppercase">LIST COURSES</a></div>
                                    </div>
                                </div>
                            </div>
                            <div class="elearning-widget">
                                <h2 class="elearning-widget-header elearning-uppercase ui header" style="border-left: 5px solid #ffb606!important;padding: .2em 0 .2em 12px!important"> ALL COURSES</h2>
                                <div class="elearning-widget-content">
                                    <div class="ui relaxed list elearning-widget-cat"><a href="#" class="content elearning-widget-link elearning-uppercase">Category Course</a></div>
                                </div>
                            </div>
                            <div class="elearning-widget">
                                <h2 class="elearning-widget-header elearning-uppercase ui header" style="border-left: 5px solid #ffb606!important;padding: .2em 0 .2em 12px!important"> NEW COURSE</h2>
                                <div class="elearning-widget-content">
                                    <div class="ui relaxed list elearning-widget-courses"></div>
                                </div>
                            </div>

                        </div>

                    </div>

                </div>
            </div>
        </div>
    </div>
</asp:Content>

