<%@ Page Title="" Language="C#" MasterPageFile="~/Ogrencı.master" AutoEventWireup="true" CodeFile="OgrencıGuncelle2.aspx.cs" Inherits="OgrencıGuncelle2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="Server">

    <form id="FORM1" runat="server">

        <div class="form-group" style="background-color: #4f7154">
            <div>
                <asp:TextBox ID="txtnumara" runat="server" CssClass="form-control" Enabled="False">Numara :</asp:TextBox>
            </div>

            <div>
                <asp:TextBox ID="txtsıfre" runat="server" CssClass="form-control">Şifre :</asp:TextBox>
            </div>
            <br />
            <div>
                <asp:TextBox ID="txtsıfretekrar" runat="server" CssClass="form-control">Şifre Tekrar :</asp:TextBox>
            </div>
            <br />
        </div>
        <asp:Button ID="Button1" runat="server" Text="Güncelle" CssClass="btn btn-success" OnClick="Button1_Click" />

    </form>
</asp:Content>

