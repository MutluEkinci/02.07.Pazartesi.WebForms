<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Admin.aspx.cs" Inherits="WebApplication1.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:ListView ID="ListViewUrunler" runat="server" DataKeyNames="UrunID" DataSourceID="SqlDataSource1" InsertItemPosition="FirstItem">
    <AlternatingItemTemplate>
        <tr style="background-color:#FFF8DC;">
            <td>
                <asp:Button ID="DeleteButton" runat="server" CommandName="Delete" Text="Delete" />
                <asp:Button ID="EditButton" runat="server" CommandName="Edit" Text="Edit" />
            </td>
            <td>
                <asp:Label ID="UrunIDLabel" runat="server" Text='<%# Eval("UrunID") %>' />
            </td>
            <td>
                <asp:Label ID="UrunAdiLabel" runat="server" Text='<%# Eval("UrunAdi") %>' />
            </td>
            <td>
                <asp:Label ID="KategoriIDLabel" runat="server" Text='<%# Eval("KategoriID") %>' />
            </td>
            <td>
                <asp:Label ID="FiyatLabel" runat="server" Text='<%# Eval("Fiyat") %>' />
            </td>
            <td>
                <asp:Label ID="ResimLabel" runat="server" Text='<%# Eval("Resim") %>' />
            </td>
            <td>
                <asp:Label ID="AciklamaLabel" runat="server" Text='<%# Eval("Aciklama") %>' />
            </td>
        </tr>
    </AlternatingItemTemplate>
    <EditItemTemplate>
        <tr style="background-color:#008A8C;color: #FFFFFF;">
            <td>
                <asp:Button ID="UpdateButton" runat="server" CommandName="Update" Text="Update" />
                <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Cancel" />
            </td>
            <td>
                <asp:Label ID="UrunIDLabel1" runat="server" Text='<%# Eval("UrunID") %>' />
            </td>
            <td>
                <asp:TextBox ID="UrunAdiTextBox" runat="server" Text='<%# Bind("UrunAdi") %>' />
            </td>
            <td>
                <asp:TextBox ID="KategoriIDTextBox" runat="server" Text='<%# Bind("KategoriID") %>' />
            </td>
            <td>
                <asp:TextBox ID="FiyatTextBox" runat="server" Text='<%# Bind("Fiyat") %>' />
            </td>
            <td>
                <asp:TextBox ID="ResimTextBox" runat="server" Text='<%# Bind("Resim") %>' />
            </td>
            <td>
                <asp:TextBox ID="AciklamaTextBox" runat="server" Text='<%# Bind("Aciklama") %>' />
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
                <asp:TextBox ID="UrunAdiTextBox" runat="server" Text='<%# Bind("UrunAdi") %>' />
            </td>
            <td>
                <asp:TextBox ID="KategoriIDTextBox" runat="server" Text='<%# Bind("KategoriID") %>' />
            </td>
            <td>
                <asp:TextBox ID="FiyatTextBox" runat="server" Text='<%# Bind("Fiyat") %>' />
            </td>
            <td>
                <asp:TextBox ID="ResimTextBox" runat="server" Text='<%# Bind("Resim") %>' />
            </td>
            <td>
                <asp:TextBox ID="AciklamaTextBox" runat="server" Text='<%# Bind("Aciklama") %>' />
            </td>
        </tr>
    </InsertItemTemplate>
    <ItemTemplate>
        <tr style="background-color:#DCDCDC;color: #000000;">
            <td>
                <asp:Button ID="DeleteButton" runat="server" CommandName="Delete" Text="Delete" />
                <asp:Button ID="EditButton" runat="server" CommandName="Edit" Text="Edit" />
            </td>
            <td>
                <asp:Label ID="UrunIDLabel" runat="server" Text='<%# Eval("UrunID") %>' />
            </td>
            <td>
                <asp:Label ID="UrunAdiLabel" runat="server" Text='<%# Eval("UrunAdi") %>' />
            </td>
            <td>
                <asp:Label ID="KategoriIDLabel" runat="server" Text='<%# Eval("KategoriID") %>' />
            </td>
            <td>
                <asp:Label ID="FiyatLabel" runat="server" Text='<%# Eval("Fiyat") %>' />
            </td>
            <td>
                <asp:Label ID="ResimLabel" runat="server" Text='<%# Eval("Resim") %>' />
            </td>
            <td>
                <asp:Label ID="AciklamaLabel" runat="server" Text='<%# Eval("Aciklama") %>' />
            </td>
        </tr>
    </ItemTemplate>
    <LayoutTemplate>
        <table runat="server">
            <tr runat="server">
                <td runat="server">
                    <table id="itemPlaceholderContainer" runat="server" border="1" style="background-color: #FFFFFF;border-collapse: collapse;border-color: #999999;border-style:none;border-width:1px;font-family: Verdana, Arial, Helvetica, sans-serif;">
                        <tr runat="server" style="background-color:#DCDCDC;color: #000000;">
                            <th runat="server"></th>
                            <th runat="server">UrunID</th>
                            <th runat="server">UrunAdi</th>
                            <th runat="server">KategoriID</th>
                            <th runat="server">Fiyat</th>
                            <th runat="server">Resim</th>
                            <th runat="server">Aciklama</th>
                        </tr>
                        <tr id="itemPlaceholder" runat="server">
                        </tr>
                    </table>
                </td>
            </tr>
            <tr runat="server">
                <td runat="server" style="text-align: center;background-color: #CCCCCC;font-family: Verdana, Arial, Helvetica, sans-serif;color: #000000;">
                    <asp:DataPager ID="DataPager1" runat="server">
                        <Fields>
                            <asp:NextPreviousPagerField ButtonType="Button" ShowFirstPageButton="True" ShowNextPageButton="False" ShowPreviousPageButton="False" />
                            <asp:NumericPagerField />
                            <asp:NextPreviousPagerField ButtonType="Button" ShowLastPageButton="True" ShowNextPageButton="False" ShowPreviousPageButton="False" />
                        </Fields>
                    </asp:DataPager>
                </td>
            </tr>
        </table>
    </LayoutTemplate>
    <SelectedItemTemplate>
        <tr style="background-color:#008A8C;font-weight: bold;color: #FFFFFF;">
            <td>
                <asp:Button ID="DeleteButton" runat="server" CommandName="Delete" Text="Delete" />
                <asp:Button ID="EditButton" runat="server" CommandName="Edit" Text="Edit" />
            </td>
            <td>
                <asp:Label ID="UrunIDLabel" runat="server" Text='<%# Eval("UrunID") %>' />
            </td>
            <td>
                <asp:Label ID="UrunAdiLabel" runat="server" Text='<%# Eval("UrunAdi") %>' />
            </td>
            <td>
                <asp:Label ID="KategoriIDLabel" runat="server" Text='<%# Eval("KategoriID") %>' />
            </td>
            <td>
                <asp:Label ID="FiyatLabel" runat="server" Text='<%# Eval("Fiyat") %>' />
            </td>
            <td>
                <asp:Label ID="ResimLabel" runat="server" Text='<%# Eval("Resim") %>' />
            </td>
            <td>
                <asp:Label ID="AciklamaLabel" runat="server" Text='<%# Eval("Aciklama") %>' />
            </td>
        </tr>
    </SelectedItemTemplate>
</asp:ListView>
<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:CalısmaConnectionString %>" DeleteCommand="DELETE FROM [tbl_Urunler] WHERE [UrunID] = @UrunID" InsertCommand="INSERT INTO [tbl_Urunler] ([UrunAdi], [KategoriID], [Fiyat], [Resim], [Aciklama]) VALUES (@UrunAdi, @KategoriID, @Fiyat, @Resim, @Aciklama)" SelectCommand="SELECT * FROM [tbl_Urunler]" UpdateCommand="UPDATE [tbl_Urunler] SET [UrunAdi] = @UrunAdi, [KategoriID] = @KategoriID, [Fiyat] = @Fiyat, [Resim] = @Resim, [Aciklama] = @Aciklama WHERE [UrunID] = @UrunID">
    <DeleteParameters>
        <asp:Parameter Name="UrunID" Type="Int32" />
    </DeleteParameters>
    <InsertParameters>
        <asp:Parameter Name="UrunAdi" Type="String" />
        <asp:Parameter Name="KategoriID" Type="Int32" />
        <asp:Parameter Name="Fiyat" Type="Decimal" />
        <asp:Parameter Name="Resim" Type="String" />
        <asp:Parameter Name="Aciklama" Type="String" />
    </InsertParameters>
    <UpdateParameters>
        <asp:Parameter Name="UrunAdi" Type="String" />
        <asp:Parameter Name="KategoriID" Type="Int32" />
        <asp:Parameter Name="Fiyat" Type="Decimal" />
        <asp:Parameter Name="Resim" Type="String" />
        <asp:Parameter Name="Aciklama" Type="String" />
        <asp:Parameter Name="UrunID" Type="Int32" />
    </UpdateParameters>
</asp:SqlDataSource>
<asp:ListView ID="ListViewKategoriler" runat="server" DataKeyNames="KategoriID" DataSourceID="SqlDataSource2">
    <AlternatingItemTemplate>
        <tr style="background-color:#FFF8DC;">
            <td>
                <asp:Label ID="KategoriIDLabel" runat="server" Text='<%# Eval("KategoriID") %>' />
            </td>
            <td>
                <asp:Label ID="KategoriAdiLabel" runat="server" Text='<%# Eval("KategoriAdi") %>' />
            </td>
        </tr>
    </AlternatingItemTemplate>
    <EditItemTemplate>
        <tr style="background-color:#008A8C;color: #FFFFFF;">
            <td>
                <asp:Button ID="UpdateButton" runat="server" CommandName="Update" Text="Update" />
                <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Cancel" />
            </td>
            <td>
                <asp:Label ID="KategoriIDLabel1" runat="server" Text='<%# Eval("KategoriID") %>' />
            </td>
            <td>
                <asp:TextBox ID="KategoriAdiTextBox" runat="server" Text='<%# Bind("KategoriAdi") %>' />
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
                <asp:TextBox ID="KategoriAdiTextBox" runat="server" Text='<%# Bind("KategoriAdi") %>' />
            </td>
        </tr>
    </InsertItemTemplate>
    <ItemTemplate>
        <tr style="background-color:#DCDCDC;color: #000000;">
            <td>
                <asp:Label ID="KategoriIDLabel" runat="server" Text='<%# Eval("KategoriID") %>' />
            </td>
            <td>
                <asp:Label ID="KategoriAdiLabel" runat="server" Text='<%# Eval("KategoriAdi") %>' />
            </td>
        </tr>
    </ItemTemplate>
    <LayoutTemplate>
        <table runat="server">
            <tr runat="server">
                <td runat="server">
                    <table id="itemPlaceholderContainer" runat="server" border="1" style="background-color: #FFFFFF;border-collapse: collapse;border-color: #999999;border-style:none;border-width:1px;font-family: Verdana, Arial, Helvetica, sans-serif;">
                        <tr runat="server" style="background-color:#DCDCDC;color: #000000;">
                            <th runat="server">KategoriID</th>
                            <th runat="server">KategoriAdi</th>
                        </tr>
                        <tr id="itemPlaceholder" runat="server">
                        </tr>
                    </table>
                </td>
            </tr>
            <tr runat="server">
                <td runat="server" style="text-align: center;background-color: #CCCCCC;font-family: Verdana, Arial, Helvetica, sans-serif;color: #000000;">
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
        <tr style="background-color:#008A8C;font-weight: bold;color: #FFFFFF;">
            <td>
                <asp:Label ID="KategoriIDLabel" runat="server" Text='<%# Eval("KategoriID") %>' />
            </td>
            <td>
                <asp:Label ID="KategoriAdiLabel" runat="server" Text='<%# Eval("KategoriAdi") %>' />
            </td>
        </tr>
    </SelectedItemTemplate>
</asp:ListView>
<asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:CalısmaConnectionString %>" SelectCommand="SELECT * FROM [tbl_Kategoriler]"></asp:SqlDataSource>
</asp:Content>
