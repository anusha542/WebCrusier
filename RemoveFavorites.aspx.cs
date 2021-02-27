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
    public partial class RemoveFavorites : System.Web.UI.Page
    {
        
            protected void Page_Load(object sender, EventArgs e)
            {
                FavoritesDaoCollection favoritesDaoCollection = new FavoritesDaoCollection();
                FavoritesDaoCollection.CreateFavoriteList();
            if (FavoritesDaoCollection.favoriteMovieList.Count() == 0)
                {
                    Response.Redirect("FavoritesEmpty.aspx");
                }
                GridView4.DataSource = FavoritesDaoCollection.favoriteMovieList;
                GridView4.DataBind();
                NofFavorites.Text = FavoritesDaoCollection.favoriteMovieList.Count().ToString();
                if (Request.QueryString["Id"] != null)
                {
                    FavoritesDaoCollection.CreateFavoriteList();
                int id = Convert.ToInt32(Request.QueryString["Id"].ToString());
                    Movie obj = (from x in FavoritesDaoCollection.favoriteMovieList
                                 where x.MovieId == id
                                 select x).FirstOrDefault();
                    if (obj != null)
                    {
                        if (FavoritesDaoCollection.favoriteMovieList.Contains(obj))
                        {
                            FavoritesDaoCollection.favoriteMovieList.Remove(obj);
                            GridView4.DataSource = FavoritesDaoCollection.favoriteMovieList;
                            if (FavoritesDaoCollection.favoriteMovieList.Count() == 0)
                            {
                                Response.Redirect("FavoritesEmpty.aspx");
                            }
                            GridView4.DataBind();
                            NofFavorites.Text = FavoritesDaoCollection.favoriteMovieList.Count().ToString();
                        }
                        Boolean ShowPanel = Convert.ToBoolean(Request.QueryString["showpanel"].ToString());
                        if (ShowPanel)
                        {
                            notification.Visible = true;
                        }
                    }
                }
            }

        protected void GridView4_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }


    }
