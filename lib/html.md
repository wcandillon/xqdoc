# http://www.28msec.com/xqdoc/lib/html
## Description
Before using any of the functions below please remember to import the module namespace:

    import module namespace html = "http://www.28msec.com/xqdoc/lib/html";
 Convert an XQDoc document into an HTML document.
 This module contains a single `convert()` function
 that transform an XQDoc document into an HTML document.
 Usage:
 
    
     let $xqdoc := xqdoc:xqdoc("http://expath.org/ns/file")
     return html:convert($xqdoc)
     

#### Author
William Candillon [wcandillon at gmail dot com](# "Title")
#### XQuery version and encoding

    xquery version "3.0" encoding "utf-8";
## Namespaces


| html | http://www.28msec.com/xqdoc/lib/html |

| o | http://www.w3.org/2010/xslt-xquery-serialization |

| xq | http://www.xqdoc.org/1.0 |

## Variable Summary

* [html:empty-tags-to-delete](#html:empty-tags-to-delete "Title")

## Function Summary


|  | `convert ($xqdoc as element(xq:xqdoc)) as element(div)` |

## Variables
### $html:empty-tags-to-delete

## Functions
### convert#1

    declare function html:convert(
        $xqdoc as element(xq:xqdoc)
    ) as element(div)

#### Parameters

* `$xqdoc as element(xq:xqdoc)`

#### Returns

* `element(div)`


