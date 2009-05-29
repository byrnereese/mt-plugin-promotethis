<?php
function smarty_function_mttechnoratiurl($args, &$ctx) {
  $entry = $ctx->stash('entry');
  $permalink = $ctx->tag('MTEntryPermalink');
  $link = 'http://technorati.com/cosmos/search.html';
  $link .= '?url=' . urlencode(permalink);
  return $link;
}
?>