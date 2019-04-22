<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="UpdatePlane.aspx.cs" Inherits="AirLinesEntity.UpdatePlane" %>
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

    


        <div class="col-md-12" style="margin-left:200px;">
            <h2 id="rslt" runat="server">Update Plane </h2>
           
            <asp:ListView ID="ListView1" runat="server" DataSourceID="SqlDataSource1" DataKeyNames="ID">
                <AlternatingItemTemplate>
                    <tr style="background-color: #FFFFFF;color: #284775;">
                        <td>
                            <asp:Button ID="DeleteButton" runat="server" CommandName="Delete" Text="Delete" />
                            <asp:Button ID="EditButton" runat="server" CommandName="Edit" Text="Edit" />
                        </td>
                        <td>
                            <asp:Label ID="IDLabel" runat="server" Text='<%# Eval("ID") %>' />
                        </td>
                        <td>
                            <asp:Label ID="PlaneNoLabel" runat="server" Text='<%# Eval("PlaneNo") %>' />
                        </td>
                        <td>
                            <asp:Label ID="PlaneNameLabel" runat="server" Text='<%# Eval("PlaneName") %>' />
                        </td>
                        <td>
                            <asp:Label ID="ArrivalLabel" runat="server" Text='<%# Eval("Arrival") %>' />
                        </td>
                        <td>
                            <asp:Label ID="destinationLabel" runat="server" Text='<%# Eval("destination") %>' />
                        </td>
                        <td>
                            <asp:Label ID="PriceLabel" runat="server" Text='<%# Eval("Price") %>' />
                        </td>
                    </tr>
                </AlternatingItemTemplate>
                <EditItemTemplate>
                    <tr style="background-color: #999999;">
                        <td>
                            <asp:Button ID="UpdateButton" runat="server" CommandName="Update" Text="Update" />
                            <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Cancel" />
                        </td>
                        <td>
                            <asp:Label ID="IDLabel1" runat="server" Text='<%# Eval("ID") %>' />
                        </td>
                        <td>
                            <asp:TextBox ID="PlaneNoTextBox" runat="server" Text='<%# Bind("PlaneNo") %>' />
                        </td>
                        <td>
                            <asp:TextBox ID="PlaneNameTextBox" runat="server" Text='<%# Bind("PlaneName") %>' />
                        </td>
                        <td>
                            <asp:TextBox ID="ArrivalTextBox" runat="server" Text='<%# Bind("Arrival") %>' />
                        </td>
                        <td>
                            <asp:TextBox ID="destinationTextBox" runat="server" Text='<%# Bind("destination") %>' />
                        </td>
                        <td>
                            <asp:TextBox ID="PriceTextBox" runat="server" Text='<%# Bind("Price") %>' />
                        </td>
                    </tr>
                </EditItemTemplate>
                <EmptyDataTemplate>
                    <table runat="server" style="background-color: #FFFFFF;border-collapse: collapse;border-color: #999999;border-style:none;border-width:1px;">
                        <tr>
                            <td>No data was returned.</td>
                        </tr>
                    </table>
                </EmptyDataTemplate>
                <InsertItemTemplate>
                    <tr style="">
                        <td>
                            <asp:Button ID="InsertButton" runat="server" CommandName="Insert" Text="Insert" />
                            <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Clear" />
                        </td>
                        <td>&nbsp;</td>
                        <td>
                            <asp:TextBox ID="PlaneNoTextBox" runat="server" Text='<%# Bind("PlaneNo") %>' />
                        </td>
                        <td>
                            <asp:TextBox ID="PlaneNameTextBox" runat="server" Text='<%# Bind("PlaneName") %>' />
                        </td>
                        <td>
                            <asp:TextBox ID="ArrivalTextBox" runat="server" Text='<%# Bind("Arrival") %>' />
                        </td>
                        <td>
                            <asp:TextBox ID="destinationTextBox" runat="server" Text='<%# Bind("destination") %>' />
                        </td>
                        <td>
                            <asp:TextBox ID="PriceTextBox" runat="server" Text='<%# Bind("Price") %>' />
                        </td>
                    </tr>
                </InsertItemTemplate>
                <ItemTemplate>
                    <tr style="background-color: #E0FFFF;color: #333333;">
                        <td>
                            <asp:Button ID="DeleteButton" runat="server" CommandName="Delete" Text="Delete" />
                            <asp:Button ID="EditButton" runat="server" CommandName="Edit" Text="Edit" />
                        </td>
                        <td>
                            <asp:Label ID="IDLabel" runat="server" Text='<%# Eval("ID") %>' />
                        </td>
                        <td>
                            <asp:Label ID="PlaneNoLabel" runat="server" Text='<%# Eval("PlaneNo") %>' />
                        </td>
                        <td>
                            <asp:Label ID="PlaneNameLabel" runat="server" Text='<%# Eval("PlaneName") %>' />
                        </td>
                        <td>
                            <asp:Label ID="ArrivalLabel" runat="server" Text='<%# Eval("Arrival") %>' />
                        </td>
                        <td>
                            <asp:Label ID="destinationLabel" runat="server" Text='<%# Eval("destination") %>' />
                        </td>
                        <td>
                            <asp:Label ID="PriceLabel" runat="server" Text='<%# Eval("Price") %>' />
                        </td>
                    </tr>
                </ItemTemplate>
                <LayoutTemplate>
                    <table runat="server">
                        <tr runat="server">
                            <td runat="server">
                                <table id="itemPlaceholderContainer" runat="server" border="1" style="background-color: #FFFFFF;border-collapse: collapse;border-color: #999999;border-style:none;border-width:1px;font-family: Verdana, Arial, Helvetica, sans-serif;">
                                    <tr runat="server" style="background-color: #E0FFFF;color: #333333;">
                                        <th runat="server"></th>
                                        <th runat="server">ID</th>
                                        <th runat="server">PlaneNo</th>
                                        <th runat="server">PlaneName</th>
                                        <th runat="server">Arrival</th>
                                        <th runat="server">destination</th>
                                        <th runat="server">Price</th>
                                    </tr>
                                    <tr id="itemPlaceholder" runat="server">
                                    </tr>
                                </table>
                            </td>
                        </tr>
                        <tr runat="server">
                            <td runat="server" style="text-align: center;background-color: #5D7B9D;font-family: Verdana, Arial, Helvetica, sans-serif;color: #FFFFFF">
                                <asp:DataPager ID="DataPager1" runat="server">
                                    <Fields>
                                        <asp:NextPreviousPagerField ButtonType="Button" ShowFirstPageButton="True" ShowLastPageButton="True" />
                                    </Fields>
                                </asp:DataPager>
                            </td>
                        </tr>
                    </table>
                </LayoutTemplate>
                <SelectedItemTemplate>
                    <tr style="background-color: #E2DED6;font-weight: bold;color: #333333;">
                        <td>
                            <asp:Button ID="DeleteButton" runat="server" CommandName="Delete" Text="Delete" />
                            <asp:Button ID="EditButton" runat="server" CommandName="Edit" Text="Edit" />
                        </td>
                        <td>
                            <asp:Label ID="IDLabel" runat="server" Text='<%# Eval("ID") %>' />
                        </td>
                        <td>
                            <asp:Label ID="PlaneNoLabel" runat="server" Text='<%# Eval("PlaneNo") %>' />
                        </td>
                        <td>
                            <asp:Label ID="PlaneNameLabel" runat="server" Text='<%# Eval("PlaneName") %>' />
                        </td>
                        <td>
                            <asp:Label ID="ArrivalLabel" runat="server" Text='<%# Eval("Arrival") %>' />
                        </td>
                        <td>
                            <asp:Label ID="destinationLabel" runat="server" Text='<%# Eval("destination") %>' />
                        </td>
                        <td>
                            <asp:Label ID="PriceLabel" runat="server" Text='<%# Eval("Price") %>' />
                        </td>
                    </tr>
                </SelectedItemTemplate>
            </asp:ListView>

               
      
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DbAirlineConnectionString %>" DeleteCommand="DELETE FROM [tbPlane] WHERE [ID] = @ID" InsertCommand="INSERT INTO [tbPlane] ([PlaneNo], [PlaneName], [Arrival], [destination], [Price]) VALUES (@PlaneNo, @PlaneName, @Arrival, @destination, @Price)" SelectCommand="SELECT [ID], [PlaneNo], [PlaneName], [Arrival], [destination], [Price] FROM [tbPlane]" UpdateCommand="UPDATE [tbPlane] SET [PlaneNo] = @PlaneNo, [PlaneName] = @PlaneName, [Arrival] = @Arrival, [destination] = @destination, [Price] = @Price WHERE [ID] = @ID">
                <DeleteParameters>
                    <asp:Parameter Name="ID" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="PlaneNo" Type="Int32" />
                    <asp:Parameter Name="PlaneName" Type="String" />
                    <asp:Parameter Name="Arrival" Type="String" />
                    <asp:Parameter Name="destination" Type="String" />
                    <asp:Parameter Name="Price" Type="Int32" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="PlaneNo" Type="Int32" />
                    <asp:Parameter Name="PlaneName" Type="String" />
                    <asp:Parameter Name="Arrival" Type="String" />
                    <asp:Parameter Name="destination" Type="String" />
                    <asp:Parameter Name="Price" Type="Int32" />
                    <asp:Parameter Name="ID" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>

               
      
        </div>
    
    <div class="col-md-12" id="PlaneRecord" runat="server">

                  
          <br />
    <br />
<br />
            <br />
            <br />

    </div>
    
    
    <br /><a href="DashBoard.aspx" class="btn btn-primary">Back to Main</a>
            <br />
  
    


</asp:Content>
