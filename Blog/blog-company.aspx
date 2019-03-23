<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="blog-company.aspx.cs" Inherits="Blog_blog_company" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
      <div class="header-blog">
            <a class="title-blog" href="#">Blog</a>
        <ul class="nav nav-tabs" >
            <li class="active">
                <a data-toggle="tab" href="#" style="cursor:pointer;">
                    <span style="color:black;">All</span>
                    <span class="number">0</span>
                </a>
            </li>
            <li class="dropdown">
                <a class="dropdown-toggle" data-toggle="dropdown" title="Turn on / off the search function">Filter & search ...</a>

            </li>
        </ul>
        <div class="container-fluid" style="margin-top: -34px;margin-left: 75%;">
            <div class="container" style="float:left;">
                <a class="nutchamcong" data-toggle="tooltip" href="ForManagerBlog.html" title="Timekeeping"><span class="glyphicon glyphicon-cog" style="margin-right:5px"></span>FOR MANAGER </a>
            </div>
            <div class="container">
                <a href="#" style="height: 20px;width: 20px;color: #555;"><i class="fa fa-chevron-left"></i></a>
                <div style="margin-right: 6px;">
                    <a href="#" style="color:#555;">
                        <span>Page</span>
                        <span>0</span>
                        <span>/</span>
                        <span>0</span>
                    </a>
                </div>
                <a href="#" style="height: 48px;width: 48px;color: #555;"><i class="fa fa-chevron-right"></i></a>
            </div>
        </div>
        <br>
    </div>
    <div class="zerodata">
        <div>
            <div class="zerodataimage"><img src="/imgs/zerodata/info.png" width="256" height="256"></div>
            <h3>Blog is empty</h3>
            <p>Please add new blog</p>
            <div class="zerodatabutton" style="margin-top: 20px;"><a class="addnewdata" href="AddNewBlog.html">Add New</a></div>
        </div>
    </div>
</asp:Content>

