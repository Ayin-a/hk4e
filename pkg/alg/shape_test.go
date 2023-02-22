package alg

import (
	"log"
	"testing"
	"time"
)

func TestShape(t *testing.T) {
	shape := NewShape()
	shape.NewCubic(&Vector3{X: 5.0, Y: 0.0, Z: 5.0}, &Vector3{X: 5.0, Y: 10.0, Z: 5.0})
	shape.NewSphere(&Vector3{X: -10.0, Y: -10.0, Z: -10.0}, 10.0)
	shape.NewCylinder(&Vector3{X: 0.0, Y: 0.0, Z: 0.0}, 3.0, 5.0)
	shape.NewPolygon(&Vector3{X: 0.0, Y: 0.0, Z: 0.0}, []*Vector2{
		{X: 10.0, Z: 10.0},
		{X: 20.0, Z: 0.0},
		{X: 10.0, Z: -10.0},
		{X: -10.0, Z: -10.0},
		{X: -20.0, Z: 0.0},
		{X: -10.0, Z: 10.0},
	}, 10.0)
	contain := shape.Contain(&Vector3{X: 5.0, Y: 0.0, Z: 5.0})
	log.Printf("contain: %v\n", contain)
	startTime := time.Now().UnixNano()
	for i := 0; i < 1000*1000*10; i++ {
		shape.Contain(&Vector3{X: 999.9, Y: 888.8, Z: 777.7})
	}
	endTime := time.Now().UnixNano()
	log.Printf("avg cost time: %v ns\n", (endTime-startTime)/(1000*1000*10))
	shape.Clear()
	shape.NewPolygon(&Vector3{X: 0.0, Y: 0.0, Z: 0.0}, []*Vector2{
		{X: 1.0, Z: 1.0},
		{X: 2.0, Z: 0.0},
		{X: 1.0, Z: -1.0},
		{X: -1.0, Z: -1.0},
		{X: -2.0, Z: 0.0},
		{X: -1.0, Z: 1.0},
	}, 10.0)
	polygonContain := shape.Contain(&Vector3{X: 0.1, Y: 0.0, Z: 0.1})
	log.Printf("polygon contain: %v\n", polygonContain)
}
