using UberFrba.Accesos;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using System.Drawing;
using System.Collections;

namespace UberFrba.Abm_Rol
{
    public class RolService
    {
        Access access = Access.Instance;

        public Rol getRol()
        {
            Rol rol = new Rol();
            SqlParameter[] parameters = new SqlParameter[1];
            parameters[0] = access.CreateParameter("@id", 1);
            DataTable table = access.Read("SELECT * FROM Rol Where rol_id = @id", parameters);
            return rol;
        }
        private Rol Convert(DataRow obj)
        {
            Rol rol = new Rol();
            rol.id = Int32.Parse(obj["rol_codigo"].ToString());
            rol.nombre = obj["rol_nombre"].ToString();
            //rol.inactivo = Boolean.Parse(obj["rol_inactivo"].ToString());
            return rol;
        }
        private String ConvertString(DataRow obj)
        {
            String rol = "";
            rol += obj["rol_id"].ToString();
            rol += obj["rol_nombre"].ToString();
            rol += obj["rol_inactivo"].ToString();
            return rol;
        }

        public List<Rol> getRoles()
        {

            SqlParameter[] parameters = null;

            DataTable table = access.Read("SELECT * FROM Rol", parameters);
            ArrayList roles = new ArrayList();


            List<Rol> lstCategory = new List<Rol>();

            foreach (DataRow rol in table.Rows)
            {
                lstCategory.Add(Convert(rol));
            }

            return lstCategory;


        }
    }
}
