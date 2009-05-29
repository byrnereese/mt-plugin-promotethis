<?php
function smarty_function_mtmyweburl($args, &$ctx) {
  $entry = $ctx->stash('entry');
  $permalink = $ctx->tag('MTEntryPermalink');
  $link = 'http://myweb2.search.yahoo.com/myresults/bookmarklet';
  $link .= '?u=' . urlencode($permalink);
  $link .= '&amp;t=' . urlencode($entry['entry_title']);
  return $link;
}
?> 
