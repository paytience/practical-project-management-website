using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace praktisk
{
    public class Question
    {
        public Question(string questionId, string questionText, string quizQuestionId, string difficulty, List<Alternative> alternatives, string hint)
        {
            this.QuestionId = questionId;
            this.QuestionText = questionText;
            this.QuizQuestionId = quizQuestionId;
            this.Difficulty = difficulty;
            this.Alternatives = alternatives;
            this.Hint = hint;
        }
        public string QuestionId { set; get; }
        public string QuestionText { set; get; }
        public string QuizQuestionId { set; get; }
        public string Difficulty { set; get; }
        public List<Alternative> Alternatives { set; get; }
        public string Hint { set; get; }
    }
}