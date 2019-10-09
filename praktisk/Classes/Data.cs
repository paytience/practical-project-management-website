using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;
using System.Web.Configuration;
using System.Net;
using System.Net.Mail;


namespace praktisk
{
    //static string DatabaseConnectionString = System.Configuration.ConfigurationManager.ConnectionStrings["myConnection"].ConnectionString;
    public class Data
    {
        SqlConnection con = new SqlConnection(WebConfigurationManager.ConnectionStrings["myConnection"].ConnectionString);

        public void GetData() //gets station information from SQL database
        {

            using (SqlCommand cmd = new SqlCommand(StoredProcedure.GetAmountQuizes.ToString(), con))
            {
                cmd.CommandType = CommandType.StoredProcedure;
                con.Open();
                var reader = cmd.ExecuteReader();
                while (reader.Read())
                {

                }
                con.Close();
            }
        }

        public void GetQuizNames(out List<string> quizId, out List<string> quizNames) //gets station information from SQL database
        {
            quizId = new List<string>();
            quizNames = new List<string>();

            using (SqlCommand cmd = new SqlCommand(StoredProcedure.GetQuiz.ToString(), con))
            {
                cmd.CommandType = CommandType.StoredProcedure;
                con.Open();
                var reader = cmd.ExecuteReader();
                while (reader.Read())
                {
                    quizId.Add(reader.GetString(0));
                    quizNames.Add(reader.GetString(1));
                }
                con.Close();
            }
        }

        public void GetQuestions(out List<string> questionId, out List<string> questionText, out List<string> quizQuestionId, out List<string> questionDifficulty) //gets station information from SQL database
        {
            questionId = new List<string>();
            questionText = new List<string>();
            quizQuestionId = new List<string>();
            questionDifficulty = new List<string>();

            using (SqlCommand cmd = new SqlCommand(StoredProcedure.GetQuestions.ToString(), con))
            {
                cmd.CommandType = CommandType.StoredProcedure;
                con.Open();
                var reader = cmd.ExecuteReader();
                while (reader.Read())
                {
                    questionId.Add(reader.GetString(0));
                    questionText.Add(reader.GetString(1));
                    quizQuestionId.Add(reader.GetString(2));
                    questionDifficulty.Add(reader.GetString(3));
                }
                con.Close();
            }
        }

        public void GetAlternatives(out List<string> alternativeId, out List<string> questionId, out List<string> correct, out List<string> alternativeText) //gets station information from SQL database
        {
            alternativeId = new List<string>();
            questionId = new List<string>();
            correct = new List<string>();
            alternativeText = new List<string>();

            using (SqlCommand cmd = new SqlCommand(StoredProcedure.GetAlternatives.ToString(), con))
            {
                cmd.CommandType = CommandType.StoredProcedure;
                con.Open();
                var reader = cmd.ExecuteReader();
                while (reader.Read())
                {
                    alternativeId.Add(reader.GetString(0));
                    questionId.Add(reader.GetString(1));
                    correct.Add(reader.GetBoolean(2).ToString());
                    alternativeText.Add(reader.GetString(3));
                }
                con.Close();
            }
        }
    }
}