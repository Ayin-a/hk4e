package model

import "math"

type Vector struct {
	X float64
	Y float64
	Z float64
}

// Distance 两坐标之间的距离
func (v *Vector) Distance(vector *Vector) float64 {
	return math.Sqrt(math.Pow(v.X-vector.X, 2) + math.Pow(v.Y-vector.Y, 2) + math.Pow(v.Z-vector.Z, 2))
}
