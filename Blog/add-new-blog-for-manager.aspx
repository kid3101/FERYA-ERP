<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="add-new-blog-for-manager.aspx.cs" Inherits="Blog_add_new_blog_for_manager" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <link href="../css/Css-Blog/add-new-blog-css.css" rel="stylesheet" />
    <div class="header-blog">
            <div class="col-sm-7">
                  <a class="title-blog" href="manager-blog.aspx"><b>Manager</b></a>
              </div>
         </div>
    <div class="body-add">
             <div class="col-sm-9" style="margin-top:20px;">
                <div class="container">
                    <form class="form-horizontal" role="form">
                        <div class="form-group">
                            <label for="title" class="col-sm-3 control-label">Title<i style="color:red">*</i></label>
                            <div class="col-sm-9">
                                <input type="text" id="title" placeholder="Title blog" class="form-control" autofocus style="border-radius:10px;">
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="birthDate" class="col-sm-3 control-label">Status</label>
                            <div class="col-sm-9">
                                <select style="width:100%;height:35px;border-radius:10px;">
                                    <option>Active</option>
                                    <option>Non-Active</option>
                                </select>
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="birthDate" class="col-sm-3 control-label">Avartar <i style="color:red">*</i></label>
                            <div class="col-sm-9">
                                    <div class="file-field">
                                        <a style="text-decoration:none;text-align: center;background-color: #fff;display: flex;cursor: pointer;justify-content: center;align-items: center;margin: 2px;height: 123px;width: 123px;border: 2px dotted #d0d0d0;">
                                            <i class="fa fa-cloud-upload" style="float:left;"></i>
                                            <span style="margin-left:10px;">Upload avatar</span>
                                            <input type="file" style="opacity: 0; position: absolute;" />
                                        </a>
                                    </div>
                            </div>
                        </div>

                        <div class="form-group">
                            <label for="birthDate" class="col-sm-3 control-label">Content</label>
                            <div class="col-sm-9">
                                <textarea class="tinymce" placeholder="Write something ..." style="border-radius:10px;"></textarea>
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="birthDate" class="col-sm-3 control-label">Attached files</i></label>
                            <div class="col-sm-9">
                                <form class="md-form">
                                    <div class="file-field">
                                        <a class="btn-floating peach-gradient mt-0 float-left">
                                            <i class="fa fa-paperclip" aria-hidden="true"></i>
                                            <input type="file">
                                        </a>
                                    </div>
                                    </form>
                            </div>
                        </div>
                        <br />
                        <div class="form-group">
                            <div class="col-sm-9 col-sm-offset-3">
                                <span class="help-block"><i style="color:red">*</i> Required fields</span>
                            </div>
                        </div>
                        <div class="addnewblog">
                        <a href="list-blog-for-manager.aspx"><button type="submit" class="btn btn-primary btn-block" style="width: 300px;margin-left:278px;margin-bottom:10px;border-radius:15px;">ADD NEW</button></a>
                    </div>
                            </form> <!-- /form -->
                </div>
            </div>
        </div>
</asp:Content>

