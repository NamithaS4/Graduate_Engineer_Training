﻿/*Assignment - DLMS/COSEM communication example
in C# .net, demonstrating how to:

Define and pack an OBIS code

Construct a GET request APDU*/

using ConsoleApp1;
using System;
using System.Collections.Generic;

namespace DlmsCosemExample
{
    // OBIS Code class


    // GET Request APDU builder

    class Program
    {
        static void Main(string[] args)
        {
            // OBIS code for ActiveS Energy Import (1-0:1.8.0.255)
            var obis = new ObisCode(1, 0, 1, 8, 0, 255);

            // Class ID for Register object is 3
            ushort classId = 3;
            byte attributeId = 2; // e.g., value attribute

            byte[] apdu = GetRequestApdu.CreateGetRequest(obis, classId, attributeId);

            Console.WriteLine("OBIS Code: " + obis);
            Console.WriteLine("GET Request APDU: " + BitConverter.ToString(apdu));
        }
    }
}