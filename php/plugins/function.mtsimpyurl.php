<?php
function smarty_function_mtsimpyurl($args, &$ctx) {
  $entry = $ctx->stash('entry');
  $permalink = $ctx->tag('MTEntryPermalink');
  $link = 'http://www.simpy.com/simpy/LinkAdd.do';
  $link .= '?href=' . urlencode($permalink);
  $link .= '&amp;title=' . urlencode($entry['entry_title']);
  return $link;
}
?> 


