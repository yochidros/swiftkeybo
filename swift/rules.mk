USER_DIR := users/yochidros
SWIFT_SRC := $(USER_DIR)/Keyboard.swift
BRIDGING_HEADER := $(USER_DIR)/BridgingHeader.h
SWIFT_OBJ := $(USER_DIR)/swift_keyboard.o

SRC += $(SWIFT_OBJ)

TOOLCHAINS="org.swift.62202503091a"

$(SWIFT_OBJ): $(SWIFT_SRC) $(BRIDGING_HEADER)
	@echo "Compiling swift_keyboard.o..."
	@TOOLCHAINS=$(TOOLCHAINS) swiftc \
        -target armv6m-none-none-eabi \
        -Xcc -mfloat-abi=soft -Xcc -fshort-enums -Xfrontend -function-sections \
        -enable-experimental-feature Embedded -wmo \
        -parse-as-library \
        -emit-object \
        -import-bridging-header $(BRIDGING_HEADER) \
        $(SWIFT_SRC) \
        -o $@
	@echo "done!!"

