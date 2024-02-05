<article id="77838e0a-6e04-43e9-aeab-50d52996418c" class="page sans">
    <header><h1 class="page-title">Intro To Complex Variables: Arrays</h1></header>
    <div class="page-body"><p id="310fb548-eb7c-4361-91e1-4624c78f5ca9" class="">Objects are everywhere. In fact, in
        JavaScript and a few other programming languages, everything is ultimately an object but that&#x27;s getting
        kind of abstract at the moment. Another type of complex variable we are going to work with are called Arrays.
        Whereas with objects/structs you can refer to the keys by name, the data in an array is sorted by number. This
        is very handy when you don&#x27;t know the names of the keys you are working with, need to keep things in order,
        or have multiple objects with the same set of keys (like multiple books) and you need to keep them separate.</p>
        <p id="bf65c255-6018-4280-8346-ff5cb1eec73e" class="">If it helps, you can think of arrays like a bookshelf that
            can keep getting longer and longer dynamically as you add things to it. When we add another index, we just
            add another shelf. Easy enough. We can then refer to the shelves by number as in myBooks[1]=&quot;Hello&quot;.
            This means that in the Array &quot;myBooks&quot;, the item located at index 1 is a string with the value of
            &quot;Hello&quot;. Which highlights a difference between CF and most other languages. When most computer
            languages start to count (as in the first shelf of an array) they start with zero. They are called zero
            based langauges. CF starts with 1. Why? No idea but it does. At the time it made sense, I suppose and we&#x27;ll
            go with that. That little fact comes up occasionally and I wanted to throw it out there now.</p>
        <p id="1b5292e6-82cb-468f-a6e0-688144430ebd" class="">Here is how we would create a new Array in CF:</p>
        <pre id="0c107a8e-933a-4217-acbc-2802a67ac1a1" class="code code-wrap"><code>&lt;cfset myArray=ArrayNew(1)&gt;
&lt;cfset myArray[1]=&quot;Hello&quot;&gt;
&lt;cfset myArray[2]=&quot;Goodbye&quot;&gt;
&lt;cfset myArray[3]={}</code></pre>
        <p id="554b319a-d873-4c35-b6d9-74dea26c5076" class="">We can also add items to the Array by using the append member function.
            myArray.append(&quot;whatever&quot;) which will add the string &quot;whatever&quot; to the end of the
            array called &quot;myArray&quot;. That&#x27;s handy if we don&#x27;t know what number we&#x27;re on and just
            want to add something. We can dump that out the same way by using &lt;cfdump var=&quot;#myArray#&quot;
            label=&quot;MyArray&quot;&gt; and we get this:</p>
<cfset myArray=ArrayNew(1)>
<cfset myArray[1]="Hello">
<cfset myArray[2]="Goodbye">
<cfset myArray[3]=StructNew()>
<cfdump var="#myArray#" label="MyArray">
        <p id="b7eb7eef-ef1a-405d-a2ff-63f1c7069569" class="">See how the items are lined up and numbered. These will
            stay in this order unless you change them. In an object, the keys can be displayed in any order by the
            application unless you take specific steps to code in a way that they display in a particular order. Arrays
            will always stay ordered.</p>
        <p id="d29aafdb-a132-47d1-a09c-b73c4722cfaa" class="">The number in the parentheses is important. What it refers
            to is the how many dimensions the array has. Getting into multi-dimensional arrays is beyond what we are
            going to work with here so for now, just put a 1 in the ()</p>
        <p id="6ff09d3a-fe44-4fee-a737-a912887f74db" class="">Does CF have a similar shorthand for arrays as it does for
            the objects? Yes. Arrays are denoted by []. To make the same structure as above would look like this:&lt;cfset
            myArray=[&quot;Hello&quot;,&quot;Goodbye&quot;,{}]&gt;</p>
        <p id="a07e67e4-5a02-4b59-ae4c-1c6ef8035771" class=""><strong>Exercise</strong>: Create a file named &quot;myArray.cfm&quot;
            in the exercises folder. Create complex objects using the same model you created on the last page and
            populate three more of them with three more books from the 10 Books Exercise. Put each of the objects in its
            own index in an Array and dump it out. Are you starting to see how an array of objects can be a powerful
            thing? If not, no stress but stay tuned. I know that this exercise is repetitive. In a few screens we are
            going to see how we can make the computer create the objects and arrays we want more easily and
            automatically. For now though, just type it out.</p></div>
</article>
