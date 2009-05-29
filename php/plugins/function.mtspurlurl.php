<?php
function smarty_function_mtspurlurl($args, &$ctx) {
  $entry = $ctx->stash('entry');
  $permalink = $ctx->tag('MTEntryPermalink');
  $link = 'http://www.spurl.net/spurl.php';
  $link .= '?url=' . urlencode($permalink);
  $link .= '&amp;title=' . urlencode($entry['entry_title']);
  return $link;
}
?> 
