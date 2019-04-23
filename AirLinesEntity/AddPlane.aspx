<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="AddPlane.aspx.cs" Inherits="AirLinesEntity.AddPlane" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">



        <div class="jumbotron" style="border:1px solid red;background-image:url('bg_img.jpg');">
        <h1 style="color:white;">NZ Airways</h1>
        <p class="lead" style="color:antiquewhite;">Best Air Line </p>
        <p><a href="#" class="btn btn-primary btn-lg">Learn more &raquo;</a></p>
    </div>

    


        <div class="col-md-12" style="margin-left:400px;">
            <h2 id="rslt" runat="server">Add Plane Details</h2>
           
            
            <div class="form-group">
                <label for="email">Plane No</label>

                <asp:TextBox ID="PlaneNo" Name="PlaneNo" runat="server" class="form-control"></asp:TextBox>

                
            </div>
            <div class="form-group">
                <label for="pwd">Plane Name</label>
                <asp:TextBox ID="PlaneName" Name="PlaneName" runat="server" class="form-control"></asp:TextBox>
            </div>

            <div class="form-group">
                <label for="pwd">Departure</label>
                <asp:TextBox ID="Departure" Name="Departure" runat="server" class="form-control"></asp:TextBox>
            </div>

            <div class="form-group">
                <label for="pwd">Destination</label>
                <asp:TextBox ID="Destination" Name="Destination" runat="server" class="form-control"></asp:TextBox>
            </div>


            <div class="form-group">
                <label for="pwd">Price</label>
                <asp:TextBox ID="Price" Name="Price" runat="server" class="form-control"></asp:TextBox>
            </div>



                <asp:Button ID="btnSubmit" runat="server" Text="Submit" class="btn btn-warning" OnClick="btnSubmit_Click" />
          

    <br />
            <br />
          
        
        </div>
    
      <br />
    <br />
<br />
            <br />  <a href="DashBoard.aspx" class="btn btn-primary">Back to Main</a>
            <br />



</asp:Content>
