using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace praktisk
{
    public class Quiz
    {
        public Quiz(string quizId, string quizName, List<Question> questions)
        {
            this.QuizId = quizId;
            this.QuizName = quizName;
            this.Questions = questions;
        }

        public string QuizId { set; get; }
        public string QuizName { set; get; }
        public List<Question> Questions { set; get; }


        //public List<String> quizQuestions;
        //public List<List<String>> quizAlternatives;
        //public List<String> quizAnswers;
        //public Quiz(List<String> questions, List<List<String>> alternatives, List<String> answers) //Creates Quiz objects
        //{
        //    this.quizQuestions = questions;
        //    this.quizAlternatives = alternatives;
        //    this.quizAnswers = answers;
        //}
    }
}