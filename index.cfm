<!doctype html>
<html>
<head>
	<meta charset="utf-8">
	<title>Learn CF</title>
	<link href="../../includes/bootstrap/css/bootstrap.css" rel="stylesheet" />
</head>
<cfparam name="p" default="intro">
<body>
	<div id="wrapper" class="col-lg-12">
		<div id="main" class="col-lg-9 col-lg-push-3">
        	<cftry>
				<cfinclude template="#p#.cfm">
				<cfcatch type="any">
                	<cfdump var="#cfcatch#" />
                </cfcatch>
            </cftry>
    	</div>
		<div class="col-lg-3 col-lg-pull-9">
			<cfinclude template="toc.cfm">
		</div>

	</div>
    <cfoutput>
	    <script>
			document.getElementById("#p#").className='active';
		</script>
	</cfoutput>        
</body>
</html>
