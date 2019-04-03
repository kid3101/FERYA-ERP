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
                        <a class="btn btn-info" data-toggle="tooltip" href="list-blog-for-manager.aspx" title="Timekeeping">For Manager</a>
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
                     <div class="count">
                            <span>All</span>
                            <span class="number">0</span>
                       </div>
                    <div class="search-container">
                            <form action="#">
                              <input type="text" placeholder="Search.." name="search">
                              <button type="submit"><i class="fa fa-search"></i></button>
                            </form>
                      </div>
              </div>
        <br>
    </div>
    <div class="body-list">
         <table class="table">
             <tbody>
                 <tr>
                     <td>
                         <div class="col-sm-3">
                           <a href="detail-blog.aspx">  <img src="/imgs/zerodata/ys3.jpg"/></a>
                         </div>
                     </td>
                     <td>
                            <div class="col-sm-7">
                                <div class="nametitle"><b>Leaning digital marketing...................</b></div>
                              <br />
                                <div><span class="fas fa-user-edit" ></span>   Kate Winlesss</div>
                                <div><span class="far fa-clock" ></span>  12:20 PM</div>
                                <div><span class="far fa-eye"></span>  6999 Views</div>
                                <div><span class="far fa-comments"></span>  555 Comment</div>
                          </div>
                     </td>
                 </tr>


                  <tr>
                     <td>
                         <div class="col-sm-3">
                           <a href="detail-blog.aspx">  <img src="/imgs/zerodata/ys3.jpg"/></a>
                         </div>
                     </td>
                     <td>
                            <div class="col-sm-7">
                                <div class="nametitle"><b>Leaning digital marketing...................</b></div>
                              <br />
                                <div><span class="fas fa-user-edit" ></span>   Kate Winlesss</div>
                                <div><span class="far fa-clock" ></span>  12:20 PM</div>
                                <div><span class="far fa-eye"></span>  6999 Views</div>
                                <div><span class="far fa-comments"></span>  555 Comment</div>
                          </div>
                     </td>
                 </tr>

                 <tr>
                     <td>
                         <div class="col-sm-3">
                           <a href="detail-blog.aspx">  <img src="/imgs/zerodata/ys3.jpg" /></a>
                         </div>
                     </td>
                     <td>
                          <div class="col-sm-7">
                                <div class="nametitle"><b>Leaning digital marketing...................</b></div>
                              <br />
                                <div><span class="fas fa-user-edit" ></span>   Kate Winlesss</div>
                                <div><span class="far fa-clock" ></span>  12:20 PM</div>
                                <div><span class="far fa-eye"></span>  6999 Views</div>
                                <div><span class="far fa-comments"></span>  555 Comment</div>
                          </div>
                     </td>
                 </tr>
                 <tr>
                     <td>
                         <div class="col-sm-3">
                           <a href="detail-blog.aspx">  <img src="/imgs/zerodata/ys3.jpg"/></a>
                         </div>
                     </td>
                     <td>
                            <div class="col-sm-7">
                                <div class="nametitle"><b>Leaning digital marketing...................</b></div>
                              <br />
                                <div><span class="fas fa-user-edit" ></span>   Kate Winlesss</div>
                                <div><span class="far fa-clock" ></span>  12:20 PM</div>
                                <div><span class="far fa-eye"></span>  6999 Views</div>
                                <div><span class="far fa-comments"></span>  555 Comment</div>
                          </div>
                     </td>
                 </tr>
              </tbody>
         </table>
    </div>
        </div>
</asp:Content>

