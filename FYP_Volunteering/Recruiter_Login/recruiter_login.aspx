<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage-Main/Users-Login.Master" AutoEventWireup="true" CodeBehind="recruiter_login.aspx.cs" Inherits="FYP_Volunteering.Recruiter_Login.recruiter_login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <br /> <br /> <br /> 
    <div class="container" style="background-image: url('../img/gifs/dots.gif');">
        <div class="row">
            <div class="col-md-6 mx-auto">
                
                <div class="card">
                    <div class="card-body">

                        <div class="row">
                            <div class="col">
                                <center>
                                    <img src="../img/user/generaluser.png" width="150px;" alt="usericon" /> 
                                </center>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col">
                                <center>
                                    <h3> Recruiter Login</h3>
                                </center>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col">
                                <center>
                                    <hr />  
                                </center>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col">
                                
                                <div class="form-group"> 
                                    <asp:TextBox CssClass="form-control" ID="TextBox1" 
                                        runat="server" placeholder="Enter Email"></asp:TextBox>
                                </div>   
                                <div class="form-group"> 
                                    <asp:TextBox CssClass="form-control" ID="TextBox2" runat="server"
                                        placeholder="Enter Password" TextMode="Password"></asp:TextBox>
                                </div>
                                <br /> 
                                <div class="form-group"> 

                                    <asp:Button ID="Button1" runat="server" class="btn btn-success btn-lg btn-block" style="width: 100%;" Text="Login" OnClick="Button1_Click" />
                                </div>
                                <div class="form-group"> 
                                    <a href="recruiter_signup.aspx"><input class="btn btn-primary btn-lg btn-block" id="Button2" 
                                        type="button" value="Sign Up" style="width: 100%;"/></a>
                                </div>
                            </div>
                        </div>

                    </div>
                </div>

                <a href="../HomePage.aspx"><< Back to Home</a><br><br>
            </div>
        </div>
    </div>
    <br /> <br /> 
</asp:Content>
