<?php
function smarty_function_mttwitterurl($args, &$ctx) {
  $entry = $ctx->stash('entry');
  $permalink = $ctx->tag('MTEntryPermalink');
  $link = 'http://twitter.com/home';
  $link .= '?status=Currently%20reading%20' . urlencode($permalink);
  return $link;
}
?>