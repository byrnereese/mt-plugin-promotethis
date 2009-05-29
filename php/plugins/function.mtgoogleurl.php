<?php
function smarty_function_mtgoogleurl($args, &$ctx) {
  $entry = $ctx->stash('entry');
  $permalink = $ctx->tag('MTEntryPermalink');
  $link = 'http://www.google.com/bookmarks/mark?op=add';
  $link .= '&amp;bkmk=' . urlencode($permalink);
  $link .= '&amp;title=' . urlencode($entry['entry_title']);
  return $link;
}
?> 
