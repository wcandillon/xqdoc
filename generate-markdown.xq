import module namespace file = "http://expath.org/ns/file";
import module namespace http = "http://expath.org/ns/http-client";

for $file in file:list(".", true(), "*.xq")
where starts-with($file, "handlers/") or starts-with($file, "lib/") 
let $xquery := file:read-text($file)
return {
  variable $target := replace($file, "\.xq$", ".md");
  trace($target, "create");
  variable $md := http:send-request(<http:request href="http://localhost:8080/api/xqdoc?output=markdown" method="POST">
    <http:header name="Content-Type" value="text/plain" />
    <http:body media-type="text">{$xquery}</http:body>
  </http:request>)[2];
  file:write("wiki/" || $target, $md, ());
}