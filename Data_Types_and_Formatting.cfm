<article id="556b5719-cb71-45f7-b54c-d72a4f0d336f" class="page sans">
    <header><h1 class="page-title">Data Types and Formatting</h1></header>
    <div class="page-body"><p id="b4443467-3eab-43e4-9472-6dbf064707ac" class="">Last week, we read an article
        called <em>Introduction to Data Types</em> and used it to create the databases in the SQL server. Those datatype
        concepts are very much alive and well here also. For example, what is the difference between 123456789 and
        123,456,789? To a human, nothing. To a computer, almost everything. Let&#x27;s look at it.</p>
        <p id="c59de24f-19e3-41a0-8e49-c94d1b15a392" class="">123456789 is a <strong>number</strong>. 123,456,789 is
            a <strong>string</strong>. Remember that numbers can ONLY have numerals, a decimal point and perhaps a
            positive or negative sign (depending on if it&#x27;s an integer, a float, signed or unsigned).</p>
        <p id="893d1297-acec-4161-b5f3-e97dcbb70f73" class="">There are some computer programs that are very strictly
            typed. That means that whenever you are talking about number, dates, or other data types, you need to
            specifically say that THIS IS A NUMBER. THIS IS A DATE. CFML really does try to make things as
            straightforward as possible (one of the reasons I use it). Therefore, you don&#x27;t need to announce to
            your application that you are now dealing with a number, the program gives it its best guess and, for the
            most part, it does pretty well. However, even if you don&#x27;t SAY what type of data it is, the program
            still has to treat your information as if it is a particular datatype. Therefore, if you try to add two
            numbers #5+3#, you will get 8. If you try to add a string and a number you will get something else. See:</p>
        <ul id="6a2e50fa-7eb3-4e5c-9f49-0c4e0818288d" class="bulleted-list">
            <li style="list-style-type:disc">#5+3# = 8</li>
        </ul>
        <ul id="58c9cdd2-a99d-488d-af30-b52ac4c66bca" class="bulleted-list">
<li style="list-style-type:disc">#'fish' + 3# = <cfoutput><cftry>#'fish' + 3#<cfcatch type="any"> #cfcatch.message# </cfcatch></cftry></cfoutput></li>
        </ul>
        <p id="4dcd0023-ac22-4431-95b5-2c7db2d95de2" class="">In this case, we told it to mathematically add a string ("fish")
             to a number (3) which
            is pretty much impossible and it says so. SOOOOO, does that mean that we are forever, forced to look at numbers 
            like 6234798723847932 with no commas, dollar signs or
            any other human readable features? Of course it doesn&#x27;t. This brings up the concept of <strong>formatters</strong>.
            There is, or can be, a difference between the underlying type of data and how it is presented on the screen.
            CF (and other languages) does this with what are called &quot;formatters&quot;. CF has several. We&#x27;re
            going to look at two of them.</p>
        <p id="47acea87-bb9d-49ac-9d2c-09623bb9aee8" class=""><strong>Number Formatters</strong>- Let&#x27;s look at
            our example: 123456789. A nine digit, hard for humans to read, number. With a Number formatter we can
            specify that this number should have commas and, just for fun, a dollar sign. We can do that like this:
            #Numberformat(123456789,&quot;$,&quot;)# and we get $123,456,789. We told the formatter to put in a $ and a
            , in the default places and it did. The second part of this is called a &quot;Mask&quot;. The point here isn&#x27;t
            that you need to learn the exact syntax for the NumberFormat Mask since it&#x27;s in the CF Documentation
            here:<a href="https://wikidocs.adobe.com/wiki/display/coldfusionen/NumberFormat">https://wikidocs.adobe.com/wiki/display/coldfusionen/NumberFormat</a> but
            that you know the concept.</p>
        <p id="da83994f-13d9-4a45-bac2-c0d1bf2cc1ea" class=""><strong>Date Formatters</strong>- Dates are another of
            those things that are inherently human readable. What does a date look like to the computer? Like this: {ts
            &#x27;2022-02-06 20:18:11&#x27;} . That particular format is called a <strong>TimeStamp</strong>. You can
            read it and once you get past the {} and the quotes you can see the date and the time in 24hr format
            including the hours, minutes and seconds. So how do you get the date to appear on the screen? This is done
            by calling a ColdFusion <strong>function</strong>. A function is a list of instructions that you can give to
            a computer or programming language to perform. Most functions, at least in CF, have names and can be
            referenced simply by calling its name. In this case we are going to look at a common function to get the
            current date and time as a date and is called now(). It&#x27;s very difficult so pay attention: To make it
            work you type <strong>#now()#</strong>. Whew! Complex, right! Of course it needs to be inside a &lt;cfoutput&gt; tag but you
            already knew that ;) Whenever you see &quot;()&quot; it almost always means that there is a function being
            called. The parentheses are important for reasons we will look at later .</p>
        <p id="3da8d607-08b2-47cd-8566-7392c3bb93e7" class=""><strong>Exercise</strong>: In the exercise folders, make a 
            new web page called &quot;MyDate.cfm&quot;. In the body tag, add &lt;cfoutput&gt;#now()#&lt;/cfoutput&gt;. 
            Open the page in a browser and you should see the current date and time as a time stamp.</p>
        <p id="74570cca-5391-44e4-ac8c-cccdb217aa6c" class="">However, it&#x27;s usually not a good idea to make your
            audience work very hard for seemingly simple things like the time. Therefore, let&#x27;s look at the Date
            Formatter: The syntax is very similar to the Number Formatter in that is it looks like this:
            DateFormat(Date,&quot;<em>mask</em>&quot;). The trick is to then know what goes into making the mask. The
            documentation at<a href="https://wikidocs.adobe.com/wiki/display/coldfusionen/DateFormat">https://wikidocs.adobe.com/wiki/display/coldfusionen/DateFormat</a>
            has a list of the elements of a mask. For example, to make the common date notation for the US, you would type
            #dateformat(now(),&quot;mm/dd/yyyy&quot;)# and it appears like this: 02/06/2022</p>
        <p id="a7da509e-eedc-490e-909e-887b4784668b" class=""><strong>Exercise</strong>: Open up your MyDate.cfm page
            again. On the next 5 lines, use different masks (find them on the link above) to make the date appear
            differently.</p></div>
</article>
