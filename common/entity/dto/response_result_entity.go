package dto

type ResponseResult struct {
	Code int32  `json:"code"`
	Msg  string `json:"msg"`
	Data any    `json:"data,omitempty"`
}

func NewResponseResult(code int32, msg string, data any) (r *ResponseResult) {
	r = new(ResponseResult)
	r.Code = code
	r.Msg = msg
	r.Data = data
	return r
}
