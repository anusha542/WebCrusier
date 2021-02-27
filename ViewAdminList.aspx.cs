using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Com.Cognizant.MovieCrusier.Modal;
using Com.Cognizant.MovieCrusier.Dao;
using Com.Cognizant.MovieCrusier.Utility;


namespace WebCrusier
{
    public partial class ViewAdminList : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            MovieDaoCollection.CreateMovieList();
            MovieDaoCollection movieList = new MovieDaoCollection();
            GridView1.DataSource = movieList.GetMovieListAdmin();
            GridView1.DataBind();
        }
    }
}

