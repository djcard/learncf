<legend>Recap</legend>
<p>Well Done!!!</p>
<p>You made it to the end. Impressive. That was ALOT of concepts and material in not a whole lot of space. </p>
<p>Here is the quick recap:</p>
<ol>
<li>ColdFusion is a markup language which looks very similar to HTML with attributes and values. Most of the these tags start with &lt;cf...&gt;</li>
<li>To make an area that CF should pay attention to to process, wrap that area in &lt;cfoutput&gt;...&lt;/cfoutput&gt;</li>
<li>To establish code that CF needs to process wrap it in #s, i.e. #5+3# will evaluate to 8. If the code is inside a tag, you don't always need the #s as in &lt;cfset total=5+3&gt;</li>
<li>CF is a typeless variable language which means you don't need to declare a variable type before using a variable. A variable can have an underlying value but be displayed in a more human friendly way using formatters. </li>
<li>To determine what type of variable something is, there are many Is...() functions such as IsDate() and IsNumeric(). </li>
<li>Simple variables can include strings, numbers, booleans and dates among others. </li>
<li>Complex variables include Object (or Structs in CF) and Arrays. </li>
<li>The elements of a Struct are referenced by name which are called Keys.</li>
<li>The elements of an Array are reference by number or &quot;index&quot;.</li>
<li>A useful tag in CF is the &lt;cfdump&gt; tag which will display a variable visually on the screen including complex data types. </li>
<li>CF saves variables in several places called &quot;scopes&quot;. </li>
<li>One of these are the URL scope which stores variables and values which are passed in the URL of the page. This is in the format ?variable1=value1&amp;variable2=value2..... or &quot;GET&quot; variables</li>
<li>Another of the scopes is the FORM scope which accepts &quot;POST&quot; variables, usually submitted via a form on a web page. </li>
<li>We can put instructions into our own functions to help organize the code and increase usability. </li>
<li>These functions have names and we can call them and pass in arguments with the format functionName(arg1,arg2,arg3,...)</li>
<li>ColdFusion links to databases via a connection called a datasource, the credentials of which are stored on the server and have been set up for you. </li>
<li>By using the &lt;dbinfo&gt; tag we can see the table/views in the database and the fields in a data table. </li>
<li>Next week, we will look at getting data out of our datatables and onto a page!</li>
<li>Take a break!</li>
</ol>
