using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data;

using CapaEntidad;
using capaDatos;

namespace capaReglasNegocio
{
    public class ClsRN_Cita
    {

        ClsDCita oDatcitas = new ClsDCita();

        public DataSet Consultar_Cita(ClsECita oCitas)

        {

            return oDatcitas.Consultar_Cita(oCitas);

        }
    }
}
