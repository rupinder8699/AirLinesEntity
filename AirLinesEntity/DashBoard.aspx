<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="DashBoard.aspx.cs" Inherits="AirLinesEntity.DashBoard" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <style>
        .ok ul li {
            border:2px groove black;
            height:50px;
            width:600px;
            text-align:center;
            font-size:30px;
            list-style:none;
        }

    </style>


    
        <div class="jumbotron" style="border:1px solid red;background-image:url('bg_img.jpg');">
        <h1 style="color:white;">NZ Airways</h1>
        <p class="lead" style="color:antiquewhite;">Best Air Line </p>
        <p><a href="#" class="btn btn-primary btn-lg">Learn more &raquo;</a></p>
    </div>

    


        <div class="col-md-12 ok" style="margin-left:200px;">
            <h2 id="rslt" runat="server">Dash Board</h2>
           <ul>
              <li> <a href='AddPlane.aspx' style="font-size:35px; color:red;" >Plane</a>  </li>
               <li> <a href='UpdatePlane.aspx' style="font-size:35px; color:red;">Update Plane</a>  </li>
               <li> <a href='ContactRecord.aspx' style="font-size:35px; color:red;">Contact Record</a>  </li>


           </ul>
            
      <br />
    <br />
<br />
            <br />
            <br />
        
        </div>
    


</asp:Content>
