using System;
using System.Collections.Generic;
using System.Web.Services;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.HtmlControls;

namespace praktisk
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }
        protected void Page_PreRender(object sender, EventArgs e)
        {
            List<List<List<string>>> listAlternatives = new List<List<List<string>>>();
            List<List<string>> listAnswers = new List<List<string>>();

            List<string> lstQuizId = new List<string>();
            List<string> lstQuizNames = new List<string>();

            List<string> lstQuestionId = new List<string>();
            List<string> lstQuestionText = new List<string>();
            List<string> lstQuizQuestionId = new List<string>();
            List<string> lstQuestionDifficulty = new List<string>();

            List<string> lstAlternativeId = new List<string>();
            List<string> lstQuestionAlternativeId = new List<string>();
            List<string> lstCorrect = new List<string>();
            List<string> lstAlternativeText = new List<string>();

            Data quizData = new Data();

            quizData.GetQuizNames(out lstQuizId, out lstQuizNames);
            quizData.GetQuestions(out lstQuestionId, out lstQuestionText, out lstQuizQuestionId, out lstQuestionDifficulty);
            quizData.GetAlternatives(out lstAlternativeId, out lstQuestionAlternativeId, out lstCorrect, out lstAlternativeText);

            List<Quiz> Quizes = new List<Quiz>();
            for (int i = 0; i < lstQuizId.Count(); i++) //3 times
            {
                List<Question> Questions = new List<Question>();
                for (int j = 0; j < lstQuestionId.Count(); j++) //8 times
                {
                    List<Alternative> Alternatives = new List<Alternative>();
                    if (Convert.ToInt32(lstQuizId[i]) == Convert.ToInt32(lstQuizQuestionId[j])) //if quizid (quiz) = quizid (question)
                    {
                        for (int k = 0; k < lstAlternativeId.Count(); k++) //32 times
                        {
                            if (Convert.ToInt32(lstQuestionId[j]) == Convert.ToInt32(lstQuestionAlternativeId[k])) //if questionid (question) = questionid (alternative)
                            {
                                Alternatives.Add(new Alternative(lstAlternativeId[k], lstQuestionAlternativeId[k], lstCorrect[k], lstAlternativeText[k]));
                            }
                        }
                        Questions.Add(new Question(lstQuestionId[j], lstQuestionText[j], lstQuizQuestionId[j], lstQuestionDifficulty[j], Alternatives));
                    }
                }
                Quizes.Add(new Quiz(lstQuizId[i], lstQuizNames[i], Questions));
            }

            Session["quizData"] = Quizes;

            //ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('" + text + "');", true);



        }

        [WebMethod]
        public static List<Quiz> GetQuizes() //Webmethod ran from js method in Custom'.js, returns Quizes gathered from database in page_prerender event
        {
            List<Quiz> quizData = (List<Quiz>)HttpContext.Current.Session["quizData"];
            return quizData;
        }

        [WebMethod]
        public static void AddName(string name) //Webmethod ran from js method in Custom'.js, returns Quizes gathered from database in page_prerender event
        {
            Data Data = new Data();
            Data.AddName(name);
        }

        [WebMethod]
        public static void AddResult(string quizIndex, string correct, string incorrect) //Webmethod ran from js method in Custom'.js, returns Quizes gathered from database in page_prerender event
        {
            Data Data = new Data();
            Data.AddResult(quizIndex, correct, incorrect);
        }

        [WebMethod]
        public static List<Result> GetScores(string quizIndex) //Webmethod ran from js method in Custom'.js, returns Quizes gathered from database in page_prerender event
        {
            List<string> lstResultId = new List<string>();
            List<string> lstCorrect = new List<string>();
            List<string> lstIncorrect = new List<string>();
            List<string> lstQuizId = new List<string>();
            List<string> lstUserId = new List<string>();
            List<string> lstName = new List<string>();

            Data resultData = new Data();
            resultData.GetScores(quizIndex, out lstResultId, out lstCorrect, out lstIncorrect, out lstQuizId, out lstUserId, out lstName);
            List<Result> Results = new List<Result>();
            for (int i = 0; i < lstResultId.Count(); i++)
            {
                Results.Add(new Result(lstResultId[i], lstCorrect[i], lstIncorrect[i], lstQuizId[i], lstUserId[i], lstName[i]));
            }
            return Results;
        }
    }
}