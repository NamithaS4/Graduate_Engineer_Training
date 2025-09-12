namespace Assignment
{
    internal class Program
    {
        string Accountnumber = "";
        string AccountHoldername = "";
        double Balance = 0.0;

        static void Main(string[] args)
        {
            
            Program bankAccount = new Program();
            string choice;
            do
            {
                Console.WriteLine("Banking Menu");
                Console.WriteLine("1. Create a new bank account");
                Console.WriteLine("2. Deposit money");
                Console.WriteLine("3. Withdraw money");
                Console.WriteLine("4. Display account details");
                Console.WriteLine("5. Exit");
                Console.WriteLine("Enter the Choice:");
                choice = Console.ReadLine();

                switch (choice)
                {
                    case "1": 
                        bankAccount.CreateNewBankAccount();
                        break;
                    case "2":
                        bankAccount.DepositMoney();
                        break;
                    case "3":
                        bankAccount.WithDrawAmount();
                        break;
                    case "4":
                        bankAccount.AccountDetails();
                        break;
                    case "5":
                        Console.WriteLine("Exit");
                        break;
                    default:
                        Console.WriteLine("Invalid choice. Please enter a number from 1 to 5.");
                        break;
                }

            } while (choice != "5"); 
        }

        
        void CreateNewBankAccount()
        {
            Console.WriteLine("Creating a New Bank Account");
            Console.Write("Enter Account Number: "); 
            Accountnumber = Console.ReadLine();
            Console.Write("Enter Account Holder Name: "); 
            AccountHoldername = Console.ReadLine();
            Console.Write("Enter Initial Balance: "); 
            Balance = Convert.ToDouble(Console.ReadLine());
        }

        
        void DepositMoney()
        {
            if (Accountnumber == "")
            {
                Console.WriteLine("No Account is found. Please create a bank account first.");
                return;
            }
            Console.Write("Enter Amount to Deposit: "); // Changed to Write for inline input
            double amount = Convert.ToDouble(Console.ReadLine());
            Balance += amount;
            Console.WriteLine("Amount Deposited Successfully");
            Console.WriteLine("The Updated Balance is: " + Balance);
        }

        
        void WithDrawAmount()
        {
            
            if (Accountnumber == "")
            {
                Console.WriteLine("No Account is found. Please create a bank account first.");
                return;
            }

            if (Balance == 0.0)
            {
                Console.WriteLine("There is no sufficient Balance to withdraw money");
            }
            else
            {
                Console.Write("Enter the Withdraw Money: "); 
                double withdrawamount = Convert.ToDouble(Console.ReadLine());
                if (withdrawamount > Balance)
                {
                    Console.WriteLine("Insufficient balance for withdrawal.");
                }
                else
                {
                    Balance -= withdrawamount;
                    Console.WriteLine("Amount is debited from your Account Successfully");
                    Console.WriteLine("The Updated Balance is: " + Balance);
                }
            }
        }

        
        void AccountDetails()
        {
            
            if (Accountnumber == "")
            {
                Console.WriteLine("No Account is found. Please create a bank account first.");
                return;
            }

            Console.WriteLine("\n Bank Account Details:");
            Console.WriteLine($"Account Holder Name: {AccountHoldername} ");
            Console.WriteLine($"Account Number: {Accountnumber}");
            Console.WriteLine($"Bank Balance: {Balance}");
        }
    }
}