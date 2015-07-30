<%@ attribute name="var" required="false" %>
<%@tag import="groovy.lang.GroovyShell"%>
<%@tag import="groovy.lang.Binding"%>
<jsp:doBody var="tagBody"/>
<%
// call groovy expressions from Java code
Binding binding = new Binding();
binding.setVariable("foo", new Integer(2));
GroovyShell shell = new GroovyShell(binding);

String bc = (String) jspContext.getAttribute("tagBody");
Object value = shell.evaluate(bc);

//String var = "xx";

String varx = (String)jspContext.getAttribute("var");
String output="";
if (varx!=null){
  request.setAttribute(varx, value);
}else{
	output=""+value;
}
%><%=output %>