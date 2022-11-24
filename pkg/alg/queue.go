package alg

type LinkList struct {
	value     any
	frontNode *LinkList
	nextNode  *LinkList
}

// LinkListQueue 无界队列 每个元素可存储不同数据结构
type LLQueue struct {
	headPtr *LinkList
	tailPtr *LinkList
	len     uint64
}

func NewLLQueue() *LLQueue {
	return &LLQueue{
		headPtr: nil,
		tailPtr: nil,
		len:     0,
	}
}

func (q *LLQueue) Len() uint64 {
	return q.len
}

func (q *LLQueue) EnQueue(value any) {
	if q.headPtr == nil || q.tailPtr == nil {
		q.headPtr = new(LinkList)
		q.tailPtr = q.headPtr
	} else {
		q.tailPtr.nextNode = new(LinkList)
		q.tailPtr.nextNode.frontNode = q.tailPtr
		q.tailPtr = q.tailPtr.nextNode
	}
	q.tailPtr.value = value
	q.len++
}

func (q *LLQueue) DeQueue() any {
	if q.Len() == 0 || q.headPtr == nil {
		return nil
	}
	ret := q.headPtr.value
	q.len--
	q.headPtr = q.headPtr.nextNode
	return ret
}

// ArrayListQueue 无界队列 泛型
type ALQueue[T any] struct {
	array []T
}

func NewALQueue[T any]() *ALQueue[T] {
	return &ALQueue[T]{
		array: make([]T, 0),
	}
}

func (q *ALQueue[T]) Len() uint64 {
	return uint64(len(q.array))
}

func (q *ALQueue[T]) EnQueue(value T) {
	q.array = append(q.array, value)
}

func (q *ALQueue[T]) DeQueue() T {
	if q.Len() == 0 {
		var null T
		return null
	}
	ret := q.array[0]
	q.array = q.array[1:]
	return ret
}

// RingArrayQueue 有界队列 性能最好
type RAQueue[T any] struct {
	ringArray    []T
	ringArrayLen uint64
	headPtr      uint64
	tailPtr      uint64
	len          uint64
}

func NewRAQueue[T any](size uint64) *RAQueue[T] {
	return &RAQueue[T]{
		ringArray:    make([]T, size),
		ringArrayLen: size,
		headPtr:      0,
		tailPtr:      0,
		len:          0,
	}
}

func (q *RAQueue[T]) Len() uint64 {
	return q.len
}

func (q *RAQueue[T]) EnQueue(value T) {
	if q.len >= q.ringArrayLen {
		return
	}
	q.ringArray[q.tailPtr] = value
	q.tailPtr++
	if q.tailPtr >= q.ringArrayLen {
		q.tailPtr = 0
	}
	q.len++
}

func (q *RAQueue[T]) DeQueue() T {
	if q.Len() == 0 {
		var null T
		return null
	}
	ret := q.ringArray[q.headPtr]
	q.headPtr++
	if q.headPtr >= q.ringArrayLen {
		q.headPtr = 0
	}
	q.len--
	return ret
}
