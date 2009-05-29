<?php
function smarty_function_mtfurlurl($args, &$ctx) {
  $entry = $ctx->stash('entry');
  $permalink = $ctx->tag('MTEntryPermalink');
  $link = 'http://furl.net/storeIt.jsp';
  $link .= '?u=' . urlencode($permalink);
  $link .= '&amp;t=' . urlencode($entry['entry_title']);
  return $link;
}
?> 
