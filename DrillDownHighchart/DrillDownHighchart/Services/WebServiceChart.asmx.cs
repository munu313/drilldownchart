using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Services;
using System.Data;//
using System.Data.SqlClient;//
namespace DrillDownHighchart.Services
{
    /// <summary>
    /// Summary description for WebServiceChart
    /// </summary>
    [WebService(Namespace = "http://tempuri.org/")]
    [WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1)]
    [System.ComponentModel.ToolboxItem(false)]
    // To allow this Web Service to be called from script, using ASP.NET AJAX, uncomment the following line. 
    [System.Web.Script.Services.ScriptService]
    public class WebServiceChart : System.Web.Services.WebService
    {
        public class RevenueEntity
        {
            public string year { get; set; }
            public int amount { get; set; }
            public Boolean drilldown { get; set; }
        }
        [WebMethod]
        public List<RevenueEntity> GetRevenueByYear()
        {
            List<RevenueEntity> YearRevenues = new List<RevenueEntity>();
            DataSet ds = new DataSet();
            using (SqlConnection con = new SqlConnection("Data Source=DESKTOP-D2E0OGS\\SQLEXPRESS;Trusted_Connection=true;DataBase=test"))
            {
                using (SqlCommand cmd = new SqlCommand())
                {
                    cmd.CommandText = "select year,SUM(amount)amount from tblRevenue group by year";
                    cmd.Connection = con;
                    using (SqlDataAdapter da = new SqlDataAdapter(cmd))
                    {
                        da.Fill(ds, "dsRevenue");
                    }
                }
            }
            if (ds != null)
            {
                if (ds.Tables.Count > 0)
                {
                    if (ds.Tables["dsRevenue"].Rows.Count > 0)
                    {
                        foreach (DataRow dr in ds.Tables["dsRevenue"].Rows)
                        {
                            YearRevenues.Add(new RevenueEntity
                            {
                                year = dr["year"].ToString(),
                                amount = Convert.ToInt32(dr["amount"]),
                                drilldown = true
                            });
                        }
                    }
                }
            }
            return YearRevenues;
        }
        [WebMethod]
        public List<RevenueEntity> GetRevenueByQuarter(string year)
        {
            List<RevenueEntity> QuarterRevenues = new List<RevenueEntity>();
            DataSet ds = new DataSet();
            using (SqlConnection con = new SqlConnection("Data Source=DESKTOP-D2E0OGS\\SQLEXPRESS;Trusted_Connection=true;DataBase=test"))
            {
                using (SqlCommand cmd = new SqlCommand())
                {
                    cmd.CommandText = "select quarter,SUM(amount)amount from tblRevenue where year='" + year + "' group by quarter";
                    cmd.Connection = con;
                    using (SqlDataAdapter da = new SqlDataAdapter(cmd))
                    {
                        da.Fill(ds, "dsQuarter");
                    }
                }
            }
            if (ds != null)
            {
                if (ds.Tables.Count > 0)
                {
                    if (ds.Tables["dsQuarter"].Rows.Count > 0)
                    {
                        foreach (DataRow dr in ds.Tables["dsQuarter"].Rows)
                        {
                            QuarterRevenues.Add(new RevenueEntity
                            {
                                year = dr["quarter"].ToString(),
                                amount = Convert.ToInt32(dr["amount"])

                            });
                        }
                    }
                }
            }
            return QuarterRevenues;
        }
    }

}
