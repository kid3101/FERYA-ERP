<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="mail-box.aspx.cs" Inherits="Mailbox_Mailbox" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <link href="../css/Css-Mailbox/maibox-css.css" rel="stylesheet" />
    <link href="../css/Css-Mailbox/bower_components/font-awesome/css/font-awesome.min.css" rel="stylesheet" />
    <link href="../css/Css-Mailbox/plugins/iCheck/flat/blue.css" rel="stylesheet" />
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
                        <!-- /.col -->
                        <div class="col-md-9">
                            <div class="box box-primary">
                                <div class="box-header with-border">
                                    <h3 class="box-title">Inbox</h3>
                                    <div class="box-tools pull-right">
                                        <div class="has-feedback" style="display:flex;">
                                            <input type="text" class="form-control input-sm" placeholder="Search Mail"><button type="button" class="btn btn-primary"> <i class="fa fa fa-search"></i></button>
                                            
                                        </div>
                                    </div>
                                    <!-- /.box-tools -->
                                </div>
                                <!-- /.box-header -->
                                <div class="box-body no-padding">
                                    <div class="mailbox-controls">
                                        <!-- Check all button -->
                                        <button type="button" class="btn btn-default btn-sm checkbox-toggle">
                                            <i class="fa fa-square-o"></i>
                                        </button>
                                        <div class="btn-group">
                                            <button type="button" class="btn btn-default btn-sm"><i class="fa fa-trash-o"></i></button>
                                            <button type="button" class="btn btn-default btn-sm"><i class="fa fa-reply"></i></button>
                                            <button type="button" class="btn btn-default btn-sm"><i class="fa fa-share"></i></button>
                                        </div>
                                        <!-- /.btn-group -->
                                        <button type="button" class="btn btn-default btn-sm"><i class="fa fa-refresh"></i></button>
                                        <div class="pull-right">
                                            1-50/200
                                            <div class="btn-group">
                                                <button type="button" class="btn btn-default btn-sm"><i class="fa fa-chevron-left"></i></button>
                                                <button type="button" class="btn btn-default btn-sm"><i class="fa fa-chevron-right"></i></button>
                                            </div>
                                            <!-- /.btn-group -->
                                        </div>
                                        <!-- /.pull-right -->
                                    </div>
                                    <div class="table-responsive mailbox-messages">
                                        <table class="table table-hover table-striped">
                                            <tbody>
                                                <tr>
                                                    <td><input type="checkbox"></td>
                                                    <td class="mailbox-star"><a href="#"><i class="fa fa-star text-yellow"></i></a></td>
                                                    <td class="mailbox-name"><a href="read-mail.aspx">Alexander Pierce</a></td>
                                                    <td class="mailbox-subject">
                                                        Trying to find a solution to this problem...
                                                    </td>
                                                    <td class="mailbox-attachment"></td>
                                                    <td class="mailbox-date">5 mins ago</td>
                                                </tr>
                                                <tr>
                                                    <td><input type="checkbox"></td>
                                                    <td class="mailbox-star"><a href="#"><i class="fa fa-star-o text-yellow"></i></a></td>
                                                    <td class="mailbox-name"><a href="read-mail.aspx">Alexander Pierce</a></td>
                                                    <td class="mailbox-subject">
                                                        Trying to find a solution to this problem...
                                                    </td>
                                                    <td class="mailbox-attachment"><i class="fa fa-paperclip"></i></td>
                                                    <td class="mailbox-date">28 mins ago</td>
                                                </tr>
                                                <tr>
                                                    <td><input type="checkbox"></td>
                                                    <td class="mailbox-star"><a href="#"><i class="fa fa-star-o text-yellow"></i></a></td>
                                                    <td class="mailbox-name"><a href="read-mail.aspx">Alexander Pierce</a></td>
                                                    <td class="mailbox-subject">
                                                        Trying to find a solution to this problem...
                                                    </td>
                                                    <td class="mailbox-attachment"><i class="fa fa-paperclip"></i></td>
                                                    <td class="mailbox-date">11 hours ago</td>
                                                </tr>
                                                <tr>
                                                    <td><input type="checkbox"></td>
                                                    <td class="mailbox-star"><a href="#"><i class="fa fa-star text-yellow"></i></a></td>
                                                    <td class="mailbox-name"><a href="read-mail.aspx">Alexander Pierce</a></td>
                                                    <td class="mailbox-subject">
                                                        Trying to find a solution to this problem...
                                                    </td>
                                                    <td class="mailbox-attachment"></td>
                                                    <td class="mailbox-date">15 hours ago</td>
                                                </tr>
                                                <tr>
                                                    <td><input type="checkbox"></td>
                                                    <td class="mailbox-star"><a href="#"><i class="fa fa-star text-yellow"></i></a></td>
                                                    <td class="mailbox-name"><a href="read-mail.aspx">Alexander Pierce</a></td>
                                                    <td class="mailbox-subject">
                                                        Trying to find a solution to this problem...
                                                    </td>
                                                    <td class="mailbox-attachment"><i class="fa fa-paperclip"></i></td>
                                                    <td class="mailbox-date">Yesterday</td>
                                                </tr>
                                                <tr>
                                                    <td><input type="checkbox"></td>
                                                    <td class="mailbox-star"><a href="#"><i class="fa fa-star-o text-yellow"></i></a></td>
                                                    <td class="mailbox-name"><a href="read-mail.aspx">Alexander Pierce</a></td>
                                                    <td class="mailbox-subject">
                                                        Trying to find a solution to this problem...
                                                    </td>
                                                    <td class="mailbox-attachment"><i class="fa fa-paperclip"></i></td>
                                                    <td class="mailbox-date">2 days ago</td>
                                                </tr>
                                                <tr>
                                                    <td><input type="checkbox"></td>
                                                    <td class="mailbox-star"><a href="#"><i class="fa fa-star-o text-yellow"></i></a></td>
                                                    <td class="mailbox-name"><a href="read-mail.aspx">Alexander Pierce</a></td>
                                                    <td class="mailbox-subject">
                                                        Trying to find a solution to this problem...
                                                    </td>
                                                    <td class="mailbox-attachment"><i class="fa fa-paperclip"></i></td>
                                                    <td class="mailbox-date">2 days ago</td>
                                                </tr>
                                                <tr>
                                                    <td><input type="checkbox"></td>
                                                    <td class="mailbox-star"><a href="#"><i class="fa fa-star text-yellow"></i></a></td>
                                                    <td class="mailbox-name"><a href="read-mail.aspx">Alexander Pierce</a></td>
                                                    <td class="mailbox-subject">
                                                        Trying to find a solution to this problem...
                                                    </td>
                                                    <td class="mailbox-attachment"></td>
                                                    <td class="mailbox-date">2 days ago</td>
                                                </tr>
                                                <tr>
                                                    <td><input type="checkbox"></td>
                                                    <td class="mailbox-star"><a href="#"><i class="fa fa-star text-yellow"></i></a></td>
                                                    <td class="mailbox-name"><a href="read-mail.aspx">Alexander Pierce</a></td>
                                                    <td class="mailbox-subject">
                                                        Trying to find a solution to this problem...
                                                    </td>
                                                    <td class="mailbox-attachment"></td>
                                                    <td class="mailbox-date">2 days ago</td>
                                                </tr>
                                                <tr>
                                                    <td><input type="checkbox"></td>
                                                    <td class="mailbox-star"><a href="#"><i class="fa fa-star-o text-yellow"></i></a></td>
                                                    <td class="mailbox-name"><a href="read-mail.aspx">Alexander Pierce</a></td>
                                                    <td class="mailbox-subject">
                                                        Trying to find a solution to this problem...
                                                    </td>
                                                    <td class="mailbox-attachment"></td>
                                                    <td class="mailbox-date">2 days ago</td>
                                                </tr>
                                                <tr>
                                                    <td><input type="checkbox"></td>
                                                    <td class="mailbox-star"><a href="#"><i class="fa fa-star-o text-yellow"></i></a></td>
                                                    <td class="mailbox-name"><a href="read-mail.aspx">Alexander Pierce</a></td>
                                                    <td class="mailbox-subject">
                                                        Trying to find a solution to this problem...
                                                    </td>
                                                    <td class="mailbox-attachment"><i class="fa fa-paperclip"></i></td>
                                                    <td class="mailbox-date">4 days ago</td>
                                                </tr>
                                                <tr>
                                                    <td><input type="checkbox"></td>
                                                    <td class="mailbox-star"><a href="#"><i class="fa fa-star text-yellow"></i></a></td>
                                                    <td class="mailbox-name"><a href="read-mail.aspx">Alexander Pierce</a></td>
                                                    <td class="mailbox-subject">
                                                        Trying to find a solution to this problem...
                                                    </td>
                                                    <td class="mailbox-attachment"></td>
                                                    <td class="mailbox-date">12 days ago</td>
                                                </tr>
                                                <tr>
                                                    <td><input type="checkbox"></td>
                                                    <td class="mailbox-star"><a href="#"><i class="fa fa-star-o text-yellow"></i></a></td>
                                                    <td class="mailbox-name"><a href="read-mail.aspx">Alexander Pierce</a></td>
                                                    <td class="mailbox-subject">
                                                        Trying to find a solution to this problem...
                                                    </td>
                                                    <td class="mailbox-attachment"><i class="fa fa-paperclip"></i></td>
                                                    <td class="mailbox-date">12 days ago</td>
                                                </tr>
                                                <tr>
                                                    <td><input type="checkbox"></td>
                                                    <td class="mailbox-star"><a href="#"><i class="fa fa-star text-yellow"></i></a></td>
                                                    <td class="mailbox-name"><a href="read-mail.aspx">Alexander Pierce</a></td>
                                                    <td class="mailbox-subject">
                                                        Trying to find a solution to this problem...
                                                    </td>
                                                    <td class="mailbox-attachment"><i class="fa fa-paperclip"></i></td>
                                                    <td class="mailbox-date">14 days ago</td>
                                                </tr>
                                                <tr>
                                                    <td><input type="checkbox"></td>
                                                    <td class="mailbox-star"><a href="#"><i class="fa fa-star text-yellow"></i></a></td>
                                                    <td class="mailbox-name"><a href="read-mail.aspx">Alexander Pierce</a></td>
                                                    <td class="mailbox-subject">
                                                        Trying to find a solution to this problem...
                                                    </td>
                                                    <td class="mailbox-attachment"><i class="fa fa-paperclip"></i></td>
                                                    <td class="mailbox-date">15 days ago</td>
                                                </tr>
                                            </tbody>
                                        </table>
                                        <!-- /.table -->
                                    </div>
                                    <!-- /.mail-box-messages -->
                                </div>
                                <!-- /.box-body -->
                                <div class="box-footer no-padding">
                                    <div class="mailbox-controls">
                                        <!-- Check all button -->
                                        <button type="button" class="btn btn-default btn-sm checkbox-toggle">
                                            <i class="fa fa-square-o"></i>
                                        </button>
                                        <div class="btn-group">
                                            <button type="button" class="btn btn-default btn-sm"><i class="fa fa-trash-o"></i></button>
                                            <button type="button" class="btn btn-default btn-sm"><i class="fa fa-reply"></i></button>
                                            <button type="button" class="btn btn-default btn-sm"><i class="fa fa-share"></i></button>
                                        </div>
                                        <!-- /.btn-group -->
                                        <button type="button" class="btn btn-default btn-sm"><i class="fa fa-refresh"></i></button>
                                        <div class="pull-right">
                                            1-50/200
                                            <div class="btn-group">
                                                <button type="button" class="btn btn-default btn-sm"><i class="fa fa-chevron-left"></i></button>
                                                <button type="button" class="btn btn-default btn-sm"><i class="fa fa-chevron-right"></i></button>
                                            </div>
                                            <!-- /.btn-group -->
                                        </div>
                                        <!-- /.pull-right -->
                                    </div>
                                </div>
                            </div>
                            <!-- /. box -->
                        </div>
                        <!-- /.col -->
                    </div>
                    <!-- /.row -->
                </section>
                <!-- /.content -->
            </div>
    <!-- Bootstrap 3.3.7 -->
    <script src="../css/Css-Mailbox/bower_components/bootstrap/dist/js/bootstrap.min.js"></script>
    <!-- Slimscroll -->
    <script src="../css/Css-Mailbox/bower_components/jquery-slimscroll/jquery.slimscroll.js"></script>
    <!-- FastClick -->
    <script src="../css/Css-Mailbox/bower_components/fastclick/lib/fastclick.js"></script>
    <!-- AdminLTE App -->
    <script src="../css/Css-Mailbox/dist/js/adminlte.min.js"></script>
    <!-- iCheck -->
    <script src="../css/Css-Mailbox/plugins/iCheck/icheck.min.js"></script>
     <script>
        $(function () {
            //Enable iCheck plugin for checkboxes
            //iCheck for checkbox and radio inputs
            $('.mailbox-messages input[type="checkbox"]').iCheck({
                checkboxClass: 'icheckbox_flat-blue',
                radioClass: 'iradio_flat-blue'
            });

            //Enable check and uncheck all functionality
            $(".checkbox-toggle").click(function () {
                var clicks = $(this).data('clicks');
                if (clicks) {
                    //Uncheck all checkboxes
                    $(".mailbox-messages input[type='checkbox']").iCheck("uncheck");
                    $(".fa", this).removeClass("fa-check-square-o").addClass('fa-square-o');
                } else {
                    //Check all checkboxes
                    $(".mailbox-messages input[type='checkbox']").iCheck("check");
                    $(".fa", this).removeClass("fa-square-o").addClass('fa-check-square-o');
                }
                $(this).data("clicks", !clicks);
            });

            //Handle starring for glyphicon and font awesome
            $(".mailbox-star").click(function (e) {
                e.preventDefault();
                //detect type
                var $this = $(this).find("a > i");
                var glyph = $this.hasClass("glyphicon");
                var fa = $this.hasClass("fa");

                //Switch states
                if (glyph) {
                    $this.toggleClass("glyphicon-star");
                    $this.toggleClass("glyphicon-star-empty");
                }

                if (fa) {
                    $this.toggleClass("fa-star");
                    $this.toggleClass("fa-star-o");
                }
            });
        });</script>
</asp:Content>

