<?php
function smarty_function_mtnetlogurl($args, &$ctx) {
  $entry = $ctx->stash('entry');
  $permalink = $ctx->tag('MTEntryPermalink');
  $link = 'http://www.netlog.com/go/manage/links/view=save&amp;origin=external';
  $link .= '&amp;url=' . urlencode($permalink);
  $link .= '&amp;title=' . urlencode($entry['entry_title']);
  $link .= '&amp;description=' . urlencode($entry['excerpt']);
  return $link;
}
?>