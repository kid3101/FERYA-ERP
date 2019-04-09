﻿<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="detail-blog.aspx.cs" Inherits="Blog_detail_blog" %>

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
               <% for (int i = listcmt.Count -1; i>-1;i--)  { %>
                        <span><b><%=listcmt[i].Employee.FirstName %></b></span> : <span><%=listcmt[i].CommentNote %></span><br />
                  <%} %>
                </div>
            </div>
            <div class="entercmt">
                <form>
                    <textarea class="form-control" id="contentcmt" rows="7" placeholder="Write comment ..."></textarea>
                </form>
                <button type="button" class="btn btn-facebook" onclick ="comment(<%=detail.BlogId %>)"><b>Comment</b></button>
            </div>
        </div>
        <div class="col-sm-3">

        </div>
    </div>
            </div>
        </div>
    <script>
        function comment(id) {
            var content = $('textarea#contentcmt').val();
               try {
                  $.post("/do/Comment/add-comment.aspx", {
                      id: id,
                      comment :content
                  }, function (data) {
                      if (data == 1) {                        
                          location.href = "/Blog/detail-blog.aspx?id=" + id;
                      }
                      else {
                          alert("error")
                           location.href = "/Blog/detail-blog.aspx?id=" + id;
                      }
                  }
                  )
              } catch (e) {
                   alert("Error");
                    location.href = "/Blog/detail-blog.aspx?id=" + id;
              }
        }
    </script>
</asp:Content>

