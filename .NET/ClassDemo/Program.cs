namespace ClassDemo
{
    internal class Program
    {
        static void Main(string[] args)
        {
            Student s1 = new Student(1,"Namiii",18, "26453", "nami@gmail.com");
            
            s1.initialize();
            s1.showDisplay();
        }
    }
}
