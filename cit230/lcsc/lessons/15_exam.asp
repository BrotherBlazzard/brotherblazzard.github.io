<%
Session.Timeout=999
Session("lastlesson")="14_exam.asp"
%>
<!DOCTYPE html>
<html>
<head>
 <!-- #Include File = "../includes/incHead.asp" -->
 <script src="../../scripts/
jquery.js" type="text/javascript"></script> 
 <script src="../../scripts/
jquery.ui.js" type="text/javascript"></script> 

</head>

<body>
<div id="wrapper">
 <div id="header">
  <!-- #Include File = "../includes/incHeaderLevel2.asp" -->
 </div>

 <div id="content">
  <h2>Final Exam</h2>
  <div class="grayhatch">
   <div class="yellowbox">
	  This exam is only for CITPT 311 enrolled students. 
	</div>
   
   <h4>Description</h4>
    <div class="details">
   This final exam is broken up into three pages.<br />
   There are a total of 75 questions with 25 questions per page.<br /> 
   The time limit is 30 minutes per page. 90 minutes total.<br />
   Going over time results in a failing grade.<br />
   The type of questions include multiple choice, matching, true/false, and fill-in-the-blank.</div>

   <h4>Study Guide</h4>
   <div class="details">
    <ul>
     <li>Review all quizzes and the correct answers</li>
     <li>Take the HTML, CSS, and JS quizzes at W3schools.com</li>
     <li><a href="http://pumpula.net/p/apps/css-vocabulary/">CSS Vocab Review</a></li>
    </ul>
    
   </div>

   <h4>Exam Link</h4>
    <div class="details">
     <a href="../deliverables/finalexam/examlogin.asp">Start the final exam</a>
    </div>
 
  </div>
	
 </div>
<!-- #Include File = "../includes/incFoot.asp" --></div>
</body>
</html>
