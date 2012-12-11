using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.Entity;
using System.Data.Common;
using System.Data.SqlClient;
using System.Data.Objects;
using System.Data.SqlTypes;
using System.Data;

namespace Test_MVC4.Models
{
    /*public class Tour
    {
        public int ID {get; set;}
        public string TENTOUR { get; set; }
        public int LOAITOUR { get; set; }
        public int DIEMBATDAU { get; set; }
        public DateTime NGAYBATDAU { get; set;}
        public DateTime NGAYKETTHUC { get; set; }
        public DateTime NGAYBATDAUDANGKY { get; set; }
        public DateTime NGAYKETTHUCDANGKY { get; set; }
        public string MOTA { get; set; }
        public int SOVENGUOILON { get; set; }
        public float GIANGUOILON { get; set; }
        public int SOVETREEM { get; set; }
        public float GIATREEM { get; set; }
        public int SOVETRENHO { get; set; }
        public float GIATRENHO { get; set; }
        public int SOVEEMBE { get; set; }
        public float GIAEMBE { get; set; }
        public float GIADAILY { get; set; }
        public string DONVITIEN { get; set; }
        public bool VANCHUYEN { get; set; }
        public bool KHACHSAN { get; set; }
        public bool MAYBAY { get; set; }
        public string TRANGTHAI { get; set; }
    }*/

    public class Tours
    {
        public static List<TOUR> GetTour()
        {
            //var param = new ObjectParameter[]{new ObjectParameter("pnLOAITOUR", 0)
            //                             ,new ObjectParameter("pdNGAYBATDAU", SqlDbType.DateTime)
            //                             ,new ObjectParameter("pdNGAYKETTHUC", SqlDbType.DateTime)
            //                             ,new ObjectParameter("pnDIEMBATDAU", 0)
            //                             ,new ObjectParameter("pnOFFSET", 0)
            //                             ,new ObjectParameter("pnLIMIT", 0)
            //                             ,new ObjectParameter("pnSORT", 0)
            //                             ,new ObjectParameter("pnDIRECT", 0)};
            //param[1].Value = null;
            //param[2].Value = null;
            var param = new ObjectParameter[] { new ObjectParameter("pnLOAITOUR", 0) };          
            var ctx = new TRAVEL_PTUDEntities();
            //string SQLcommand = "exec TOUR_LISTOFTAB @pnLOAITOUR, @pdNGAYBATDAU, @pdNGAYKETTHUC, @pnDIEMBATDAU, @pnOFFSET, @pnLIMIT, @pnSORT, @pnDIRECT";
            //ctx.ExecuteStoreCommand(SQLcommand, param);
            return ctx.ExecuteFunction<TOUR>("testPro", param).ToList<TOUR>();
            //return ctx.ExecuteStoreQuery<TOUR>(SQLcommand, param).ToList<TOUR>();
            //return ctx.TOURs.ToList();
            
        }

        
    }
}