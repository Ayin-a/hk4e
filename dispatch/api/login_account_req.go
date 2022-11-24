package api

type LoginAccountRequestJson struct {
	Account  string `json:"account"`
	Password string `json:"password"`
	IsCrypto bool   `json:"is_crypto"`
}
