<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="comment-work.aspx.cs" Inherits="project_comment_work" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

      <link href="../css/Css-Blog/detail-blog-css.css" rel="stylesheet" />
            <div class="header-blog">
                <div class="col-sm-7">
                      <a class="title-blog" href="list-blog.aspx"><b></b></a>
                 </div>  
            </div>
            <div class="body-detail">
                    <div class="row" style="margin-top:10px;">
        <div class="col-sm-9" id="bodydetail">
            <div class="contentblog">
                <div><b style="color:red">Comment Work</b></div>
                <br />
                         
                <div style="margin-top:20px;">
                    <a style="margin-right:10px;">1 Comment</a>
                    <a style="margin-right:10px;">1 View </a>
                    <a style="margin-right:10px;">Kate Winlesss</a>
                    <span style="margin-right:10px;">Created: 10:00, Today</span>
                </div>
            </div>
            <hr style="margin-left:100px" />
            <span style="margin-bottom:50px;margin-top:20px; margin-left:50%"><b>Comment Work</b></span>
            <hr style="margin-left:100px" />
            <div style="margin-left:400px;">
                <div style="margin-left:-300px;">
                    <b>User 123:</b> today, 20:20pm : Hello, .................
                    <br />
                    <b>User 456:</b> today, 20:20pm : Hi, ......................
                      <br />
                     <b>User 789:</b> today, 20:20pm : Hello, ........................
                    <br />
                    <b>User 999:</b> today, 20:20pm : Hi, ......................
                </div>
            </div>
            <div style="margin-left:100px;">
                <form style="margin-bottom:20px;">
                    <textarea class="form-control" id="exampleFormControlTextarea3" rows="7" placeholder="Write comment ..." style="border-radius:20px; margin-top:30px;"></textarea>
                </form>
                <button type="button" class="btn btn-facebook" ><b>Comment Enter</b></button>
            </div>
        </div>
        <div class="col-sm-3">

        </div>
    </div>
            </div>

</asp:Content>

