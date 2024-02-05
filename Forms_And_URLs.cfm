<article id="09d8bf39-3e69-4134-9516-b26a748303b7" class="page sans">
    <header><h1 class="page-title">Forms And URLs</h1></header>
    <div class="page-body"><p id="6c49006e-5131-4d19-a776-6d191b68d87d" class="">Each page has many variables present,
        even if you don&#x27;t see them or declare them. These variables are grouped and placed in virtual buckets on
        the server and in memory. These &quot;buckets&quot; are called &quot;scopes&quot;. There are several scopes we
        are going to use in this class but now we are going to look at two of them: the URL scope and the FORM
        scope.</p>
        <p id="6b3db2e7-b1ec-43fd-86e7-41a059f4224d" class=""><span style="border-bottom:0.05em solid"><strong>The URL Scope</strong></span>
        </p>
        <p id="00ffa2e2-1422-4aba-9230-9b83e4174c21" class="">Look at the URL of this page. It is
			<cfoutput>http://#cgi.HTTP_HOST##cgi.SCRIPT_NAME#?#cgi.QUERY_STRING#</cfoutput>. Have you ever looked at a URL and dissected
            it? The URL breaks down into several parts:</p>
<cfoutput>
        <ol type="1" id="77cfa633-4b07-46eb-b6a7-978112f94fb5" class="numbered-list" start="1">
            <li>http:// - The protocol that is being used. Most websites use http:// or https://</li>
            <li>#cgi.HTTP_HOST# - This is the domain name (and is listed in the DNS records to point to this computer)
            </li>
            <li>#cgi.SCRIPT_NAME# - This is the folder and file name of the page you are opening</li>
            <li>?#cgi.QUERY_STRING# - This part might be new. We are actually passing in named variables to the page which the
                page can then use for processing. In this case, whenever you click on a link on the left hand side, this
                same page is loading. However, based on the value of the &quot;p&quot; variable, different content
                loads. The &quot;?&quot; sign separates the page name from the variables or &quot;query string&quot; as it's called.
            </li>
        </ol>
</cfoutput>
        <p id="11359edd-e598-4d6e-9e67-7dd7abce23e6" class=""><strong>Exercise</strong>: Go To <a
                href="http://amazon.com/">Amazon.com</a> and click on any of the items. Look at the URL. Somewhere in
            there is a ? which separates the name of the page and the variables that the page uses to render accurately.
        </p>
        <p id="98488562-ca7c-4f3d-94a7-3883722693d1" class="">Each language stores and processes these variables
            differently. CF stores them as a structure in a &quot;bucket&quot; called &quot;URL&quot;. For example, if I
            use &lt;cfdump and type &lt;cfdump var=&quot;#url#&quot; label=&quot;URL&quot; /&gt;</p>
<cfdump var="#url#" label="URL" /><cfoutput>
        <p id="0bda5d60-f71a-4348-88c7-90e36c4307ae" class="">you&##x27;ll see a structure of all of the URL or &quot;GET&quot;
            variables that are being passed to this page. Copy this starting and including the &quot;&amp;&quot; sign:
            &amp;name=Bob&amp;lastname=Marley. Paste it into the address bar AFTER ?p=#url.p# so that it reads
    <code>?p=#url.p#&amp;name=Bob&amp;lastname=Marley</code> and press Enter to load the page. See how the dump of the URL
            variables changed above? The &amp; sign is used to separate one variable from another. the format is
            KEY=Value with no quotes.</p></cfoutput>
        <p id="b5fd37b6-be12-4cb4-b006-9e5719b9df82" class=""><strong>Exercise #2</strong>:</p>
        <ol type="1" id="e56ad0b0-203a-419d-a335-d2cd98827245" class="numbered-list" start="1">
            <li><strong>Copy</strong> the index.cfm page from the /learncf folder into /learncf/exercises folder.</li>
        </ol>
        <ol type="1" id="ee440c5e-4d61-45dd-be04-880dabb200c7" class="numbered-list" start="2">
            <li>Create a blank page called toc.cfm (starting with no HTML tags etc). The entire page will consist of
                links, each one pointing to one of your exercise pages in the exercise folder. However, don&#x27;t
                hardcode (type in) the name of the file. Use &quot;p&quot; as the name of your variable and pass in the
                name of the file to which you are linking. The href attribute should be something like &##x27;href=&quot;index.cfm?p=myForm&quot;&#x27;
            </li>
        </ol>
        <ol type="1" id="7cf09cbe-affa-47c0-b890-710c45fec4db" class="numbered-list" start="3">
            <li>If you want a sample, look at the index.cfm and the toc.cfm files in the learncf folder.</li>
        </ol>
        <ol type="1" id="39e5a702-9409-484a-b7f1-7c38b1fcd653" class="numbered-list" start="4">
            <li>Can you figure out how your content is appearing? Are there any tags you need to remove from your
                exercise pages to make them work correctly?
            </li>
        </ol>
        <p id="eff74932-9c2c-44b1-b4b2-55630321df36" class=""><span style="border-bottom:0.05em solid"><strong>The FORM Scope</strong></span>
        </p>
        <p id="8e3305a1-5f81-46a7-a770-f88a461af351" class="">The same can be used with form data. You might have
            created forms previous to this in HTML but without some sort of server side language, there is a very
            limited number of things you can do with that data. Now when we submit a form we can use the variables
            submitted in our page. Fill out and submit this form:</p>
        <p id="022baae8-69ac-4bef-acbc-fb353d82888c" class="">
            <cfoutput>
                <div class="card">
                    <div class="card-body">
                <form action="#cgi.script_name#?p=#p#" method="post">
                    <div class="mb-3">
                        <label for="firstName" class="form-label">First Name</label>
                        <input type="text" class="form-control" id="firstName" name="first" placeholder="First Name">
                    </div>
                    <div class="mb-3">
                        <label for="lastname" class="form-label">Last Name</label>
                        <input type="text" class="form-control" id="lastname" name="last" placeholder="Last Name">
                    </div>
                    <div class="mb-3">
                        <label for="exampleFormControlInput1" class="form-label">Email address</label>
                        <input type="email" class="form-control" id="exampleFormControlInput1" placeholder="name@example.com">
                    </div>
                <div>
                    <button class="btn btn-primary">Submit</button>
                </div>
                </form>
                </div>
                </div>
            </cfoutput>
        </p>
    <p><cfdump var="#form#" label="Form Data" /></p>
        <p id="ed893646-9816-4d5c-aded-ce8f8d6b22c7" class="">See the output above? The form data is in a Struct called
            Form. We can access the individual pieces typing form.<em>variablename</em>.</p>
        <p id="c18f843d-9218-49a1-af5f-f930fd32dc4d" class="">A form has several different tags in it. Here are the
            basics:</p>
        <ol type="1" id="40f140da-3ca5-4f4b-a5cb-a7279c64bc01" class="numbered-list" start="1">
            <li>&lt;form action=&quot;#cgi.SCRIPT_NAME#?#cgi.QUERY_STRING#&quot; method=&quot;post&quot;&gt; - The &lt;form&gt;
                tag has two essential properties. The first is the &quot;action&quot; property. This is the file to
                which the browser will pass the form variables. Put another way, it&#x27;s the page that will load when
                you submit the form. In this case, we are using CF variables that will automatically put the name of the
                same page. If you use this, don&#x27;t forget to wrap it in &lt;cfoutput&gt;The &quot;method&quot;
                property says how the variables will be submitted. The two most common methods are &lt;POST&gt; and &lt;GET&gt;.
                For the moment, let&#x27;s keep it simple. Using &quot;get&quot; will put the variables and their values
                in the address bar or in the URL scope. Using &quot;post&quot; will submit them another way which is
                behind the scenes, not in the URL.
            </li>
        </ol>
        <ol type="1" id="054658f2-0568-4050-bb77-08036453076e" class="numbered-list" start="2">
            <li>&lt;input type=&quot;text&quot; name=&quot;firstname&quot; placeholder=&quot;First Name&quot; value=&quot;&quot;
                /&gt; - The input tag defines a place to put in a variable. You name the variable by using the &quot;name&quot;
                property in the &lt;input&gt; tag. The value is whatever is entered by the user or you predefine with
                the value property.
            </li>
        </ol>
        <ol type="1" id="54d2e34e-1f3c-4195-b8e3-d92247343312" class="numbered-list" start="3">
            <li>&lt;input type=&quot;submit&quot; value=&quot;save&quot; /&gt; - The &lt;input type=&quot;submit&quot;&gt;
                creates a button that will submit the form. You can also use a &lt;button&gt; tag if you choose and by
                default this will submit the form.
            </li>
        </ol>
        <ol type="1" id="84607768-6a7d-4dad-a3b7-95e90fcd994c" class="numbered-list" start="4">
            <li>For more HTML information about forms visit: <a href="http://www.w3schools.com/html/html_forms.asp">http://www.w3schools.com/html/html_forms.asp</a>
            </li>
        </ol>
        <p id="5df629b5-2497-40b9-a20a-7d92ecef41a0" class=""><strong>Exercise #3</strong>: Create a page called
            myForm.cfm in the exercises folder (and don&#x27;t forget to add it to your toc.cfm page). Use HTML to
            create a form which submits to the same page. Make your form with 5 inputs that coincide with the properties
            in your database. On the page put a &lt;cfdump var=&quot;#form#&quot; label=&quot;The Form Data&quot; /&gt;
            tag so you can test the submission of the form.</p></div>
</article>
