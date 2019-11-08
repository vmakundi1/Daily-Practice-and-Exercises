using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace VMovie.MovieLibrary
{
    public partial class LibraryForMovie : System.Web.UI.Page
    {
        public static List<TVMovies> Entries;
        protected void Page_Load(object sender, EventArgs e)
        {
            Message.Text = "";

            if(!Page.IsPostBack)
            {
                Entries = new List<TVMovies>();
            }

        }

        protected void Submit_Click(object sender, EventArgs e)
        {
            if(Page.IsValid)
            {
                Entries.Add(new TVMovies(MovieTitle.Text,
                                            Year.Text,
                                            Media.Text,
                                            Rating.Text,
                                            Review.Text,
                                            ISBN.Text));
                EntryList.DataSource = Entries;
                EntryList.DataBind();
            }
            else
            {
                Message.Text = "Movie has been added to library";
            }
        }
    }
}