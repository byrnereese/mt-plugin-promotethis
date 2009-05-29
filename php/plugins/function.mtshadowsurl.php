<?php
function smarty_function_mtshadowsurl($args, &$ctx) {
  $entry = $ctx->stash('entry');
  $permalink = $ctx->tag('MTEntryPermalink');
  $link = 'http://www.shadows.com/features/tcr.htm';
  $link .= '?url=' . urlencode($permalink);
  $link .= '&amp;title=' . urlencode($entry['entry_title']);
  return $link;
}
?> 
