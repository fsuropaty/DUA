extends Node

func play_sfx(sfx_clip : AudioStream):
	for child in $sfx.get_children():
		if child.playing == false:
			child.stream = sfx_clip
			child.play()
			break
