<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ContactRecord.aspx.cs" Inherits="AirLinesEntity.ContactRecord" %>
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
            <h2 id="rslt" runat="server">Contact  Details</h2>


            <asp:ListView ID="ListView1" runat="server" DataKeyNames="ID" DataSourceID="SqlDataSource1">
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
                            <asp:Label ID="SnameLabel" runat="server" Text='<%# Eval("Sname") %>' />
                        </td>
                        <td>
                            <asp:Label ID="SemailLabel" runat="server" Text='<%# Eval("Semail") %>' />
                        </td>
                        <td>
                            <asp:Label ID="SmsgLabel" runat="server" Text='<%# Eval("Smsg") %>' />
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
                            <asp:TextBox ID="SnameTextBox" runat="server" Text='<%# Bind("Sname") %>' />
                        </td>
                        <td>
                            <asp:TextBox ID="SemailTextBox" runat="server" Text='<%# Bind("Semail") %>' />
                        </td>
                        <td>
                            <asp:TextBox ID="SmsgTextBox" runat="server" Text='<%# Bind("Smsg") %>' />
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
                            <asp:TextBox ID="SnameTextBox" runat="server" Text='<%# Bind("Sname") %>' />
                        </td>
                        <td>
                            <asp:TextBox ID="SemailTextBox" runat="server" Text='<%# Bind("Semail") %>' />
                        </td>
                        <td>
                            <asp:TextBox ID="SmsgTextBox" runat="server" Text='<%# Bind("Smsg") %>' />
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
                            <asp:Label ID="SnameLabel" runat="server" Text='<%# Eval("Sname") %>' />
                        </td>
                        <td>
                            <asp:Label ID="SemailLabel" runat="server" Text='<%# Eval("Semail") %>' />
                        </td>
                        <td>
                            <asp:Label ID="SmsgLabel" runat="server" Text='<%# Eval("Smsg") %>' />
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
                                        <th runat="server">Sname</th>
                                        <th runat="server">Semail</th>
                                        <th runat="server">Smsg</th>
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
                            <asp:Label ID="SnameLabel" runat="server" Text='<%# Eval("Sname") %>' />
                        </td>
                        <td>
                            <asp:Label ID="SemailLabel" runat="server" Text='<%# Eval("Semail") %>' />
                        </td>
                        <td>
                            <asp:Label ID="SmsgLabel" runat="server" Text='<%# Eval("Smsg") %>' />
                        </td>
                    </tr>
                </SelectedItemTemplate>
            </asp:ListView>


            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DbAirlineConnectionString2 %>" DeleteCommand="DELETE FROM [tbContact] WHERE [ID] = @ID" InsertCommand="INSERT INTO [tbContact] ([Sname], [Semail], [Smsg]) VALUES (@Sname, @Semail, @Smsg)" SelectCommand="SELECT [ID], [Sname], [Semail], [Smsg] FROM [tbContact]" UpdateCommand="UPDATE [tbContact] SET [Sname] = @Sname, [Semail] = @Semail, [Smsg] = @Smsg WHERE [ID] = @ID">
                <DeleteParameters>
                    <asp:Parameter Name="ID" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="Sname" Type="String" />
                    <asp:Parameter Name="Semail" Type="String" />
                    <asp:Parameter Name="Smsg" Type="String" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="Sname" Type="String" />
                    <asp:Parameter Name="Semail" Type="String" />
                    <asp:Parameter Name="Smsg" Type="String" />
                    <asp:Parameter Name="ID" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>


        </div>
    
    <div class="col-md-12" id="PlaneRecord" runat="server">

                    <a href="DashBoard.aspx" class="btn btn-primary">Back to Main</a>
  <br />
    <br />
<br />
            <br />
            <br />

    </div>
    
    
    <br />
            <br />

    



</asp:Content>
