<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Receipt.aspx.cs" Inherits="McGarage.Receipt" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">


    
    <header><h1>Receipt </h1></header>
     
    <table class="auto-style1">
       
        <tr>
            <td style="width: 202px">
                <asp:TextBox ID="txtSearch" runat="server"></asp:TextBox>
                <asp:Button ID="SearchButton" runat="server" Text="Search" OnClick="SearchButton_Click" />
            </td>
            <td style="width: 301px">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 202px">&nbsp;</td>
            <td style="width: 301px">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
         <tr>
            <td style="width: 202px; height: 38px" class="lbl">Serial:</td>
            <td style="width: 301px; height: 38px">
                <asp:TextBox ID="txtSerial" runat="server"></asp:TextBox>
            </td>
            <td style="height: 38px"></td>
        </tr>
         <tr>
            <td style="width: 202px">&nbsp;</td>
            <td style="width: 301px">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 202px; height: 38px">License Number:</td>
            <td style="width: 301px; height: 38px">
                <asp:TextBox ID="txtLicense" runat="server"></asp:TextBox>
            </td>
            <td style="height: 38px"></td>
        </tr>
       
         <tr>
            <td style="width: 202px">&nbsp;</td>
            <td style="width: 301px">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
       
         <tr>
            <td style="width: 202px">Received Date:</td>
            <td style="width: 301px">
                <asp:TextBox ID="txtReceivedDate" runat="server"></asp:TextBox>
                <asp:Button ID="Calendar1Button" runat="server" OnClick="Calendar1Button_Click" Text="..." Width="39px" />
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 202px">&nbsp;</td>
            <td style="width: 301px">
                <asp:Calendar ID="Calendar1" runat="server" OnSelectionChanged="Calendar1_SelectionChanged" Visible="False"></asp:Calendar>
            </td>
        
            <td>
                <asp:Label ID="Label4" runat="server" Text="Show Information"></asp:Label>
                
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" OnRowDeleting="GridView1_RowDeleting1" BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellPadding="4" CellSpacing="2" ForeColor="Black" CssClass="auto-style2">
                    <Columns>
                        <asp:TemplateField HeaderText="SL">
                            <EditItemTemplate>
                                <asp:TextBox ID="TextBox11" runat="server" Text='<%# Bind("Serial") %>'></asp:TextBox>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label11" runat="server" Text='<%# Bind("Serial") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="License">
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
                        <asp:TemplateField HeaderText="Owner Name">
                            <EditItemTemplate>
                                <asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("OwnerName") %>'></asp:TextBox>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label3" runat="server" Text='<%# Bind("OwnerName") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Owner Phone">
                            <EditItemTemplate>
                                <asp:TextBox ID="TextBox5" runat="server" Text='<%# Bind("Phone") %>'></asp:TextBox>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label5" runat="server" Text='<%# Bind("Phone") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Mechanic Name">
                            <EditItemTemplate>
                                <asp:TextBox ID="TextBox9" runat="server" Text='<%# Bind("MechanicName") %>'></asp:TextBox>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label9" runat="server" Text='<%# Bind("MechanicName") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Mechanic Phone">
                            <EditItemTemplate>
                                <asp:TextBox ID="TextBox10" runat="server" Text='<%# Bind("MechanicPhone") %>'></asp:TextBox>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label10" runat="server" Text='<%# Bind("MechanicPhone") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Receive Date">
                            <EditItemTemplate>
                                <asp:TextBox ID="TextBox6" runat="server" Text='<%# Bind("ReceivedDate") %>'></asp:TextBox>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label6" runat="server" Text='<%# Bind("ReceivedDate") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Delivery Date">
                            <EditItemTemplate>
                                <asp:TextBox ID="TextBox7" runat="server" Text='<%# Bind("DeliveryDate") %>'></asp:TextBox>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label7" runat="server" Text='<%# Bind("DeliveryDate") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Bill">
                            <EditItemTemplate>
                                <asp:TextBox ID="TextBox8" runat="server" Text='<%# Bind("Bill") %>'></asp:TextBox>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label8" runat="server" Text='<%# Bind("Bill") %>'></asp:Label>
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
            <td style="width: 202px">Delivery Date:</td>
            <td style="width: 301px">
                <asp:TextBox ID="txtDeliveryDate" runat="server"></asp:TextBox>
                <asp:Button ID="Calendar2Button" runat="server" OnClick="Calendar2Button_Click" Text="..." Width="39px" />
            </td>
            
        </tr>
        <tr>
            <td style="width: 202px">&nbsp;</td>
            <td style="width: 301px">
                <asp:Calendar ID="Calendar2" runat="server" OnSelectionChanged="Calendar2_SelectionChanged" Visible="False"></asp:Calendar>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 202px">Total Bill:</td>
            <td style="width: 301px">
                <asp:TextBox ID="txtBill" runat="server"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 202px">&nbsp;</td>
            <td style="width: 301px">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 202px">&nbsp;</td>
            <td style="width: 301px">
                <asp:Button ID="SaveButton" runat="server" OnClick="SaveButton_Click" Text="Save" />
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 202px">&nbsp;</td>
            <td style="width: 301px">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 202px">&nbsp;</td>
            <td style="width: 301px">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        </table>
       
</asp:Content>
