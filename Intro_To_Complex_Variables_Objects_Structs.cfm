<article id="3723e8b5-3738-4314-8302-f48f73eb6aae" class="page sans">
    <header><h1 class="page-title">Intro To Complex Variables: Objects/Structs</h1></header>
    <div class="page-body"><p id="1fb5446c-d9bd-486d-b093-5fc3ec196890" class="">Up until now, variables have been
        fairly simple. Even in the data types document we were calling them simple variables. If we have simple
        variables, are there such things are complex variables? Well, yes, or there would be no need for the
        distinction.</p>
        <p id="895c22db-af2d-48c2-9233-645ee8ac058e" class="">If a string is a simple variable and we can use a string to
            represent a book title, is there a way to group a number of variables together that are all related
            and have them work as a unit? For example, you&#x27;ve probably put together by now that each simple
            variable is like one of the cells in your Excel spreadsheet. Is there a way that we can refer to an entire
            row, in this case, an entire book?</p>
    <p id="10a72b69-8aa7-4260-b398-2d9123daa755" class="">Yes, and the answer is in using <strong>complex</strong> variables. 
            There are many types of complex variables but most of them boil down to two principal types: Objects and Arrays.
            That&#x27;s it. Objects and Arrays. What are they? Good question.</p>
        <p id="05a741f7-258a-435e-8f76-d584a47ace2a" class="">Objects (also called <strong>structures</strong> in CF)
            are variables to which you can attach other values by <strong>name</strong>. For example, I have an object named 
            myCrayon that I am
            going to use to model a crayon. What are the properties that I am going to assign to it? Color? Length?
            Sharpened? Brand? Owner&#x27;s name? We can do all of those. The overall point is that we can refer to the
            properties of the object by their names. We write this in two ways - The first is called &quot;dot notation&quot;.
            It looks like this:</p>
        <pre id="269a6fa6-5fbf-49bd-a1b3-2a9efd84d121" class="code code-wrap"><code>myCrayon.color=&quot;Blue Steel&quot;
myCrayon.length=2
myCrayon.sharpened=true
myCrayon.owner=&quot;Timmy&quot;
myCrayon.dateBought={ts &#x27;2022-01-10 23:18:49&#x27;}</code></pre>
        <p id="1ebe44ed-b8d2-4b47-825f-3c87eeb5bb0f" class="">Notice how these variables can be any of the simple data
            types we&#x27;ve already discussed? The first is a string. The second is a number (notice the lack of quotes
            around it). The third is a boolean. The fourth is a string and the fifth is a date. Can we attach complex
            objects to other complex object? Absolutely.</p>
        <p id="809f0d26-70fe-41e4-830b-4d79489df93a" class="">myMovie.name=&quot;Revenge of the Mutant
            Tomatoes&quot;</p>
        <p id="8edaedb6-1bfd-4427-a642-6d9713c62418" class="">myMovie.cast.Tim=&quot;Brad Pitt&quot;</p>
        <p id="82a7f48e-89db-42ad-8c5c-8af2b89143d0" class="">myMovie.sets.lowell.address=&quot;1 University Avenue&quot;</p>
        <p id="50f09cd1-a13b-4a0f-b20c-35df259b8963" class="">In this movie example, myMovie is an object. The &quot;cast&quot;
            and &quot;sets&quot; variables are objects as is &quot;lowell&quot;. What is nice about objects is that,
            because they have this dot notation, if we name our variables well, they can tell a story. It&#x27;s easy to
            see that the address of the movie set in Lowell used in Revenge of the Mutant Tomatoes was &quot;1
            University Avenue&quot;, right?</p>
        <p id="e9dd8cf1-2ed7-464c-870b-aec5e0415fd6" class="">Here is how you would create that in ColdFusion. CF calls
            Objects &quot;Structs&quot; and you do need to define them ahead of time, so to process to create the above
            example would look like this:</p>
        <pre id="b9aa6bf9-2359-457c-8be0-27d33ff819d1" class="code code-wrap"><code>&lt;cfset myMovie=StructNew()&gt;
&lt;cfset myMovie.cast={}&gt;
&lt;cfset mymovie.cast.Tim=&quot;Brat Pitt&quot;&gt;
&lt;cfset myMovie.sets={}&gt;
&lt;cfset myMovie.sets.lowell={}&gt;
&lt;cfset myMovie.sets.lowell.address=&quot;1 University Avenue&quot;&gt;
</code></pre>
<cfset myMovie=StructNew()>
<cfset myMovie.cast=StructNew()>
<cfset mymovie.cast.Tim="Brat Pitt">
<cfset myMovie.sets=StructNew()>
<cfset myMovie.sets.lowell=StructNew()>
<cfset myMovie.sets.lowell.address="1 University Avenue">
        <p id="56497b27-c663-48fe-a03c-46cae74fffc7" class="">This seems to be a good time to introduce to one of the
            most handy tags in ColdFusion and that is &lt;cfdump&gt;. Many times when you are working with complex
            variables (or even simple ones) you need to see their value or what kind of structure they are. Yes, you can
            use all of the IsDate() or IsNumeric() or IsStruct() functions but it takes time to code and test each one
            and sometimes you simply want to just look at it for reference. &lt;cfdump&gt; allows you to do just that.
            By typing &lt;cfdump var=&quot;#myMovie#&quot; label=&quot;myMovie&quot;&gt; we get this:</p>
<cfdump var="#myMovie#" label="myMovie"><br/>
        <p id="c2f122bf-321b-447c-a1ee-34f48760fbe5" class="">See how the hierarchy is laid out with both the name of
            the properties and their values? Objects/Structs are also called <strong>key pairs</strong> which are made
            up of a <strong>Key</strong> and a <strong>Value</strong>. You would rarely want this to appear on your
            final working web page since it&#x27;s not really glamorous even if it is incredibly helpful in your
            development. Just remember to take it off before you show it to your client or your boss.</p>
        <p id="7d073be0-c5aa-43ae-a7d5-a9b167e21194" class="">You can refer to an object&#x27;s contents a second way
            which is like this: myMovie[&#x27;cast&#x27;]. This is called an <strong>associative array</strong>. You can
            also compound it and use myMovie[&#x27;sets&#x27;][&#x27;lowell&#x27;][&#x27;address&#x27;] and get 1
            University Avenue or mix and match myMovie[&#x27;sets&#x27;].lowell[&#x27;address&#x27;] and get 1
            University Avenue</p>
        <p id="9393b6a5-e0c7-4c52-a706-ba5db1cb6a8e" class=""><strong>Exercise</strong>: In the exercises folder, create
            a page called, &quot;MyObjects.cfm&quot; On it, take one of your 10 Books in Excel books and create a CF
            structure out of it. Use multiple structures to model an entire book including data from all four Excel
            Sheets (or SQL Tables). When you are done, dump out each of the objects you created.</p>
        <hr id="b11fc4d9-44a5-422b-8d6a-0c51f9df3ef0"/>
        <p id="ac045702-3f3e-4f9a-bb82-049579c6b951" class="">Some people who have used other programming languages look
            at the tags above and ask, &quot;Isn&#x27;t that alot of typing? Isn&#x27;t there a shorthand method to
            making objects????&quot;. The answer is &quot;yes&quot;. That is alot of typing. Because of that, ColdFusion
            has implemented a shorthand to create structures. To use that shorthand, would look like this:</p>

        <p id="bf41c256-489d-4683-b1c3-d342d380f0cd" class="">&lt;cfset myMovie={</p>
        <p id="a95c68d9-9734-4935-ada0-8f4a595c5a60" class=""> &nbsp;&nbsp;&nbsp;&nbsp;cast:{</p>
        <p id="2cf8f2aa-417b-4b98-b63b-a20b621923cb" class=""> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Tim: &quot;Brad Pitt&quot;,      </p>
        <p id="fd0797c0-9522-4030-bbd8-cbad8b0bb76d" class=""> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Grace:&quot;Stacy Dash&quot;</p>
        <p id="27c42677-2787-446f-aed2-29d37a588d12" class=""> &nbsp;&nbsp;&nbsp;&nbsp;},</p>
        <p id="f6f746f1-62d8-4570-b614-00741d1e7dbb" class=""> &nbsp;&nbsp;&nbsp;&nbsp;Sets:{</p>
        <p id="c239565b-e7ea-48ad-9246-2121b5bdd51f" class=""> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Lowell:{</p>
        <p id="507d3a72-49d9-4ca5-9bc6-bffd45bdd6b1" class=""> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Address1:&quot;1 University Ave&quot;</p>
        <p id="059a1a0e-57aa-4bc8-aa2e-4ce6c92eb38d" class=""> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;}</p>
        <p id="869793ad-ddf4-4013-9b46-9124bf19d0ed" class="">&nbsp;&nbsp;&nbsp;&nbsp;}</p>
        <p id="1f337301-fd81-4fbc-95a7-6e6911ba4552" class="">}&gt;</p>
        <p id="ca673483-e655-4ca5-bd62-112cf3ff3de9" class="">Let&#x27;s walk through that. The &lt;cfset mymovie= says
            we&#x27;re going to create a variable called myMovie.</p>
        <p id="a906fed1-58b0-42f0-884a-c5b619d3916d" class="">The { character says we are going to start a new
            object/structure.</p>
        <p id="faab7620-1600-4e4d-a97f-4fbe11776d70" class="">The keys and values are separated by a : (colon) as in
            Tim:&quot;Brad Pitt&quot;.</p>
        <p id="56378cce-cf11-4953-8a19-767d708d55ca" class="">Different keys/value pairs are separated by a comma (,) as
            in between the two actors and the cast and set objects.</p>
        <p id="906c9640-35a2-42e9-9681-0b32532dc2e3" class="">The } signifies the end of the object/struct.</p>
        <p id="017b59cb-fe9a-448e-8af5-81ac9122c889" class="">Two ways to do the same thing.</p></div>
</article>
