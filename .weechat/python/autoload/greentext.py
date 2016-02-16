#-*- coding: utf-8 -*-
# Copyright (c) 2013 Anton Vilhelm Ásgeirsson <anton@antonvilhelm.is>
#
# Everyone is permitted to copy and distribute verbatim or modified
# copies of this license document, and changing it is allowed as long
# as the name is changed.
#
# DO WHAT THE FUCK YOU WANT TO PUBLIC LICENSE
# TERMS AND CONDITIONS FOR COPYING, DISTRIBUTION AND MODIFICATION
#
# 0. You just DO WHAT THE FUCK YOU WANT TO.

# Greentext:
# ----------
# Modifies any messages starting with '>' to display green text, similar to
# the way popular imageboards do.

import weechat as w
import re

# Registstration variables.
SCRIPT_NAME    = "greentext"
SCRIPT_AUTHOR  = "Anton Vilhelm Ásgeirsson <anton@antonvilhelm.is>"
SCRIPT_VERSION = "0.1"
SCRIPT_LICENSE = "WTFPL"
SCRIPT_DESC    = "Modify messages starting with '>' to display green text."

# Registration function.
w.register(
        SCRIPT_NAME,
        SCRIPT_AUTHOR,
        SCRIPT_VERSION,
        SCRIPT_LICENSE,
        SCRIPT_DESC,
        "",""
)

# Greentext callback function.
def greentext_cb(data, modifier, modifier_data, string):
    try:
        nick, msg  = string.split('\t')
    except ValueError, e: #Get rid of those python error messages.
        return string
    if msg[0] == '>':
        return "%s\t%s%s" % (nick, w.color('green'), msg)
    else:
        return string



w.hook_modifier("weechat_print", "greentext_cb", "")

