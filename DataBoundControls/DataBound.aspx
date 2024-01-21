<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DataBound.aspx.cs" Inherits="DataBoundControls.DataBound" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
        </div>
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="SqlDataSource1" BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="3" GridLines="Vertical">
            <AlternatingRowStyle BackColor="#DCDCDC" />
            <Columns>
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
                <asp:BoundField DataField="Fname" HeaderText="Fname" SortExpression="Fname" />
                <asp:BoundField DataField="Lname" HeaderText="Lname" SortExpression="Lname" />
                <asp:BoundField DataField="UserId" HeaderText="UserId" SortExpression="UserId" />
                <asp:BoundField DataField="EmailId" HeaderText="EmailId" SortExpression="EmailId" />
                <asp:BoundField DataField="Mobile" HeaderText="Mobile" SortExpression="Mobile" />
                <asp:BoundField DataField="Address" HeaderText="Address" SortExpression="Address" />
                <asp:BoundField DataField="PinCode" HeaderText="PinCode" SortExpression="PinCode" />
                <asp:BoundField DataField="City" HeaderText="City" SortExpression="City" />
                <asp:BoundField DataField="State" HeaderText="State" SortExpression="State" />
                <asp:BoundField DataField="Gender" HeaderText="Gender" SortExpression="Gender" />
                <asp:BoundField DataField="Age" HeaderText="Age" SortExpression="Age" />
            </Columns>
            <FooterStyle BackColor="#CCCCCC" ForeColor="Black" />
            <HeaderStyle BackColor="#000084" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
            <RowStyle BackColor="#EEEEEE" ForeColor="Black" />
            <SelectedRowStyle BackColor="#008A8C" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F1F1F1" />
            <SortedAscendingHeaderStyle BackColor="#0000A9" />
            <SortedDescendingCellStyle BackColor="#CAC9C9" />
            <SortedDescendingHeaderStyle BackColor="#000065" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:TestDBConnectionString %>" DeleteCommand="DELETE FROM [Register] WHERE [Id] = @Id" InsertCommand="INSERT INTO [Register] ([Fname], [Lname], [UserId], [EmailId], [Mobile], [Address], [PinCode], [City], [State], [Gender], [Age]) VALUES (@Fname, @Lname, @UserId, @EmailId, @Mobile, @Address, @PinCode, @City, @State, @Gender, @Age)" SelectCommand="SELECT [Id], [Fname], [Lname], [UserId], [EmailId], [Mobile], [Address], [PinCode], [City], [State], [Gender], [Age] FROM [Register]" UpdateCommand="UPDATE [Register] SET [Fname] = @Fname, [Lname] = @Lname, [UserId] = @UserId, [EmailId] = @EmailId, [Mobile] = @Mobile, [Address] = @Address, [PinCode] = @PinCode, [City] = @City, [State] = @State, [Gender] = @Gender, [Age] = @Age WHERE [Id] = @Id">
            <DeleteParameters>
                <asp:Parameter Name="Id" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="Fname" Type="String" />
                <asp:Parameter Name="Lname" Type="String" />
                <asp:Parameter Name="UserId" Type="String" />
                <asp:Parameter Name="EmailId" Type="String" />
                <asp:Parameter Name="Mobile" Type="Int64" />
                <asp:Parameter Name="Address" Type="String" />
                <asp:Parameter Name="PinCode" Type="Int32" />
                <asp:Parameter Name="City" Type="String" />
                <asp:Parameter Name="State" Type="String" />
                <asp:Parameter Name="Gender" Type="String" />
                <asp:Parameter Name="Age" Type="Int32" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="Fname" Type="String" />
                <asp:Parameter Name="Lname" Type="String" />
                <asp:Parameter Name="UserId" Type="String" />
                <asp:Parameter Name="EmailId" Type="String" />
                <asp:Parameter Name="Mobile" Type="Int64" />
                <asp:Parameter Name="Address" Type="String" />
                <asp:Parameter Name="PinCode" Type="Int32" />
                <asp:Parameter Name="City" Type="String" />
                <asp:Parameter Name="State" Type="String" />
                <asp:Parameter Name="Gender" Type="String" />
                <asp:Parameter Name="Age" Type="Int32" />
                <asp:Parameter Name="Id" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>

        <div>
            <h1>Details View</h1>


            <asp:DetailsView ID="DetailsView1" runat="server" AllowPaging="True" AutoGenerateRows="False" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2" DataKeyNames="Id" DataSourceID="SqlDataSource2" Height="50px" Width="125px">
                <EditRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
                <Fields>
                    <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
                    <asp:BoundField DataField="Fname" HeaderText="Fname" SortExpression="Fname" />
                    <asp:BoundField DataField="Lname" HeaderText="Lname" SortExpression="Lname" />
                    <asp:BoundField DataField="UserId" HeaderText="UserId" SortExpression="UserId" />
                    <asp:BoundField DataField="EmailId" HeaderText="EmailId" SortExpression="EmailId" />
                    <asp:BoundField DataField="Mobile" HeaderText="Mobile" SortExpression="Mobile" />
                    <asp:BoundField DataField="Address" HeaderText="Address" SortExpression="Address" />
                    <asp:BoundField DataField="PinCode" HeaderText="PinCode" SortExpression="PinCode" />
                    <asp:BoundField DataField="State" HeaderText="State" SortExpression="State" />
                    <asp:BoundField DataField="City" HeaderText="City" SortExpression="City" />
                    <asp:BoundField DataField="Gender" HeaderText="Gender" SortExpression="Gender" />
                    <asp:BoundField DataField="Age" HeaderText="Age" SortExpression="Age" />
                    <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowInsertButton="True" />
                </Fields>
                <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
                <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
                <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
                <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
            </asp:DetailsView>
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:TestDBConnectionString %>" DeleteCommand="DELETE FROM [Register] WHERE [Id] = @Id" InsertCommand="INSERT INTO [Register] ([Fname], [Lname], [UserId], [EmailId], [Mobile], [Address], [PinCode], [State], [City], [Gender], [Age]) VALUES (@Fname, @Lname, @UserId, @EmailId, @Mobile, @Address, @PinCode, @State, @City, @Gender, @Age)" SelectCommand="SELECT [Id], [Fname], [Lname], [UserId], [EmailId], [Mobile], [Address], [PinCode], [State], [City], [Gender], [Age] FROM [Register]" UpdateCommand="UPDATE [Register] SET [Fname] = @Fname, [Lname] = @Lname, [UserId] = @UserId, [EmailId] = @EmailId, [Mobile] = @Mobile, [Address] = @Address, [PinCode] = @PinCode, [State] = @State, [City] = @City, [Gender] = @Gender, [Age] = @Age WHERE [Id] = @Id">
                <DeleteParameters>
                    <asp:Parameter Name="Id" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="Fname" Type="String" />
                    <asp:Parameter Name="Lname" Type="String" />
                    <asp:Parameter Name="UserId" Type="String" />
                    <asp:Parameter Name="EmailId" Type="String" />
                    <asp:Parameter Name="Mobile" Type="Int64" />
                    <asp:Parameter Name="Address" Type="String" />
                    <asp:Parameter Name="PinCode" Type="Int32" />
                    <asp:Parameter Name="State" Type="String" />
                    <asp:Parameter Name="City" Type="String" />
                    <asp:Parameter Name="Gender" Type="String" />
                    <asp:Parameter Name="Age" Type="Int32" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="Fname" Type="String" />
                    <asp:Parameter Name="Lname" Type="String" />
                    <asp:Parameter Name="UserId" Type="String" />
                    <asp:Parameter Name="EmailId" Type="String" />
                    <asp:Parameter Name="Mobile" Type="Int64" />
                    <asp:Parameter Name="Address" Type="String" />
                    <asp:Parameter Name="PinCode" Type="Int32" />
                    <asp:Parameter Name="State" Type="String" />
                    <asp:Parameter Name="City" Type="String" />
                    <asp:Parameter Name="Gender" Type="String" />
                    <asp:Parameter Name="Age" Type="Int32" />
                    <asp:Parameter Name="Id" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>
            <br />
            <br />
            <asp:FormView ID="FormView1" runat="server" DataKeyNames="Id" DataSourceID="SqlDataSource2">
                <EditItemTemplate>
                    Id:
                    <asp:Label ID="IdLabel1" runat="server" Text='<%# Eval("Id") %>' />
                    <br />
                    Fname:
                    <asp:TextBox ID="FnameTextBox" runat="server" Text='<%# Bind("Fname") %>' />
                    <br />
                    Lname:
                    <asp:TextBox ID="LnameTextBox" runat="server" Text='<%# Bind("Lname") %>' />
                    <br />
                    UserId:
                    <asp:TextBox ID="UserIdTextBox" runat="server" Text='<%# Bind("UserId") %>' />
                    <br />
                    EmailId:
                    <asp:TextBox ID="EmailIdTextBox" runat="server" Text='<%# Bind("EmailId") %>' />
                    <br />
                    Mobile:
                    <asp:TextBox ID="MobileTextBox" runat="server" Text='<%# Bind("Mobile") %>' />
                    <br />
                    Address:
                    <asp:TextBox ID="AddressTextBox" runat="server" Text='<%# Bind("Address") %>' />
                    <br />
                    PinCode:
                    <asp:TextBox ID="PinCodeTextBox" runat="server" Text='<%# Bind("PinCode") %>' />
                    <br />
                    State:
                    <asp:TextBox ID="StateTextBox" runat="server" Text='<%# Bind("State") %>' />
                    <br />
                    City:
                    <asp:TextBox ID="CityTextBox" runat="server" Text='<%# Bind("City") %>' />
                    <br />
                    Gender:
                    <asp:TextBox ID="GenderTextBox" runat="server" Text='<%# Bind("Gender") %>' />
                    <br />
                    Age:
                    <asp:TextBox ID="AgeTextBox" runat="server" Text='<%# Bind("Age") %>' />
                    <br />
                    <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
                    &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                </EditItemTemplate>
                <InsertItemTemplate>
                    Fname:
                    <asp:TextBox ID="FnameTextBox" runat="server" Text='<%# Bind("Fname") %>' />
                    <br />
                    Lname:
                    <asp:TextBox ID="LnameTextBox" runat="server" Text='<%# Bind("Lname") %>' />
                    <br />
                    UserId:
                    <asp:TextBox ID="UserIdTextBox" runat="server" Text='<%# Bind("UserId") %>' />
                    <br />
                    EmailId:
                    <asp:TextBox ID="EmailIdTextBox" runat="server" Text='<%# Bind("EmailId") %>' />
                    <br />
                    Mobile:
                    <asp:TextBox ID="MobileTextBox" runat="server" Text='<%# Bind("Mobile") %>' />
                    <br />
                    Address:
                    <asp:TextBox ID="AddressTextBox" runat="server" Text='<%# Bind("Address") %>' />
                    <br />
                    PinCode:
                    <asp:TextBox ID="PinCodeTextBox" runat="server" Text='<%# Bind("PinCode") %>' />
                    <br />
                    State:
                    <asp:TextBox ID="StateTextBox" runat="server" Text='<%# Bind("State") %>' />
                    <br />
                    City:
                    <asp:TextBox ID="CityTextBox" runat="server" Text='<%# Bind("City") %>' />
                    <br />
                    Gender:
                    <asp:TextBox ID="GenderTextBox" runat="server" Text='<%# Bind("Gender") %>' />
                    <br />
                    Age:
                    <asp:TextBox ID="AgeTextBox" runat="server" Text='<%# Bind("Age") %>' />
                    <br />
                    <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
                    &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                </InsertItemTemplate>
                <ItemTemplate>
                    Id:
                    <asp:Label ID="IdLabel" runat="server" Text='<%# Eval("Id") %>' />
                    <br />
                    Fname:
                    <asp:Label ID="FnameLabel" runat="server" Text='<%# Bind("Fname") %>' />
                    <br />
                    Lname:
                    <asp:Label ID="LnameLabel" runat="server" Text='<%# Bind("Lname") %>' />
                    <br />
                    UserId:
                    <asp:Label ID="UserIdLabel" runat="server" Text='<%# Bind("UserId") %>' />
                    <br />
                    EmailId:
                    <asp:Label ID="EmailIdLabel" runat="server" Text='<%# Bind("EmailId") %>' />
                    <br />
                    Mobile:
                    <asp:Label ID="MobileLabel" runat="server" Text='<%# Bind("Mobile") %>' />
                    <br />
                    Address:
                    <asp:Label ID="AddressLabel" runat="server" Text='<%# Bind("Address") %>' />
                    <br />
                    PinCode:
                    <asp:Label ID="PinCodeLabel" runat="server" Text='<%# Bind("PinCode") %>' />
                    <br />
                    State:
                    <asp:Label ID="StateLabel" runat="server" Text='<%# Bind("State") %>' />
                    <br />
                    City:
                    <asp:Label ID="CityLabel" runat="server" Text='<%# Bind("City") %>' />
                    <br />
                    Gender:
                    <asp:Label ID="GenderLabel" runat="server" Text='<%# Bind("Gender") %>' />
                    <br />
                    Age:
                    <asp:Label ID="AgeLabel" runat="server" Text='<%# Bind("Age") %>' />
                    <br />
                    <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" CommandName="Edit" Text="Edit" />
                    &nbsp;<asp:LinkButton ID="DeleteButton" runat="server" CausesValidation="False" CommandName="Delete" Text="Delete" />
                    &nbsp;<asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" CommandName="New" Text="New" />
                </ItemTemplate>
            </asp:FormView>


        </div>
    </form>
</body>
</html>
