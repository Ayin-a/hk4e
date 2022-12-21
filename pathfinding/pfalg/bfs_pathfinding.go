package pfalg

import (
	"hk4e/pkg/alg"
)

const (
	NODE_NONE = iota
	NODE_START
	NODE_END
	NODE_BLOCK
)

type PathNode struct {
	x      int16
	y      int16
	z      int16
	visit  bool
	state  int
	parent *PathNode
}

type BFS struct {
	gMap          map[int16]map[int16]map[int16]*PathNode
	startPathNode *PathNode
	endPathNode   *PathNode
}

func NewBFS() (r *BFS) {
	r = new(BFS)
	return r
}

func (b *BFS) InitMap(terrain map[MeshVector]bool, start MeshVector, end MeshVector, extR int16) {
	xLen := end.X - start.X
	yLen := end.Y - start.Y
	zLen := end.Z - start.Z
	dx := int16(1)
	dy := int16(1)
	dz := int16(1)
	if xLen < 0 {
		dx = -1
		xLen *= -1
	}
	if yLen < 0 {
		dy = -1
		yLen *= -1
	}
	if zLen < 0 {
		dz = -1
		zLen *= -1
	}
	b.gMap = make(map[int16]map[int16]map[int16]*PathNode)
	for x := start.X - extR*dx; x != end.X+extR*dx; x += dx {
		b.gMap[x] = make(map[int16]map[int16]*PathNode)
		for y := start.Y - extR*dy; y != end.Y+extR*dy; y += dy {
			b.gMap[x][y] = make(map[int16]*PathNode)
			for z := start.Z - extR*dz; z != end.Z+extR*dz; z += dz {
				state := -1
				if x == start.X && y == start.Y && z == start.Z {
					state = NODE_START
				} else if x == end.X && y == end.Y && z == end.Z {
					state = NODE_END
				} else {
					_, exist := terrain[MeshVector{
						X: x,
						Y: y,
						Z: z,
					}]
					if exist {
						state = NODE_NONE
					} else {
						state = NODE_BLOCK
					}
				}
				node := &PathNode{
					x:      x,
					y:      y,
					z:      z,
					visit:  false,
					state:  state,
					parent: nil,
				}
				b.gMap[x][y][z] = node
				if node.state == NODE_START {
					b.startPathNode = node
				} else if node.state == NODE_END {
					b.endPathNode = node
				}
			}
		}
	}
}

func (b *BFS) GetNeighbor(node *PathNode) []*PathNode {
	neighborList := make([]*PathNode, 0)
	dir := [][3]int16{
		//
		{1, 0, 0},
		{-1, 0, 0},
		{0, 1, 0},
		{0, -1, 0},
		{0, 0, 1},
		{0, 0, -1},
		//
		{1, 1, 0},
		{-1, 1, 0},
		{-1, -1, 0},
		{1, -1, 0},
		//
		{1, 0, 1},
		{-1, 0, 1},
		{-1, 0, -1},
		{1, 0, -1},
		//
		{0, 1, 1},
		{0, -1, 1},
		{0, -1, -1},
		{0, 1, -1},
		//
		{1, 1, 1},
		{1, 1, -1},
		{1, -1, 1},
		{1, -1, -1},
		{-1, 1, 1},
		{-1, 1, -1},
		{-1, -1, 1},
		{-1, -1, -1},
	}
	for _, v := range dir {
		x := node.x + v[0]
		y := node.y + v[1]
		z := node.z + v[2]
		if _, exist := b.gMap[x]; !exist {
			continue
		}
		if _, exist := b.gMap[x][y]; !exist {
			continue
		}
		if _, exist := b.gMap[x][y][z]; !exist {
			continue
		}
		neighborNode := b.gMap[x][y][z]
		neighborList = append(neighborList, neighborNode)
	}
	return neighborList
}

func (b *BFS) GetPath() []*PathNode {
	path := make([]*PathNode, 0)
	if b.endPathNode.parent == nil {
		return nil
	}
	node := b.endPathNode
	for {
		if node == nil {
			break
		}
		path = append(path, node)
		node = node.parent
	}
	if len(path) == 0 {
		return nil
	}
	return path
}

func (b *BFS) Pathfinding() []MeshVector {
	queue := alg.NewALQueue[*PathNode]()
	b.startPathNode.visit = true
	queue.EnQueue(b.startPathNode)
	for queue.Len() > 0 {
		head := queue.DeQueue()
		neighborList := b.GetNeighbor(head)
		for _, neighbor := range neighborList {
			if !neighbor.visit && neighbor.state != NODE_BLOCK {
				neighbor.visit = true
				neighbor.parent = head
				queue.EnQueue(neighbor)
				if neighbor.state == NODE_END {
					break
				}
			}
		}
	}
	path := b.GetPath()
	if path == nil {
		return nil
	}
	pathVectorList := make([]MeshVector, 0)
	for i := len(path) - 1; i >= 0; i-- {
		node := path[i]
		pathVectorList = append(pathVectorList, MeshVector{
			X: node.x,
			Y: node.y,
			Z: node.z,
		})
	}
	return pathVectorList
}
