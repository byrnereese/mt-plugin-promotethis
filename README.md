# Promote This!

Promote This! is a plugin for Movable Type that makes it easy for 
Movable Type users to add links to their favorite social bookmarking
and promotion services like Digg.

# Installation AND Upgrading

To install, place the "PromoteThis" directory in this distribution
underneath your Movable Type "plugins" directory. 

The plugin files, once installed should match that shown below:

    MT_DIR/
           plugins/
                   PromoteThis/
                               config.yaml
                               lib/
                                              PromoteThis/
                                                              Tags.pm
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


# Usage

## Template Tags

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

## Example

      <a href="<$MTDiggURL$>">Digg this</a>

# Support

This plugin existed in 2006, so it probably works with many versions of Movable Type.  However, it has not been tested by After6 Services with any version of Movable Type prior to Movable Type 4.38.  It is known to work with Movable Type 5 up to at least 5.2.3.

Although After6 Services LLC has contributed to the development of this plugin, After6 only provides support for this plugin as part of a Movable Type support agreement that references this plugin by name.

# License

Please consult the LICENSE.md file that was included in this plugin's distribution.

# Authorship

A substantial part of Promote This! was written by Byrne Reese, byrne at majordojo dot com, both before and after he worked at Six Apart.

Dave Aiello, dave dot aiello at after6services dot com, updated the plugin for use with Movable Type 5.2.3 and later.

# Copyright

Copyright &copy; 2006-2008, Six Apart, Ltd.  All rights reserved.

Copyright &copy; 2008-2010, Byrne Reese. All rights reserved.

Copyright &copy; 2013, After6 Services LLC.  All rights reserved.

Movable Type is a registered trademark of Six Apart, Ltd.

Trademarks, product names, company names, or logos used in connection with this repository are the property of their respective owners and references do not imply any endorsement, sponsorship, or affiliation with After6 Services LLC unless otherwise specified.

