@_silgen_name("tap_code16")
func tap_code16(_ keycode: UInt16)

@_silgen_name("send_string")
func send_string(_ str: UnsafePointer<CChar>)

@_cdecl("process_record_user")
public func process_record_user(keycode: UInt16, record: UnsafePointer<keyrecord_t>) -> Bool {
    guard record.pointee.event.pressed else {
        return true
    }

    if keycode == 0x62 {
        "Swift Keyboooooooooooooooooooooooooooooo!!".withCString { ptr in
            send_string(ptr)
        }
        return false
    }
    // Swiftでキー処理するやつ
    return true
}