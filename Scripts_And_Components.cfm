<article id="6da953fd-8324-43e0-8dda-a5c469c36331" class="page sans">
    <header><h1 class="page-title">Scripts And Components</h1></header>
    <div class="page-body"><p id="89476838-6da4-4880-8db1-27e0c8e06578" class="">In Week 2, we took a HTML page and
        split it up into several smaller .cfm pages in order to make the individual pieces smaller and easier to manage.
        However, all of these smaller files were still part of we call the "View". The view is the part that the user
        sees and interacts. There is more code, however, that drives a website than just the view and we want to
        separate that into its own files. This is called Separation of Concerns (<a
                href="https://en.wikipedia.org/wiki/Separation_of_concerns">https://en.wikipedia.org/wiki/Separation_of_concerns</a>).
    </p>
        <p id="bbb9d08f-c94e-4eaa-9841-0c572638c0b2" class="">In CFML, the view layer is typically found in ".CFM"
            files. Everything else can be found in ".CFC" files. CFC stands for ColdFusion Component. Technically, both
            .cfms and .cfcs can contain tag syntax and script syntax but for this class, everything that appears in a
            .cfm will be in tag and everything that is in a cfc will be in script. </p>
        <p id="151aa8e5-f017-482f-b860-01b3864f5fff" class="">What does a CFC look like? At its simplest, a CFC looks
            like this:</p>
        <pre id="fe70d474-c1cf-4532-acc6-aa88a4263386" class="code"><code>
component {
// Place your content here
}</code></pre>
        <p id="7c870d30-2f48-4218-9f0f-d66ea6467e9c" class="">There are no &lt;&gt; in sight. The component keyword is
            the first thing in the file followed by {. The very end of the file is } which indicates the end of the
            component. </p>
        <p id="a3635c72-cf03-4dff-bf4a-465b5ef7343b" class="">Inside the component {}, there are functions which would
            look like this. </p>
        <pre id="ad5d6c66-4367-4080-b0e9-abe5090f9324" class="code"><code>component{
    function myFunction(){
    }

    function anotherFunction(){
    }
}</code></pre>
        <p id="ce254398-b2e2-4c52-a0a1-3722ba700817" class="">There can technically be any number of functions in your
            component but convention and "best practices" typically say to have no more than 10. That's a guideline, not a
            "law". </p>
        <p id="f11875b1-1a86-4f93-9797-9538dc121205" class="">The first thing we need to do is "connect" the cfm and the
            cfc. This way, the cfm can access functions in the cfc and display the results. To do that, we assign the
            component to a variable in the cfm. This example assumes that the component is in the same folder as the cfm
            which is not always (actually, not usually) the case but it is a good place to start.</p>
        <pre id="58d4e651-d69a-4dcb-a59c-1768e49d2446" class="code">
        <code>&lt;cfset myComponent = createObject(&quot;myComponent&quot;) /&gt;
		The product of my two numbers is &lt;cfoutput&gt;#mycomponent.multiplyTwoNumbers(5,7)#&lt;/cfoutput&gt;
</code></pre>
        <p id="8522db61-9848-4cf7-adc6-dbd1d37c61c6" class="">Back in our component, we would then create a function
            called "multiplyTwoNumbers" that accepted 2 arguments and returned the product. It might look like this:</p>
        <pre id="dab19b30-67b4-43f0-bc83-7d4a98a38860" class="code"><code>component{
    function multiplyTwoNumbers(required numeric firstNum, required numeric secondNum){
			return firstNum * secondNum
    }
}</code></pre>
        <p id="08278b24-1d47-4394-a975-c11a13627346" class="">In the above component, the function multipleTwoNumbers
            accepts two arguments.</p>
        <p id="c5d95177-ee59-4548-ac8e-f072b387fa3d" class=""><code>firstNum</code> is required meaning that the function HAS to
            receive it or it will throw an error. It also has to be a number, or be able to be converted to a number, or
            it will throw an error. This means that the string "5" will still be accepted but the string "fish" will
            throw an error. </p>
        <p id="5c289be4-19c1-48be-82ee-253b2d37a142" class=""><code>secondNum</code> is the same as first num - required and
            numeric. </p>
        <p id="7f6234b0-dad5-4063-8893-5ef5f8ec2d1b" class=""><code>return firstNum * secondNum</code> <--- this means to multiply the
            two numbers together and return the product to the place that called it. In this case, this is the cfm page
            from where it was called. </p>
        <p id="d7d9307c-212d-4de0-a39e-e5b5aff60721" class="">
        </p>
        <p id="e7ab04f1-1f21-4c0c-aabd-078030b87b42" class=""><strong>Exercise</strong>: Create a file called
            "component.cfm" which is a CFM page and myComponent.cfc which is a component. In component.cfm, make a form
            that accepts 3 numbers. When the form is submitted, send the three numbers to a function in myComponent and
            display the product of the three numbers on the page.</p>
        <p id="27e10a01-b8b8-47bc-9e84-fd81824b2b63" class="">
        </p>
	</div>
</article>
