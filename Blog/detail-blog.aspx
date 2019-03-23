<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="detail-blog.aspx.cs" Inherits="Blog_detail_blog" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
            <div class="header-blog">
                <div class="col-sm-7">
                      <a class="title-blog" href="blog-list.aspx"><b>Blog List</b></a>
                 </div>  
            </div>
            <div class="body-detail">
                    <div class="row" style="margin-top:10px;">
        <div class="col-sm-9" id="bodydetail">
            <div class="contentblog">
                <div><b>Title blog</b></div>
                <div>fffffffffff</div>
                <div>ffffffffffffffffffff</div>
                <div>ffffffffffffffffffffffffffffffffffff</div>
                <div>fffffffffffffffffffffffffffffffffffffffffffffffffff</div>
                <div>fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff</div>
                <div>ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff</div>
                <div>fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff</div>
                <div style="margin-top:20px;">
                    <a style="margin-right:10px;">1 Comment</a>
                    <a style="margin-right:10px;">1 View </a>
                    <a style="margin-right:10px;">Kate Winlesss</a>
                    <span style="margin-right:10px;">Created: 10:00, Today</span>
                </div>
            </div>
            <hr style="margin-left:100px" />
            <span style="margin-bottom:50px;margin-top:20px; margin-left:400px"><b>Comment For Blog</b></span>
            <hr style="margin-left:100px" />
            <div style="margin-left:400px;">
                <div style="margin-left:-300px;">
                    <b> Winner</b> today, 20:20pm : Hello fen?
                    <br />
                    <b>Exchoaiter</b> today, 20:20pm : Hi fen?
                </div>
            </div>
            <div style="margin-left:100px;">
                <form style="margin-bottom:20px;">
                    <textarea class="form-control" id="exampleFormControlTextarea3" rows="7" placeholder="Write comment ..." style="border-radius:20px; margin-top:30px;"></textarea>
                </form>
                <button style="float:right;  border-radius: 20px; font-size:24px; border:none;padding-left:10px;padding-right:10px;" ><b style="color:#3498db;">Comment Enter</b></button>
            </div>
        </div>
        <div class="col-sm-3">

        </div>
    </div>
            </div>
</asp:Content>

