# http://www.28msec.com/xqdoc/lib/generator
## Description
Before using any of the functions below please remember to import the module namespace:

    import module namespace g = "http://www.28msec.com/xqdoc/lib/generator";
## Namespaces


| an | http://www.zorba-xquery.com/annotations |

| g | http://www.28msec.com/xqdoc/lib/generator |

| xq | http://www.xqdoc.org/1.0 |

| xqdoc | http://www.zorba-xquery.com/modules/xqdoc |

## Variable Summary

* [g:pre-declared-namespaces](#g:pre-declared-namespaces "Title")

## Function Summary


|   | `xqdoc ($xquery as xs:string) as element(xq:xqdoc)` |

## Variables
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


