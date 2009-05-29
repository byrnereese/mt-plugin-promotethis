<?php
function smarty_function_mtsphereiturl($args, &$ctx) {
  $entry = $ctx->stash('entry');
  $permalink = $ctx->tag('MTEntryPermalink');
  $link = 'http://www.sphere.com/search';
  $link .= '?q=sphereit:' . urlencode($permalink);
  return $link;
}
?> 
