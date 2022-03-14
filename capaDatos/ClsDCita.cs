using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data;
using System.Data.SqlClient;
using CapaEntidad;

namespace capaDatos
{
    public class ClsDCita
    {
        ClsDConexion oConexion = new ClsDConexion();

        SqlCommand OCmd = new SqlCommand();

        


        public DataSet Consultar_Cita(ClsECita ocitas)

        {
            try
            {

                OCmd.Connection = oConexion.conectar("BDHospital");
                OCmd.CommandType = CommandType.StoredProcedure;
                OCmd.CommandText = "sp_consultar_citas";
                OCmd.Parameters.Add("@pcod_cita", ocitas.CodCita);
                SqlDataAdapter da = new SqlDataAdapter(OCmd);
                DataSet ds = new DataSet();
                da.Fill(ds);
                return ds;

            }

            catch (Exception err)
            {
                throw new Exception(err.Message);
            }

        }

        public bool guardar_citas(ClsECita ocitas)
        {
            try
            {
                OCmd.Connection = oConexion.conectar("BDHospital");
                OCmd.CommandType = CommandType.StoredProcedure;
                OCmd.CommandText = "sp_guardar_citas";
                OCmd.Parameters.Add = ("@pcodig_citas", ocitas.CodCita);
                OCmd.Parameters.Add = ("@pfecha", ocitas.Fecha);
                OCmd.Parameters.Add = ("@phora", ocitas.Hora);
                OCmd.Parameters.Add = ("@pId_paciente", ocitas.IdPaciente);
                OCmd.Parameters.Add = ("@pid_medico", ocitas.IdDoctor);
                OCmd.Parameters.Add = ("@pvalor", ocitas.Valor);
                OCmd.Parameters.Add = ("@pdiagnostico", ocitas.Diagnostico);
                OCmd.Parameters.Add = ("@pNom_acompanante", ocitas.NombreAcompanante);
                OCmd.ExecuteNonQuery();
                return true;
            }
            catch (Exception err)
            {
                throw new Exception(err.Message);
            }
        }

    }
}
