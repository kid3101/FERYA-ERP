<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="detail-blog.aspx.cs" Inherits="Blog_detail_blog" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <link href="../css/Css-Blog/detail-blog-css.css" rel="stylesheet" />
    <div class="container-fluid">
            <div class="header-blog">
                <div class="col-sm-7" id="header1">
             <h1 class="h3 mb-4 text-gray-800">Blog list > Degital Marketing</h1>
             </div>
            </div>
            <div class="body-detail">
                    <div class="row" style="margin-top:10px;">
        <div class="col-sm-9" id="bodydetail">
            <div class="contentblog">
                <div><b style="color:red"><%=detail.BlogTitle %></b></div>
                <br />
                <div>
                    <%=detail.BlogContent %>
               </div>             
                <div class="comment" >
                    <span> 1 Comment </span>
                    <span> 1 View </span>
                    <a ><%=detail.Employee.FirstName %></a>
                    <span><%=detail.CreatedDate %></span>
                </div>
            </div>
            <hr/>
            <span class="cmtblog"><b>Comment For Blog</b></span>
            <hr/>
            <div class="formcmt">
                <div class="cmt" >
                    <b>User 123:</b> today, 20:20pm : Hello, .................
                    <br />
                    <b>User 456:</b> today, 20:20pm : Hi, ......................
                      <br />
                     <b>User 789:</b> today, 20:20pm : Hello, ........................
                    <br />
                    <b>User 999:</b> today, 20:20pm : Hi, ......................
                </div>
            </div>
            <div class="entercmt">
                <form>
                    <textarea class="form-control" id="exampleFormControlTextarea3" rows="7" placeholder="Write comment ..."><%=detail.BlogContent %></textarea>
                </form>
                <button type="button" class="btn btn-facebook" ><b>Comment</b></button>
            </div>
        </div>
        <div class="col-sm-3">

        </div>
    </div>
            </div>
        </div>
</asp:Content>

