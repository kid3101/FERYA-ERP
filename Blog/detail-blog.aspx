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
                <div><b style="color:red">DEGITAL MARKETING</b></div>
                <br />
                <div>
                    Amy normally hated Monday mornings, but this year was different. Kamal was in her art class and she liked Kamal. She was waiting outside the classroom when her friend Tara arrived.

                    “Hi Amy! Your mum sent me a text. You forgot your inhaler. Why don’t you turn your phone on?” Amy didn’t like technology. She never sent text messages and she hated Facebook too.

                    “Did Kamal ask you to the disco?” Tara was Amy’s best friend, and she wanted to know everything that was happening in Amy’s life. “I don’t think he likes me,” said Amy. “And I never see him alone. He’s always with Grant.” Amy and Tara didn’t like Grant.

                    “Do you know about their art project?” asked Amy. “It’s about graffiti, I think,” said Tara. “They’re working on it at the old house behind the factory.” “But that building is dangerous,” said Amy. “Aah, are you worried he’s going to get hurt?" Tara teased. “Shut up, Tara! Hey look, here they come!”
                </div>             
                <div class="comment" >
                    <a>1 Comment</a>
                    <a >1 View </a>
                    <a >Kate Winlesss</a>
                    <span>Created: 10:00, Today</span>
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
                    <textarea class="form-control" id="exampleFormControlTextarea3" rows="7" placeholder="Write comment ..."></textarea>
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

