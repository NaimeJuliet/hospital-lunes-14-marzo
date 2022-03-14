using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using CapaEntidad;
using capaReglasNegocio;
using capaDatos;
using System.Data;


namespace FormulariosHospital_Karen
{
    public partial class frmCita : System.Web.UI.Page
    {
        ClsECita oEntCitas = new ClsECita();
        ClsRN_Cita oRegNCitas = new ClsRN_Cita();

        
        public void LimpiarTextos() 
        {
            txtHora.Text = "";
            txtAcompanante.Text = "";
            txtCita.Text = "";
            txtDiagnostico.Text = "";
            txtActivo.Text = "";
            txtFecha.Text = "";
            txtId_Medico.Text = "";
            txtId_Paciente.Text = "";
            txtValor.Text = "";
        }

        public void Activar()
        {
            txtHora.Enabled = true;
            txtAcompanante.Enabled = true;
            txtCita.Enabled = true;
            txtDiagnostico.Enabled = true;
            txtActivo.Enabled = true;
            txtFecha.Enabled = true;
            txtId_Medico.Enabled = true;
            txtId_Paciente.Enabled = true;
            txtValor.Enabled = true;
            btnAgendar.Enabled = true;
        }

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnAgendar_Click(object sender, EventArgs e)
        {
            oEntCitas.CodCita = txtCita.Text;
            oEntCitas.Fecha = Convert.ToDateTime(txtFecha.Text);
            oEntCitas.Hora = Convert.ToDateTime(txtHora.Text);
            oEntCitas.IdPaciente = txtId_Paciente.Text;
            oEntCitas.IdDoctor = txtId_Medico.Text;
            oEntCitas.Valor = Convert.ToInt32(txtValor.Text);
            oEntCitas.Diagnostico = txtDiagnostico.Text;
            oEntCitas.NombreAcompanante = txtAcompanante.Text;

            if(oRegNCitas.guardar_cita(oEntCitas))
            {
                lblCodCita.Text = "Registro guardado exitosamente.";
            }
            else
            {
                lblCodCita.Text = "ERROR......al guardar el registro";
            }
        }

        protected void btnNuevo_Click(object sender, EventArgs e)
        {
            txtCita.Text = "";
            LimpiarTextos();
            txtCita.Focus();
        }

        protected void btnConsultar_Click(object sender, EventArgs e)
        {
            if (txtCita.Text == "")

            {

                lblCodCita.Text = "No se ha digitado codigo";

                txtCita.Focus();

            }
            else

            {

                DataSet ds = new DataSet();

                oEntCitas.CodCita = txtCita.Text;

                ds = oRegNCitas.Consultar_Cita(oEntCitas);

                if (ds.Tables[0].Rows.Count == 0)

                {

                    LimpiarTextos();

                    lblCodCita.Text = "Cita disponible";
                    Activar();
                    txtFecha.Focus();
                    
                }

                else

                {

                    txtFecha.Text = ds.Tables[0].Rows[0]["fecha"].ToString();

                    txtHora.Text = ds.Tables[0].Rows[0]["hora"].ToString();

                    txtId_Paciente.Text = ds.Tables[0].Rows[0]["Id_paciente"].ToString();

                    txtId_Medico.Text = ds.Tables[0].Rows[0]["id_medico"].ToString();

                    txtValor.Text = ds.Tables[0].Rows[0]["valor"].ToString();

                    txtDiagnostico.Text = ds.Tables[0].Rows[0]["diagnostico"].ToString();

                    txtAcompanante.Text = ds.Tables[0].Rows[0]["nom_acompanante"].ToString();

                    txtActivo.Text = ds.Tables[0].Rows[0]["activo"].ToString();

                }

            }

        }


        protected void btnLimpiar_Click(object sender, EventArgs e)
        {
            txtCita.Text = "";
            LimpiarTextos();
            txtCita.Focus();
        }


    }
}