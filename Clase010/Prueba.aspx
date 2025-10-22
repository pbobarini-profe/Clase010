<%@ Page Title="" Language="C#" MasterPageFile="~/PaginaMaestra.Master" AutoEventWireup="true" CodeBehind="Prueba.aspx.cs" Inherits="Clase010.Prueba" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="Prueba.css" rel="stylesheet" />
    <style type="text/css">
        .auto-style1 {
            width: 400px;
            height: 200px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container panel2">

        FORMULARIO SIN AJAX<br />
        <hr />
        <asp:Button ID="Button1" runat="server" Text="ENVIAR" OnClick="Button1_Click" />
        <asp:Label ID="Label1" runat="server"></asp:Label>
        <br />
        <br />
                FORMULARIO CON AJAX<br />
        <hr />
        <asp:UpdatePanel ID="UpdatePanel1" runat="server">
            <ContentTemplate>
                <asp:Button ID="Button2" runat="server" Text="ENVIAR" OnClick="Button2_Click" />
                <asp:Timer ID="Timer1" runat="server" Interval="1000" OnTick="Timer1_Tick">
                </asp:Timer>
                <asp:UpdateProgress ID="UpdateProgress1" runat="server">

                    <ProgressTemplate>
                        <img alt="Cargando" class="auto-style1" src="3d6aa9082f3c9e285df9970dc7b762ac%20-%20copia.gif" />
                    </ProgressTemplate>

                </asp:UpdateProgress>
                <br />
                <asp:Label ID="Label2" runat="server"></asp:Label>
                <asp:ScriptManager ID="ScriptManager1" runat="server">
                </asp:ScriptManager>
            </ContentTemplate>
        </asp:UpdatePanel>
        <br />
        <br />
    </div>
</asp:Content>
