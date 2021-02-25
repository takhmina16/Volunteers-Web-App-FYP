<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage-Main/Main1MasterPage.Master" AutoEventWireup="true" CodeBehind="Contact_Us.aspx.cs" Inherits="FYP_Volunteering.Contact_Us" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <!--------------------------- General CSS File ------------------------------> 
    <link rel="stylesheet" href="CSS Styles - Main/contact_us.css" /> 
    <link rel="stylesheet" href="CSS Styles - Main/global.css" />

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="content">
    <fieldset>
        <legend title="Contact us"><b style="font-size: 15px;">Contact us</b></legend>
        <p> For support using the free volunteer features, and Basic & Member services 
            on VolunteerMatch.org, please visit our Help Center. 
            <br /> <br /> If you need to contact a VolunteerMatch Support Representative,
            just submit a request through the Help Center to reach us directly.</p>
        <table class="table-content" style="text-align: center;">
            <tr>
                <td style="text-align: center;">
                    <b>Name:</b>
                </td>
                <td>
                    <asp:TextBox style="text-align: center;"
                        ID="txtName" 
                        Width="200px" 
                        runat="server">
                    </asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator 
                        ForeColor="Red" 
                        ID="RequiredFieldValidator1" 
                        runat="server"
                        ControlToValidate="txtName" 
                        ErrorMessage="Name is required" 
                        Text="*">
                    </asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td>
                    <b>Email:</b>
                </td>
                <td>
                    <asp:TextBox 
                        ID="txtEmail" 
                        Width="200px" 
                        runat="server">
                    </asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator 
                        Display="Dynamic" 
                        ForeColor="Red" 
                        ID="RequiredFieldValidator2"
                        runat="server" 
                        ControlToValidate="txtEmail" 
                        ErrorMessage="Email is required"
                        Text="*">
                    </asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator 
                        Display="Dynamic" 
                        ForeColor="Red" 
                        ID="RegularExpressionValidator1"
                        runat="server" 
                        ErrorMessage="Invalid Email" 
                        ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"
                        ControlToValidate="txtEmail"
                        Text="*">
                    </asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td>
                    <b>Subject:</b>
                </td>
                <td>
                    <asp:TextBox 
                        ID="txtSubject" 
                        Width="200px" 
                        runat="server">
                    </asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator 
                        ForeColor="Red" 
                        ID="RequiredFieldValidator3" 
                        runat="server"
                        ControlToValidate="txtSubject" 
                        ErrorMessage="Subject is required" 
                        Text="*">
                    </asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td style="vertical-align: top">
                    <b>Comments:</b>
                </td>
                <td style="vertical-align: top">
                    <asp:TextBox 
                        ID="txtComments" 
                        Width="200px" 
                        TextMode="MultiLine" 
                        Rows="5" 
                        runat="server">
                    </asp:TextBox>
                </td>
                <td style="vertical-align: top">
                    <asp:RequiredFieldValidator 
                        ForeColor="Red" 
                        ID="RequiredFieldValidator4" 
                        runat="server"
                        ControlToValidate="txtComments" 
                        ErrorMessage="Comments is required" 
                        Text="*">
                    </asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td colspan="3">
                    <asp:ValidationSummary 
                        HeaderText="Please fix the following errors" 
                        ForeColor="Red"
                        ID="ValidationSummary1" 
                        runat="server" />
                </td>
            </tr>
            <tr>
                <td colspan="3">
                    <asp:Label 
                        ID="Label1" 
                        runat="server" 
                        Font-Bold="true">
                    </asp:Label>
                </td>
            </tr>
            <tr>
                <td colspan="3">
                    <asp:Button class="btn"
                        ID="Button1" 
                        runat="server" 
                        Text="Submit" 
                        OnClick="Button1_Click" />
                </td>
            </tr>
        </table>
    </fieldset>
                <p style="text-align: center;"> Looking for a place to volunteer?
            <br /> <br /> Use our search tool to find volunteer opportunities in your area: <a href="Volunteer_Opportunity/Main_Page.aspx" style="color:darkred;"><u>Check out our volunteering opportunitites</u></a>
            <br /> <br /> Unfortunately, we're unable to help connect individuals with specific volunteer opportunities over the phone.</p>
        <br /> 
        <p style="text-align: center;"><a href="HomePage.aspx">Student Volunteers, 2020</a></p>
</div>
    <br /> <br /> 
</asp:Content>
