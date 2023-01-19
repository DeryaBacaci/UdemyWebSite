<%@ Page Title="" Language="C#" MasterPageFile="~/ÖGRETMEN.master" AutoEventWireup="true" CodeFile="MesajOluştur.aspx.cs" Inherits="MesajOluştur" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="Server">

    <form id="FORM1" runat="server">

        <div class="form-group">
            <div>
                <asp:Label for="TxtGonderen" runat="server">Gönderen</asp:Label>
                <asp:TextBox ID="TxtGonderen" runat="server" CssClass="form-control"></asp:TextBox>

            </div>
            <br />
            <div>
                <asp:Label for="TxtAlıcı" runat="server">Alıcı</asp:Label>
                <asp:TextBox ID="TxtAlıcı" runat="server" CssClass="form-control"></asp:TextBox>
            </div>
            <br />
            <div>
                <asp:Label for="TxtBaslık" runat="server">Mesaj Başlık</asp:Label>
                <asp:TextBox ID="TxtBaslık" runat="server" CssClass="form-control"></asp:TextBox>
                <br />
            </div>
            <div>
                <asp:Label for="TxtIcerık" runat="server">Mesaj İçerik</asp:Label>
                <textarea id="TxtIcerık" cols="20" rows="6" class="form-control" runat="server"></textarea>
            </div>
            <br />
            <asp:Button ID="BtnGonder" runat="server" Text="Mesaj Gönder" CssClass="btn btn-info" OnClick="BtnGonder_Click" />
        </div>
        
    </form>

</asp:Content>

