# http://www.28msec.com/xqdoc/api
## Description
Before using any of the functions below please remember to import the module namespace:

    import module namespace api = "http://www.28msec.com/xqdoc/api";
 Handler module generate documentation from an XQuery module.
 Usage:
 
    
     curl -X POST -H "Content-Type: text/plain" --data-binary @api.xq http://xqdoc.my28msec.com/api/xqdoc
     

## Namespaces

| an | http://www.zorba-xquery.com/annotations |
| api | http://www.28msec.com/xqdoc/api |
| html | http://www.28msec.com/xqdoc/lib/html |
| md | http://www.28msec.com/xqdoc/lib/markdown |
| req | http://www.28msec.com/modules/http/request |
| res | http://www.28msec.com/modules/http/response |
| xqdoc | http://www.28msec.com/xqdoc/lib/generator |

## Variable Summary

* [api:supported-output](#api:supported-output "Title")
* [api:NO_QUERY_PROVIDED](#api:NO_QUERY_PROVIDED "Title")
* [api:UNSUPPORTED_OUTPUT](#api:UNSUPPORTED_OUTPUT "Title")

## Function Summary

|   | `xqdoc ()` Generate module documentation from a specific output format

 |
|   | `xqdoc ($xquery as xs:string, $output as xs:string)` Generate module documentation from a specific output format

 |

## Variables
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

