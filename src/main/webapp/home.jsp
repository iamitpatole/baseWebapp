<%@ taglib prefix="sis" tagdir="/WEB-INF/tags"%>
<!doctype html>
<html class="no-js" lang="en">

<sis:page title="">

	<!-- Left Panel -->
	<sis:menu></sis:menu>
	<!-- Left Panel -->

	<!-- Right Panel -->
	<div id="right-panel" class="right-panel">

		<!-- Header-->
		<sis:header></sis:header>
		<!-- /header -->

		<sis:body>
	
			<jsp:include page="welcome.jsp" />  
		
		</sis:body>

	</div>
	<!-- /#right-panel -->

	<!-- Right Panel -->
</sis:page>