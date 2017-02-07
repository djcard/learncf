<legend>Intro To Complex Variables-1: Objects/Structs</legend>
<p>Up until now, variables have been fairly simple. Even in the data types document we were calling them simple variables. If we have simple variables, are there such things are complex variables? Well, yes, or there would be no need for the distinction. </p>
<p>If a string is simple variable and we can use a string to represent a book title, is there a way to put a group a number of variables together that are all related and have them work as a unit? For example, you've probably put together by now that each simple variable is like one of the cells in your Excel spreadsheet. Is there a way that we can refer to an entire row, in this case, an entire book?</p>
<p>Yes, and the answer is in using complex variables. There are many types of complex variables but they all boil down to two principle types: Objects and Arrays. That's it. Objects and Arrays. What are they? Good question.</p>
<p><img src="images/crayon.jpg" width="92" height="132" alt="Blue Crayon" style="float:right" />Objects (also called <strong>structures</strong> in CF) are variables that you can attach values to by name. For example, I have an object named myCrayon  that I am going to use to model a crayon. What are the properties that I am going to assign to it? Color? Length? Sharpened? Brand? Owner's name? We can do all of those. The overall point is that we can refer to the properties of the object by their names. We write this in two ways - The first is called &quot;dot notation&quot;. It looks like this:</p>
<pre>
myCrayon.color=&quot;Blue Steel&quot;
<p>myCrayon.length=2</p><p>myCrayon.sharpened=true</p><p>myCrayon.owner=&quot;Timmy&quot;</p><p>myCrayon.dateBought={ts '2015-01-10 23:18:49'}</p>
</pre>
<p>Notice how these variables can be any of the simple data types we've already discussed? The first is a string. The second is a number (notice the lack of quotes around it). The third is a boolean. The fourth is a string and the fifth is a date. Can we attach complex objects to other complex object? Absolutely.</p>
<p>myMovie.name=&quot;Revenge of the Mutant Tomatoes&quot;</p>
<p>myMovie.cast.Tim=&quot;Brad Pitt&quot;</p>
<p>myMovie.sets.lowell.address=&quot;1 University Avenue&quot;</p>
<p>In this movie example, myMovie is an object. The &quot;cast&quot; and &quot;sets&quot; variables are objects as is &quot;lowell&quot;. What is nice about objects is that, because they have this dot notation, if we name our variables well, they can tell a story. It's easy to see that the address of the  movie set in Lowell used in Revenge of the Mutant Tomatoes was &quot;1 University Avenue&quot;, right?</p>
<p>Here is how you would create that in ColdFusion. CF calls Objects &quot;Structs&quot; and you do need to define them ahead of time, so to process to create the above example would look like this:</p>
<pre>
&lt;cfset myMovie=StructNew()&gt;<br>&lt;cfset myMovie.cast=StructNew()&gt;<br>&lt;cfset mymovie.cast.Tim=&quot;Brat Pitt&quot;&gt;
&lt;cfset myMovie.sets=StructNew()&gt;
&lt;cfset myMovie.sets.lowell=StructNew()&gt;<br>&lt;cfset myMovie.sets.lowell.address=&quot;1 University Avenue&quot;&gt;
</pre>
<cfset myMovie=StructNew()>
<cfset myMovie.cast=StructNew()>
<cfset mymovie.cast.Tim="Brat Pitt">
<cfset myMovie.sets=StructNew()>
<cfset myMovie.sets.lowell=StructNew()>
<cfset myMovie.sets.lowell.address="1 University Avenue">
<p>This seems to be a good time to introduce to one of the most handy tags in ColdFusion and that is &lt;cfdump&gt;. Many times when you are working with complex variables (or even simple ones) you need to see  their value  or what kind of structure they are. Yes, you can use all of the IsDate() or IsNumeric() or IsStruct() functions but it takes time to code and test each one and sometimes you simply want to just look at it for reference. &lt;cfdump allows you to do just that. By typing &lt;cfdump var=&quot;#myMovie#&quot; label=&quot;myMovie&quot;&gt; we get this: </p>
<cfdump var="#myMovie#" label="myMovie"><br/>
<p>See how the hierarchy is laid out with both the name of the properties and their values? Objects/Structs are also called <strong>key pairs</strong> which are made up of a <strong>Key</strong> and a <strong>Value</strong>. You would rarely want this to appear on your final working web page since it's not really glamorous even if it is incredibly helpful in your development. Just remember to take it off before you show it to your client or your boss. </p>
<p>You can  refer to an object's contents a second way which is like this: myMovie['cast']. This is called an <strong>associative array</strong>. You can also compound it and use myMovie['sets']['lowell']['address'] and get
  <cfoutput>#myMovie['sets']['lowell']['address']#</cfoutput> or mix and match myMovie['sets'].lowell['address'] and get <cfoutput>#myMovie['sets'].lowell['address']#</cfoutput>
<p><strong>Exercise</strong>: In the exercises folder, create a page called, &quot;MyObjects.cfm&quot; On it, take one of your 10 Books in Excel books and create a CF structure out of it. Use multiple structures to model an entire book including data from all four Excel Sheets (or SQL Tables). When you are done, dump out each of the objects you created.</p>
