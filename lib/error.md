# http://www.28msec.com/xqdoc/lib/error
## Description
Before using any of the functions below please remember to import the module namespace:

    import module namespace err = "http://www.28msec.com/xqdoc/lib/error";
## Namespaces

| an | http://www.zorba-xquery.com/annotations |
| cookie | http://www.28msec.com/modules/http/cookie |
| diagnostic | http://www.28msec.com/modules/http/util/diagnostic |
| err | http://www.28msec.com/xqdoc/lib/error |
| resp | http://www.28msec.com/modules/http/response |

## Function Summary

|   | `handle ($code as xs:QName, $description as xs:string?, $value as item()*, $stack)` |

## Functions
### handle#4

    declare %an:sequential function err:handle(
        $code as xs:QName,
        $description as xs:string?,
        $value as item()*,
        $stack as 
    ) as item()*

#### Parameters

* `$code as xs:QName`
* `$description as xs:string`
* `$value as item()`
* `$stack as `

