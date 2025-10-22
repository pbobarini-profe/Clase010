<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ControlesFetch.aspx.cs" Inherits="Clase010.ControlesAjax" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:ScriptManager ID="ScriptManager1" runat="server" EnablePageMethods="true" />
            <asp:Button ID="Button1" OnClientClick ="obtenerHora();return false;" runat="server" Text="Obtener hora con fetch" />
            <p id="resultado"></p>
            <asp:Button ID="Button2" OnClientClick ="leerProductos();return false;" runat="server" Text="Obtener productos con fetch" />
            <ul id="lista"></ul>
        </div>
    </form>
    <script>
        async function obtenerHora() {
            const response = await fetch('ControlesFetch.aspx/GetHora', {
                method: 'POST',
                headers: {
                    'Content-Type': 'application/json'
                },
                body: '{}'
            });

            const data = await response.json();
            document.getElementById("resultado").innerText = data.d; //
        }
        async function leerProductos() {
            const response = await fetch('ControlesFetch.aspx/GetProductos', {
                method: 'POST',
                headers: {
                    'Content-Type': 'application/json'
                },
                body: '{}'
            });
            const lista = document.getElementById('lista');
            const data = await response.json();
            const productos = JSON.parse(data.d)
            productos.forEach(
                p => {
                        const item = document.createElement("li");
                        item.textContent = p;
                        lista.appendChild(item);
                        }
                    )
            
        }
    </script>
</body>
</html>
