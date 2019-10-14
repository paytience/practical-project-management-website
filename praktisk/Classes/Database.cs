using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Configuration;

namespace praktisk
{
    public enum StoredProcedure { AddResults, AddUserName, GetResults, GetQuiz, GetAmountQuizes, GetAnswers, GetQuestions, GetAlternatives}; //global enum naming all stored procedures

    public static class Database
    {

    }
}