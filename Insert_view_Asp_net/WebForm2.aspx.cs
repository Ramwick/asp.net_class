using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Insert_view_Asp_net
{
    public partial class WebForm2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            HttpCookie cokie = new HttpCookie("student");
            // Assigning value to the created cookie  
            cokie.Value = "Kumar";
            // Adding Cookie to the response instance  
            Response.Cookies.Add(cokie);
            //--------------- Fetching Cookie -------------------------//  
            var co_val = Response.Cookies["student"].Value;
            Label1.Text = co_val;
        }
    }
}