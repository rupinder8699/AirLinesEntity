<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ViewPlane.aspx.cs" Inherits="AirLinesEntity.ViewPlane" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <style>
        table, td {
            border:1px solid grey;
            padding:20px;
            margin:20px;
            text-align:center;
        }


    </style>


        <div class="jumbotron" style="border:1px solid red;background-image:url('bg_img.jpg');">
        <h1 style="color:white;">NZ Airways</h1>
        <p class="lead" style="color:antiquewhite;">Best Air Line </p>
        <p><a href="#" class="btn btn-primary btn-lg">Learn more &raquo;</a></p>
    </div>

    


        <div class="col-md-12" style="margin-left:400px;">
            <h2 id="rslt" runat="server">Add Plane Details</h2>
           
            <div class="form-group">
                <label for="pwd">Departure</label>
                <asp:TextBox ID="Departure" Name="Departure" runat="server" class="form-control"></asp:TextBox>
            </div>

            <div class="form-group">
                <label for="pwd">Destination</label>
                <asp:TextBox ID="Destination" Name="Destination" runat="server" class="form-control"></asp:TextBox>
            </div>


                <asp:Button ID="btnSubmit" runat="server" Text="Search Plane " class="btn btn-warning" OnClick="btnSubmit_Click" />
      
        </div>
    
    <div class="col-md-12" id="PlaneRecord" runat="server">

                    <a href="DashBoard.aspx" class="btn btn-primary">Back to Main</a>

        <br />
            <br />
        <br />
    </div>
    
    
    
    
    
</asp:Content>
