OVERVIEW

Promote This is a plugin for Movable Type that makes it easy for 
Movable Type users to add links to their favorite social bookmarking
and promotion services like Digg.

INSTALLATION AND UPGRADING

To install, place the "PromoteThis" directory in this distribution
underneath your Movable Type "plugins" directory. 

The plugin files, once installed should match that shown below:

    MT_DIR/
           plugins/
                   PromoteThis/
                               PromoteThis.pl
    MT_DIR/
           php/
               plugins/
                       function.mtblinkbitsurl.php
                       function.mtredditurl.php
                       function.mtnewsvineurl.php
                       function.mtfurlurl.php
                       function.mtgoogleurl.php
                       function.mtfarkurl.php
                       function.mtblinklisturl.php
                       function.mtspurlurl.php
                       function.mtmyweburl.php
                       function.mtconnoteaurl.php
                       function.mtshadowsurl.php
                       function.mtsimpyurl.php
                       function.mtfeedmelinksurl.php
                       function.mtlinkrollurl.php
                       function.mtblogmarksurl.php
                       function.mtstumbleuponurl.php
                       function.mtfacebookurl.php
                       function.mtsphereiturl.php


TEMPLATE TAGS

Each of these tags MUST be called within the context of an MTEntry tag.
Tach tag outputs a raw URL that is intended to be used in an a@href
element.

  <$MTMagnoliaURL$>
  <$MTDiggURL$>
  <$MTdeliciousURL$>
  <$MTredditURL$>
  <$MTNewsvineURL$>
  <$MTFurlURL$>
  <$MTFarkURL$>
  <$MTGoogleURL$>
  <$MTSpurlURL$>
  <$MTMyWebURL$>
  <$MTBlinkListURL$>
  <$MTBlinkBitsURL$>
  <$MTConnoteaURL$>
  <$MTFeedMeLinksURL$>
  <$MTShadowsURL$>
  <$MTSimpyURL$>
  <$MTStumbleUponURL$>
  <$MTLinkrollURL$>
  <$MTBlogMarksURL$>
  <$MTFaceBookURL$>
  <$MTSphereItURL$>
  <$MTTechnoratiURL$>

EXAMPLE

  <a href="<$MTDiggURL$>">Digg this</a>

SUPPORT

Please post your bugs, questions and comments to the Promote This forums
at:

  http://forums.movabletype.org/

LICENSE

Please consult the PROMOTETHIS-LICENSE.txt file that was included 
in this plugin's zip file.

AUTHOR

Byrne Reese, byrne at majordojo dot com

COPYRIGHT

Copyright 2006-2008, Six Apart, Ltd. All rights reserved.
