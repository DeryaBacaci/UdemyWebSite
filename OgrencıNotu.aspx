<%@ Page Title="" Language="C#" MasterPageFile="~/Ogrencı.master" AutoEventWireup="true" CodeFile="OgrencıNotu.aspx.cs" Inherits="OgrencıNotu" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">

      <table class="table table-bordered table-hover">

        <tr>
           
            <th scope="col">ÖĞRENCİ ID</th>
            <th scope="col">AD SOYAD</th>
            <th scope="col">DERS ADI</th>
            <th scope="col">SINAV 1</th>
            <th scope="col">SINAV 2</th>
            <th scope="col">SINAV 3</th>
            <th scope="col">ORTALAMA</th>
            <th scope="col">DURUM</th>
       
        <tbody>
            <asp:Repeater ID="Repeater1" runat="server">

                <ItemTemplate>
                    <tr>
                      
                        <td><%# Eval("OGRENCIID")%></td>
                        <td><%# Eval("OGRENCIADSOYAD")%></td>
                        <td><%# Eval("DERSAD")%></td>
                        <td><%# Eval("sınav1")%></td>
                        <td><%# Eval("sınav2")%></td>
                        <td><%# Eval("sınav3")%></td>
                        <td><%# Eval("ORTALAMA")%></td>
                        <td><%# Eval("DURUM")%></td>
                       
                    </tr>

                </ItemTemplate>

            </asp:Repeater>
        </tbody>
    </table>

</asp:Content>

