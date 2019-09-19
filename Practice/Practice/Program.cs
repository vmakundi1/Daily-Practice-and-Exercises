using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Practice
{
    class Program
    {
        static void Main(string[] args)
        {
            //BASIC BASICS OF CLASSES AND OBJECTS
            //classes & objects; think that you need to repr a phone, you cant use strings, double etc.
            //these allow you to create your own data typ to represent something on your data type
            //a class is a specification for a new data type. 
            //an object is instance of a class
            Book book1 = new Book();   //book1 is a variable storing our object
            book1.title = "Harry Potter";
            book1.author = "JK Rowling";
            book1.pages = 400;

            Book book2 = new Book();   //book1 is a variable storing our object
            book2.title = "Alfa Ulela";
            book2.author = "Shaaban Robert";
            book2.pages = 300;

            Console.WriteLine(book1.title);
            Console.WriteLine(book1.pages);

            Console.ReadLine();


        }
    }
}
