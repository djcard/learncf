<legend>Your Own Functions</legend>
<p>We talked a little bit before about functions. You can also write your own functions as well. This allows you to break your code into smaller chunks which makes them easier to read and easier to manage. It also allows us to write certain functionality that we are going to use over and over again in away that we only have to write it once. Here is a simple example:</p>
<p>We are working on a website where we need to frequently add two numbers together (I told you, it's a simple example). We could write a function that woud add the two numbers together for us and put it on our site or our page so we can access it. Let's look at what this function could look like.</p>
<p>&nbsp;</p>
<p>&lt;cffunction name=&quot;addNumbers&quot; access=&quot;private&quot; returntype=&quot;numeric&quot;&gt; &lt;--- the tag to make a function is &lt;cffunction&gt;. The <strong>NAME</strong> property is how we reference the function. <strong>ACCESS</strong> defines what type of code can access this function. In this case only this page can access it.<strong> RETURNTYPE</strong> says that this function can only return numbers.<br>     
 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &lt;cfargument name=&quot;firstnum&quot; type=&quot;numeric&quot;&gt; &lt;--- Information that a function needs to do its job are called &quot;Arguments&quot;. Our function is going to add two numbers together so we need to pass in two numbers to it. That means that the function needs to have two variables already assigned to "catch" those variables. We will call the first number &quot;firstnum&quot;.<br>
  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&lt;cfargument name=&quot;secondnum&quot; type=&quot;numeric&quot;&gt; &lt;--- And the second number &quot;secondnum&quot;<br>
  <br>
  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&lt;cfreturn #firstnum#+#secondnum#&gt; &lt;--- This hands back the sum of the two numbers to whatever called it. <br>
&lt;/cffunction&gt; &lt;--- This closes the function. </p>
<p>&nbsp;</p>
<p>Ok, great. So what, how do we use this? Now, to add 5 and 3, we don't need to type out #5+3#. We can type #addNumbers(5,3)#. This command passes in the number 5 as &quot;firstNum&quot; and the number 3 as &quot;secondNum) and displays whatever comes back in its place. This particular example doesn't necessarily save alot of typing but it does illustrate how a function works. You create the function, define the arguments that the function should expect. Write the code that the function should perform on the inputs and return the output. </p>
<p>You would call it like this:</p>
<p>&lt;cfoutput&gt;<br>
#addNumbers(10,5)#<br>
&lt;/cfoutput&gt;</p>
<p><strong>Exercise</strong></p>
<p>In the exercises folder, create a page called MathFunction.cfm. On it, type out the function that's displayed above. Put it at the bottom of the page to keep it organized. Above it, call the function and pass in several different combination of numbers (i.e. #addNumbers(5,3)#&lt;br/&gt;#addNumbers(100,223)# etc. </p>
<p>Bonus Exercise: Can you make a form that accepts two numbers, submits it to the same page and then uses the function to add the two numbers together? All the information you need is in these docs. </p>


<cffunction name="addNumbers" access="private" returntype="numeric">
	<cfargument name="firstnum" type="numeric" default="1">
    <cfargument name="secondnum" type="numeric" default="2">
    
    <cfreturn #firstnum#+#secondnum#>
</cffunction>