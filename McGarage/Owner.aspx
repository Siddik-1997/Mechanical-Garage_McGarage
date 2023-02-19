<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Owner.aspx.cs" Inherits="McGarage.Owner" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <header><h1>Owner Information</h1></header><table class="nav-justified">
        <tr>
            <td style="width: 95px">
                <asp:TextBox ID="txtSearch" runat="server"></asp:TextBox>
            </td>
            <td style="width: 230px">
                <asp:Button ID="SearchButton" runat="server" Text="Search" OnClick="SearchButton_Click" />
            </td>
            <td></td>
        </tr>
        <tr>
            <td style="width: 95px; height: 34px">Owner ID:</td>
            <td style="height: 34px; width: 230px">
                <asp:TextBox ID="txtOwnerID" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 95px; height: 34px">Owner Name:</td>
            <td style="height: 34px; width: 230px">
                <asp:TextBox ID="txtOwnerName" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 95px; height: 34px">Gender:</td>
            <td style="height: 34px; width: 230px">
                <asp:DropDownList ID="DropGender" runat="server" Height="16px" Width="129px">
                    <asp:ListItem Value="Null">Select Gender...</asp:ListItem>
                    <asp:ListItem>Male</asp:ListItem>
                    <asp:ListItem>Female</asp:ListItem>
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td style="width: 95px; height: 36px">Phone:</td>
            <td style="width: 230px; height: 36px">
                <asp:TextBox ID="txtPhone" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td rowspan="2" style="width: 95px">Address:</td>
            <td rowspan="2" style="width: 230px">
                <asp:TextBox ID="txtAddress" runat="server" Height="112px" style="margin-top: 0" Width="177px"></asp:TextBox>
            </td>
            <td style="height: 18px">Showing Information</td>
        </tr>
        <tr>
            <td style="height: 36px">
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3" OnRowDeleting="GridView1_RowDeleting">
                    <Columns>
                        <asp:TemplateField HeaderText="Owner ID">
                            <EditItemTemplate>
                                <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("OwnerID") %>'></asp:TextBox>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label1" runat="server" Text='<%# Bind("OwnerID") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Owner Name">
                            <EditItemTemplate>
                                <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("OwnerName") %>'></asp:TextBox>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label2" runat="server" Text='<%# Bind("OwnerName") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Gender">
                            <EditItemTemplate>
                                <asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("Gender") %>'></asp:TextBox>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label3" runat="server" Text='<%# Bind("Gender") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Phone">
                            <EditItemTemplate>
                                <asp:TextBox ID="TextBox4" runat="server" Text='<%# Bind("Phone") %>'></asp:TextBox>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label4" runat="server" Text='<%# Bind("Phone") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Address">
                            <EditItemTemplate>
                                <asp:TextBox ID="TextBox5" runat="server" Text='<%# Bind("Address") %>'></asp:TextBox>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label5" runat="server" Text='<%# Bind("Address") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:CommandField ShowDeleteButton="True" />
                    </Columns>
                    <FooterStyle BackColor="White" ForeColor="#000066" />
                    <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
                    <RowStyle ForeColor="#000066" />
                    <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
                    <SortedAscendingCellStyle BackColor="#F1F1F1" />
                    <SortedAscendingHeaderStyle BackColor="#007DBB" />
                    <SortedDescendingCellStyle BackColor="#CAC9C9" />
                    <SortedDescendingHeaderStyle BackColor="#00547E" />
                </asp:GridView>
            </td>
        </tr>
        <tr>
            <td style="width: 95px">&nbsp;</td>
            <td style="width: 230px">
                <asp:Button ID="SaveButton" runat="server" OnClick="SaveButton_Click" Text="Save" />
            </td>
            <td>&nbsp;</td>
        </tr>
        </table>
        
</asp:Content>
