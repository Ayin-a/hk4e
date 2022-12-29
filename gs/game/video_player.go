package game

import (
	"image"
	"image/color"
	"image/jpeg"
	"os"
	"sort"
	"strconv"

	"hk4e/gs/model"
	"hk4e/protocol/proto"

	"github.com/pkg/errors"
)

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

func LoadVideoPlayerFile() error {
	inImg := ReadJpgFile("./in.jpg")
	if inImg == nil {
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
			pix := inImg.At(w, h)
			r, g, b, _ := pix.RGBA()
			gray := float32(r>>8)*0.299 + float32(g>>8)*0.587 + float32(b>>8)*0.114
			grayImg.SetRGBA(w, h, color.RGBA{R: uint8(gray), G: uint8(gray), B: uint8(gray), A: 255})
			grayAvg += uint64(gray)
		}
	}
	WriteJpgFile("./gray.jpg", grayImg)
	grayAvg /= SCREEN_WIDTH * SCREEN_HEIGHT
	rgbImg := image.NewRGBA(image.Rect(0, 0, SCREEN_WIDTH, SCREEN_HEIGHT))
	binImg := image.NewRGBA(image.Rect(0, 0, SCREEN_WIDTH, SCREEN_HEIGHT))
	for w := 0; w < SCREEN_WIDTH; w++ {
		for h := 0; h < SCREEN_HEIGHT; h++ {
			pix := inImg.At(w, h)
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
	WriteJpgFile("./rgb.jpg", rgbImg)
	WriteJpgFile("./bin.jpg", binImg)
	return nil
}

func (g *GameManager) VideoPlayerUpdate(rgb bool) {
	err := LoadVideoPlayerFile()
	if err != nil {
		return
	}
	world := WORLD_MANAGER.GetBigWorld()
	scene := world.GetSceneById(3)
	for _, v := range SCREEN_ENTITY_ID_LIST {
		scene.DestroyEntity(v)
	}
	GAME_MANAGER.RemoveSceneEntityNotifyBroadcast(scene, proto.VisionType_VISION_TYPE_REMOVE, SCREEN_ENTITY_ID_LIST)
	SCREEN_ENTITY_ID_LIST = make([]uint32, 0)
	leftTopPos := &model.Vector{
		X: BASE_POS.X + float64(float64(SCREEN_WIDTH)*SCREEN_DPI/2),
		Y: BASE_POS.Y + float64(float64(SCREEN_HEIGHT)*SCREEN_DPI),
		Z: BASE_POS.Z,
	}
	for w := 0; w < SCREEN_WIDTH; w++ {
		for h := 0; h < SCREEN_HEIGHT; h++ {
			// 创建像素点
			if rgb {
				entityId := scene.CreateEntityGadgetNormal(&model.Vector{
					X: leftTopPos.X - float64(w)*SCREEN_DPI,
					Y: leftTopPos.Y - float64(h)*SCREEN_DPI,
					Z: leftTopPos.Z,
				}, uint32(FRAME_COLOR[w][h]))
				SCREEN_ENTITY_ID_LIST = append(SCREEN_ENTITY_ID_LIST, entityId)
			} else {
				if !FRAME[w][h] {
					entityId := scene.CreateEntityGadgetNormal(&model.Vector{
						X: leftTopPos.X - float64(w)*SCREEN_DPI,
						Y: leftTopPos.Y - float64(h)*SCREEN_DPI,
						Z: leftTopPos.Z,
					}, uint32(GADGET_ID))
					SCREEN_ENTITY_ID_LIST = append(SCREEN_ENTITY_ID_LIST, entityId)
				}
			}
		}
	}
	GAME_MANAGER.AddSceneEntityNotify(world.owner, proto.VisionType_VISION_TYPE_BORN, SCREEN_ENTITY_ID_LIST, true, false)
}
