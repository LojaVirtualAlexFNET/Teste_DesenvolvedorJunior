<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="alterarContato.aspx.cs" Inherits="Teste_DesenvolvedorJunior.alterarContato" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>Alterar Contato</title>
    <link href="css/bootstrap.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <div class="container">
            <div class="form-group">
                <asp:Label ID="NomeLabel" runat="server" Text="Nome:" CssClass="control-label">
                </asp:Label><asp:TextBox ID="txtNome" runat="server" CssClass="form-control"></asp:TextBox>
            </div>
            <div class="form-group">
                <asp:Label ID="Label2" runat="server" Text="E-mail1:" CssClass="control-label">
                </asp:Label><asp:TextBox ID="txtEmail1" runat="server" CssClass="form-control"></asp:TextBox>
            </div>
            <div class="form-group">
                <asp:Label ID="Label3" runat="server" Text="Email1" CssClass="control-label">
                </asp:Label><asp:TextBox ID="txtEmail2" runat="server" CssClass="form-control"></asp:TextBox>
            </div>
            <div class="form-group">
                <asp:Label ID="Label4" runat="server" Text="Telefone1" CssClass="control-label">
                </asp:Label><asp:TextBox ID="txtTelefone1" runat="server" CssClass="form-control"></asp:TextBox>
            </div>
            <div class="form-group">
                <asp:Label ID="Label5" runat="server" Text="Telefone2" CssClass="control-label">
                </asp:Label><asp:TextBox ID="txtTelefone2" runat="server" CssClass="form-control"></asp:TextBox>
            </div>


            <div class="form-group">
                <asp:Button Text="Salvar" runat="server" CssClass="btn btn-success" OnClick="Unnamed1_Click" />
            </div>
        </div>
    </form>
</body>
</html>
