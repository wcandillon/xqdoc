module namespace err = "http://www.28msec.com/xqdoc/lib/error";

import module namespace resp = "http://www.28msec.com/modules/http/response";
import module namespace diagnostic = "http://www.28msec.com/modules/http/util/diagnostic";
import module namespace cookie="http://www.28msec.com/modules/http/cookie";

declare %an:sequential function err:handle(
  $code as xs:QName,
  $description as xs:string?,
  $value as item()*,
  $stack)
{
  <error>
    <description>{$description}</description>
  </error>
};
