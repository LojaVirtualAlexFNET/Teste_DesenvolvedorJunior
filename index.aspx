<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="Teste_DesenvolvedorJunior.index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>Alex Nunes Feitoza- Teste Desenvolvedor Junior</title>

    <link href="css/bootstrap.css" rel="stylesheet" />

    <style>
        #linkPesquisa {
            font-size: 20px;
        }
        .MargemLetras{
            margin-right:20px;
        }
    </style>
</head>
<body>
    <div class="container">
        <form id="form1" runat="server">

            
            <div class="card">
  <div class="card-header">
    <h2>Pesquisa</h2>
  </div>
  <div class="card-block">
    <blockquote class="card-blockquote">
      <div class="text-center " id="linkPesquisa">
          
                <asp:LinkButton ID="lnkA" runat="server" OnClick="lnkA_Click" CssClass="MargemLetras"> A </asp:LinkButton>
                <asp:LinkButton ID="lnkB" runat="server" OnClick="lnkB_Click" CssClass="MargemLetras"> B </asp:LinkButton>
                <asp:LinkButton ID="lnkC" runat="server" CssClass="MargemLetras" OnClick="lnkC_Click"> C </asp:LinkButton>
                <asp:LinkButton ID="lnkD" runat="server" CssClass="MargemLetras" OnClick="lnkD_Click"> D </asp:LinkButton>
                <asp:LinkButton ID="lnkE" runat="server" CssClass="MargemLetras" OnClick="lnkE_Click"> E </asp:LinkButton>
                <asp:LinkButton ID="lnkF" runat="server" CssClass="MargemLetras" OnClick="lnkF_Click"> F </asp:LinkButton>
                <asp:LinkButton ID="lnkG" runat="server" CssClass="MargemLetras" OnClick="lnkG_Click"> G </asp:LinkButton>
                <asp:LinkButton ID="lnkH" runat="server" CssClass="MargemLetras" OnClick="lnkH_Click"> H </asp:LinkButton>
                <asp:LinkButton ID="lnkI" runat="server" CssClass="MargemLetras" OnClick="lnkI_Click"> I </asp:LinkButton>
                <asp:LinkButton ID="lnkJ" runat="server" CssClass="MargemLetras" OnClick="lnkJ_Click"> J </asp:LinkButton>
                <asp:LinkButton ID="lnkK" runat="server" CssClass="MargemLetras" OnClick="lnkK_Click"> K </asp:LinkButton>
                <asp:LinkButton ID="lnkL" runat="server" CssClass="MargemLetras" OnClick="lnkL_Click"> L </asp:LinkButton>
                <asp:LinkButton ID="lnkM" runat="server" CssClass="MargemLetras" OnClick="lnkM_Click"> M </asp:LinkButton>
                <asp:LinkButton ID="lnkN" runat="server" CssClass="MargemLetras" OnClick="lnkN_Click"> N </asp:LinkButton>
                <asp:LinkButton ID="lnkO" runat="server" CssClass="MargemLetras" OnClick="lnkO_Click"> O </asp:LinkButton>
                <asp:LinkButton ID="lnkP" runat="server" CssClass="MargemLetras" OnClick="lnkP_Click"> P </asp:LinkButton>
                <asp:LinkButton ID="lnkQ" runat="server" CssClass="MargemLetras" OnClick="lnkQ_Click"> Q </asp:LinkButton>
                <asp:LinkButton ID="lnkR" runat="server" CssClass="MargemLetras" OnClick="lnkR_Click"> R </asp:LinkButton>
                <asp:LinkButton ID="lnkS" runat="server" CssClass="MargemLetras" OnClick="lnkS_Click"> S </asp:LinkButton>
                <asp:LinkButton ID="lnkT" runat="server" CssClass="MargemLetras" OnClick="lnkT_Click"> T </asp:LinkButton>

                <asp:LinkButton ID="lnkU" runat="server" CssClass="MargemLetras" OnClick="lnkU_Click"> U </asp:LinkButton>
                <asp:LinkButton ID="lnkV" runat="server" CssClass="MargemLetras" OnClick="lnkV_Click"> V </asp:LinkButton>
                <asp:LinkButton ID="lnkX" runat="server" CssClass="MargemLetras" OnClick="lnkX_Click"> X </asp:LinkButton>
                <asp:LinkButton ID="lnkY" runat="server" CssClass="MargemLetras" OnClick="lnkY_Click"> Y </asp:LinkButton>
                <asp:LinkButton ID="lnkW" runat="server" CssClass="MargemLetras" OnClick="lnkW_Click"> W </asp:LinkButton>
                <asp:LinkButton ID="lnkZ" runat="server" CssClass="MargemLetras" OnClick="lnkZ_Click"> Z </asp:LinkButton>
                <asp:LinkButton ID="lnkTodos" runat="server" OnClick="lnkTodos_Click">Todos</asp:LinkButton>

            </div>
    </blockquote>
  </div>
</div>

            <div>
                <asp:GridView ID="gdvContato" runat="server" CssClass="table table-condensed" AutoGenerateColumns="False" OnRowCommand="gdvContato_RowCommand" OnRowDataBound="gdvContato_RowDataBound">
                    <Columns>
                        <asp:HyperLinkField DataNavigateUrlFields="Id" DataNavigateUrlFormatString="alterarContato.aspx?Id={0}" DataTextField="Nome" Target="_blank" Text="Nome" />
                        <asp:BoundField DataField="TELEFONE1" HeaderText="Telefone1" />
                        <asp:BoundField DataField="TELEFONE2" HeaderText="Telefone2" />
                        <asp:BoundField DataField="EMAIL1" HeaderText="Email1" />
                        <asp:BoundField DataField="EMAIL2" HeaderText="Email2" />
                        <asp:TemplateField HeaderText="Ação">
                            <ItemTemplate>
                                <asp:LinkButton ID="lnkExcluir" runat="server" CommandName="Excluir" CommandArgument='<% #Eval("Id") %>'>Excluir</asp:LinkButton>
                            </ItemTemplate>
                        </asp:TemplateField>
                    </Columns>
                    <EmptyDataTemplate>
                        <asp:LinkButton ID="lnkExcluir" runat="server">Excluir</asp:LinkButton>
                    </EmptyDataTemplate>
                </asp:GridView>
            </div>
            <div class="form-group">
                <asp:Button Text="Novo" runat="server" CssClass="btn btn-success" ID="btnNovo" OnClick="btnNovo_Click" />
            </div>


            <asp:Panel ID="Panel1" runat="server" Height="63px" Visible="false">

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
                        <asp:Button Text="Salvar" runat="server" CssClass="btn btn-success" OnClick="btnSalvar_Click" ID="btnSalvar" />
                    </div>
                </div>

            </asp:Panel>
        </form>
    </div>

</body>
</html>
