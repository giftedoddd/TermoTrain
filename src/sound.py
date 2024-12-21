from pydub.playback import play
from pydub import AudioSegment
from pathlib import Path

train_sound = Path(__file__).parent.parent.joinpath("resources/train.mp3")

sound = AudioSegment.from_mp3(train_sound)
play(sound)
