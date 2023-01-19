﻿<%@ Page Title="" Language="C#" MasterPageFile="~/ÖGRETMEN.master" AutoEventWireup="true" CodeFile="NotListesi.aspx.cs" Inherits="NotListesi" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="Server">
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
            <th scope="col">GÜNCELLE</th>
        </tr>

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
                        <td>
                            <asp:HyperLink NavigateUrl='<%#"NotGuncelle.Aspx?NOTID="+Eval("NOTID")%>' ID="HyperLink1" runat="server" CssClass="btn btn-success">GÜNCELLE</asp:HyperLink>
                        </td>
                    </tr>

                </ItemTemplate>

            </asp:Repeater>
        </tbody>
    </table>
</asp:Content>

