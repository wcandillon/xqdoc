# http://www.28msec.com/xqdoc/lib/markdown
## Description
Before using any of the functions below please remember to import the module namespace:

    import module namespace md = "http://www.28msec.com/xqdoc/lib/markdown";
 Convert an XQDoc document into a Markdown document.
 This module contains a single `convert()` function
 that transform an XQDoc document to markdown.
 Usage:
 
    
     let $xqdoc := xqdoc:xqdoc("http://expath.org/ns/file")
     return md:convert($xqdoc)
     

#### Author
William Candillon [wcandillon at gmail dot com](# "Title")
## Namespaces

| md | http://www.28msec.com/xqdoc/lib/markdown |

## Variable Summary

* [md:nl](#md:nl "Title")

## Function Summary

|  | `convert ($nodes as node()*) as xs:string` |

## Variables
### $md:nl

## Functions
### convert#1

    declare function md:convert(
        $nodes as node()*
    ) as xs:string

#### Parameters

* `$nodes as node()`

#### Returns

* `xs:string`


