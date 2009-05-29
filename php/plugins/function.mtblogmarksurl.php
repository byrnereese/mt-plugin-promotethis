<?php
function smarty_function_mtblogmarksurl($args, &$ctx) {
  $entry = $ctx->stash('entry');
  $permalink = $ctx->tag('MTEntryPermalink');
  $link = 'http://blogmarks.net/my/new.php?mini=1';
  $link .= '&amp;url=' . urlencode($permalink);
  $link .= '&amp;title=' . urlencode($entry['entry_title']);
  return $link;
}
?> 

