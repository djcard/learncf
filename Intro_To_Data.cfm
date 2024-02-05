<article id="47d25971-df7a-4114-94c4-e4c3df030016" class="page sans">
    <header><h1 class="page-title">Intro To Data</h1></header>
    <div class="page-body"><p id="493ed74e-bf3b-48d3-bf0b-d828c8752b29" class="">The whole focus of this class is
        leading up to integrating databases with a web site. We&#x27;ve looked at the front end languages display the
        layout, colors and receives the content. We&#x27;ve looked at how the database stores data which can be accessed
        by the controller level. No matter what the language, there needs to be a connection between the server side script
        server and the database server. Each language creates this connection in its own way. ColdFusion does it by
        having the server manage &quot;datasources&quot;. Each datasource stores the location, username, password and
        database name in the CF server so that when we are writing code, we can simply reference that datasource
        without having to put the username and password embedded in the source code. There are plusses and minuses with
        that approach but it does make thing easier for us as programmers.</p>
        <p>Note: Before continuing, please follow these directions:
            <ol>
                <li>Open your IDE and navigate to your personal folder.</li>
                <li>Open the file called Application.cfc</li>
                <li>Near the top of the page will be the line <code>this.dsource = '';</code>. Change that to be your username for this class. (i.e. <code>this.dsource = 'DanCard';</code>)</li>
                <li>Also in the Application.cfc, In the function onApplicationStart() you will see the line <code>application.dsource = dsource</code>. Chnage this to be <code>application.dsource = 'yourUserName'</code> ( but type in your actual username ) </li>

                <li>Open the file <code>.env</code>. Made the line <code>PPWD=</code> the password you got from me at the beginning of the semester.</li>
                <li>Use CommandBox to navigate to the root of your local site and restart the server ( <code>server restart</code>).</li>
            </ol>
        </p>
        <p id="d293e035-81d9-402f-8681-54fb354a86f1" class="">Everyone in the class has a unique datasource which points
            to their database. For example, CF has a tag called &lt;cfdbinfo&gt; which allows us to connect to the
            database and see some of the its contents. In this case, it is set up to use your personal datasource. It
            matches your login name.</p>
        <p id="ccef53ad-a0a4-4a5d-a07a-21b7154685e9" class="">Here are the tables in your database dumped out. (Many of
            them are system tables and views. We&#x27;ll get into views later)</p>
    <p id="4919b4bf-1e91-4c13-8b1f-8a76484ded79" class="">Here are the fields in your books table dumped out:</p>
            <cfif application.keyExists("dsource")>
                <cfdbinfo name="myDB" type="tables" datasource="#application.dsource#" />

                <cfdump var="#myDB#">
            <cfelse>
                <code>Sorry! I couldn't find your datasource. Please check with Dan about that. </code>
            </cfif>

        <p id="7060424e-8347-485f-9f50-209875c780bf" class="">Next week we are going to look at how to insert data into
            your tables programmatically and extract the data you want on demand. For the mean time, however, we&#x27;re
            going to leave it at that.</p>
</article>
