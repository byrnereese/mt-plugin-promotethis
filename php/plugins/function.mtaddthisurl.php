<?php
function smarty_function_mtaddthisurl($args, &$ctx) {
  $entry = $ctx->stash('entry');
  $permalink = $ctx->tag('MTEntryPermalink');
  $link = 'http://www.addtoany.com/bookmark';
  $link .= '?linkurl=' . urlencode($permalink);
  $link .= '&amp;linkname=' . urlencode($entry['entry_title']);
  return $link;
}
?>