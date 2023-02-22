package alg

import (
	"log"
	"testing"
)

func TestLLQueue(t *testing.T) {
	queue := NewLLQueue()
	queue.EnQueue(float32(100.123))
	queue.EnQueue(uint8(66))
	queue.EnQueue("aaa")
	queue.EnQueue(int64(-123456789))
	queue.EnQueue(true)
	queue.EnQueue(5)
	for queue.Len() > 0 {
		value := queue.DeQueue()
		log.Println(value)
	}
}

func TestALQueue(t *testing.T) {
	queue := NewALQueue[uint8]()
	queue.EnQueue(1)
	queue.EnQueue(2)
	queue.EnQueue(8)
	queue.EnQueue(9)
	for queue.Len() > 0 {
		value := queue.DeQueue()
		log.Println(value)
	}
}

func TestRAQueue(t *testing.T) {
	queue := NewRAQueue[uint8](1000)
	queue.EnQueue(1)
	queue.EnQueue(2)
	queue.EnQueue(8)
	queue.EnQueue(9)
	for queue.Len() > 0 {
		value := queue.DeQueue()
		log.Println(value)
	}
}

func BenchmarkLLQueue(b *testing.B) {
	data := ""
	for i := 0; i < 1024; i++ {
		data += "X"
	}
	queue := NewLLQueue()
	for i := 0; i < b.N; i++ {
		for i := 0; i < 100; i++ {
			queue.EnQueue(&data)
		}
		for i := 0; i < 100; i++ {
			queue.DeQueue()
		}
	}
}

func BenchmarkALQueue(b *testing.B) {
	data := ""
	for i := 0; i < 1024; i++ {
		data += "X"
	}
	queue := NewALQueue[*string]()
	for i := 0; i < b.N; i++ {
		for i := 0; i < 100; i++ {
			queue.EnQueue(&data)
		}
		for i := 0; i < 100; i++ {
			queue.DeQueue()
		}
	}
}

func BenchmarkRAQueue(b *testing.B) {
	data := ""
	for i := 0; i < 1024; i++ {
		data += "X"
	}
	queue := NewRAQueue[*string](1000)
	for i := 0; i < b.N; i++ {
		for i := 0; i < 100; i++ {
			queue.EnQueue(&data)
		}
		for i := 0; i < 100; i++ {
			queue.DeQueue()
		}
	}
}
