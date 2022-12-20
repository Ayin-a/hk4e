package model

import "math"

type Vector struct {
	X float64 `bson:"x"`
	Y float64 `bson:"y"`
	Z float64 `bson:"z"`
}

// Distance 两坐标之间的距离
func (v *Vector) Distance(vector *Vector) float64 {
	return math.Sqrt(math.Pow(v.X-vector.X, 2) + math.Pow(v.Y-vector.Y, 2) + math.Pow(v.Z-vector.Z, 2))
}
