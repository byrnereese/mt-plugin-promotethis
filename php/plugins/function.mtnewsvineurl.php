<?php
function smarty_function_mtnewsvineurl($args, &$ctx) {
  $entry = $ctx->stash('entry');
  $permalink = $ctx->tag('MTEntryPermalink');
  $link = 'http://www.newsvine.com/_wine/save?popoff=0';
  $link .= '&amp;u=' . urlencode($permalink);
  $link .= '&amp;h=' . urlencode($entry['entry_title']);
  return $link;
}
?> 
