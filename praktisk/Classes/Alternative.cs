using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace praktisk
{
    public class Alternative
    {
        public Alternative(string alternativeId, string alternativeQuestionId, string correct, string alternativeText, string alternativeQuizId)
        {
            this.AlternativeId = alternativeId;
            this.AlternativeQuestionId = alternativeQuestionId;
            this.Correct = correct;
            this.AlternativeText = alternativeText;
            this.AlternativeQuizId = alternativeQuizId;
        }
        public string AlternativeId { set; get; }
        public string AlternativeQuestionId { set; get; }
        public string Correct { set; get; }
        public string AlternativeText { set; get; }
        public string AlternativeQuizId { get; set; }
    }
}