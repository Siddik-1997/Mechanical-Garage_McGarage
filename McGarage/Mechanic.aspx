<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Mechanic.aspx.cs" Inherits="McGarage.Mechanic" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <header><h1>Mechanic Information</h1>
        <p>
            <table style="width: 100%; height: 303px;">
                <tr>
                    <td style="width: 144px">
                        <asp:TextBox ID="txtSearch" runat="server"></asp:TextBox>
                    </td>
                    <td style="width: 236px">
                        <asp:Button ID="SearchButton" runat="server" Text="Search" OnClick="SearchButton_Click" />
                    </td>
                    <td>Showing information:</td>
                </tr>
                <tr>
                    <td style="width: 144px">&nbsp;</td>
                    <td style="width: 236px">&nbsp;</td>
                    <td rowspan="10">
                        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="3" GridLines="Vertical" OnRowDeleting="GridView1_RowDeleting" style="margin-top: 0px">
                            <AlternatingRowStyle BackColor="#DCDCDC" />
                            <Columns>
                                <asp:TemplateField HeaderText="Mechanic ID">
                                    <EditItemTemplate>
                                        <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("MechanicID") %>'></asp:TextBox>
                                    </EditItemTemplate>
                                    <ItemTemplate>
                                        <asp:Label ID="Label1" runat="server" Text='<%# Bind("MechanicID") %>'></asp:Label>
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="Mechanic Name">
                                    <EditItemTemplate>
                                        <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("MechanicName") %>'></asp:TextBox>
                                    </EditItemTemplate>
                                    <ItemTemplate>
                                        <asp:Label ID="Label2" runat="server" Text='<%# Bind("MechanicName") %>'></asp:Label>
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="Phone Number">
                                    <EditItemTemplate>
                                        <asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("MechanicPhone") %>'></asp:TextBox>
                                    </EditItemTemplate>
                                    <ItemTemplate>
                                        <asp:Label ID="Label3" runat="server" Text='<%# Bind("MechanicPhone") %>'></asp:Label>
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="Assign Car">
                                    <EditItemTemplate>
                                        <asp:TextBox ID="TextBox4" runat="server" Text='<%# Bind("License") %>'></asp:TextBox>
                                    </EditItemTemplate>
                                    <ItemTemplate>
                                        <asp:Label ID="Label4" runat="server" Text='<%# Bind("License") %>'></asp:Label>
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="Car's Problem">
                                    <EditItemTemplate>
                                        <asp:TextBox ID="TextBox5" runat="server" Text='<%# Bind("Problem") %>'></asp:TextBox>
                                    </EditItemTemplate>
                                    <ItemTemplate>
                                        <asp:Label ID="Label5" runat="server" Text='<%# Bind("Problem") %>'></asp:Label>
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:CommandField ShowDeleteButton="True" />
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
                    </td>
                </tr>
                <tr>
                    <td style="width: 144px">Mechanic ID:</td>
                    <td style="width: 236px">
                        <asp:TextBox ID="txtMechanicID" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td style="width: 144px">Mechanic Name:</td>
                    <td style="width: 236px">
                        <asp:TextBox ID="txtMechanicName" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td style="width: 144px">Phone:</td>
                    <td style="width: 236px">
                        <asp:TextBox ID="txtMechanicPhone" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td style="width: 144px">License:</td>
                    <td style="width: 236px">
                        <asp:TextBox ID="txtLicense" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td style="width: 144px">&nbsp;</td>
                    <td style="width: 236px">&nbsp;</td>
                </tr>
                <tr>
                    <td style="width: 144px">&nbsp;</td>
                    <td style="width: 236px">
                        <asp:Button ID="SaveButton" runat="server" OnClick="SaveButton_Click" Text="Save" />
                    </td>
                </tr>
                <tr>
                    <td style="width: 144px">&nbsp;</td>
                    <td style="width: 236px">&nbsp;</td>
                </tr>
                <tr>
                    <td style="width: 144px">&nbsp;</td>
                    <td style="width: 236px">&nbsp;</td>
                </tr>
                <tr>
                    <td style="width: 144px">&nbsp;</td>
                    <td style="width: 236px">&nbsp;</td>
                </tr>
                <tr>
                    <td style="height: 27px; width: 144px"></td>
                    <td style="height: 27px; width: 236px"></td>
                    <td style="height: 27px"></td>
                </tr>
            </table>
        </p>
    </header>

</asp:Content>
