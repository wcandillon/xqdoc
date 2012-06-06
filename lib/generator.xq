module namespace g = "http://www.28msec.com/xqdoc/lib/generator";

import module namespace xqdoc = "http://www.zorba-xquery.com/modules/xqdoc";

declare namespace xq   = "http://www.xqdoc.org/1.0";

declare variable $g:pre-declared-namespaces as element(namespace)* := <namespaces>
  <namespace prefix="an" uri="http://www.zorba-xquery.com/annotations" />
  <namespace prefix="db" uri="http://www.zorba-xquery.com/modules/store/static/collections/dml" />
  <namespace prefix="idx" uri="http://www.zorba-xquery.com/modules/store/static/indexes/dml" />
</namespaces>/*;

declare %an:nondeterministic function g:xqdoc($xquery as xs:string)
as element(xq:xqdoc)
{
  let $xqdoc := xqdoc:xqdoc-content($xquery) 
  let $namespaces := $g:pre-declared-namespaces
  return g:xqdoc($xqdoc, $namespaces)
};

declare %private function g:xqdoc($xqdoc as element(xq:xqdoc), $namespaces as element(namespace)*)
as element(xq:xqdoc)
{
  copy $doc := $xqdoc
  modify (
    for $namespace in $namespaces
    let $prefix := string($namespace/@prefix)
    let $uri    := string($namespace/@uri)
    return
    (
      for $declared-namespace in $doc/xq:module/xq:custom[@tag="namespaces"]/xq:namespace[@uri = "" and @prefix = $prefix]
      return
        replace value of node $declared-namespace/@uri with $uri
      ,
      for $annotation in $doc//xq:annotation[@prefix = $prefix]
      return
        replace value of node $annotation/@namespace with $uri
    )
  )
  return $doc
};