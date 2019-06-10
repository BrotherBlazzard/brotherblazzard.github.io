<%
Session.Timeout=999
Session("lastlesson")="01_intro.asp"
%>
<!DOCTYPE html>
<html>
<head>
 <!-- #Include File = "../includes/incHead.asp" -->
</head>

<body>
<div id="wrapper">
 <div id="header">
  <!-- #Include File = "../includes/incHeaderLevel2.asp" -->
 </div>

 <div id="content">
  <h2>Lesson 1: Introduction, Foundations and 'Setting Up Shop'</h2>
  <div class="grayhatch">
   <div class="yellowbox">
	  An introduction to HTML and CSS and supporting technologies and topics that are essential for the beginning web designer/developer in creating, developing, and maintaining web sites and applications.
	</div>
   
   <h4>Lesson Content</h4>
    <div class="details">
    <ul>
     <li><strong>Read</strong> Preface and Chapter 01-"Setting Up Shop"</li>
     <li><strong>Lesson Topical Outline</strong>
	 	<ol>
	 		<li>Foundation of the Web/HTML/CSS and related technologies</li>
	 		<li>Browsers</li>
	 		<li>Browser Add-Ons</li>
	 		<li>Web Development Tools for HTML and CSS</li>
	 		<li>Resources and how to search for answers to technical questions</li>
	 		<li>Using the student web server</li>
	 	</ol>     
     </li>     
     <li><strong>Watch</strong> these brief lessons from <em>30 Days to Learn HTML &amp; CSS - A free tuts+ premium course</em>
      <ol>
       <li><a href="http://learncss.tutsplus.com/lesson/welcome/">Welcome</a></li>
     	 <li><a href="http://learncss.tutsplus.com/lesson/your-first-web-page/">Day 1 - Your First Web Page</a></li>
       <li><a href="http://learncss.tutsplus.com/lesson/your-code-editor/">Day 2 - Your Code Editor</a></li>
      </ol>
     </li>
    </ul>
	 <p style="margin-top:15px;">
		<span style="font-size:x-small;font-weight:bold;">*Please note that all media in this course are used in accordance with the TEACH Act and remain the property of their respective copyright holders. </span>
	 </p>
	</div>  

   <h4>Deliverables</h4>
    <div class="details">
	 
 	 <h6>Threaded Discussion</h6>
	 	<div class="yellowbox">Discussion threads provide you the opportunity to interact with your fellow students through discussion material and by asking and answering questions posted within the forum. One of the best methods to learn is to teach. Please use appropriate language and be civil.</div>
	   &nbsp;&bull; <a href="../deliverables/discussions.asp?id=1">Discussion Link</a>
	   
	 <br /><br />  

	 <h6>Assignment</h6>
	 <div class="yellowbox">Assignment submissions are normally posted to the student server. Space will be provided to you at http://citpt.lcsc.edu/yourfirstandlastname. Given this may be your first time publishing to an external web server, part of this assignment assessment is for you to get this done. Subsequent assignments will continue to have you publish, therefore, you are responsible to learn how to keep organized. All work for this class MUST be in a root folder labeled citpt111 with <strong>NO EXCEPTIONS</strong>. You must On any assignment that you submit via email you MUST provide the term CITPT 111 in the subject of your email and the assignment number/part. <br /><br />
	 Some options publishing to the citpt server include:   
	  <ul>
	    <li><a href="http://obt.lcsc.edu/citpt111/filezillacitptCONN.swf" target="_blank">using FTP using FILEZILLA</a></li>
		<li><a href="http://obt.lcsc.edu/citpt111/vwd10citptCONN.swf" target="_blank">using FTP with VISUAL WEB DEVELOPER</a></li>
		<li><a href="http://obt.lcsc.edu/citpt111/expression4citptCONN.swf" target="_blank">using WEBDAV with MS Expression WEB</a>
      </ul>
	 </div>
     <h5>Posted Submission</h5>	
		 <ol>
		  <li>Create a local copy of a simple website named citpt111 using the following base HTML structure (<a href="renameMe.html">File</a>). (no deviations to the html at this point please except for obvious content corrections). Name this file index.html. <em>This file will be the root or home page of your citpt111 work and thus reside in your citpt111 folder as the default page.</em></li>
		  <li>Create a page for Lesson 1 named nameInHeaders.html with your name listed using all six HTML headings. (No styling)</li>
		  <li>Successfully login to your provided student server space using FTP or WebDAV.&nbsp; 
          Again, here is a link to past course videos to help you connect - <a href="http://obt.lcsc.edu/citpt111">Connecting to the citpt server</a>
		  	<ul>
		  	 <li>Web Server Host: citpt.lcsc.edu</li>
		  	 <li>folder: yourfirstandlastname</li>
		  	 <li>u: yourfirstandlastname</li>
		  	 <li>p: Use your Web Dev ID</li>
		  	</ul>
		  </li>
		  <li>Create a folder within your root space named citpt111.</li>
		  <li>Create a folder within citpt111 named lesson1.</li>
		  <li>Upload your nameInHeaders.html file to the lesson1 folder.</li>
		 </ol>	
	   <p>Your site will have the following structure minus all the other 
       folders that have been added, but hopefully this gives you and idea.<a href="images/citpt111websiteexample.jpg"><img alt="" height="71" src="images/citpt111websiteexample_small.jpg" width="85" xthumbnail-orig-image="images/citpt111websiteexample.jpg"></a></p>
	   <div class="yellowbox">You are responsible to maintain this space. The instructor will visit this root course space after the due date (within the week) and expect to see links to the individual submission assignments required. If your site is down or the links are not provided then you will not receive full credit. Questions to the instructor should not be embedded into the assignments but rather sent via email.</div>
	   <h5>Email Submission (use the <strong>body</strong> of email)</h5>	
		 <ol>
		  <li>For problem #2 you will need to install Firebug on Firefox or the Chrome extension Firebug Lite or use Chrome's built-in Element Inspector to answer the questions. You may use another tool of your choice as it does not matter by I highly recommend that you begin to become familiar with one of these HTML inspcection tools.</li>
		       <img alt="firebug image" height="57" src="images/firebugimage.png" width="159"><br />

		  <li>Launch the tool of your choice on this page (01_intro) and answer the following questions:
		   <ol>
		    <li>What is the HTML element tag assigned to the words "Lesson 1: Introduction, Found ..."?</li>
		    <li>What are the names of the files of the two external style sheets referenced by this page?</li>
		    <li>What are the attributes referenced in the Firebug img below?</li>
		   </ol>
		  </li>
		  <li>Find a published article about browser wars and summarize it here in two paragraphs by highlighting the main points presented. Make sure to include the URL reference.</li>
		 </ol>	

     <a id="codecadbookmark"><h5>Codecademy Web Fundamentals Tutorial Assignment</h5></a>
        <p>Each student must complete the codecademy.com 'Web Fundamentals' track which covers HTML and CSS by the end of <strong>Lesson 07</strong>. You will need to sign up for a free account in order to keep track of your progress. The track can be accessed directly using this <a href="http://www.codecademy.com/tracks/web" target="_blank">link</a>.</p>
        <br>
        <div>
         <form action="writeUser.asp" method="post">
   	  <p>Submit your codecademy username so that I can track your progress. Failure to submit your username by the due date of this lesson will result in an automatic 1% reduction in your codecademy tutorial citpt 111/311 grade regardless of your final completion percentage at the time grading.</p><br />
   	  <% if session("errors") <> "" then %>
   	   	<div class="errornote"><%=session("errors")%></div>
   	  <% end if %>
   	  <% if session("errors") <> "Recorded" then %>
   	  <fieldset>
   	   <legend><strong>LCSC CITPT ID</strong></legend>
   	    Your assigned ID: <input type="text" name="id" required="required" size="4" />
   	  </fieldset>
   	  <fieldset>
   	  <legend><strong>Codecademy.com</strong></legend>
   	  Codecademy Username: <input type="text" name="user" required="required" />
   	  </fieldset>
   	  <input type="submit" name="Submit" />
   	  <% end if %>
   	</form>
        </div>
        <br /><br />

	 <h6>Quiz</h6>
	  <ul>
	  	<li><a href="../deliverables/quizlogin.asp?id=1">Quiz Lesson 1 (timed)</a></li>
	  </ul>
	</div>  
  
  </div>
	
 </div>
<!-- #Include File = "../includes/incFoot.asp" --></div>
</body>
</html>
