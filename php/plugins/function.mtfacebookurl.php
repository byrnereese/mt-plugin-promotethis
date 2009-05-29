<?php
function smarty_function_mtfacebookurl($args, &$ctx) {
  $entry = $ctx->stash('entry');
  $permalink = $ctx->tag('MTEntryPermalink');
  $link = 'http://www.facebook.com/sharer.php';
  $link .= '?u=' . urlencode($permalink);
  $link .= '&amp;t=' . urlencode($entry['entry_title']);
  return $link;
}
?> 

