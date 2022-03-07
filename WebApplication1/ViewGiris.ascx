<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="ViewGiris.ascx.cs" Inherits="WebApplication1.VievGiris" %>
<p>
    <asp:MultiView ID="MultiView1" runat="server" ActiveViewIndex="0">
        <asp:View ID="View1" runat="server">
            Kullanıcı Adı<br />
            <asp:TextBox ID="txtKullanıcıAdi" runat="server"></asp:TextBox>
            <br />
            Şifre<br />
            <asp:TextBox ID="txtSifre" runat="server"></asp:TextBox>
            <br />
            <asp:Button ID="btnGiris" runat="server" OnClick="btnGiris_Click" Text="Button" />
        </asp:View>
        <br />
        <asp:View ID="View2" runat="server">
            <asp:Label ID="lblHosgeldin" runat="server" Text="Label"></asp:Label>
            <br />
            <br />
            <asp:LinkButton ID="LinkBtnCikis" runat="server" OnClick="LinkBtnCikis_Click">Çıkış</asp:LinkButton>
        </asp:View>
    </asp:MultiView>
</p>
<p>
    &nbsp;</p>
<p>
    &nbsp;</p>
<p>
    &nbsp;</p>

