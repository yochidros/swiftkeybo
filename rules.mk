# This file intentionally left blank
EXTRA_CFLAGS += -D__SWIFT__=1

OPT_DEFS += -DNO_ACTION_LAYER

CFLAGS += -Wno-builtin-declaration-mismatch
CFLAGS += -Wno-unused-value

SRC += keyboards/swiftkeybo/swift_keyboard.o
SRC += keyboards/swiftkeybo/swift/support.c