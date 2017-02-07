<legend>Basic Concepts and Formatting</legend>
<p>ColdFusion uses a tag based format which looks very similar to HTML. For example, the &lt;cfoutput&gt; tag is used to tell the CF server that we want it to process any CF code it  finds between the &lt;cfoutput&gt; tag and the &lt;/cfoutput&gt; tag. Just like in HTML, CF tags need to be closed. </p>
<p>CF tags also can have properties and values. For example, &lt;cfloop from=&quot;1&quot; to=&quot;10&quot; index=&quot;i&quot;&gt;....&lt;/cfloop&gt; means to start at 1 and do whatever is in between the tags 10 times using the variable &quot;i&quot; as a counter. We'll look more at the &lt;cfloop&gt; tag soon but for now, see how the tag (cfloop) has properties (for, to, index) and values (1,10,i)? For the most part, like any other programming language, the thought process is:</p>
<ol>
	<li>What am I trying to accomplish?</li>
    <li>What is the tag I need to do that?</li>
    <li>What are the properties and values that that tag needs in order to do what I want?</li>
</ol>
<p>Here are some other key  issues:</p>
<ol>
	<li>All ColdFusion pages end in ".cfm", ".cfml", or ".cfc". We'll look at CFCs later so for now, make sure that all of your CF pages end in .cfm.
  <li>ColdFusion makes extensive use of the # symbol. It uses it as a signal to the CF Server that it needs to process something. For example, a simple math problem is wrapped in #s like this: #5+3#. When the CF server sees that, it evaluates (or processes) what is in between and displays &quot;8&quot;. A simple page that does this math problem would look like this:<br>
	<pre>
	&lt;!doctype html&gt; &lt;--- Every HTML page needs a doc type<br>
	  &lt;html&gt;   &lt;--- The start of every HTML page<br>
	  &lt;head&gt;   &lt;--- The top part of every HTML page<br>
	  &lt;meta charset=&quot;utf-8&quot; /&gt; &lt;--- The encoding type that the text of the page is in (remember that discussion in the Introduction to Data Types document about Unicode and ASCII? This means this page is encoded in Unicode-8)<br>
	  	&lt;title&gt;Untitled Document&lt;/title&gt; &lt;--- The Title of the page, just like every other HTML should have<br>
	  	&lt;/head&gt;   &lt;--- The end of the head tag<br/>
		&lt;body&gt;   &lt;--- The start of the body tag, again like every HTML page<br>
      	   &lt;cfoutput&gt; &lt;--- Tells the CF server to pay attention to this area of the page (this speeds up the process by having the CF server only pay attention the portions for which it is needed). <br/>
      	     #5+3# &lt;--- The actual CF code that does the math.<br/>
      	   &lt;/cfoutput&gt; &lt;--- The end of the cfoutput tag<br/>
	  	&lt;/body&gt; &lt;--- The end of the body tag<br>
	  	&lt;/html&gt; &lt;--- The end of the html document<br/>
      </pre>
  </li>
	<li>If the math problem #5+3# is NOT inside of a &lt;cfoutput&gt; tag, it is just returned to the user as straight HTML so, since #5+3# in HTML is, well....#5+3# (not 8) it doesn't do much good. </li>

</ol>
