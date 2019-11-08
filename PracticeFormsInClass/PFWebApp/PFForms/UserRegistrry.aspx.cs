using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace PFWebApp.PFForms
{
    public partial class UserRegistrry : System.Web.UI.Page
    {
        public static List<UserRegistry> Entries;
        protected void Page_Load(object sender, EventArgs e)
        {
            Message.Text = "";

            if (!Page.IsPostBack)
            {
                Entries = new List<UserRegistry>();
            }

        }
        protected void Submit_Click(object sender, EventArgs e)
        {
            if (Page.IsValid)
            {
                if(Terms.Checked)
                {
                    Entries.Add(new UserRegistry(FirstName.Text,
                                                  LastName.Text,
                                                  UserName.Text,
                                                  EmailAddress.Text,
                                                  Password.Text));

                    EntryList.DataSource = Entries;
                    EntryList.DataBind();
                }
                else
                {
                    Message.Text = "You did not agree to the website terms";
                }
            }
        }
    }
}