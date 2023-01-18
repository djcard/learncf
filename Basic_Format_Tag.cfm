<article id="279ac219-e856-4c17-a683-aaf1404007ff" class="page sans">
    <header><h2 class="page-title">Basic Format: Tag</h2></header>
    <div class="page-body"><p id="d591a109-2ce8-43e7-9b5e-675d1d3b6195" class="">We're going to start with the ColdFusion tag based format which looks very similar to HTML. For example, the &lt;cfoutput&gt; tag is used to tell the CF server that we want it to process any CF code it finds between the &lt;cfoutput&gt; tag and the &lt;/cfoutput&gt;tag. Just like in HTML, CF tags mostly need to be closed.</p>
		<p id="0e75c358-dc92-41c7-80ca-0cc9901aa8a6" class="">CF tags also can have properties and values. For example,<code>&lt;cfloop from=&quot;1&quot; to=&quot;10&quot; index=&quot;i&quot;&gt;....&lt;/cfloop&gt;</code> means to start at 1 and do whatever is in between the tags 10 times using the variable &quot;i&quot; as a counter. We'll look more at the &lt;cfloop&gt; tag soon but for now, see how the tag (cfloop) has properties (for, to, index) and values (1,10,i)? For the most part, like any other programming language, the thought process is:</p>
        <ol type="1" id="69452d64-44bf-45b8-b85b-75ba95ae0b9b" start="1">
            <li>What am I trying to accomplish?</li>
            <li>What is the tag I need to do that?</li>
            <li>What are the properties and values that that tag needs in order to do what I want?</li>
        </ol>
        <p id="c1d4c38f-1a6c-4bda-8b94-a6da379c6143" class="">Here are some other key issues:</p>
        <ol type="1" id="85b52c92-69cf-464e-b562-1adba2f23d02" class="numbered-list" start="1">
            <li>All ColdFusion pages end in &quot;.cfm&quot;, &quot;.cfml&quot;, or &quot;.cfc&quot;. We&#x27;ll look at
                CFCs later so for now, make sure that all of your CF pages end in .cfm.
            </li>
        </ol>
        <ol type="1" id="bb974ec2-ca9e-477a-b61b-7f59664dbd5b" class="numbered-list" start="2">
            <li>The Tag format is used almost exclusively when you need to put your CFML on the same page or amidst your
                HTML.
            </li>
            <li>ColdFusion makes extensive use of the # symbol. It uses it as a signal to the CF Server that it needs to
                process something. For example, a simple math problem is wrapped in #s like this: #5+3#. When the CF
                server sees that, it evaluates (or processes) what is in between and displays &quot;8&quot;. A simple
                page that does this math problem would look like this:
                <pre id="d785b37b-a398-4de1-952b-d089d2a68e7d" class="code code-wrap"><code>	&lt;!doctype html&gt; &lt;--- Every HTML page needs a doc type

	  &lt;html&gt;   &lt;--- The start of every HTML page

	  &lt;head&gt;   &lt;--- The top part of every HTML page

	  &lt;meta charset=&quot;utf-8&quot; /&gt; &lt;--- The encoding type that the text of the page is in (remember that discussion in the Introduction to Data Types document about Unicode and ASCII? This means this page is encoded in Unicode-8)

	  	&lt;title&gt;Untitled Document&lt;/title&gt; &lt;--- The Title of the page, just like every other HTML should have

	  	&lt;/head&gt;   &lt;--- The end of the head tag

		&lt;body&gt;   &lt;--- The start of the body tag, again like every HTML page

      	   &lt;cfoutput&gt; &lt;--- Tells the CF server to pay attention to this area of the page (this speeds up the process by having the CF server only pay attention the portions for which it is needed).

      	     #5+3# &lt;--- The actual CF code that does the math.

      	   &lt;/cfoutput&gt; &lt;--- The end of the cfoutput tag

	  	&lt;/body&gt; &lt;--- The end of the body tag

	  	&lt;/html&gt; &lt;--- The end of the html document
</code></pre>
            </li>
        </ol>
        <ol type="1" id="b558f78f-3d35-4a71-9005-0a6ab38a5db6" class="numbered-list" start="4">
            <li>If the math problem #5+3# is NOT inside of a &lt;cfoutput&gt; tag, it is just returned to the user as
                straight HTML so, since #5+3# in HTML is, well....#5+3# (not 8) it doesn&#x27;t do much good.
            </li>
        </ol>
    </div>
</article>
