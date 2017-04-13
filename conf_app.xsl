<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:output method="text"/>
	<xsl:template match="/">
	{
		<xsl:for-each select="settings">
		"settings": {
			"version": {
				"actual": "<xsl:value-of select="version/@actual" />",
				"update": "<xsl:value-of select="version/@update" />",
				"version": "<xsl:value-of select="version" />"
			},
			<xsl:for-each select="connection">
			"connection": {
				<xsl:for-each select="server">
				"server": {
					"region": "<xsl:value-of select="@region"/>",
					"name": "<xsl:value-of select="name"/>",
					"address": "<xsl:value-of select="address"/>",
					"port": "<xsl:value-of select="port"/>",
					"ping": "<xsl:value-of select="ping"/>"
				}<xsl:if test="position() != last()">,</xsl:if>
				</xsl:for-each>	
			}</xsl:for-each>,
			"user": {
				"first_name": "<xsl:value-of select="user/first_name"/>",
				"last_name": "<xsl:value-of select="user/last_name"/>",
				"country": "<xsl:value-of select="user/country"/>",
				"location": "<xsl:value-of select="user/location"/>",
				"gender": "<xsl:value-of select="user/gender"/>",
				"age": "<xsl:value-of select="user/age"/>",
				"last_login": "<xsl:value-of select="user/last_login"/>" {
					"unit": "<xsl:value-of select="user/last_login/@unit"/>"
				}
			},
			"sound": {
				"volume": "<xsl:value-of select="sound/volume/@enabled" />" {
					"general": "<xsl:value-of select="sound/volume/general" />" {
						"min": "<xsl:value-of select="sound/volume/general/@min" />",
						"max": "<xsl:value-of select="sound/volume/general/@max" />"
					},
					"background_music": "<xsl:value-of select="sound/volume/background_music" />" {
						"min": "<xsl:value-of select="sound/volume/background_music/@min" />",
						"max": "<xsl:value-of select="sound/volume/background_music/@max" />"
					},
					"speech": "<xsl:value-of select="sound/volume/speech" />" {
						"min": "<xsl:value-of select="sound/volume/speech/@min" />",
						"max": "<xsl:value-of select="sound/volume/speech/@max" />"
					}
				},
				"language": "<xsl:value-of select="sound/language" />",
				"subtitles": {
					"enabled": "<xsl:value-of select="sound/subtitles/@enabled" />",
					"language": "<xsl:value-of select="sound/subtitles/@language" />"
				}
			},
			"controls": {
				"keyboard": {
					"shortcuts": {
						"f1": "<xsl:value-of select="controls/keyboard/shortcuts/f1/@enabled" />",
						"f2": "<xsl:value-of select="controls/keyboard/shortcuts/f2/@enabled" />",
						"f3": "<xsl:value-of select="controls/keyboard/shortcuts/f3/@enabled" />",
						"f4": "<xsl:value-of select="controls/keyboard/shortcuts/f4/@enabled" />",
						"f5": "<xsl:value-of select="controls/keyboard/shortcuts/f5/@enabled" />",
						"f6": "<xsl:value-of select="controls/keyboard/shortcuts/f6/@enabled" />",
						"f7": "<xsl:value-of select="controls/keyboard/shortcuts/f7/@enabled" />",
						"f8": "<xsl:value-of select="controls/keyboard/shortcuts/f8/@enabled" />",
						"f9": "<xsl:value-of select="controls/keyboard/shortcuts/f9/@enabled" />",
					}
				},
				"mouse": {
					"sensitivity": <xsl:value-of select="controls/mouse/sensitivity" />" {
						"min": "<xsl:value-of select="controls/mouse/sensitivity/@min" />",
						"max": "<xsl:value-of select="controls/mouse/sensitivity/@max" />"
					},
					"axis": {
						"vertical": {
							"reverse": "<xsl:value-of select="controls/mouse/axis/vertical/reverse/@enabled" />"
						},
						"horizontal": {
							"reverse": "<xsl:value-of select="controls/mouse/axis/horizontal/reverse/@enabled" />"
						}
					}
				}
			},
			"video": {
				"resolution": <xsl:value-of select="video/resolution" />",
				"fps": <xsl:value-of select="video/resolution" />",
				"effect": <xsl:value-of select="video/effect/@enabled" />",
				"quality": <xsl:value-of select="video/quality" />" {
						"min": "<xsl:value-of select="video/quality/@min" />",
						"max": "<xsl:value-of select="video/quality/@max" />"
					}			
			},
			"platform": {
				"type": <xsl:value-of select="platform/type" />",
				"version": <xsl:value-of select="platform/version" />",
				"developer": <xsl:value-of select="platform/developer/@enabled" />"
			}
		}
		</xsl:for-each>
	}
	</xsl:template>
</xsl:stylesheet>