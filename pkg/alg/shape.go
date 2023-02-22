package alg

import (
	"math"
)

// 空间形状检测
// 默认为左手坐标系 Y轴向上 兼容Unity3D

// Shape 形状
type Shape struct {
	region []RegionShape // 构成整个区域的组合形状集合
}

// NewShape 新建形状对象
func NewShape() (r *Shape) {
	r = new(Shape)
	r.region = make([]RegionShape, 0)
	return r
}

// RegionShape 形状抽象接口
type RegionShape interface {
}

// RegionCubic 立方体
type RegionCubic struct {
	pos  *Vector3 // 几何中心
	size *Vector3 // 三维尺寸
}

// NewCubic 新建立方体
func (s *Shape) NewCubic(pos *Vector3, size *Vector3) {
	if pos == nil || size == nil || size.X <= 0.0 || size.Y <= 0.0 || size.Z <= 0.0 {
		return
	}
	regionCubic := &RegionCubic{
		pos:  &Vector3{X: pos.X, Y: pos.Y, Z: pos.Z},
		size: &Vector3{X: size.X, Y: size.Y, Z: size.Z},
	}
	s.region = append(s.region, regionCubic)
}

// RegionSphere 球体
type RegionSphere struct {
	pos    *Vector3 // 球心
	radius float32  // 半径
}

// NewSphere 新建球体
func (s *Shape) NewSphere(pos *Vector3, radius float32) {
	if pos == nil || radius <= 0.0 {
		return
	}
	regionSphere := &RegionSphere{
		pos:    &Vector3{X: pos.X, Y: pos.Y, Z: pos.Z},
		radius: radius,
	}
	s.region = append(s.region, regionSphere)
}

// RegionCylinder 圆柱体
type RegionCylinder struct {
	pos    *Vector3 // 几何中心
	radius float32  // 半径
	height float32  // 高度
}

// NewCylinder 新建圆柱体
func (s *Shape) NewCylinder(pos *Vector3, radius float32, height float32) {
	if pos == nil || radius <= 0.0 || height <= 0.0 {
		return
	}
	regionCylinder := &RegionCylinder{
		pos:    &Vector3{X: pos.X, Y: pos.Y, Z: pos.Z},
		radius: radius,
		height: height,
	}
	s.region = append(s.region, regionCylinder)
}

// RegionPolygon 空间多边形
type RegionPolygon struct {
	pos        *Vector3   // 几何中心
	pointArray []*Vector2 // 多边形平面顶点数组
	height     float32    // 高度
}

// NewPolygon 新建空间多边形
func (s *Shape) NewPolygon(pos *Vector3, pointArray []*Vector2, height float32) {
	if pos == nil || pointArray == nil || len(pointArray) < 3 || height <= 0.0 {
		return
	}
	regionPolygon := &RegionPolygon{
		pos:        &Vector3{X: pos.X, Y: pos.Y, Z: pos.Z},
		pointArray: make([]*Vector2, 0),
		height:     height,
	}
	for _, vector2 := range pointArray {
		regionPolygon.pointArray = append(regionPolygon.pointArray, &Vector2{X: vector2.X, Z: vector2.Z})
	}
	s.region = append(s.region, regionPolygon)
}

// Clear 清除组合形状
func (s *Shape) Clear() {
	s.region = make([]RegionShape, 0)
}

// Contain 检测一个点是否在组合区域内
func (s *Shape) Contain(pos *Vector3) bool {
	for _, shape := range s.region {
		switch shape.(type) {
		case *RegionCubic:
			cubic := shape.(*RegionCubic)
			contain := regionCubicContainPos(cubic, pos)
			if contain {
				return true
			}
		case *RegionSphere:
			sphere := shape.(*RegionSphere)
			contain := regionSphereContainPos(sphere, pos)
			if contain {
				return true
			}
		case *RegionCylinder:
			cylinder := shape.(*RegionCylinder)
			contain := regionCylinderContainPos(cylinder, pos)
			if contain {
				return true
			}
		case *RegionPolygon:
			polygon := shape.(*RegionPolygon)
			contain := regionPolygonContainPos(polygon, pos)
			if contain {
				return true
			}
		default:
			return false
		}
	}
	return false
}

// 检测一个点是否在立方体内
func regionCubicContainPos(cubic *RegionCubic, pos *Vector3) bool {
	cubicMinX := cubic.pos.X - cubic.size.X
	cubicMinY := cubic.pos.Y - cubic.size.Y
	cubicMinZ := cubic.pos.Z - cubic.size.Z
	cubicMaxX := cubic.pos.X + cubic.size.X
	cubicMaxY := cubic.pos.Y + cubic.size.Y
	cubicMaxZ := cubic.pos.Z + cubic.size.Z
	if (pos.X > cubicMinX && pos.X < cubicMaxX) &&
		(pos.Y > cubicMinY && pos.Y < cubicMaxY) &&
		(pos.Z > cubicMinZ && pos.Z < cubicMaxZ) {
		return true
	} else {
		return false
	}
}

// 检测一个点是否在球体内
func regionSphereContainPos(sphere *RegionSphere, pos *Vector3) bool {
	distance3D := math.Sqrt(math.Pow(float64(sphere.pos.X-pos.X), 2) +
		math.Pow(float64(sphere.pos.Y-pos.Y), 2) +
		math.Pow(float64(sphere.pos.Z-pos.Z), 2))
	if float32(distance3D) < sphere.radius {
		return true
	} else {
		return false
	}
}

// 检测一个点是否在圆柱体内
func regionCylinderContainPos(cylinder *RegionCylinder, pos *Vector3) bool {
	distance2D := math.Sqrt(math.Pow(float64(cylinder.pos.X-pos.X), 2) +
		math.Pow(float64(cylinder.pos.Z-pos.Z), 2))
	if float32(distance2D) >= cylinder.radius {
		return false
	}
	cylinderMinY := cylinder.pos.Y - (cylinder.height / 2.0)
	cylinderMaxY := cylinder.pos.Y + (cylinder.height / 2.0)
	if pos.Y > cylinderMinY && pos.Y < cylinderMaxY {
		return true
	} else {
		return false
	}
}

// 检测一个点是否在空间多边形内
func regionPolygonContainPos(polygon *RegionPolygon, pos *Vector3) bool {
	contain := region2DPolygonContainPos(polygon.pointArray, &Vector2{X: pos.X, Z: pos.Z})
	if !contain {
		return false
	}
	polygonMinY := polygon.pos.Y - (polygon.height / 2.0)
	polygonMaxY := polygon.pos.Y + (polygon.height / 2.0)
	if pos.Y > polygonMinY && pos.Y < polygonMaxY {
		return true
	} else {
		return false
	}
}

// 检测一个点是否在平面多边形内
func region2DPolygonContainPos(pointArray []*Vector2, pos *Vector2) bool {
	convexPolygonList := make([][]*Vector2, 0)
	// TODO 凹多边形分割为多个凸多边形
	convexPolygonList = append(convexPolygonList, pointArray)
	for _, convexPolygon := range convexPolygonList {
		contain := region2DConvexPolygonContainPos(convexPolygon, pos)
		if contain {
			return true
		}
	}
	return false
}

// 检测一个点是否在平面凸多边形内
func region2DConvexPolygonContainPos(pointArray []*Vector2, pos *Vector2) bool {
	// 凸多边形分割为多个三角形
	for index := range pointArray {
		if index < 2 {
			continue
		}
		contain := inTriangle(pointArray[index], pointArray[index-1], pointArray[0], pos)
		if contain {
			return true
		}
	}
	return false
}

func inTriangle(a *Vector2, b *Vector2, c *Vector2, p *Vector2) bool {
	// 三角形顶点逆时针排序
	ab := Vector3Sub(&Vector3{X: b.X, Y: 0.0, Z: b.Z}, &Vector3{X: a.X, Y: 0.0, Z: a.Z})
	ac := Vector3Sub(&Vector3{X: c.X, Y: 0.0, Z: c.Z}, &Vector3{X: a.X, Y: 0.0, Z: a.Z})
	vp := Vector3CrossProd(ab, ac)
	if vp.Y > 0.0 {
		tmp := &Vector2{X: b.X, Z: b.Z}
		b = c
		c = tmp
	}
	return toLeft(a, b, c, p) && toLeft(b, c, a, p) && toLeft(c, a, b, p)
}

func toLeft(a *Vector2, b *Vector2, c *Vector2, p *Vector2) bool {
	ab := Vector3Sub(&Vector3{X: b.X, Y: 0.0, Z: b.Z}, &Vector3{X: a.X, Y: 0.0, Z: a.Z})
	ac := Vector3Sub(&Vector3{X: c.X, Y: 0.0, Z: c.Z}, &Vector3{X: a.X, Y: 0.0, Z: a.Z})
	ap := Vector3Sub(&Vector3{X: p.X, Y: 0.0, Z: p.Z}, &Vector3{X: a.X, Y: 0.0, Z: a.Z})
	v1 := Vector3CrossProd(ab, ac)
	v2 := Vector3CrossProd(ab, ap)
	dp := Vector3DotProd(v1, v2)
	return dp >= 0.0
}
