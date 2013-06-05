package PromoteThis::Tags;

use strict;
use warnings;

sub _hdlr_AddThisURL
{
	my $ctx = shift;
    my $entry = $ctx->stash('entry');
    my $link = 'http://www.addtoany.com/bookmark';
    $link .= '?linkname=' . MT::Util::encode_url($entry->title);
    $link .= '&amp;linkurl=' . MT::Util::encode_url($entry->permalink);
    return $link;
}

sub _hdlr_LinkedinURL
{
	my $ctx = shift;
    my $entry = $ctx->stash('entry');
    my $blog = $ctx->stash('blog');
    my $link = 'http://www.linkedin.com/shareArticle?mini=true';
    $link .= '&amp;url=' . MT::Util::encode_url($entry->permalink);
    $link .= '&amp;title=' . MT::Util::encode_url($entry->title);
    $link .= '&amp;summary=' . MT::Util::encode_url($entry->excerpt);
    $link .= '&amp;source=' . MT::Util::encode_url($blog->site_url);
    return $link;
}

sub _hdlr_TwitthisURL
{
	my $ctx = shift;
    my $entry = $ctx->stash('entry');
    my $link = 'http://twitthis.com/';
    $link .= 'twit?url=' . MT::Util::encode_url($entry->permalink);
    $link .= '&t=' . MT::Util::encode_url($entry->title);
    return $link;
}

sub _hdlr_TechnoratiURL
{
	my $ctx = shift;
    my $entry = $ctx->stash('entry');
    my $link = 'http://technorati.com/cosmos/search.html';
    $link .= '?url=' . MT::Util::encode_url($entry->permalink);
    return $link;
}

sub _hdlr_MagnoliaURL
{
	my $ctx = shift;
    my $entry = $ctx->stash('entry');
    my $link = 'http://ma.gnolia.com/bookmarklet/add';
    $link .= '?url=' . MT::Util::encode_url($entry->permalink);
    $link .= '&amp;title=' . MT::Util::encode_url($entry->title);
    $link .= '&amp;description=' . MT::Util::encode_url($entry->excerpt) if $entry->excerpt;
    return $link;
}

sub _hdlr_DiggURL
{
	my $ctx = shift;
    my $entry = $ctx->stash('entry');
    my $link = 'http://digg.com/submit?phase=2';
    $link .= '&amp;url=' . MT::Util::encode_url($entry->permalink);
    $link .= '&amp;title=' . MT::Util::encode_url($entry->title);
    $link .= '&amp;bodytext=' . MT::Util::encode_url($entry->excerpt) if $entry->excerpt;
    $link .= '&amp;topic=';
    return $link;
}

sub _hdlr_deliciousURL
{
	my $ctx = shift;
    my $entry = $ctx->stash('entry');
    my $link = 'http://del.icio.us/post?v=4';
    $link .= '&amp;url=' . MT::Util::encode_url($entry->permalink);
    $link .= '&amp;title=' . MT::Util::encode_url($entry->title);
    return $link;
}

sub _hdlr_redditURL
{
	my $ctx = shift;
    my $entry = $ctx->stash('entry');
    my $link = 'http://reddit.com/submit?';
    $link .= 'url=' . MT::Util::encode_url($entry->permalink);
    $link .= '&amp;title=' . MT::Util::encode_url($entry->title);
    return $link;
}

sub _hdlr_NewsVineURL
{
	my $ctx = shift;
    my $entry = $ctx->stash('entry');
    my $link = 'http://www.newsvine.com/_wine/save?popoff=0&amp;';
    $link .= 'u=' . MT::Util::encode_url($entry->permalink);
    $link .= '&amp;h=' . MT::Util::encode_url($entry->title);
    return $link;
}

sub _hdlr_FurlURL
{
	# http://furl.net/storeIt.jsp?t=Portable+USB+Programs&u=http://www.combobulate.com/node/13
	my $ctx = shift;
    my $entry = $ctx->stash('entry');
    my $link = 'http://furl.net/storeIt.jsp';
    $link .= '?t=' . MT::Util::encode_url($entry->title);
    $link .= '&amp;u=' . MT::Util::encode_url($entry->permalink);
    return $link;
}

sub _hdlr_FarkURL
{
	# http://cgi.fark.com/cgi/fark/farkit.pl?hPortable+USB+Programs=&u=http://www.combobulate.com/node/13
	my $ctx = shift;
    my $entry = $ctx->stash('entry');
    my $link = 'http://cgi.fark.com/cgi/fark/farkit.pl';
    $link .= '?h=' . MT::Util::encode_html($entry->title);
    $link .= '&amp;u=' . MT::Util::encode_js($entry->permalink);
    return $link;
}

sub _hdlr_GoogleURL
{
	# http://www.google.com/bookmarks/mark?op=add&bkmk=http://www.combobulate.com/node/13&title=Portable+USB+Programs
    my $ctx = shift;
    my $entry = $ctx->stash('entry');
    my $link = 'http://www.google.com/bookmarks/mark?op=add';
    $link .= '&amp;title=' . MT::Util::encode_url($entry->title);
    $link .= '&amp;bkmk=' . MT::Util::encode_url($entry->permalink);
    return $link;
}

sub _hdlr_SpurlURL
{
	# http://www.spurl.net/spurl.php?url=http://www.combobulate.com/node/13&title=Portable+USB+Programs
    my $ctx = shift;
    my $entry = $ctx->stash('entry');
    my $link = 'http://www.spurl.net/spurl.php';
    $link .= '?url=' . MT::Util::encode_url($entry->permalink);
    $link .= '&title=' . MT::Util::encode_url($entry->title);
    return $link;
}

sub _hdlr_MyWebURL
{
	# http://myweb2.search.yahoo.com/myresults/bookmarklet?u=http://www.combobulate.com/node/13&t=Portable+USB+Programs
    my $ctx = shift;
    my $entry = $ctx->stash('entry');
    my $link = 'http://myweb2.search.yahoo.com/myresults/bookmarklet';
    $link .= '?u=' . MT::Util::encode_url($entry->permalink);
    $link .= '&amp;t=' . MT::Util::encode_url($entry->title);
    return $link;
}

sub _hdlr_BlinkListURL
{
	# http://www.blinklist.com/index.php?Action=Blink/addblink.php&Description=&Url=http://www.combobulate.com/node/13&Title=Portable+USB+Programs
    my $ctx = shift;
    my $entry = $ctx->stash('entry');
    my $link = 'http://www.blinklist.com/index.php?Action=Blink/addblink.php';
    $link .= '&amp;Description=' . MT::Util::encode_url($entry->excerpt) if $entry->excerpt;
    $link .= '&amp;Url=' . MT::Util::encode_url($entry->permalink);
    $link .= '&amp;Title=' . MT::Util::encode_url($entry->title);
    return $link;
}

sub _hdlr_BlinkBitsURL
{
	# http://www.blinkbits.com/bookmarklets/save.php?v=1&source_url=http://www.combobulate.com/node/13&title=Portable+USB+Programs
    my $ctx = shift;
    my $entry = $ctx->stash('entry');
    my $link = 'http://www.blinkbits.com/bookmarklets/save.php?v=1';
    $link .= '&amp;source_url=' . MT::Util::encode_url($entry->permalink);
    $link .= '&amp;title=' . MT::Util::encode_url($entry->title);
    return $link;
}

sub _hdlr_ConnoteaURL
{
	# http://www.connotea.org/addpopup?continue=confirm&uri=http://www.combobulate.com/node/13&title=Portable+USB+Programs
    my $ctx = shift;
    my $entry = $ctx->stash('entry');
    my $link = 'http://www.connotea.org/addpopup?continue=confirm';
    $link .= '&amp;uri=' . MT::Util::encode_url($entry->permalink);
    $link .= '&amp;title=' . MT::Util::encode_url($entry->title);
    return $link;
}

sub _hdlr_FeedMeLinksURL
{
	# http://feedmelinks.com/categorize?from=toolbar&op=submit&url=http://www.combobulate.com/node/13&name=Portable+USB+Programs 
    my $ctx = shift;
    my $entry = $ctx->stash('entry');
    my $link = 'http://feedmelinks.com/categorize?from=toolbar&amp;op=submit';
    $link .= '&amp;url=' . MT::Util::encode_url($entry->permalink);
    $link .= '&amp;name=' . MT::Util::encode_url($entry->title);
    return $link;
}

sub _hdlr_ShadowsURL
{
	# http://www.shadows.com/features/tcr.htm?url=http://www.combobulate.com/node/13&title=Portable+USB+Programs
    my $ctx = shift;
    my $entry = $ctx->stash('entry');
    my $link = 'http://www.shadows.com/features/tcr.htm';
    $link .= '?url=' . MT::Util::encode_url($entry->permalink);
    $link .= '&amp;title=' . MT::Util::encode_url($entry->title);
    return $link;
}

sub _hdlr_SimpyURL
{
	# http://www.simpy.com/simpy/LinkAdd.do?href=http://www.combobulate.com/node/13&title=Portable+USB+Programs
    my $ctx = shift;
    my $entry = $ctx->stash('entry');
    my $link = 'http://www.simpy.com/simpy/LinkAdd.do';
    $link .= '?href=' . MT::Util::encode_url($entry->permalink);
    $link .= '&amp;title=' . MT::Util::encode_url($entry->title);
    return $link;
}

sub _hdlr_StumbleUponURL
{
    # http://www.stumbleupon.com/submit?url=http://www.combobulate.com/node/13/&title=Portable+USB+Programs
    my $ctx = shift;
    my $entry = $ctx->stash('entry');
    my $link = 'http://www.stumbleupon.com/submit';
    $link .= '?url=' . MT::Util::encode_url($entry->permalink);
    $link .= '&amp;title=' . MT::Util::encode_url($entry->title);
    return $link;
}

sub _hdlr_LinkrollURL
{
	# http://linkroll.com/insert.php?url=http://www.combobulate.com/node/13/&title=Portable+USB+Programs
    my $ctx = shift;
    my $entry = $ctx->stash('entry');
    my $link = 'http://linkroll.com/insert.php?url=';
    $link .= 'href=' . MT::Util::encode_url($entry->permalink);
    $link .= '&amp;title=' . MT::Util::encode_url($entry->title);
    return $link;
}

sub _hdlr_BlogMarksURL
{
	# http://blogmarks.net/my/new.php?mini=1&title=Portable+USB+Programs&url=http://www.combobulate.com/node/13
    my $ctx = shift;
    my $entry = $ctx->stash('entry');
    my $link = 'http://blogmarks.net/my/new.php?mini=';
    $link .= '1&amp;title=title=' . MT::Util::encode_url($entry->title);
    $link .= '&amp;url=' . MT::Util::encode_url($entry->permalink);
    return $link;
}

sub _hdlr_FacebookURL
{
    my $ctx = shift;
    my $entry = $ctx->stash('entry');
    my $link = 'http://www.facebook.com/share.php';
    $link .= '?u=' . MT::Util::encode_url($entry->permalink);
    $link .= '&amp;t=' . MT::Util::encode_url($entry->title);
    return $link;
}

sub _hdlr_SphereItURL
{
    my $ctx = shift;
    my $entry = $ctx->stash('entry');
    my $link = 'http://www.sphere.com/search';
    $link .= '?q=sphereit:' . MT::Util::encode_url($entry->permalink);
    return $link;
}

sub _hdlr_EmailLinkURL
{
    my $ctx = shift;
    my $entry = $ctx->stash('entry');
    my $link = 'mailto:';
    $link .= '?body=' . MT::Util::encode_url($entry->permalink);
    $link .= '&amp;subject=' . MT::Util::encode_url($entry->title);
    return $link;
}

sub _hdlr_NetLogURL
{
    my $ctx = shift;
    my $entry = $ctx->stash('entry');
    my $link = 'http://www.netlog.com/go/manage/links/view=save&amp;origin=external';
    $link .= '&amp;url=' . MT::Util::encode_url($entry->permalink);
    $link .= '&amp;title=' . MT::Util::encode_url($entry->title);
    $link .= '&amp;description=' . MT::Util::encode_url($entry->excerpt);
    return $link;
}

sub _hdlr_TwitterURL
{
    my $ctx = shift;
    my $entry = $ctx->stash('entry');
    my $link = 'http://twitter.com/home';
    $link .= '?status=Currently%20reading%20' . MT::Util::encode_url($entry->permalink);
    return $link;
}

1;