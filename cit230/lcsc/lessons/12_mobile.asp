<%
Session.Timeout=999
Session("lastlesson")="12_mobile.asp"
%>
<!DOCTYPE html>
<html>
<head>
 <!-- #Include File = "../includes/incHead.asp" -->
 <script src="../../scripts/jquery4.js"></script> 
 <script src="../../scripts/jquery.ui.js"></script> 
 <script src="../../../scripts/jquery.collapser.js"></script>
 <script src="../../../scripts/collapser.js"></script>

 <style> 
  .linet {text-decoration: line-through;}
 </style>

</head>

<body>
<div id="wrapper">
 <div id="header">
  <!-- #Include File = "../includes/incHeaderLevel2.asp" -->
 </div>

 <div id="content">
  <h2>Lesson 12: The Mobile Web - Responsive Web Design</h2>
  <div class="grayhatch">
   <div class="yellowbox">
	  Mobile user-agent access to the web is fast becoming the most common and should be considered first within the design process.</div>
   
   <h4>Lesson Content</h4>
    <div class="details">
    <ul>
     <li><strong>Browse:</strong> <a href="http://coding.smashingmagazine.com/2011/01/12/guidelines-for-responsive-web-design/">Responsive Web Design: What It Is and How to Use It</a></li>
     <li>
     <strong>Read:</strong> 
     <a href="https://learnable.com/books/responsive1/online/cover" target="_blank">
     Chapter 1 of Jump Start Responsive Web Design</a></li>
     <li><strong>Review:</strong> <a href="http://www.webdesignerdepot.com/2011/11/techniques-in-responsive-web-design/">Techniques</a></li>
     <li><strong>View Examples:</strong> <a href="http://mediaqueri.es/">Media Queries</a></li>
     <li><strong>View Tools:</strong>
     <a href="http://validator.w3.org/mobile" target="_blank">w3c mobile 
     validator</a></li>
     <li><strong>Activity:</strong> <a href="http://www.adamkaplan.me/grid/">A Simple Guide to Responsive Design</a></li>
    </ul>
     <p>&nbsp;</p>
    <a href="http://webdesign.tutsplus.com/articles/workflow/timothys-tips-1-smaller-devices/"><img alt="" src="images/timothy-telescope.jpg" height="256" width="358"></a>
    <br><br>
		 <strong>Examples</strong><br />
		 <a href="http://www.hongkiat.com/blog/responsive-web-nav/">How to Create a Responsive Navigation</a><br />
		 <a href="http://vandelaydesign.com/blog/web-development/turn-any-site-into-a-responsive-site/">How to Turn Any Site Into a Responsive Site</a><br />
		 <a href="../deliverables/MobileNavigationAssignment.htm">Mobile Navigation<a/> <a href="../deliverables/MobileNavigationAssignmentSolution.css">CSS</a>
    
    </div>

   <h4>Videos</h4>
    <div class="details">
    <iframe width="560" height="315" src="http://www.youtube.com/embed/uNMw34Z63Ck" frameborder="0" ></iframe><br />
    <iframe width="420" height="315" src="http://www.youtube.com/embed/6QhZucEPz7M" frameborder="0" ></iframe>
	 
	 <br />
	 <iframe src="http://blip.tv/play/gcMVgr6VSAI.x?p=1" width="720" height="433" frameborder="0" allowfullscreen></iframe><embed type="application/x-shockwave-flash" src="http://a.blip.tv/api.swf#gcMVgr6VSAI" style="display:none"></embed>
	 
	 <p style="margin-top:15px;">
	 
	 
		<span style="font-size:x-small;font-weight:bold;">*Please note that all media in this course are used in accordance with the TEACH Act and remain the property of their respective copyright holders. </span>
	 </p>	
	</div>  

   <h4>Deliverables</h4>
    <div class="details">

	 <h6>Assignment</h6>
	 
     <h5>Posted Submission</h5>	
		 <ol>
		  <li>View your scoots site in a mobile viewer such as <a href="http://responsive.victorcoulon.fr/">http://responsive.victorcoulon.fr/</a>. Using the phone size vertical, note how your home page from scoots appears. Use this view: <img alt="" src="images/responsiveSPview.png"></li>
		  <li>Complete the following tutorials and post the results to your web site: 
		   <ol>
		    <li><a href="http://www.readerspark.com/threads/how-to-create-a-responsive-web-design.35/">Basic</a></li>
		    <li><a href="http://www.hongkiat.com/blog/responsive-web-nav/">Navigation</a></li>
		   </ol>
		  </li>
		  <li>Using <a href="http://www.adamkaplan.me/grid">Adam Kaplan</a> as a guide, apply the following changes to your new scoots site for this lesson. You only need to do this for the index page and you can remove any social media content on that page. You may need to make some adjustments to your layout in order to get these requirements to work.
		  <ul>
		   <li>Use a modern alternative to the reset.css</li>
		   <li>Add the Viewport Meta Tag</li>
		   <li>Add the box sizing CSS rule</li>
		   <li>You should already be using a page container like the wrapper id selector that has been required on scoots. (of course this may mean that you need to adjust away from absolute positioning.)</li>
		   <li>contain your home page content into appropriate column and row sizes</li>
		   
		   <li>add appropriate media query sizes for three widths.</li>
		  </ul>
		  </li>
		 </ol>	

		<div class="yellowbox">Be sure to provide links to this assignment on your index.html page for citpt111.</div>	   
	   
	</div>  
  
  </div>
	
 </div>
<!-- #Include File = "../includes/incFoot.asp" --></div>
</body>
</html>
