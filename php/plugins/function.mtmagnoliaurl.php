<?php
function smarty_function_mtmagnoliaurl($args, &$ctx) {
  $entry = $ctx->stash('entry');
  $permalink = $ctx->tag('MTEntryPermalink');
  $link = 'http://ma.gnolia.com/bookmarklet/add';
  $link .= '?url=' . urlencode(permalink);
  $link .= '&amp;title=' . urlencode($entry['entry_title']);
  $link .= '&amp;description=' . urlencode($entry['entry_excerpt']);
  return $link;
}
?>