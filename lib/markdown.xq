(:~
 : Convert an XQDoc document into a Markdown document.
 :
 : This module contains a single <code>convert()</code> function
 : that transform an XQDoc document to markdown.
 : Usage:
 : <pre class="ace-static" ace-mode="xquery">
 : let $xqdoc := xqdoc:xqdoc("http://expath.org/ns/file")
 : return md:convert($xqdoc)
 : </pre>
 :
 : @author William Candillon <a href="#">wcandillon at gmail dot com</a>
 :
 :)
module namespace md = "http://www.28msec.com/xqdoc/lib/markdown";

declare variable $md:nl := "
";

declare function md:convert($nodes as node()*)
as xs:string
{
  string-join(for $node in $nodes
    return
      typeswitch($node)
      case element(h1)
      return "# " || md:convert($node/node()) || $md:nl
      
      case element(h2)
      return "## " || md:convert($node/node()) || $md:nl
      
      case element(h3)
      return "### " || md:convert($node/node()) || $md:nl
      
      case element(h4)
      return "#### " || md:convert($node/node()) || $md:nl
      
      case element(h5)
      return "##### " || md:convert($node/node()) || $md:nl
      
      case element(h6)
      return "###### " || md:convert($node/node()) || $md:nl
      
      case element(p)
      return md:convert($node/node()) || $md:nl

      case element(dl)
      return
          ($md:nl,
          for $dd in $node/dd
          return
              "* " || md:convert($dd/node()) || $md:nl
          , $md:nl)
              
      case element(ul)
      return
          ($md:nl,
          for $li in $node/li
          return
              "* " || md:convert($li/node()) || $md:nl
          , $md:nl)
              
      case element(ol)
      return
          ($md:nl,
          for $li at $i in $node/li
          return
              $i || ". " || md:convert($li/node()) || $md:nl
          , $md:nl)
              
      case element(table)
      return
          ($md:nl,
          for $tr at $i in $node/tr
          return string-join(
                   (
                     $md:nl || "| " || string-join(for $td in $tr/td return md:convert($td/node()), " | ")  || " |",
                     if($i = 1) then $md:nl || "| " || string-join(for $td in $tr/td return "----", " | ")  || " |" else () 
                   ), ""),
          $md:nl)
          
      case element(code)
      return "`" || string-join($node//text(), " ") || "`"
          
      case element(pre)
      return
        ($md:nl,
          for $line in tokenize(md:convert($node/node()), $md:nl)
          return "    " || $line || $md:nl)
        
      case element(a)
      return "[" || md:convert($node/node()) || "](" || $node/@href || ' "Title")'
      
      case text()
      return $node
      
      default return md:convert($node/node())
  , "")
};
