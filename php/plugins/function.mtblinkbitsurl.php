<?php
function smarty_function_mtblinkbitsurl($args, &$ctx) {
  $entry = $ctx->stash('entry');
  $permalink = $ctx->tag('MTEntryPermalink');
  $link = 'http://www.blinkbits.com/bookmarklets/save.php?v=1';
  $link .= '&amp;source_url=' . urlencode($permalink);
  $link .= '&amp;title=' . urlencode($entry['entry_title']);
  return $link;
}
?> 

