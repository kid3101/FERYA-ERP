<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="add-new-blog-for-manager.aspx.cs" Inherits="Blog_add_new_blog_for_manager" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <link href="../css/Css-Blog/add-new-blog-for-manager-css.css" rel="stylesheet" />

    <div class="container-fluid">
    <div class="header-blog">
            <div class="col-sm-7" id ="divheader">
             <h1 class="h3 mb-4 text-gray-800">Manager > Add new</h1>
             </div>
         </div>
    <div class="body-add">
             <div class="col-sm-9" id="divcontent">
                <div class="container">
                    <form class="form-horizontal" role="form">
                        <div class="form-group">
                            <label for="title" class="col-sm-3 control-label">Title<i style="color:red">*</i></label>
                            <div class="col-sm-9">
                                <input type="text" id="title" placeholder="Title blog" class="form-control" autofocus>
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="birthDate" class="col-sm-3 control-label">Status</label>
                            <div class="col-sm-9">
                                <select class="slt-status">
                                    <option>Active</option>
                                    <option>Non-Active</option>
                                </select>
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="birthDate" class="col-sm-3 control-label">Avartar <i style="color:red">*</i></label>
                            <div class="col-sm-9">
                                     <div class="file-field">                                                               
                                        <a class="btn-floating peach-gradient" style="text-decoration:none;text-align: center;background-color: #fff;display: flex;cursor: pointer;justify-content: center;align-items: center;margin: 2px;height: 123px;width: 123px;border: 2px dotted #d0d0d0;">                                           
                                            <input type="file" name="file-2[]" id="file-2" class="inputfile inputfile-2" data-multiple-caption="{count} files selected" multiple="" style="opacity:0; position: absolute; height:140px;width:140px;"/>
                                            <label for="file-2"><span>Upload avatar</span></label>
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
                            <div class="col-sm-9">
                                <form class="md-form">
                                    <div class="file-field">
                                     <div class="box">
                                    <input type="file" name="file-3[]" id="file-3" class="inputfile inputfile-3" data-multiple-caption="{count} files selected" multiple="">
                                    <label for="file-3"><i class="fa fa-paperclip"></i><span>File attached...</span></label>
                                     </div>
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
                        <a href="list-blog-for-manager.aspx"><button type="submit" class="btn btn-info">Add New</button></a>
                    </div>
                            </form> <!-- /form -->
                </div>
            </div>
        </div>
        </div>
      <script>

        function myFunction() {
            var x = document.getElementById("myDIV");
            if (x.style.display === "none") {
                x.style.display = "block";
            } else {
                x.style.display = "none";
            }
        }

        'use strict';

        ; (function (document) {
            var inputs = document.querySelectorAll('.inputfile');
            Array.prototype.forEach.call(inputs, function (input) {
                var label = input.nextElementSibling,
                    labelVal = label.innerHTML;

                input.addEventListener('change', function (e) {
                    var fileName = '';
                    if (this.files && this.files.length > 1)
                        fileName = (this.getAttribute('data-multiple-caption') || '').replace('{count}', this.files.length);
                    else
                        fileName = e.target.value.split('\\').pop();

                    if (fileName)
                        label.querySelector('span').innerHTML = fileName;
                    else
                        label.innerHTML = labelVal;
                });

                // Firefox bug fix
                input.addEventListener('focus', function () { input.classList.add('has-focus'); });
                input.addEventListener('blur', function () { input.classList.remove('has-focus'); });
            });
        }(document, window, 0));

    </script>
</asp:Content>

