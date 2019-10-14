using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace praktisk
{
    public class Result
    {
        public Result(string resultId, string correct, string incorrect, string quizId, string userId, string name)
        {
            this.ResultId = resultId;
            this.Correct = correct;
            this.Incorrect = incorrect;
            this.QuizId = quizId;
            this.UserId = userId;
            this.Name = name;
        }
        public string ResultId { set; get; }
        public string Correct { set; get; }
        public string Incorrect { set; get; }
        public string QuizId { set; get; }
        public string UserId { set; get; }
        public string Name { set; get; }
    }
}