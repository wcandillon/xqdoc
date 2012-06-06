# http://www.28msec.com/xqdoc/api
## Description
Before using any of the functions below please remember to import the module namespace:

    import module namespace api = "http://www.28msec.com/xqdoc/api";
 Handler module generate documentation from an XQuery module.
 Usage:
 
    
     curl -X POST -H "Content-Type: text/plain" --data-binary @api.xq http://xqdoc.my28msec.com/api/xqdoc
     

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
api
&lt;/td&gt;&lt;td&gt;
http://www.28msec.com/xqdoc/api
&lt;/td&gt;
&lt;/tr&gt;&lt;tr&gt;
&lt;td&gt;
html
&lt;/td&gt;&lt;td&gt;
http://www.28msec.com/xqdoc/lib/html
&lt;/td&gt;
&lt;/tr&gt;&lt;tr&gt;
&lt;td&gt;
md
&lt;/td&gt;&lt;td&gt;
http://www.28msec.com/xqdoc/lib/markdown
&lt;/td&gt;
&lt;/tr&gt;&lt;tr&gt;
&lt;td&gt;
req
&lt;/td&gt;&lt;td&gt;
http://www.28msec.com/modules/http/request
&lt;/td&gt;
&lt;/tr&gt;&lt;tr&gt;
&lt;td&gt;
res
&lt;/td&gt;&lt;td&gt;
http://www.28msec.com/modules/http/response
&lt;/td&gt;
&lt;/tr&gt;&lt;tr&gt;
&lt;td&gt;
xqdoc
&lt;/td&gt;&lt;td&gt;
http://www.28msec.com/xqdoc/lib/generator
&lt;/td&gt;
&lt;/tr&gt;&lt;/table&gt;## Variable Summary

* [api:supported-output](#api:supported-output "Title")
* [api:NO_QUERY_PROVIDED](#api:NO_QUERY_PROVIDED "Title")
* [api:UNSUPPORTED_OUTPUT](#api:UNSUPPORTED_OUTPUT "Title")

## Function Summary
&lt;table&gt;
&lt;tr&gt;
&lt;td&gt;
 
&lt;/td&gt;&lt;td&gt;
`xqdoc ()` Generate module documentation from a specific output format


&lt;/td&gt;
&lt;/tr&gt;&lt;tr&gt;
&lt;td&gt;
 
&lt;/td&gt;&lt;td&gt;
`xqdoc ($xquery as xs:string, $output as xs:string)` Generate module documentation from a specific output format


&lt;/td&gt;
&lt;/tr&gt;&lt;/table&gt;## Variables
### $api:supported-output as xs:string+
 List of supported output format

### $api:NO_QUERY_PROVIDED as xs:string
 Error description if no XQuery module was provided in the request body

### $api:UNSUPPORTED_OUTPUT as xs:string
 Error description if the desired output format is not supported

## Functions
### xqdoc#0

    declare %an:sequential function api:xqdoc() as item()*
 Generate module documentation from a specific output format

### xqdoc#2

    declare %an:sequential function api:xqdoc(
        $xquery as xs:string,
        $output as xs:string
    ) as item()*
 Generate module documentation from a specific output format

#### Parameters

* `$xquery as xs:string` XQuery module to document
* `$output as xs:string` Output format. It can be XML, HTML, XHTML, or Markdown

#### Errors

* api:UNSUPPORTED_OUTPUT if the provided output format is not supported

