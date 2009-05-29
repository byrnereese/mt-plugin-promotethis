<?php
function smarty_function_mtfarkurl($args, &$ctx) {
  $entry = $ctx->stash('entry');
  $permalink = $ctx->tag('MTEntryPermalink');
  $link = 'http://cgi.fark.com/cgi/fark/farkit.pl';
  $link .= '?h=' . htmlentities($entry['entry_title']);
  $link .= '&amp;u=' . unescape($permalink);
  return $link;
}
?>

