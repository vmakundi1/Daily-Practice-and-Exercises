<%@ Page Title="Job Application" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="UserRegistrry.aspx.cs" Inherits="PFWebApp.PFForms.UserRegistrry" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
     <h3>User Registration</h3>
    <div class="row">
        <div class="col-sm-offset-1 col-sm-10">
            <div class="alert alert-info">
                <blockquote style="font-style:italic">
                    Please fill in the form below and click submit. After submitting the form, you will receive an email with a link to confirm your registration. By clicking on that link, you will complete the registration process
                </blockquote>
            </div>
        </div>
    </div>
    <br />
   <%-- <validation controls>--%>

     <div class="row">
        <div class ="alert alert-danger">
     <asp:RequiredFieldValidator ID="RequiredFirstName" runat="server" 
        ErrorMessage="First name is required" 
         ForeColor="#990000"  SetFocusOnError="true" Display="None"
         ControlToValidate="FirstName">
    </asp:RequiredFieldValidator>

    <asp:RequiredFieldValidator ID="RequiredLastName" runat="server" 
        ErrorMessage="Last name is required" 
         ForeColor="#990000"  SetFocusOnError="true" Display="None"
         ControlToValidate="LastName">
    </asp:RequiredFieldValidator>

    <asp:RequiredFieldValidator ID="RequiredUserName" runat="server" 
        ErrorMessage="UserName is required" 
         ForeColor="#990000"  SetFocusOnError="true" Display="None"
         ControlToValidate="UserName">
    </asp:RequiredFieldValidator>

    <asp:RequiredFieldValidator ID="RequiredEmailAddress" runat="server" 
        ErrorMessage="Email is required" Display="None"
         ForeColor="#990000"  SetFocusOnError="true" 
         ControlToValidate="EmailAddress">
    </asp:RequiredFieldValidator>

    <asp:RegularExpressionValidator ID="RegExEmailAddress" runat="server" 
        ErrorMessage="Invalid email" Display="None"
         ForeColor="#990000"  SetFocusOnError="true" 
         ControlToValidate="EmailAddress"
         ValidationExpression="^\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*$">
    </asp:RegularExpressionValidator>

     <asp:RequiredFieldValidator ID="RequiredPassword" runat="server" 
        ErrorMessage="Password is required" Display="None"
         ForeColor="#990000"  SetFocusOnError="true" 
         ControlToValidate="Password">
    </asp:RequiredFieldValidator>

    <asp:RegularExpressionValidator ID="RegExPassword" runat="server" 
        ErrorMessage="Password must be between 4 to 8 characters" Display="None"
         ForeColor="#990000"  SetFocusOnError="true" 
         ControlToValidate="Password"
         ValidationExpression="^(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{4,8}$">
    </asp:RegularExpressionValidator>
<%--vALIDATION SUMMARY CONTROL TO DISPLAY VALIDATION ERRORS--%>
    <asp:ValidationSummary ID="ValidationSummary1" runat="server" />
        </div>

     </div>

    <%--User form below--%>
    <div class="row">
        <div class="col-sm-6">
            <fieldset class="form-horizontal">
                <legend>User Registration</legend> 
                <asp:Label ID="Label1" runat="server" Text="First Name"
                     AssociatedControlID="FirstName"></asp:Label>
                <asp:TextBox ID="FirstName" runat="server"></asp:TextBox>

                <asp:Label ID="Label6" runat="server" Text="Last Name"
                     AssociatedControlID="LastName"></asp:Label>
                <asp:TextBox ID="LastName" runat="server"></asp:TextBox>

                <asp:Label ID="Label7" runat="server" Text="User Name"
                     AssociatedControlID="UserName"></asp:Label>
                <asp:TextBox ID="UserName" runat="server"></asp:TextBox>

                <asp:Label ID="Label2" runat="server" Text="Email Address"
                     AssociatedControlID="EmailAddress"></asp:Label>
                <asp:TextBox ID="EmailAddress" runat="server"></asp:TextBox>

                <asp:Label ID="Label3" runat="server" Text="Password"
                     AssociatedControlID="Password"></asp:Label>
                <asp:TextBox ID="Password" runat="server"></asp:TextBox>
                </fieldset>

               <p>You must agree to the terms.
               <br />
               <asp:CheckBox ID="Terms" runat="server" Text="I agree to the terms of this site" />
               </p>
         
        </div>
        <div class="col-sm-6">
            <div class="col-md-offset-2">
                <p>
                    <asp:Button ID="Submit" runat="server" Text="Submit Registration" OnClick="Submit_Click" />&nbsp;&nbsp;

                </p>
                <asp:Label ID="Message" runat="server"></asp:Label><br /><br />
                <asp:GridView ID="EntryList" runat="server">

                </asp:GridView>

            </div>
        </div>
    </div>
    <script src="../Scripts/bootwrap-freecode.js"></script>
</asp:Content>
