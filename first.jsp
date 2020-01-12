<?xml version="1.0"?>
<!DOCTYPE wml PUBLIC "-//WAPFORUM/DTD WML 1.1//EN"
"http://www.wapforum.org/DTD/wml_1.1.xml">

<wml>

<card id="no1" title="Card 1">
<p>
<a href="test.wml">another page</a>
<anchor>
next page<go href="test.wml"/>
</anchor>
<anchor>
next page<go href="test.wml"/>
</anchor>


</p>

<do type="accept">
<go href="#no2"/>
</do>

</card>

<card id="no2" title="Card 2">
<p> XML is very easy to learn </p>
<do type="accept">
<go href="#no1"/>
</do>
</card>

</wml>