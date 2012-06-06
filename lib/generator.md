# http://www.28msec.com/xqdoc/lib/generator
## Description
Before using any of the functions below please remember to import the module namespace:

    import module namespace g = "http://www.28msec.com/xqdoc/lib/generator";
## Namespaces
&lt;table&gt;
&lt;tr&gt;
&lt;td&gt;
an
&lt;/td&gt;&lt;td&gt;
http://www.zorba-xquery.com/annotations
&lt;/td&gt;
&lt;/tr&gt;&lt;tr&gt;
&lt;td&gt;
g
&lt;/td&gt;&lt;td&gt;
http://www.28msec.com/xqdoc/lib/generator
&lt;/td&gt;
&lt;/tr&gt;&lt;tr&gt;
&lt;td&gt;
xq
&lt;/td&gt;&lt;td&gt;
http://www.xqdoc.org/1.0
&lt;/td&gt;
&lt;/tr&gt;&lt;tr&gt;
&lt;td&gt;
xqdoc
&lt;/td&gt;&lt;td&gt;
http://www.zorba-xquery.com/modules/xqdoc
&lt;/td&gt;
&lt;/tr&gt;&lt;/table&gt;## Variable Summary

* [g:pre-declared-namespaces](#g:pre-declared-namespaces "Title")

## Function Summary
&lt;table&gt;
&lt;tr&gt;
&lt;td&gt;
 
&lt;/td&gt;&lt;td&gt;
`xqdoc ($xquery as xs:string) as element(xq:xqdoc)`
&lt;/td&gt;
&lt;/tr&gt;&lt;/table&gt;## Variables
### $g:pre-declared-namespaces

## Functions
### xqdoc#1

    declare %an:nondeterministic function g:xqdoc(
        $xquery as xs:string
    ) as element(xq:xqdoc)

#### Parameters

* `$xquery as xs:string`

#### Returns

* `element(xq:xqdoc)`


