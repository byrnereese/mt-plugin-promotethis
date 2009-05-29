<?php
function smarty_function_mtconnoteaurl($args, &$ctx) {
  $entry = $ctx->stash('entry');
  $permalink = $ctx->tag('MTEntryPermalink');
  $link = 'http://www.connotea.org/addpopup?continue=confirm';
  $link .= '&amp;uri=' . urlencode($permalink);
  $link .= '&amp;title=' . urlencode($entry['entry_title']);
  return $link;
}
?> 

