<?php
function smarty_function_mtdiggurl($args, &$ctx) {
  $entry = $ctx->stash('entry');
  $permalink = $ctx->tag('MTEntryPermalink');
  $link = 'http://digg.com/submit?phase=2';
  $link .= '&amp;url=' . urlencode($permalink);
  $link .= '&amp;title=' . urlencode($entry['entry_title']);
  $link .= '&amp;bodytext=' . urlencode($entry['entry_excerpt']);
  $link .= '&amp;topic=';
  return $link;
}
?> 

