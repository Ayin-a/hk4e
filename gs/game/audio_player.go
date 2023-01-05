package game

import (
	"time"

	"hk4e/pkg/logger"

	"gitlab.com/gomidi/midi/v2"
	"gitlab.com/gomidi/midi/v2/smf"
)

const (
	KeyOffset = -12 * 1 // 八度修正偏移
)

var AUDIO_CHAN chan uint32

func init() {
	AUDIO_CHAN = make(chan uint32, 1000)
}

func RunPlayAudio() {
	audio, err := smf.ReadFile("./in.mid")
	if err != nil {
		logger.Error("read midi file error: %v", err)
		return
	}
	tempoChangeList := audio.TempoChanges()
	if len(tempoChangeList) != 1 {
		logger.Error("midi file format not support")
		return
	}
	tempoChange := tempoChangeList[0]
	metricTicks := audio.TimeFormat.(smf.MetricTicks)
	tickTime := ((60000000.0 / tempoChange.BPM) / float64(metricTicks.Resolution())) / 1000.0
	for {
		// 洗脑循环
		logger.Debug("start play audio")
		for _, track := range audio.Tracks {
			// 全部轨道
			totalTick := uint64(0)
			for _, event := range track {
				// 单个轨道
				delay := uint32(float64(event.Delta) * tickTime)
				// busyPollWaitMilliSecond(delay)
				interruptWaitMilliSecond(delay)
				totalTick += uint64(delay)

				msg := event.Message
				if msg.Type() != midi.NoteOnMsg {
					continue
				}
				midiMsg := midi.Message(msg)
				var channel, key, velocity uint8
				midiMsg.GetNoteOn(&channel, &key, &velocity)
				// TODO 测试一下客户端是否支持更宽的音域
				// 60 -> 中央C C4
				// if key < 36 || key > 71 {
				// 	continue
				// }
				note := int32(key) + int32(KeyOffset)
				if note < 21 || note > 108 {
					// 非88键钢琴音域
					continue
				}
				if velocity == 0 {
					// 可能是NoteOffMsg
					continue
				}

				AUDIO_CHAN <- uint32(note)
				// logger.Debug("send midi note: %v, delay: %v, totalTick: %v", note, delay, totalTick)
			}
		}
	}
}

func interruptWaitMilliSecond(delay uint32) {
	time.Sleep(time.Millisecond * time.Duration(delay))
}

func busyPollWaitMilliSecond(delay uint32) {
	start := time.Now()
	end := start.Add(time.Millisecond * time.Duration(delay))
	for {
		now := time.Now()
		if now.After(end) {
			break
		}
	}
}
