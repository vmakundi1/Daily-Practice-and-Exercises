<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="LibraryForMovie.aspx.cs" Inherits="VMovie.MovieLibrary.LibraryForMovie" %>

<asp:content id="Content1" contentplaceholderid="MainContent" runat="server">
     <h3>Movie Library</h3>
    <div class="row">
        <div class="col-sm-offset-1 col-sm-10">
            <div class="alert alert-info">
                <blockquote style="font-style:italic">
                    Fill out the form below to add information on the movie for your movie library
                </blockquote>
                <p>
                   Fill out the form below to add information on the movie for your movie library
                </p>
            </div>
        </div>
    </div>
    <br />
      <%-- Validation Controls--%>

    <div class="row">
        <div class ="alert alert-danger">
    <asp:RequiredFieldValidator ID="RequiredTitle" runat="server" 
        ErrorMessage="Title is required" 
         ForeColor="#990000"  SetFocusOnError="true" Display="None"
         ControlToValidate="Title">
    </asp:RequiredFieldValidator>

     <asp:RangeValidator ID="RangeYear" runat="server" 
        ErrorMessage="Street address2 is limited to a number between 0 and 100" Display="None"
         ForeColor="#990000"  SetFocusOnError="true" 
         ControlToValidate="Year" MinimumValue="1900" MaximumValue="2019" Type="Integer">
    </asp:RangeValidator>

    <asp:RequiredFieldValidator ID="RequiredRating" runat="server" 
        ErrorMessage="You must indicate the type of rating for which the movie is stored" Display="None"
         ForeColor="#990000"  SetFocusOnError="true" 
         ControlToValidate="Rating">
    </asp:RequiredFieldValidator>


    <%-- Validation summary control to display the validation errors --%>
    <asp:ValidationSummary ID="ValidationSummary1" runat="server" />
      </div>

    </div>
    <%--create a 2 column form--%>
    <div class="row">
        <div class="col-sm-6">
            <fieldset class="form-horizontal">
                <legend>Movie Library Form</legend> 

                <asp:Label ID="Label1" runat="server" Text="Title"
                     AssociatedControlID="Title"></asp:Label>
                <asp:TextBox ID="Title" runat="server"></asp:TextBox>

                <asp:Label ID="Label2" runat="server" Text="Year"
                     AssociatedControlID="Year"></asp:Label>
                <asp:TextBox ID="Year" runat="server"></asp:TextBox>

                <asp:Label ID="Label4" runat="server" Text="Media"
                     AssociatedControlID="Media"></asp:Label>
                <asp:RadioButtonList ID="Media" runat="server"
                     RepeatDirection="Vertical" RepeatLayout="Flow">
                    <asp:ListItem>DVD&nbsp;&nbsp;</asp:ListItem>
                    <asp:ListItem>VHS</asp:ListItem>
                    <asp:ListItem>File</asp:ListItem>
                </asp:RadioButtonList>
           
                <asp:Label ID="Label5" runat="server" Text="Rating"
                     AssociatedControlID="Rating"></asp:Label>
                <asp:CheckBoxList ID="Rating" runat="server"
                     RepeatLayout="Flow" RepeatDirection="Vertical">
                    <asp:ListItem>General</asp:ListItem>
                    <asp:ListItem>ParentalGuidance</asp:ListItem>
                    <asp:ListItem>14A</asp:ListItem>
                    <asp:ListItem>Restricted</asp:ListItem>
                </asp:CheckBoxList>

               <asp:Label ID="Label3" runat="server" Text="Review"
                     AssociatedControlID="Review"></asp:Label>
               <asp:DropDownList ID="Review" runat="server"
                   RepeatDirection="Vertical" RepeatLayout="Flow">
                   <asp:ListItem>1 Star</asp:ListItem>
                   <asp:ListItem>2 Star</asp:ListItem>
                   <asp:ListItem>3 Star</asp:ListItem>
                   <asp:ListItem>4 Star</asp:ListItem>
                   <asp:ListItem>5 Star</asp:ListItem>
               </asp:DropDownList>

                <asp:Label ID="Label6" runat="server" Text="ISBN"
                     AssociatedControlID="ISBN"></asp:Label>
                <asp:TextBox ID="ISBN" runat="server"></asp:TextBox>

            </fieldset>
        </div>
        <div class="col-sm-6">
            <div class="col-md-offset-2">
                <p>
                   <asp:Button ID="Submit" runat="server" Text="Add to Library" OnClick="Submit_Click" />&nbsp;&nbsp;
                </p>
                <asp:Label ID="Message" runat="server" ></asp:Label><br /><br />
                <asp:GridView ID="EntryList" runat="server">

                </asp:GridView>

            </div>
        </div>
    </div>
    <script src="../Scripts/bootwrap-freecode.js"></script>
</asp:content>