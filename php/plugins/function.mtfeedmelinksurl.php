<?php
function smarty_function_mtfeedmelinksurl($args, &$ctx) {
  $entry = $ctx->stash('entry');
  $permalink = $ctx->tag('MTEntryPermalink');
  $link = 'http://feedmelinks.com/categorize?from=toolbar&amp;op=submit';
  $link .= '&amp;url=' . urlencode($permalink);
  $link .= '&amp;name=' . urlencode($entry['entry_title']);
  return $link;
}
?> 

