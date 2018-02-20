using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Teste_DesenvolvedorJunior.DAO;
using Teste_DesenvolvedorJunior.Models;

namespace Teste_DesenvolvedorJunior
{
    public partial class alterarContato : System.Web.UI.Page
    {
        string Id = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            Id = Request.QueryString["Id"].ToString();
            if (!IsPostBack)
            {
                ObterContato(Convert.ToInt32(Id));
            }
        }

        private void ObterContato(int Id)
        {

            Contato contato = new DaoContato().Obter(Convert.ToInt32(Id));
            txtNome.Text = contato.Nome;
            txtEmail1.Text = contato.Email1;
            txtEmail2.Text = contato.Email2;
            txtTelefone1.Text = contato.Telefone1;
            txtTelefone2.Text = contato.Telefone2;

        }

        protected void Unnamed1_Click(object sender, EventArgs e)
        {
            DaoContato daoContato = new DaoContato();
             
                Contato c = new Contato()
                {
                    Id = Convert.ToInt32(Id),
                    Nome = txtNome.Text,
                    Email1 = txtEmail1.Text,
                    Email2 = txtEmail2.Text,
                    Telefone1 = txtTelefone1.Text,
                    Telefone2 = txtTelefone2.Text
                };

                daoContato.Alterar(c);
                Response.Redirect("index.aspx");
             
        }

        private void LimpaCampos()
        {
            txtNome.Text = "";
            txtEmail1.Text = "";
            txtEmail2.Text = "";
            txtTelefone1.Text = "";
            txtTelefone2.Text = "";
        }
    }
}
