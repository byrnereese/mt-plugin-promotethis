<?php
function smarty_function_mtstumbleuponurl($args, &$ctx) {
  $entry = $ctx->stash('entry');
  $permalink = $ctx->tag('MTEntryPermalink');
  $link = 'http://www.stumbleupon.com/submit';
  $link .= '?url=' . urlencode($permalink);
  $link .= '&amp;title=' . urlencode($entry['entry_title']);
  return $link;
}
?> 


