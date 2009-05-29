<?php
function smarty_function_mtlinkedinurl($args, &$ctx) {
  $entry = $ctx->stash('entry');
  $blog = $ctx->stash('blog');
  $permalink = $ctx->tag('MTEntryPermalink');
  $link = 'http://www.linkedin.com/shareArticle?mini=true';
  $link .= '&amp;source=' . urlencode($blog['blog_site_url']);
  $link .= '&amp;title=' . urlencode($entry['entry_title']);
  $link .= '&amp;url=' . urlencode($permalink);
  $link .= '&amp;summary=' . urlencode($entry['entry_excerpt']);
  return $link;
}
?>