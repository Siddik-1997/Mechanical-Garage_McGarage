<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Car.aspx.cs" Inherits="McGarage.Car" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <header><h1>Car Information</h1></header><table style="width:100%;">
        <tr>
            <td style="width: 136px; height: 75px">
                <asp:TextBox ID="txtSearch" runat="server"></asp:TextBox>
            </td>
            <td style="height: 75px; width: 177px;">
                <asp:Button ID="SearchButton" runat="server" Text="Search" OnClick="SearchButton_Click" />
            </td>
            <td style="height: 75px"></td>
        </tr>
        <tr>
            <td style="width: 136px" class="modal-sm">License Number:</td>
            <td class="modal-sm" style="width: 177px">
                <asp:TextBox ID="txtLicense" runat="server" style="margin-top: 26"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 136px" class="modal-sm">Car Model:</td>
            <td class="modal-sm" style="width: 177px">
                <asp:TextBox ID="txtCarModel" runat="server"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 136px; height: 29px;" class="modal-sm">Car Color:</td>
            <td class="modal-sm" style="width: 177px; height: 29px">
                <asp:TextBox ID="txtCarColor" runat="server"></asp:TextBox>
            </td>
            <td style="height: 29px">Showing Information:</td>
        </tr>
        <tr>
            <td style="width: 136px; height: 64px;" class="modal-sm">Problem</td>
            <td class="modal-sm" style="width: 177px; height: 64px">
                <asp:TextBox ID="txtProblem" runat="server" Height="52px"></asp:TextBox>
            </td>
            <td rowspan="5">
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellPadding="4" CellSpacing="2" OnRowDeleting="GridView1_RowDeleting" ForeColor="Black">
                    <Columns>
                        <asp:TemplateField HeaderText="License Number">
                            <EditItemTemplate>
                                <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("License") %>'></asp:TextBox>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label1" runat="server" Text='<%# Bind("License") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Car Model">
                            <EditItemTemplate>
                                <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("Model") %>'></asp:TextBox>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label2" runat="server" Text='<%# Bind("Model") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Car Color">
                            <EditItemTemplate>
                                <asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("Color") %>'></asp:TextBox>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label3" runat="server" Text='<%# Bind("Color") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Problem Statement">
                            <EditItemTemplate>
                                <asp:TextBox ID="TextBox4" runat="server" Text='<%# Bind("Problem") %>'></asp:TextBox>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label4" runat="server" Text='<%# Bind("Problem") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Owner ID">
                            <EditItemTemplate>
                                <asp:TextBox ID="TextBox5" runat="server" Text='<%# Bind("OwnerID") %>'></asp:TextBox>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label5" runat="server" Text='<%# Bind("OwnerID") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:CommandField ShowDeleteButton="True" />
                    </Columns>
                    <FooterStyle BackColor="#CCCCCC" />
                    <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#CCCCCC" ForeColor="Black" HorizontalAlign="Left" />
                    <RowStyle BackColor="White" />
                    <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
                    <SortedAscendingCellStyle BackColor="#F1F1F1" />
                    <SortedAscendingHeaderStyle BackColor="#808080" />
                    <SortedDescendingCellStyle BackColor="#CAC9C9" />
                    <SortedDescendingHeaderStyle BackColor="#383838" />
                </asp:GridView>
            </td>
        </tr>
        <tr>
            <td style="width: 136px" class="modal-sm">Owner ID:</td>
            <td class="modal-sm" style="width: 177px">
                <asp:TextBox ID="txtOwnerID" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 136px" class="modal-sm">&nbsp;</td>
            <td class="modal-sm" style="width: 177px">
                <asp:Button ID="SaveButton" runat="server" Text="Save" OnClick="SaveButton_Click" />
            </td>
        </tr>
        <tr>
            <td style="width: 136px" class="modal-sm">&nbsp;</td>
            <td class="modal-sm" style="width: 177px">&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 136px" class="modal-sm">&nbsp;</td>
            <td class="modal-sm" style="width: 177px">&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 136px" class="modal-sm">&nbsp;</td>
            <td class="modal-sm" style="width: 177px">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        </table>
        
</asp:Content>
