﻿<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage-Main/Admin/Admin_Master.Master" AutoEventWireup="true" CodeBehind="Admin_Logged.aspx.cs" Inherits="FYP_Volunteering.Admin_Login.Admin_Logged.Admin_Logged" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        <br />
    <div class="container" style="background-image: url('../../img/gifs/5.gif');">
        <div class="row">
            <div class="col-md-4 mx-auto">              
                <div class="card">
                    <div class="card-body">
                        <div class="row">
                            <div class="col">
                                <center>
                                    <img src="../../img/logout.png" width="150px;" alt="usericon" /> 
                                </center>
                            </div>
                        </div>
                        <br /> <br /> 
                        <div class="row">
                            <div class="col">
                                <center>
                                    <h4> Welcome back, Admin!</h4>
                                </center>
                            </div>
                        </div>
                        <br /> <br /> <center><p>
                             Good to see you again!  
                                      </p>
                            <a href="../../Main_About_Us.aspx">"Student Volunteers" organization</a>
                                      </center>
                        <br /> <br /> 
                        <div class="row">
                            <div class="col">
                                <center>
                                    <hr />  
                                </center>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col">
                                <br /> 
                                <div class="form-group"> 
                                    <a href="../../HomePage.aspx"><input class="btn btn-primary btn-lg btn-block" id="Button2" 
                                        type="button" value="Home Page" style="width: 100%;"/></a>
                                </div>
                            </div>
                        </div>

                    </div>
                </div>
            </div>
        </div>
    </div>
    <br /> <br /> 
</asp:Content>
