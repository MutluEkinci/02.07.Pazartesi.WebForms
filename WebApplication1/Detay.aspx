<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Detay.aspx.cs" Inherits="WebApplication1.WebForm3" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" DataKeyNames="UrunID" DataSourceID="SqlDataSource1" Height="50px" Width="125px">
    <Fields>
        <asp:BoundField DataField="UrunAdi" HeaderText="UrunAdi" SortExpression="UrunAdi" />
        <asp:BoundField DataField="Fiyat" HeaderText="Fiyat" SortExpression="Fiyat" />
        <asp:BoundField DataField="Aciklama" HeaderText="Aciklama" SortExpression="Aciklama" />
        <asp:BoundField DataField="KategoriAdi" HeaderText="KategoriAdi" SortExpression="KategoriAdi" />
    </Fields>
</asp:DetailsView>
<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:CalısmaConnectionString %>" SelectCommand="SELECT tbl_Urunler.UrunID, tbl_Urunler.UrunAdi, tbl_Urunler.Fiyat, tbl_Urunler.Aciklama, tbl_Kategoriler.KategoriAdi FROM tbl_Urunler INNER JOIN tbl_Kategoriler ON tbl_Urunler.KategoriID = tbl_Kategoriler.KategoriID WHERE (tbl_Urunler.UrunID = @UrunID)">
    <SelectParameters>
        <asp:QueryStringParameter Name="UrunID" QueryStringField="id" />
    </SelectParameters>
</asp:SqlDataSource>
</asp:Content>
