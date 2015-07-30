<%@ taglib tagdir="/WEB-INF/tags" prefix="t" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>


<html>
<h1>tag test</h1>

<t:echo value="hello"/>
<t:groovy var="xxx">5+4</t:groovy>
<t:groovy var="list">
[1,2,4,3]
</t:groovy>



<c:forEach var="i" items="${list}">
   Item <c:out value="${i}"/><p>
</c:forEach>

</html>