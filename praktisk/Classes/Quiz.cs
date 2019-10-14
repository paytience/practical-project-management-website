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
    }
}