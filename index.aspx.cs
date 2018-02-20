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
    public partial class index : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                ListarContato();
            }

        }

        public void ListarContato()
        {
            DaoContato dao = new DaoContato();
            List<Contato> lstContatos = new List<Contato>();
            lstContatos = dao.Listar();

            gdvContato.DataSource = lstContatos;
            gdvContato.DataBind();
        }

        protected void lnkA_Click(object sender, EventArgs e)
        {
            string letra = "A";
            Pesquisa(letra);
        }

        private void Pesquisa(string letra)
        {
            DaoContato dao = new DaoContato();
            List<Contato> lstContatos = new List<Contato>();
            lstContatos = dao.BuscarPorLetra(letra);

            gdvContato.DataSource = lstContatos;
            gdvContato.DataBind();
        }

        protected void btnNovo_Click(object sender, EventArgs e)
        {

            Panel1.Visible = true;
            btnNovo.Visible = false;
        }

        protected void btnSalvar_Click(object sender, EventArgs e)
        {

            DaoContato daoContato = new DaoContato();

            string nome = txtNome.Text;
            string email1 = txtEmail1.Text;
            string email2 = txtEmail2.Text;
            string telefone1 = txtTelefone1.Text;
            string telefone2 = txtTelefone2.Text;
            

            Contato c = new Contato()
            {
                Nome = nome,
                Email1 = email1,
                Email2 = email2,
                Telefone1 = telefone1,
                Telefone2 = telefone2
            };

            daoContato.Iserir(c);
            Panel1.Visible = false;
            txtNome.Text = "";
            txtEmail1.Text = "";
            txtEmail2.Text = "";
            txtTelefone1.Text = "";
            txtTelefone2.Text = "";
            ListarContato();
            btnNovo.Visible = true;
        }

        protected void gdvContato_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            string strCommand = e.CommandName;
            Id = Convert.ToInt32(e.CommandArgument);
            switch (strCommand)
            {
                case "Excluir":
                    object objValor = e.CommandArgument;
                    DaoContato daoContato = new DaoContato();
                    daoContato.Excluir(Id);
                    break;
            }
            ListarContato();
        }

        public int Id
        {
            get
            {
                if (ViewState["Id"] != null)

                    return Convert.ToInt32(ViewState["Id"]);
                return 0;
            }
            set
            {
                ViewState["Id"] = value;
            }

        }

        protected void lnkB_Click(object sender, EventArgs e)
        {
            string letra = "B";
            Pesquisa(letra);
        }

        protected void lnkC_Click(object sender, EventArgs e)
        {
            string letra = "C";
            Pesquisa(letra);
        }

        protected void lnkD_Click(object sender, EventArgs e)
        {
            string letra = "D";
            Pesquisa(letra);
        }

        protected void lnkE_Click(object sender, EventArgs e)
        {
            string letra = "E";
            Pesquisa(letra);
        }

        protected void lnkF_Click(object sender, EventArgs e)
        {
            string letra = "F";
            Pesquisa(letra);
        }

        protected void lnkG_Click(object sender, EventArgs e)
        {
            string letra = "G";
            Pesquisa(letra);
        }

        protected void lnkH_Click(object sender, EventArgs e)
        {
            string letra = "H";
            Pesquisa(letra);
        }

        protected void lnkI_Click(object sender, EventArgs e)
        {
            string letra = "I";
            Pesquisa(letra);
        }

        protected void lnkJ_Click(object sender, EventArgs e)
        {
            string letra = "J";
            Pesquisa(letra);
        }

        protected void lnkK_Click(object sender, EventArgs e)
        {
            string letra = "K";
            Pesquisa(letra);
        }

        protected void lnkL_Click(object sender, EventArgs e)
        {
            string letra = "L";
            Pesquisa(letra);
        }

        protected void lnkM_Click(object sender, EventArgs e)
        {
            string letra = "M";
            Pesquisa(letra);
        }

        protected void lnkN_Click(object sender, EventArgs e)
        {
            string letra = "N";
            Pesquisa(letra);
        }

        protected void lnkO_Click(object sender, EventArgs e)
        {
            string letra = "O";
            Pesquisa(letra);
        }

        protected void lnkP_Click(object sender, EventArgs e)
        {
            string letra = "P";
            Pesquisa(letra);
        }

        protected void lnkQ_Click(object sender, EventArgs e)
        {
            string letra = "Q";
            Pesquisa(letra);
        }

        protected void lnkR_Click(object sender, EventArgs e)
        {
            string letra = "R";
            Pesquisa(letra);
        }

        protected void lnkS_Click(object sender, EventArgs e)
        {
            string letra = "S";
            Pesquisa(letra);
        }

        protected void lnkT_Click(object sender, EventArgs e)
        {
            string letra = "T";
            Pesquisa(letra);
        }

        protected void lnkU_Click(object sender, EventArgs e)
        {
            string letra = "U";
            Pesquisa(letra);
        }

        protected void lnkV_Click(object sender, EventArgs e)
        {
            string letra = "V";
            Pesquisa(letra);
        }

        protected void lnkX_Click(object sender, EventArgs e)
        {
            string letra = "X";
            Pesquisa(letra);
        }

        protected void lnkY_Click(object sender, EventArgs e)
        {
            string letra = "Y";
            Pesquisa(letra);
        }

        protected void lnkW_Click(object sender, EventArgs e)
        {
            string letra = "W";
            Pesquisa(letra);
        }

        protected void lnkZ_Click(object sender, EventArgs e)
        {
            string letra = "Z";
            Pesquisa(letra);
        }

        protected void lnkTodos_Click(object sender, EventArgs e)
        {
            ListarContato();
        }

        protected void gdvContato_RowDataBound(object sender, GridViewRowEventArgs e)
        {
            if (e.Row.RowType == DataControlRowType.DataRow)
            {

                if (e.Row.Cells[2].Text == "&nbsp;")
                {
                    e.Row.Cells[2].Text = "    --   ";
                }
                if (e.Row.Cells[3].Text == "&nbsp;")
                {
                    e.Row.Cells[3].Text = "    --   ";
                }
                if (e.Row.Cells[4].Text == "&nbsp;")
                {
                    e.Row.Cells[4].Text = "    --   ";
                }
                if (e.Row.Cells[5].Text == "&nbsp;")
                {
                    e.Row.Cells[5].Text = "    --   ";
                }
            }
        }
    }
}