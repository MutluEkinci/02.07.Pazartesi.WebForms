<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Anasayfa.aspx.cs" Inherits="WebApplication1.WebForm2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:DataList ID="DataList1" runat="server" DataKeyField="UrunID" DataSourceID="SqlDataSource1" RepeatColumns="6">
    <ItemTemplate>
        <asp:Image ID="Image1" runat="server" Height="100px" ImageUrl='<%# Eval("Resim", "Resimler/{0}") %>' Width="100px" />
        <br />
        <br />
        UrunAdi:
        <asp:Label ID="UrunAdiLabel" runat="server" Text='<%# Eval("UrunAdi") %>' />
        <br />
        Fiyat:
        <asp:Label ID="FiyatLabel" runat="server" Text='<%# Eval("Fiyat") %>' />
        <br />
        <br />
        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl='<%# Eval("UrunID", "detay.aspx?id={0}") %>'>Detay</asp:HyperLink>
<br />
    </ItemTemplate>
</asp:DataList>
<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:CalısmaConnectionString %>" SelectCommand="SELECT [UrunID], [UrunAdi], [Fiyat], [Resim] FROM [tbl_Urunler]"></asp:SqlDataSource>
</asp:Content>
