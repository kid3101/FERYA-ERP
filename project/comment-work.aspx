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
                <div><b style="color:red"><%=task.TaskName %></b></div>
                <br />
                         
                <div style="margin-top:20px;">
                    <a style="margin-right:10px;"><%=listTaskComment.Count %></a>
                 <%--   <a style="margin-right:10px;"><%=task.Employee.FirstName %></a>--%>
                    <span style="margin-right:10px;"><%=task.CreatedDate %></span>
                </div>
            </div>
            <hr style="margin-left:100px" />
            <span style="margin-bottom:50px;margin-top:20px; margin-left:50%"><b>Comment Work</b></span>
            <hr style="margin-left:100px" />
            <div style="margin-left:400px;">
                <div style="margin-left:-300px;">
                     <% for (int i = listTaskComment.Count -1; i>-1;i--)  { %>
                        <div class="cmt-content">                         
                            <span class="cmt-item" >
                                <b><%=listTaskComment[i].Employee.FirstName %></b> : <%=listTaskComment[i].CommentNote %>
                                <i class="fas fa-times cmt-close-btn" onclick="delcmt(<%=listTaskComment[i].TaskCommentId %>)"></i>
                            </span>                            
                        </div>                        
                  <%} %>                   
                </div>
            </div>
            <div style="margin-left:100px;">
                <form style="margin-bottom:20px;">
                    <textarea class="form-control" id="contentcmt" rows="7" placeholder="Write comment ..." style="border-radius:20px; margin-top:30px;"></textarea>
                </form>
                <button type="button" class="btn btn-facebook" onclick="comment(<%=task.TaskId %>)"><b>Comment Enter</b></button>
            </div>
        </div>
        <div class="col-sm-3">

        </div>
    </div>
            </div>
    <script>
        function comment(id) {
            var content = $('textarea#contentcmt').val();
            try {
                $.post("/do/TaskComment/add-comment.aspx",
                    {
                        id: id,
                        conten: content
                    }, function (data) {
                        if (data == 1) {
                            location.reload();
                        }
                        else {
                            alert("Error");
                             location.reload();
                        }
                    }
                )

            }
            catch (e){
                alert("Error");
            }
        }
    </script>
</asp:Content>

