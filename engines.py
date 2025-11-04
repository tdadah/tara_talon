from talon import speech_system
from talon.engines.macsf import MacSFEngine
from talon.engines.webspeech import WebSpeechEngine

webspeech = WebSpeechEngine()
macsf = MacSFEngine()

speech_system.add_engine(macsf)
speech_system.add_engine(webspeech)