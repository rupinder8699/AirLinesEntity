<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="LoginPage.aspx.cs" Inherits="AirLinesEntity.LoginPage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <div class="jumbotron" style="border:1px solid red;background-image:url('bg_img.jpg');">
        <h1 style="color:white;">NZ Airways</h1>
        <p class="lead" style="color:antiquewhite;">Best Air Line </p>
        <p><a href="#" class="btn btn-primary btn-lg">Learn more &raquo;</a></p>
    </div>

    


        <div class="col-md-12" style="margin-left:400px;">
            <h2 id="rslt" runat="server">Admin Login</h2>
           
            
            <div class="form-group">
                <label for="email">Email address:</label>

                <asp:TextBox ID="UserName" Name="UserName" runat="server" class="form-control"></asp:TextBox>

                
            </div>
            <div class="form-group">
                <label for="pwd">Password:</label>
                <asp:TextBox ID="Password" TextMode="Password" Name="Password" runat="server" class="form-control"></asp:TextBox>
            </div>

                <asp:Button ID="btnSubmit" runat="server" Text="Login" class="btn btn-warning" OnClick="btnSubmit_Click" />
          

    
        
        </div>
    



</asp:Content>
