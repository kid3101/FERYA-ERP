<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="compose-mail.aspx.cs" Inherits="Mailbox_ComposeMail" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

     <link href="../css/Setting/AccessRight.css" rel="stylesheet" />
    <link href="../dist/fastselect.css" rel="stylesheet" />
    <script src="../dist/fastselect.js"></script>
    <link href="../dist/fastselect.min.css" rel="stylesheet" />
    <script src="../dist/fastselect.min.js"></script>
    <script src="../dist/fastselect.standalone.js"></script>
    <script src="../dist/fastselect.standalone.min.js"></script>

    <link href="../css/Css-Mailbox/maibox-css.css" rel="stylesheet" />
    <link href="../css/Css-Mailbox/bower_components/font-awesome/css/font-awesome.min.css" rel="stylesheet" />
        <%--<link href="../css/employee.css/add-point-employee.css" rel="stylesheet" />--%>
     <div class="content-wrapper">
                <!-- Content Header (Page header) -->
                <section class="content-header">
                    <h1>
                        Mailbox
                        <small>13 new messages</small>
                    </h1>
                </section>
                <!-- Main content -->
                <section class="content">
                    <div class="row">
                        <div class="col-md-3">
                            <a href="compose-mail.aspx" class="btn btn-primary btn-block margin-bottom">Compose</a>
                            <div class="box box-solid">
                                <div class="box-body no-padding">
                                     <table class="table table-condensed">
                                          <tbody>
                                                <tr><td> <a href="mail-box.aspx"><i class="fa fa-inbox"></i> Inbox<span class="label label-primary pull-right">12</span></a></td></tr>
                                              <tr> <td> <a href="sent-mail.aspx" style="height:40px;width:365px"><i class="fa fa-envelope-o"></i> Sent</a></td></tr>
                                               <tr> <td><a href="important-mail.aspx"><i class="fa fa-file-text-o"></i> Important</a></td></tr>
                                               <tr><td><a href="trash-mail.aspx"><i class="fa fa-trash-o"></i> Trash</a></td></tr>
                                         </tbody>
                                         </table>
                                </div>
                                <!-- /.box-body -->
                            </div>
                        </div>
                        <%-- Content comepose mail --%>
                          <div class="col-md-9">
                            <div class="box box-primary">
                                <div class="box-header with-border">
                                    <h3 class="box-title">Compose New Mail</h3>
                                </div>
                                <!-- /.box-header -->
                                <div class="box-body">
                                    <div class="form-group">
                                         <select style="height:8px;" class="multipleSelect" multiple name="language">
                                                <option value="Bangladesh">Từ Nguyên</option>
                                                <option selected value="Barbados">Trang</option>
                                                <option selected value="Belarus">Ý</option>
                                                <option value="Belgium">Đinh</option>
                                          </select>
                                    </div>
                                    <div class="form-group">
                                        <input class="form-control" placeholder="Subject:">
                                    </div>
                                    <div class="form-group">
                                        <textarea id="compose-textarea" class="form-control" style="height: 300px" placeholder="Write something ..."></textarea>
                                    </div>
                                    <div class="form-group">
                                        <div class="btn btn-default btn-file">                                          
                                            <input type="file" name="file-3[]" id="file-3" class="inputfile inputfile-3" data-multiple-caption="{count} files selected" multiple="">
                                            <label for="file-3"><i class="fa fa-paperclip"></i><span>File attached...</span></label>                                   
                                        </div>
                                        <p class="help-block">Max. 32MB</p>
                                    </div>
                                </div>
                                <!-- /.box-body -->
                                <div class="box-footer">
                                    <div class="pull-right">
                                        <button type="button" class="btn btn-default"><i class="fa fa-pencil"></i> Draft</button>
                                        <button type="submit" class="btn btn-primary"><a href="mail-box.aspx" style="background:none;color:white;"><i class="fa fa-envelope-o">  Send</i></a></button>
                                    </div>
                                    <button type="reset" class="btn btn-default"><i class="fa fa-times"></i> Discard</button>
                                </div>
                                <!-- /.box-footer -->
                            </div>
                            <!-- /. box -->
                        </div>
                        <!-- /.col -->
                    </div>
                    <!-- /.row -->
                </section>
                <!-- /.content -->
            </div> 
          <script>
 $('.multipleSelect').fastselect();
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

