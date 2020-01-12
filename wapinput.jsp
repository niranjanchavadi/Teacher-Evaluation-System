<%@ page contentType="text/vnd.wap.wml"%>
<?xml version="1.0"?>
<!DOCTYPE wml PUBLIC "-//WAPFORUM/DTD WML 1.1//EN"
"http://www.wapforum.org/DTD/wml_1.1.xml">

<wml>

<card title="INPUT">
<p>
Name:<input name="nm" size="15">
<br/>
Sex:<input name="sx" size="15">
<br/>
Age:<input name="ag" size="15">
</p>

<do type="accept" label="send data">
<go href="wap.jsp">
<postfield name="nm" value"$nm"/>
</go>
</do>

</card>
</wml>