 <%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="list-blog.aspx.cs" Inherits="Blog_list_blog" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     <link href="../css/Css-Blog/blog-company-css.css" rel="stylesheet" />
    <link href="../css/Css-Blog/list-blog-css.css" rel="stylesheet" />
    <div class="container-fluid">
          <div class="header-blog">
          <div style="display:flex;">
            <div class="col-sm-7" style="display:flex;">
             <h1 class="h3 mb-4 text-gray-800">Blog List</h1>          
             </div>
          <div class="col-sm-5" id="col-5">
                  <div class="linkmanagerblog">
                    <div class="managerblog">
                        <a class="btn btn-info" data-toggle="tooltip" href="manager-blog.aspx">For Manager</a>
                    </div>
                      <br />
                    <div class="page">    
                        <div style="margin-right: 6px;">
                                <a href="#"><i class="fa fa-chevron-left"></i></a>
                                <span>Page</span>
                                <span>0</span>
                                <span>/</span>
                                <span>0</span>
                                <a href="#"><i class="fa fa-chevron-right"></i></a>
                        </div>
                        
                    </div>
              </div>
              </div>
              </div>

          <div class="col-sm-5" id="searchblog"> 
                    <%-- <div class="count">
                            <span>All</span>
                            <span class="number">0</span>
                       </div>
                    <div class="search-container">
                            <form action="#">
                              <input type="text" placeholder="Search.." name="search">
                              <button type="submit"><i class="fa fa-search"></i></button>
                            </form>
                      </div>--%>
              </div>
        <br>
    </div>
    <div class="body-list">
         <table class="table">
             <thead>
                 <tr></tr>
             </thead>
             <tbody>
                 <%for (int i = Listblog.Count - 1; i > -1; i--)
                     { %>
                         <tr>
                             <td style="width:500px;height:250px;">

                                   <a href="#" onclick="detail(<%=Listblog[i].BlogId %>)">  <img src="/imgs/zerodata/ys3.jpg"/ width="300" height="200"></a>
                             </td>
                             <td>
                                      <a href="#" onclick="detail(<%=Listblog[i].BlogId %>)" style="text-decoration:none;"><b><%=Listblog[i].BlogTitle%></b></a>
                                             <br />
                                                <br />
                                       <span class="fas fa-user-edit" ></span>   <%=Listblog[i].Employee.FirstName %> <br />
                                       <span class="far fa-clock" ></span> <%=Listblog[i].CreatedDate %><br />
                                       <span class="far fa-eye"></span>  6999 Views <br />
                                       <span class="far fa-comments"></span>  555 Comment
                             </td>                  
                         </tr>  
                   <%} %>       
             </tbody>
         </table>
    </div>
        </div>
    <script>
        function detail(id) {
            location.href = "/Blog/detail-blog.aspx?id=" + id;
        }
    </script>
</asp:Content>

