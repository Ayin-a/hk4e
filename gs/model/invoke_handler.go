package model

import (
	"hk4e/pkg/logger"
	"hk4e/protocol/proto"
)

// 泛型通用转发器

type InvokeType interface {
	proto.AbilityInvokeEntry | proto.CombatInvokeEntry
}

type InvokeHandler[T InvokeType] struct {
	EntryListForwardAll          []*T
	EntryListForwardAllExceptCur []*T
	EntryListForwardHost         []*T
}

func NewInvokeHandler[T InvokeType]() (r *InvokeHandler[T]) {
	r = new(InvokeHandler[T])
	r.InitInvokeHandler()
	return r
}

func (i *InvokeHandler[T]) InitInvokeHandler() {
	i.EntryListForwardAll = make([]*T, 0)
	i.EntryListForwardAllExceptCur = make([]*T, 0)
	i.EntryListForwardHost = make([]*T, 0)
}

func (i *InvokeHandler[T]) AddEntry(forward proto.ForwardType, entry *T) {
	switch forward {
	case proto.ForwardType_FORWARD_TYPE_TO_ALL:
		i.EntryListForwardAll = append(i.EntryListForwardAll, entry)
	case proto.ForwardType_FORWARD_TYPE_TO_ALL_EXCEPT_CUR:
		fallthrough
	case proto.ForwardType_FORWARD_TYPE_TO_ALL_EXIST_EXCEPT_CUR:
		i.EntryListForwardAllExceptCur = append(i.EntryListForwardAllExceptCur, entry)
	case proto.ForwardType_FORWARD_TYPE_TO_HOST:
		i.EntryListForwardHost = append(i.EntryListForwardHost, entry)
	default:
		if forward != proto.ForwardType_FORWARD_TYPE_ONLY_SERVER {
			logger.LOG.Error("forward: %v, entry: %v", forward, entry)
		}
	}
}

func (i *InvokeHandler[T]) AllLen() int {
	return len(i.EntryListForwardAll)
}

func (i *InvokeHandler[T]) AllExceptCurLen() int {
	return len(i.EntryListForwardAllExceptCur)
}

func (i *InvokeHandler[T]) HostLen() int {
	return len(i.EntryListForwardHost)
}
