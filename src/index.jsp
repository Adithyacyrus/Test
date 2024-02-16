<html>
<head>
    <title>Boxfuse Sample App: success!</title>
</head>
<body style="text-align: center">
<h1>Congratulations!</h1>
<img src="image.png">
<img src="covid1.png">
<img src="covid2.png">
<img src="covid3.png">

<h2>You have successfully launched your Instance!</h2>

<p>This Instance is running on <strong><%= System.getenv("COVID_PLATFORM_NAME") %>
</strong> and has the id <strong><%= System.getenv("COVID_INSTANCE_ID") %>
</strong>.</p>

<p>It is based on the Image <strong><%= System.getenv("COVID_IMAGE_COORDINATES")%>
</strong> generated from <strong><%= System.getenv("COVID_PAYLOAD_NAME")%>
</strong></p>

<% if("virtualbox".equals(System.getenv("COVID_PLATFORM_ID"))) { %>
<h2 style="margin-top: 80px">Next steps</h2>

<p style="margin-bottom: 20px;">
    Display the Instance console:<br/>
    <strong>covid logs <%= System.getenv("COVID_INSTANCE_ID") %>
    </strong>
</p>

<p style="margin-bottom: 20px;">
    List all running Instances:<br/>
    <strong>covid ps</strong>
</p>

<P style="margin-bottom: 20px;">
    List all Bootable Apps:<br/>
    <strong>covid ls</strong>
</p>

<p>
    Gracefully kill the Instance:<br/>
    <strong>covid kill <%= System.getenv("COVID_INSTANCE_ID") %>
    </strong>
</p>

<p>
    Deploy this Image unchanged on AWS:<br/>
    <strong>covid run -env=prod <%= System.getenv("COVID_APP")%>:<%= System.getenv("COVID_IMAGE_VERSION")%>
    </strong>
</p>
<% } else { %>
<h2 style="margin-top: 80px">Now it's your turn!</h2>

<p>Check out <strong><a href="https://github.com/sambreen27/covid19.git">this app</a></strong> from GitHub, modify it, and give it version 2.<br/>You are now ready to fuse and <strong>deploy it with zero downtime</strong> using the commands you already know.</p>

<p>Alternatively you can go back to the <strong><a href="http://localhost:3000">Covid Console</a></strong>,<br/> and simply create your own.</p>

<p>If you need any help the <strong><a href="http://localhost:3000/docs">documentation</a></strong> is there for you,<br/>or simply shoot us an email at <a href="mailto:support@boxfuse.com">support@boxfuse.com</a></p>

<p>Say goodbye to snowflake servers.</p>
<p><strong>Enjoy COVID!</strong></p>
<% } %>
</body>
</html>
