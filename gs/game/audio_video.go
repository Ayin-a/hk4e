package game

import (
	"image"
	"image/color"
	"image/jpeg"
	"os"
	"sort"
	"strconv"
	"time"

	"hk4e/common/constant"
	"hk4e/pkg/logger"

	"hk4e/gs/model"
	"hk4e/protocol/proto"

	"github.com/pkg/errors"
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

func PlayAudio() {
	audio, err := smf.ReadFile("./audio.mid")
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

const (
	SCREEN_WIDTH  = 80
	SCREEN_HEIGHT = 80
	SCREEN_DPI    = 0.5
)
const GADGET_ID = 70590015

var BASE_POS = &model.Vector{
	X: 2700,
	Y: 200,
	Z: -1800,
}
var SCREEN_ENTITY_ID_LIST []uint32
var FRAME_COLOR [][]int
var FRAME [][]bool

const (
	GADGET_RED       = 70590016
	GADGET_GREEN     = 70590019
	GADGET_BLUE      = 70590017
	GADGET_CYAN      = 70590014
	GADGET_YELLOW    = 70590015
	GADGET_CYAN_BLUE = 70590018
	GADGET_PURPLE    = 70590020
)
const (
	RED_RGB       = "C3764F"
	GREEN_RGB     = "559F30"
	BLUE_RGB      = "6293EA"
	CYAN_RGB      = "479094"
	YELLOW_RGB    = "DBB643"
	CYAN_BLUE_RGB = "2B89C9"
	PURPLE_RGB    = "6E5BC5"
)

var COLOR_GADGET_MAP = map[string]int{
	RED_RGB:       GADGET_RED,
	GREEN_RGB:     GADGET_GREEN,
	BLUE_RGB:      GADGET_BLUE,
	CYAN_RGB:      GADGET_CYAN,
	YELLOW_RGB:    GADGET_YELLOW,
	CYAN_BLUE_RGB: GADGET_CYAN_BLUE,
	PURPLE_RGB:    GADGET_PURPLE,
}
var ALL_COLOR = []string{RED_RGB, GREEN_RGB, BLUE_RGB, CYAN_RGB, YELLOW_RGB, CYAN_BLUE_RGB, PURPLE_RGB}

type ColorLight struct {
	Color string
	Light uint8
}

type COLOR_LIGHT_LIST_SORT []*ColorLight

var COLOR_LIGHT_LIST COLOR_LIGHT_LIST_SORT

func (s COLOR_LIGHT_LIST_SORT) Len() int {
	return len(s)
}

func (s COLOR_LIGHT_LIST_SORT) Less(i, j int) bool {
	return s[i].Light < s[j].Light
}

func (s COLOR_LIGHT_LIST_SORT) Swap(i, j int) {
	s[i], s[j] = s[j], s[i]
}

func init() {
	CalcColorLight()
}

func CalcColorLight() {
	COLOR_LIGHT_LIST = make(COLOR_LIGHT_LIST_SORT, 0)
	for _, c := range ALL_COLOR {
		r, g, b := GetColorRGB(c)
		gray := float32(r)*0.299 + float32(g)*0.587 + float32(b)*0.114
		COLOR_LIGHT_LIST = append(COLOR_LIGHT_LIST, &ColorLight{
			Color: c,
			Light: uint8(gray),
		})
	}
	sort.Stable(COLOR_LIGHT_LIST)
	total := len(COLOR_LIGHT_LIST)
	div := 255.0 / float32(total)
	for index, colorLight := range COLOR_LIGHT_LIST {
		colorLight.Light = uint8(div * float32(index+1))
	}
}

func GetColorRGB(c string) (r, g, b uint8) {
	if len(c) != 6 {
		return 0, 0, 0
	}
	rr, err := strconv.ParseUint(c[0:2], 16, 8)
	if err != nil {
		return 0, 0, 0
	}
	r = uint8(rr)
	gg, err := strconv.ParseUint(c[2:4], 16, 8)
	if err != nil {
		return 0, 0, 0
	}
	g = uint8(gg)
	bb, err := strconv.ParseUint(c[4:6], 16, 8)
	if err != nil {
		return 0, 0, 0
	}
	b = uint8(bb)
	return r, g, b
}

func ReadJpgFile(fileName string) image.Image {
	file, err := os.Open(fileName)
	if err != nil {
		return nil
	}
	defer func() {
		_ = file.Close()
	}()
	img, err := jpeg.Decode(file)
	if err != nil {
		return nil
	}
	return img
}

func WriteJpgFile(fileName string, jpg image.Image) {
	file, err := os.Create(fileName)
	if err != nil {
		return
	}
	defer func() {
		_ = file.Close()
	}()
	err = jpeg.Encode(file, jpg, &jpeg.Options{
		Quality: 100,
	})
	if err != nil {
		return
	}
}

func LoadFrameFile() error {
	frameImg := ReadJpgFile("./frame.jpg")
	if frameImg == nil {
		return errors.New("file not exist")
	}
	FRAME = make([][]bool, SCREEN_WIDTH)
	for w := 0; w < SCREEN_WIDTH; w++ {
		FRAME[w] = make([]bool, SCREEN_HEIGHT)
	}
	FRAME_COLOR = make([][]int, SCREEN_WIDTH)
	for w := 0; w < SCREEN_WIDTH; w++ {
		FRAME_COLOR[w] = make([]int, SCREEN_HEIGHT)
	}
	grayAvg := uint64(0)
	grayImg := image.NewRGBA(image.Rect(0, 0, SCREEN_WIDTH, SCREEN_HEIGHT))
	for w := 0; w < SCREEN_WIDTH; w++ {
		for h := 0; h < SCREEN_HEIGHT; h++ {
			pix := frameImg.At(w, h)
			r, g, b, _ := pix.RGBA()
			gray := float32(r>>8)*0.299 + float32(g>>8)*0.587 + float32(b>>8)*0.114
			grayImg.SetRGBA(w, h, color.RGBA{R: uint8(gray), G: uint8(gray), B: uint8(gray), A: 255})
			grayAvg += uint64(gray)
		}
	}
	WriteJpgFile("./frame_gray.jpg", grayImg)
	grayAvg /= SCREEN_WIDTH * SCREEN_HEIGHT
	rgbImg := image.NewRGBA(image.Rect(0, 0, SCREEN_WIDTH, SCREEN_HEIGHT))
	binImg := image.NewRGBA(image.Rect(0, 0, SCREEN_WIDTH, SCREEN_HEIGHT))
	for w := 0; w < SCREEN_WIDTH; w++ {
		for h := 0; h < SCREEN_HEIGHT; h++ {
			pix := frameImg.At(w, h)
			r, g, b, _ := pix.RGBA()
			gray := float32(r>>8)*0.299 + float32(g>>8)*0.587 + float32(b>>8)*0.114
			c := ""
			for _, colorLight := range COLOR_LIGHT_LIST {
				if float32(colorLight.Light) > gray {
					c = colorLight.Color
					break
				}
			}
			if c == "" {
				c = COLOR_LIGHT_LIST[len(COLOR_LIGHT_LIST)-1].Color
			}
			rr, gg, bb := GetColorRGB(c)
			rgbImg.SetRGBA(w, h, color.RGBA{R: rr, G: gg, B: bb, A: 255})
			FRAME_COLOR[w][h] = COLOR_GADGET_MAP[c]
			if gray > float32(grayAvg) {
				FRAME[w][h] = true
				binImg.SetRGBA(w, h, color.RGBA{R: 255, G: 255, B: 255, A: 255})
			}
		}
	}
	WriteJpgFile("./frame_rgb.jpg", rgbImg)
	WriteJpgFile("./frame_bin.jpg", binImg)
	return nil
}

func UpdateFrame(rgb bool) {
	err := LoadFrameFile()
	if err != nil {
		return
	}
	world := WORLD_MANAGER.GetAiWorld()
	scene := world.GetSceneById(3)
	if scene == nil {
		logger.Error("scene is nil, sceneId: %v", 3)
		return
	}
	for _, v := range SCREEN_ENTITY_ID_LIST {
		scene.DestroyEntity(v)
	}
	GAME.RemoveSceneEntityNotifyBroadcast(scene, proto.VisionType_VISION_REMOVE, SCREEN_ENTITY_ID_LIST)
	SCREEN_ENTITY_ID_LIST = make([]uint32, 0)
	leftTopPos := &model.Vector{
		X: BASE_POS.X + float64(SCREEN_WIDTH)*SCREEN_DPI/2,
		Y: BASE_POS.Y + float64(SCREEN_HEIGHT)*SCREEN_DPI,
		Z: BASE_POS.Z,
	}
	for w := 0; w < SCREEN_WIDTH; w++ {
		for h := 0; h < SCREEN_HEIGHT; h++ {
			// 创建像素点
			if rgb {
				entityId := scene.CreateEntityGadgetNormal(
					&model.Vector{
						X: leftTopPos.X - float64(w)*SCREEN_DPI,
						Y: leftTopPos.Y - float64(h)*SCREEN_DPI,
						Z: leftTopPos.Z,
					}, new(model.Vector),
					uint32(FRAME_COLOR[w][h]), uint32(constant.GADGET_STATE_DEFAULT),
					new(GadgetNormalEntity), 0, 0)
				SCREEN_ENTITY_ID_LIST = append(SCREEN_ENTITY_ID_LIST, entityId)
			} else {
				if !FRAME[w][h] {
					entityId := scene.CreateEntityGadgetNormal(
						&model.Vector{
							X: leftTopPos.X - float64(w)*SCREEN_DPI,
							Y: leftTopPos.Y - float64(h)*SCREEN_DPI,
							Z: leftTopPos.Z,
						}, new(model.Vector),
						uint32(GADGET_ID), uint32(constant.GADGET_STATE_DEFAULT),
						new(GadgetNormalEntity), 0, 0)
					SCREEN_ENTITY_ID_LIST = append(SCREEN_ENTITY_ID_LIST, entityId)
				}
			}
		}
	}
	GAME.AddSceneEntityNotify(world.GetOwner(), proto.VisionType_VISION_BORN, SCREEN_ENTITY_ID_LIST, true, false)
}
