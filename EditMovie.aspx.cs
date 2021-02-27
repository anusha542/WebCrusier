using Com.Cognizant.MovieCrusier.Dao;
using Com.Cognizant.MovieCrusier.Modal;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebCrusier
{
    public partial class EditMovie : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            if (!IsPostBack)
            {
                if (Request.QueryString["id"] != null)
                {
                    MovieDaoCollection movieDaoCollection = new MovieDaoCollection();
                    MovieDaoCollection.CreateMovieList();
                    int Id = Convert.ToByte(Request.QueryString["id"].ToString());
                    Movie obj = (from x in MovieDaoCollection.movieList
                                 where x.MovieId == Id
                                 select x).FirstOrDefault();
                    if (obj != null)
                    {
                        TxtTitle.Text = obj.MovieTitle;
                        TxtGross.Text = obj.BoxOfficeCollection;
                        TxtDate.Text = obj.DateOfLaunch.ToString();
                        if (obj.MovieActive == "Yes")
                        {
                            Radioyes.Checked = true;
                        }
                        else
                            Radiono.Checked = true;
                        if (obj.HasTeaser == "Yes")
                            CheckBox1.Checked = true;
                        else
                            CheckBox1.Checked = false;




                        MovieDaoCollection.movieList.Where(w => w.MovieId == Id).ToList().ForEach(i => TxtTitle.Text = obj.MovieTitle);
                    }
                    foreach (var x in MovieDaoCollection.movieList)
                    {
                        Response.Write(x.MovieId + " " + x.MovieTitle);
                        //Response.Write(x.Id + " " + x.BoxOffice);
                    }
                }

            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            MovieDaoCollection.CreateMovieList();
            int Id = Convert.ToInt32(Request.QueryString["id"].ToString());
            string Teaser;
            if(CheckBox1.Checked)
            {
                Teaser = "Yes";
            }
            else
            {
                Teaser = "No";
            }
            MovieDaoCollection.movieList.Where(w => w.MovieId == Id).ToList().ForEach(i =>
            {
                i.MovieTitle = TxtTitle.Text;
                i.BoxOfficeCollection = TxtGross.Text;
                i.MovieActive = Radioyes.Text;
                i.DateOfLaunch = TxtDate.Text;
                i.MovieGenre = DropDownList1.SelectedValue;
                i.HasTeaser = Teaser;
            });
            Response.Redirect("EditMovieStatus.aspx");
        }
    }
}


