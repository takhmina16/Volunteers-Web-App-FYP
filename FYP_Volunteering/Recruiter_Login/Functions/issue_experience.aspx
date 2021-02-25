<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage-Main/Recruiter/Recruiter.Master" AutoEventWireup="true" CodeBehind="issue_experience.aspx.cs" Inherits="FYP_Volunteering.Recruiter_Login.Functions.issue_experience" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script type="text/javascript">
    $(document).ready(function () {
        $(".table").prepend($("<thead></thead>").append($(this).find("tr:first"))).dataTable();
    });
</script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <br /> 
    <div class="container-fluid">
 <div class="row">
 <div class="col-md-5">
 <div class="card">
 <div class="card-body">
 <div class="row">
 <div class="col">
 <center>
 <h4>Volunteers Issuing</h4>
 </center>
 </div>
 </div>
 <div class="row">
 <div class="col">
 <center>
 <img width="100px" src="../../img/banner1.png" />
 </center>
 </div>
 </div>
 <div class="row">
 <div class="col">
 <hr>
 </div>
 </div>
 <div class="row">
 <div class="col-md-6">
 <label>Volunteer ID</label>
 <div class="form-group">
 <asp:TextBox CssClass="form-control" ID="TextBox2" runat="server" placeholder="Volunteer ID"></asp:TextBox>
 </div>
 </div>
 <div class="col-md-6">
 <label>Experience ID</label>
 <div class="input-group">
 <asp:TextBox class="form-control" ID="TextBox1" runat="server" placeholder="Experience ID"></asp:TextBox>
     <asp:Button ID="Button1" class="btn btn-primary" runat="server" Text="Go" OnClick="Button1_Click" />
 </div>
 </div>
 </div>
 <div class="row">
 <div class="col-md-6">
 <label>Volunteer Name</label>
 <div class="form-group">
 <asp:TextBox CssClass="form-control" ID="TextBox3" runat="server" placeholder="Volunteer Name" ReadOnly="True"></asp:TextBox>
 </div>
 </div>
 <div class="col-md-6">
 <label>Experience Name</label>
 <div class="form-group">
 <asp:TextBox CssClass="form-control" ID="TextBox4" runat="server" placeholder="Experience Name" ReadOnly="True"></asp:TextBox>
 </div>
 </div>
 </div>
 <div class="row">
 <div class="col-md-6">
 <label>Issue Date</label>
 <div class="form-group">
 <asp:TextBox CssClass="form-control" ID="TextBox5" runat="server" placeholder="Start Date" TextMode="Date"></asp:TextBox>
 </div>
 </div>
 <div class="col-md-6">
 <label>Return Date</label>
 <div class="form-group">
 <asp:TextBox CssClass="form-control" ID="TextBox6" runat="server" placeholder="Return Date" TextMode="Date"></asp:TextBox>
 </div>
 </div>
 </div>
     <br /> 
 <div class="row">
 <div class="col-6">
     <asp:Button ID="Button2" runat="server" class="btn btn-lg btn-block btn-success"  Text="Issue" OnClick="Button2_Click" />
 </div>
 <div class="col-6">
     <asp:Button ID="Button4" runat="server" class="btn btn-lg btn-block btn-warning" Text="Return" OnClick="Button4_Click" />
 </div>
 </div>
 </div>
 </div>
 <a href="Add_Experience.aspx"><< Back to Post Experience
 </a>
 <br>
 <br>
 </div>
 <div class="col-md-7">
 <div class="card">
 <div class="card-body">
 <div class="row">
 <div class="col">
 <center>
 <h4>Issued Experience List</h4>
 </center>
 </div>
 </div>
 <div class="row">
 <div class="col">
 <hr>
 </div>
 </div>
 <div class="row">
     <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:evolunteerDBConnectionString2 %>" SelectCommand="SELECT * FROM [experience_issue_tbl]"></asp:SqlDataSource>
 <div class="col">
     <asp:GridView ID="GridView1" class="table table-striped table-bordered" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1">
         <Columns>
             <asp:BoundField DataField="user_id" HeaderText="User ID" SortExpression="user_id" />
             <asp:BoundField DataField="username" HeaderText="User Name" SortExpression="username" />
             <asp:BoundField DataField="experience_id" HeaderText="Experience ID" SortExpression="experience_id" />
             <asp:BoundField DataField="experience_name" HeaderText="Experience Name" SortExpression="experience_name" />
             <asp:BoundField DataField="issue_date" HeaderText="Issue Date" SortExpression="issue_date" />
             <asp:BoundField DataField="due_date" HeaderText="Return Date" SortExpression="due_date" />
         </Columns>
     </asp:GridView>
 </div>
 </div>
 </div>
 </div>
 </div>
 </div>
 </div>
    <br /> <br /> <br /> 
</asp:Content>
