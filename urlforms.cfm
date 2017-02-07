<legend>Using Variables in Forms and URLs</legend>
<p>Each page has many variables present, even if you don't see them or declare them. These variables are grouped and placed in virtual buckets on the server and in memory. These &quot;buckets&quot; are called &quot;scopes&quot;. There are several scopes we are going to use in this class but now we are going to look at two of them: the URL scope and the FORM scope. </p>
<p><strong><u>The URL Scope</u></strong></p>
<p>Look at the URL of this page. It is 
  <cfoutput>http://#cgi.HTTP_HOST##cgi.SCRIPT_NAME#?#cgi.QUERY_STRING#</cfoutput>
  . Have you ever looked at a URL and dissected it? The URL break down into several parts:</p>
<cfoutput>
<ol>
	<li>http:// - The protocol that is being used. Most websites use http:// or https://</li>
    <li>#cgi.HTTP_HOST# - This is the domain name (and is listed in the DNS records to point to this computer)</li>
    <li>#cgi.SCRIPT_NAME# - This is the folder and file name of the page you are opening</li>
    <li>?#cgi.QUERY_STRING# - This part might be new. We are actually passing in named variables to the page which the page can then use for processing. In this case, whenever you click on a link on the left hand side, this same page is loading. However, based on the value of the "p" variable, different content loads. The "?" sign separates the page name from the variables or "query string" as it's called. </li>
&nbsp;</ol></cfoutput>
<p><strong>Exercise</strong>: Go To <a href="http://Amazon.com" target="_blank">Amazon.com</a> and click on any of the items. Look at the URL. Somewhere in there is a ? which separates the name of the page and the variables that the page uses to render accurately.</p>
<p>
Each language stores and processes these variables differently. CF stores them as a structure in a "bucket" called "URL". For example, if I use 
&lt;cfdump and type &lt;cfdump var=&quot;#url#&quot; label=&quot;URL&quot; /&gt;
<cfdump var="#url#" label="URL" />
. You'll see a structure of all of the URL or &quot;GET&quot; variables that are being passed to this page. Copy this starting and including the &quot;&amp;&quot; sign: &amp;name=Bob&amp;lastname=Marley. Paste it into the address bar AFTER ?p=urlforms so that it reads ?p=urlforms&amp;name=Bob&amp;lastname=Marley and press Enter to load the page. See how the dump of the URL variables changed above? The &amp; sign is used to seperate one variable from another. the format is KEY=Value with no quotes.</p>
<p><strong>Exercise #2</strong>: <ol>
  <li><strong>Copy</strong> the index.cfm page from the /learncf folder into your exercise folder. </li>
  <li>Create a blank page called toc.cfm (staring with no HTML tags etc). The entire page will consist of links, each one pointing to one of your exercise pages in the exercise folder. However, don't hardcode (type in) the name of the file. Use &quot;p&quot; as the name of your variable and pass in the name of the file to which you are linking. The href attribute should be something like 'href=&quot;index.cfm?p=myForm&quot;'</li>
  <li>If you want a sample, look at the index.cfm and the toc.cfm files in the learncf folder. </li>
  <li>Can you figure out how your content is appearing? Are there any tags you need to remove from your exercise pages to make them work correctly?</li>
</ol> 
</p>
<p><strong><u>The FORM Scope</u></strong></p>
<p>The same can be used with form data. You might have created forms previous to this in HTML but without some sort of serverside language, there is a very limited number of things you can do with that data. Now when we submit a form we can use the variables submitted in our page. Fill out and submit this form:

<cfoutput>
	<form action="#cgi.SCRIPT_NAME#?#cgi.QUERY_STRING#" method="post" class="form-horizontal">
    	<legend>Name Please</legend>
       	<div class="form-group">
    		<label for="inputEmail3" class="col-sm-2 control-label">First Name</label>
    		<div class="col-sm-10">
      			<input type="text" class="form-control" id="firstname" name="firstname" placeholder="First Name">
    		</div>
		</div>
               	<div class="form-group">
    		<label for="inputEmail3" class="col-sm-2 control-label">Last Name</label>
    		<div class="col-sm-10">
      			<input type="text" class="form-control" id="lastname" name="lastname" placeholder="Last Name">
    		</div>
		</div>
        <div class="form-group">
    		<label for="inputEmail3" class="col-sm-2 control-label">Email</label>
    		<div class="col-sm-10">
      			<input type="email" class="form-control" id="email" name="email" placeholder="Email">
    		</div>
		</div>
        <div class="form-group">
    		<label for="inputEmail3" class="col-sm-2 control-label">&nbsp;</label>
    		<div class="col-sm-10">
      			<input type="submit" value="Save" />
    		</div>
		</div>
    </form>
</cfoutput>
<cfif isdefined('form.firstname')>
	<cfdump var="#form#" label="Form">
</cfif>
<p>See the output above? The form data is in a Struct called Form. We can access the individual pieces typing form.<em>variablename</em>.</p>
<p>A form has several different tags in it. Here are the basics:</p>
<ol>
	<li>&lt;form action=&quot;#cgi.SCRIPT_NAME#?#cgi.QUERY_STRING#&quot; method=&quot;post&quot;&gt; - The &lt;form&gt; tag has two essential properties. The first is the &quot;action&quot; property. This is the file to which the browser will pass the form variables. Put another way, it's the page that will load when you submit the form. In this case, we are using CF variables that will automatically put the name of the same page. If you use this, don't forget to wrap it in &lt;cfoutput&gt;<br>
	  <br>
	  The &quot;method&quot; property says how the variables will be submitted. The most common value is &quot;post&quot;. 
The other most common is &quot;get&quot;. For the moment, let's keep it simple. Using &quot;get&quot; will put the variables and their values in the address bar or in the URL scope. Using &quot;post&quot; will submit them another way which is behind the scenes, not in the URL.<br>
<br>
	<li>&lt;input type=&quot;text&quot; name=&quot;firstname&quot; placeholder=&quot;First Name&quot; value=&quot;&quot; /&gt; - The input tag defines a  place to put in a variable. You name the variable by using the &quot;name&quot; property in the &lt;input&gt; tag. The value is whatever is entered by the user or you predefine with the value property. 
	  <br>
	  <br>
	<li>&lt;input type=&quot;submit&quot; value=&quot;save&quot; /&gt;    - The &lt;input type=&quot;submit&quot;&gt; creates a button that will submit the form. You can also use a &lt;button&gt; tag if you choose and by default this will submit the form. 
      <br>
      <br>
  <li>For more HTML information about forms visit: <a href="http://www.w3schools.com/html/html_forms.asp" target="_blank">http://www.w3schools.com/html/html_forms.asp</a>    
</ol>
<p><strong>Exercise #3</strong>: Create a page called myForm.cfm in the exercises folder (and don't forget to add it to your toc.cfm page). Use HTML to create a form which submits to the same page. Make your form with 5 inputs that coincide with the properties in your database. On the page put a &lt;cfdump var=&quot;#form#&quot; label=&quot;The Form Data&quot; /&gt; tag so you can test the submission of the form. </p>