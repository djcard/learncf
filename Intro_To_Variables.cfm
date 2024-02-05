<article id="195efc15-bd2b-49f2-a29d-269f141baec6" class="page sans">
    <header><h1 class="page-title">Intro To Variables</h1></header>
    <div class="page-body"><p id="9b52de54-f15b-4cb4-b83d-cc93539f844c" class="">A variable is a place holder. That&#x27;s
        it. Fairly straightforward in concept. It gets a little more complicated in practice but, really, that&#x27;s
        it. We&#x27;re used to seeing variables in math classes which are usually called X and Y and other mundane
        things. In programming, we can certainly do that, but more often we use words that are more descriptive. For
        example we might have a variable for the price of a book and call it priceOfBook (remember that document on
        cases? Here&#x27;s where it comes in). We might have a billing application and have a variable called
        dayBillIsDue and, surprise, it&#x27;s the day that the bill is due. The name of the variable helps to describe
        what the variable does.</p>
        <p id="bf997d51-d584-425c-afe1-e519d4bee3f4" class="">In ColdFusion, the &lt;cfset&gt; tag is used to set or
            alter variables. For example, &lt;cfset myDogsName=&quot;fido&quot;&gt; creates a variable named &quot;myDogsName&quot;
            and sets the value of it to &quot;fido&quot;. Seems straightforward enough. That means that myDogsName is a
            variable that contains a string. Remember how I said that ColdFusion was a &quot;typeless&quot; language?
            That means that I can just as easily make my variable equal a number, a date or anything else without
            changing any of that syntax. &lt;cfset dayBillIsDue = now()&gt; will set the variable dayBillIsDue to today.
            To display the variable we surround it by #s as in #dayBillIsDue# which will display the date and time it
            was when we set it.</p>
        <p id="a631de6b-7ec5-4bc0-a120-1d24205ecc0b" class="">Exercise: Create a new web page called myVariables.cfm in
            the exercises folder. In the body tag type the following:</p>
        <pre id="35d725cf-91b6-4e88-adac-d1d643c6b6ed" class="code code-wrap"><code>	&lt;cfset todayDate=now()&gt;
	&lt;cfoutput&gt;
		#todayDate#
	&lt;/cfoutput&gt;
</code></pre>
        <p id="2e65be08-811b-466d-85fa-17759cfa9c1b" class="">What did you get? This: {ts &#x27;2022-02-06 21:05:47&#x27;}
            ? If not, check your spelling and make sure all the tags are there.</p>
        <p id="64a10118-5e7f-4f57-819f-609d4d5226a2" class="">However, notice that it&#x27;s in the Java TimeStamp
            format. How do you fix that? Psst, the answer is two pages ago.</p>
        <p id="b0b17cfe-e668-4793-b3e9-00e27a9325fa" class=""><strong>Exercise</strong>: Make the next time in your
            MyDate.cfm page a more readable version of the todayDate variable BUT don&#x27;t change the underlying
            variable.</p>
        <p id="50977eab-4dd9-48b1-8ed5-f946e4d21031" class="">Were you able to figure it out? It quite possibly might be
            a dateFormatter but that&#x27;s just a theory.</p>
        <p id="640fea9e-c8d0-4c85-bdbf-d58a28b92aa1" class="">Which brings up a good point: if a variable can be
            anything (date, number, string) and we need it to be something in particular, how can we check and see what type
            of variable it is? CF (and other languages) give us a way of testing the TYPE of a variable as well as the
            value of that variable. For example, to test if something is a date you can type #isValid("date",variablename)#. We
            can see if our todayDate variable is a date by typing #isValid("date",todayDate)# and we get: true . ColdFusion
            outputs Booleans (Yes/No variables, remember?) as literally YES or NO. You can also use True or False (not in quotes!), or 1 or
            0 to set a boolean but it will display as YES/NO.</p>
        <hr />
        <p>You can see all the isValid possibilities here: <a target="_blank" href="https://helpx.adobe.com/coldfusion/cfml-reference/coldfusion-functions/functions-in-k/isvalid.html">https://helpx.adobe.com/coldfusion/cfml-reference/coldfusion-functions/functions-in-k/isvalid.html</a></p>
        <hr />
        <p id="fdd75171-c4ef-49e8-af90-0149b2170f0f" class=""><strong>Exercise</strong>: On the myVariables.cfm page put
            a &lt;hr/&gt; tag under the first part of the page and in the second, add up the price of your 10 books in
            your Excel Project. Can you do it with only one variable name? Let&#x27;s call it totalBookCost. Hint: Start
            with &lt;cfset totalBookCost=0&gt; and go from there. Think you can do it? Don&#x27;t forget to output the
            final amount to the page.</p></div>
</article>
