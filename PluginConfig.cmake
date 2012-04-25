#/**********************************************************\ 
#
# Auto-Generated Plugin Configuration file
# for BitTorrent Launcher
#
#\**********************************************************/

set(PREPROCESSOR_DEFINE "LIVE")
set(PLUGIN_NAME "Live")
set(PLUGIN_PREFIX "BTTQ")
set(COMPANY_NAME "BitTorrentLive")

# ActiveX constants:
set(FBTYPELIB_NAME btlivelib)
set(FBTYPELIB_DESC "Live Type Library")
set(IFBControl_DESC "Live Control Interface")
set(FBControl_DESC "Live Control Class")
set(IFBComJavascriptObject_DESC "Live IComJavascriptObject Interface")
set(FBComJavascriptObject_DESC "Live ComJavascriptObject Class")
set(IFBComEventSource_DESC "Live IFBComEventSource Interface")
set(AXVERSION_NUM "1")

# NOTE: THESE GUIDS *MUST* BE UNIQUE TO YOUR PLUGIN/ACTIVEX CONTROL!  YES, ALL OF THEM!
set(FBTYPELIB_GUID 17ce287c-53d7-4432-9d5d-e0b68336068b)
set(IFBControl_GUID 3ed22e89-11ac-43e7-9166-f09d1c434b1d)
set(FBControl_GUID fce1b325-7a17-46f6-9825-ebdd2c749972)
set(IFBComJavascriptObject_GUID 29229d65-8bd6-4ce2-a0c1-1bb178fe6662)
set(FBComJavascriptObject_GUID 264fa7e0-89cd-42b7-81c3-422d5df0ca1e)
set(IFBComEventSource_GUID 4266d14a-9d8e-494c-bafe-0d71a9bd67b5)

# these are the pieces that are relevant to using it from Javascript
set(ACTIVEX_PROGID "bittorrent.live")
set(MOZILLA_PLUGINID "bittorrent.com/live")

# strings
set(FBSTRING_CompanyName "BitTorrent, Inc")
set(FBSTRING_FileDescription "Launches BitTorrent Live")
set(FBSTRING_PLUGIN_VERSION "4.3.4")
set(FBSTRING_LegalCopyright "Copyright 2012 BitTorrent, Inc")
set(FBSTRING_PluginFileName "np${PLUGIN_NAME}.dll")
set(FBSTRING_ProductName "Live Plugin")
set(FBSTRING_FileExtents "")
set(FBSTRING_PluginName "Live Plugin")
set(FBSTRING_MIMEType "application/x-bittorrent-live")

# Uncomment this next line if you're not planning on your plugin doing
# any drawing:

set (FB_GUI_DISABLED 1)

# Mac plugin settings. If your plugin does not draw, set these all to 0
set(FBMAC_USE_QUICKDRAW 0)
set(FBMAC_USE_CARBON 0)
set(FBMAC_USE_COCOA 0)
set(FBMAC_USE_COREGRAPHICS 0)
set(FBMAC_USE_COREANIMATION 0)
set(FBMAC_USE_INVALIDATINGCOREANIMATION 0)

# If you want to register per-machine on Windows, uncomment this line
#set (FB_ATLREG_MACHINEWIDE 1)
#add_firebreath_library(curl)