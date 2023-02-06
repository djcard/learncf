<article id="7b08db82-b52b-4dde-a23e-8e8114973926" class="page sans">
    <header><h1 class="page-title">Functions</h1></header>
    <div class="page-body"><p id="ee56a85c-e2fb-4296-bb1e-9b0c7e550912" class="">A function is a series of instructions
        that are given to a computer to be processed. A function can be written and then just sit there until it is
        called upon to do its job. We talked a little bit before about functions when we used <code>now()</code>. Now() is a function
        built in ColdFusion that gets the time from the operating system. You can also write your own functions as well.
        This allows you to break your code into smaller chunks which makes them easier to read and easier to manage. It
        also allows us to write certain functionality that we are going to use over and over again in a way that we only
        have to write it once. </p>
        <p id="536f3e3c-878e-4946-bcf4-3066a487cf74" class="">Here is a simple example. We are working on a website
            where we need to frequently add two numbers together (I told you, it&#x27;s a simple example). We could
            write a function that would add the two numbers together for us and put it on our site or our page so we can
            access it. Let&#x27;s look at what this function could look like.</p>
        <p id="6cf5c2f9-976a-490e-b7d0-cef999127f68" class=""><code>&lt;cffunction name=&quot;addNumbers&quot; access=&quot;private&quot;
            returntype=&quot;numeric&quot;&gt; </code>&lt;--- the tag to make a function is &lt;cffunction&gt;. The&nbsp;<strong>NAME</strong>&nbsp;property
            is how we reference the function.&nbsp;<strong>ACCESS</strong>&nbsp;defines what type of code can access this
            function. In this case only this page can access it.<strong>&nbsp;RETURNTYPE</strong>&nbsp;says that this function can
            only return numbers.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </p>
        <p id="4f0ce31b-b3e3-4127-9863-682f0040ecb5" class=""><code>&lt;cfargument name=&quot;firstnum&quot; type=&quot;numeric&quot;&gt;</code>
            &lt;--- Information that a function needs to do its job are called &quot;Arguments&quot;. Our function is
            going to add two numbers together so we need to pass two numbers to it. That means that the function
            needs to have two variables already assigned to &quot;catch&quot; those variables. We will call the first
            number &quot;firstnum&quot;.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</p>
        <p id="09f83d33-9f20-4fdb-96f3-8269530e7501" class=""><code>&lt;cfargument name=&quot;secondnum&quot; type=&quot;numeric&quot;&gt;</code>
            &lt;--- And the second number &quot;secondnum&quot;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</p>
        <p id="f2c0572e-7fb7-4f52-8d8a-fb78f477b00e" class=""><code>&lt;cfreturn #firstnum+secondnum#&gt;</code> &lt;--- This hands
            back the sum of the two numbers to whatever called it.</p>
        <p id="2e9ba006-016c-42b0-a978-5d6742aa34b6" class="">&lt;/cffunction&gt; &lt;--- This closes the function.</p>
        <p id="08e85713-e43a-4d5a-9e21-29b69db19cc7" class="">Here it is as a whole:</p>
        <pre id="2227de2f-9594-4164-b9e2-bb05d53b2d05" class="code"><code>&lt;cffunction name=&quot;addNumbers&quot; access=&quot;private&quot; returntype=&quot;numeric&quot;&gt;
    &lt;cfargument name=&quot;firstnum&quot; type=&quot;numeric&quot;&gt;
    &lt;cfargument name=&quot;secondnum&quot; type=&quot;numeric&quot;&gt;
    &lt;cfreturn #firstnum+secondnum#&gt;
&lt;/cffunction&gt;</code></pre>
        <p id="06afb590-db1e-4bc2-b45e-624558095ef5" class="">Ok, great. So what, how do we use this? Now, to add 5 and
            3, we don&#x27;t need to type out #5+3#. We can type #addNumbers(5,3)#. This command passes in the number 5
            as &quot;firstNum&quot; and the number 3 as &quot;secondNum) and displays whatever comes back in its
            place. </p>
        <p id="44ed63e8-2747-4d6d-a9c6-3456b3b2e966" class="">This particular example doesn&#x27;t necessarily save a
            great deal of typing but it does illustrate how a function works. You create the function, define the
            arguments that the function should expect. Write the code that the function should perform on the inputs and
            return the output.</p>
        <p id="1d9e0536-fccc-41bc-8f5d-7fce2474aeac" class="">You would call it like this:</p>
        <p id="1ee4c6ef-959d-4bfe-bf4e-920f232742fa" class="">&lt;cfoutput&gt;#addNumbers(10,5)#&lt;/cfoutput&gt;</p>
        <p id="3764f1b1-fbe7-422f-936f-af58009dc5a3" class="">We also can assign variables to the value returned from a
            function. We can write &lt;cfset myNumber=addNumbers(5,8)&gt; will assign the value of 12 to the variable
            myNumber</p>
        <p id="a3c50c16-55bd-4697-8c4f-28a704d4c814" class=""><strong>Exercise</strong></p>
        <p id="7292c533-f313-4f3f-80b4-e0f4a4628c30" class="">In the exercises folder, create a page called
            MathFunction.cfm. On it, type out the function that&#x27;s displayed above. Put it at the bottom of the page
            to keep it organized. Above it, call the function and pass in several different combination of numbers (i.e.
            #addNumbers(5,3)#&lt;br/&gt;#addNumbers(100,223)# etc.</p>
        <p id="dff22923-4ccc-413a-94ab-813ab41274a2" class=""><strong>Bonus Exercise</strong>: Can you make a form that
            accepts two numbers, submits it to the same page and then uses the function to add the two numbers together?
            All the information you need is in these docs.</p></div>
</article>
