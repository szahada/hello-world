<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Hello JSP</title>
</head>
<body>
    <h2 class="hello-title">Hello World!</h2>
    <%@ page import = "java.util.*" %>
    <b>Parameters:</b><br>
    <%
    Enumeration parameterList = request.getParameterNames();
    while( parameterList.hasMoreElements() )  {
        String sName = parameterList.nextElement().toString();
        String[] sMultiple = request.getParameterValues( sName );
        if( 1 >= sMultiple.length ) out.println( sName + " = " + request.getParameter( sName ) + "<br>" );
        else for( int i=0; i<sMultiple.length; i++ ) out.println( sName + "[" + i + "] = " + sMultiple[i] + "<br>" );
    }
    %>
</body>
</html>
