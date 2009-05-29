<?php
function smarty_function_mtemaillinkurl($args, &$ctx) {
  $entry = $ctx->stash('entry');
  $permalink = $ctx->tag('MTEntryPermalink');
  $link = 'mailto:';
  $link .= '?body=' . urlencode($permalink);
  $link .= '&amp;subject=' . urlencode($entry['entry_title']);
  return $link;
}
?> 

