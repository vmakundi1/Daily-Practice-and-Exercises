using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace VMovie
{
    public class TVMovies
    {
        public string Title { get; set; }
        public string Year { get; set; }
        public string Media { get; set; }
        public string Rating { get; set; }
        public string Review { get; set; }
        public string ISBN { get; set; }

        public TVMovies()
        {

        }
        public TVMovies (string title, string year,
                          string media, string rating, string review, string isbn)
        {
            Title = title;
            Year = year;
            Media = media;
            Rating = rating;
            Review = review;
            ISBN = isbn;
        }

    }

   
}