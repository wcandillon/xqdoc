(:~
 : Handler module generate documentation from an XQuery module.
 : Usage:
 : <pre>
 : curl -X POST -H "Content-Type: text/plain" --data-binary @api.xq http://xqdoc.my28msec.com/api/xqdoc
 : </pre>
 :)
module namespace api = "http://www.28msec.com/xqdoc/api";

import module namespace xqdoc = "http://www.28msec.com/xqdoc/lib/generator";

import module namespace req = "http://www.28msec.com/modules/http/request";
import module namespace res = "http://www.28msec.com/modules/http/response";

import module namespace html = "http://www.28msec.com/xqdoc/lib/html";
import module namespace md   = "http://www.28msec.com/xqdoc/lib/markdown";
 
(:~
 : List of supported output format
 :)
declare variable $api:supported-output as xs:string+ := ("html", "xml", "markdown", "xhtml");

(:~
 : Error description if no XQuery module was provided in the request body
 :)
declare variable $api:NO_QUERY_PROVIDED as xs:string := "No XQuery module was provided in the request body";

(:~
 : Error description if the desired output format is not supported
 :)
declare variable $api:UNSUPPORTED_OUTPUT as xs:string := "Output format not supported: ";

(:~
 :
 : Generate module documentation from a specific output format
 :
 :)
declare %an:sequential function api:xqdoc()
{
  variable $output as xs:string := req:parameter-values("output", "xhtml")[1];
  if(not(req:method-post())) then
    error($res:not-allowed);
  else if(empty($api:supported-output[. eq $output])) then
    error($res:bad-request, $api:UNSUPPORTED_OUTPUT || $output);
  else if(req:content-length() = 0) then
      error($res:bad-request, $api:NO_QUERY_PROVIDED);
  else ();
  variable $xquery as xs:string := req:text-content();
  api:xqdoc($xquery, $output)
}; 

(:~
 :
 : Generate module documentation from a specific output format
 :
 : @param $xquery XQuery module to document
 : @param $output Output format. It can be XML, HTML, XHTML, or Markdown
 :
 : @error api:UNSUPPORTED_OUTPUT if the provided output format is not supported
 :)
declare %an:sequential function api:xqdoc($xquery as xs:string, $output as xs:string)
{
  variable $xqdoc := xqdoc:xqdoc($xquery);
  switch($output)
  case "xml" return {
    res:set-content-type("text/xml");
    $xqdoc
  }
  case "html" return {
      res:set-content-type("text/html");
      html:convert($xqdoc)
  }
  case "xhtml" return {
      res:set-content-type("text/xml");
      html:convert($xqdoc)
  }
  case "markdown" return {
      res:set-content-type("text/plain");
      md:convert(html:convert($xqdoc))
  }
  default return error($res:bad-request, $api:UNSUPPORTED_OUTPUT || $output)
};