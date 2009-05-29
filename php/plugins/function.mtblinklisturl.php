<?php
function smarty_function_mtblinklisturl($args, &$ctx) {
  $entry = $ctx->stash('entry');
  $permalink = $ctx->tag('MTEntryPermalink');
  $link = 'http://www.blinklist.com/index.php?Action=Blink/addblink.php';
  $link .= '?Url=' . urlencode($permalink);
  $link .= '&amp;Title=' . urlencode($entry['entry_title']);
  $link .= '&amp;Description' . urlencode($entry['entry_excerpt']);
  return $link;
}
?> 
