package alg

// Vector2 二维向量
type Vector2 struct {
	X float32
	Z float32
}

// Vector3 三维向量
type Vector3 struct {
	X float32
	Y float32
	Z float32
}

// Vector2Add 二维向量加
func Vector2Add(v1 *Vector2, v2 *Vector2) *Vector2 {
	v3 := new(Vector2)
	v3.X = v1.X + v2.X
	v3.Z = v1.Z + v2.Z
	return v3
}

// Vector2Sub 二维向量减
func Vector2Sub(v1 *Vector2, v2 *Vector2) *Vector2 {
	v3 := new(Vector2)
	v3.X = v1.X - v2.X
	v3.Z = v1.Z - v2.Z
	return v3
}

// Vector2DotProd 二维向量点乘
func Vector2DotProd(v1 *Vector2, v2 *Vector2) float32 {
	return v1.X*v2.X + v1.Z*v2.Z
}

// Vector3Add 三维向量加
func Vector3Add(v1 *Vector3, v2 *Vector3) *Vector3 {
	v3 := new(Vector3)
	v3.X = v1.X + v2.X
	v3.Y = v1.Y + v2.Y
	v3.Z = v1.Z + v2.Z
	return v3
}

// Vector3Sub 三维向量减
func Vector3Sub(v1 *Vector3, v2 *Vector3) *Vector3 {
	v3 := new(Vector3)
	v3.X = v1.X - v2.X
	v3.Y = v1.Y - v2.Y
	v3.Z = v1.Z - v2.Z
	return v3
}

// Vector3DotProd 三维向量点乘
func Vector3DotProd(v1 *Vector3, v2 *Vector3) float32 {
	return v1.X*v2.X + v1.Y*v2.Y + v1.Z*v2.Z
}

// Vector3CrossProd 三维向量叉乘
func Vector3CrossProd(v1 *Vector3, v2 *Vector3) *Vector3 {
	v3 := new(Vector3)
	v3.X = v1.Y*v2.Z - v2.Y*v1.Z
	v3.Y = v2.X*v1.Z - v2.Z*v1.X
	v3.Z = v1.X*v2.Y - v2.X*v1.Y
	return v3
}
