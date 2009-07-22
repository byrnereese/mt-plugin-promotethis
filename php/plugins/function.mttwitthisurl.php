<?php
function smarty_function_mttwitthisurl($args, &$ctx) {
  $entry = $ctx->stash('entry');
  $permalink = $ctx->tag('MTEntryPermalink');
  $link = 'http://twitthis.com/';
  $link .= 'twit?url=' . urlencode($permalink);
  $link .= '&t=' . urlencode($entry['entry_title']);
  return $link;
}
?>
