using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ClassDemo
{
    internal class Student
    {
        int studentID;
        string name;
        int age;
        string contactNo;
        string emailID;

        public void initialize()
        {
            studentID = 1;
            name = "Namiii";
            age = 18;
            contactNo = "26453";
            emailID = "nami@gmail.com";
        }
        public void showDisplay()
        {
            Console.WriteLine("Display Student info");
            Console.WriteLine($"Name of the student: {name}"); 
            Console.WriteLine($"Age of the Student: {age}");
            Console.WriteLine($"ID of the student: {studentID}");
            Console.WriteLine($"Contact num of the student: {contactNo}");
            Console.WriteLine($"EmailID of the student: {emailID}");
        }
        Student(int studentID, string name, int age, string contactNo, string emailID)
        {
            this.studentID = studentID;
            this.name = name;
            this.age = age;
            this.contactNo = contactNo;
            this.emailID = emailID;
        }
        public void totalMarks()
        {

        }
        public void avgMarks()
        {

        }
        public void changeContactno()
        {

        }

    }
}
