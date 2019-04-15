<%@ Page Title="Contact" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="AirLinesEntity.Contact" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    
        <div class="jumbotron" style="border:1px solid red;background-image:url('bg_img.jpg');">
        <h1 style="color:white;">NZ Airways</h1>
        <p class="lead" style="color:antiquewhite;">Best Air Line </p>
        <p><a href="#" class="btn btn-primary btn-lg">Learn more &raquo;</a></p>
    </div>

    


        <div class="col-md-12" style="margin-left:400px;">
            <h2 id="rslt" runat="server">Contact US</h2>
           
            
            <div class="form-group">
                <label for="email">Name</label>

                <asp:TextBox ID="Name" Name="Name" runat="server" class="form-control"></asp:TextBox>

            </div>

            <div class="form-group">
                <label for="email">Email-Id:</label>

                <asp:TextBox ID="Email" Name="Email" runat="server" class="form-control"></asp:TextBox>

            </div>


            <div class="form-group">
                <label for="pwd">Message:</label>
                <asp:TextBox ID="Msg"  Name="Msg" runat="server" class="form-control"></asp:TextBox>
            </div>

                <asp:Button ID="btnSubmit" runat="server" Text="Send Message" class="btn btn-warning" OnClick="btnSubmit_Click"/>
          

    
        
        </div>
    




</asp:Content>
