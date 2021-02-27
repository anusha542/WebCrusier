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
    public partial class ViewCustomerMovies : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
                MovieDaoCollection movieDaoCollection = new MovieDaoCollection();
            MovieDaoCollection.CreateMovieList();
                GridView2.DataSource = MovieDaoCollection.movieList;
                GridView2.DataBind();
                if (Request.QueryString["Id"] != null)
                {
                    FavoritesDaoCollection favoritesDao = new FavoritesDaoCollection();
                FavoritesDaoCollection.CreateFavoriteList();
                    int Id = Convert.ToInt32(Request.QueryString["Id"].ToString());
                    Movie obj = (from x in MovieDaoCollection.movieList
                                 where x.MovieId == Id
                                 select x).FirstOrDefault();
                    if (obj != null)
                    {
                        if (!FavoritesDaoCollection.favoriteMovieList.Contains(obj))
                        {
                            FavoritesDaoCollection.favoriteMovieList.Add(obj);
                        }
                        Boolean ShowPanel = Convert.ToBoolean(Request.QueryString["showpanel"].ToString());
                        if (ShowPanel)
                        {
                            notification.Visible = true;
                        }
                    }
                }
            }

        }




    }