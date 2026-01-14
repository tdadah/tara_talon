mode: all
os: mac
-
(whisper) start: user.whisper_start()
(whisper) stop: user.whisper_stop()
(super | whisper) mode: user.whisper_toggle_mode()
(super | whisper) cancel: user.whisper_cancel()

whisper local: user.whisper_local()
whisper normal: user.whisper_normal() 
