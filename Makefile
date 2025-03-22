TOOLCHAINS="org.swift.62202503091a"

.PHONY: build
build:
	@TOOLCHAINS=$(TOOLCHAINS) swiftc \
        -target armv6m-none-none-eabi \
        -Xcc -mfloat-abi=soft -Xcc -fshort-enums -Xfrontend -function-sections \
        -enable-experimental-feature Embedded -wmo \
        -parse-as-library \
        -emit-object \
        -import-bridging-header swift/BridgingHeader.h \
        swift/Keyboard.swift \
        -o swift_keyboard.o
	@echo "output: swift_keyboard.o"
