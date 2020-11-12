using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data;
using System.Data.SqlClient;

namespace CapaAccesoDatos
{
    class Conexion
    {
        private static readonly Conexion _instancia = new Conexion();
        public static Conexion Instancia { get { return Conexion._instancia; } }
        public SqlConnection Conectar()
        {
            try
            {
                SqlConnection cn = new SqlConnection();
                cn.ConnectionString = "Data Source =DESKTOP-8RLNNM8\\SQLEXPRESS; database = generoEvento; Integrated security = true";
                return cn;
            }
            catch (Exception e)
            {
                throw e;
            }
        }

    }
}
