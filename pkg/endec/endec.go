package endec

import (
	"bytes"
	"crypto"
	"crypto/aes"
	"crypto/cipher"
	"crypto/md5"
	"crypto/rand"
	"crypto/rsa"
	"crypto/sha1"
	"crypto/sha256"
	"crypto/x509"
	"encoding/hex"
	"encoding/pem"
	"errors"
	"hash"
)

func RsaParsePubKey(pubKeyPem []byte) (*rsa.PublicKey, error) {
	block, _ := pem.Decode(pubKeyPem)
	if block == nil {
		return nil, errors.New("invalid rsa public key")
	}
	pubInfo, err := x509.ParsePKIXPublicKey(block.Bytes)
	if err != nil {
		return nil, err
	}
	pubKey := pubInfo.(*rsa.PublicKey)
	return pubKey, nil
}

func RsaParsePubKeyByPrivKey(privKeyPem []byte) (*rsa.PublicKey, error) {
	block, _ := pem.Decode(privKeyPem)
	if block == nil {
		return nil, errors.New("invalid rsa private key")
	}
	privKey, err := x509.ParsePKCS1PrivateKey(block.Bytes)
	if err != nil {
		return nil, err
	}
	return &privKey.PublicKey, nil
}

func RsaParsePrivKey(privKeyPem []byte) (*rsa.PrivateKey, error) {
	block, _ := pem.Decode(privKeyPem)
	if block == nil {
		return nil, errors.New("invalid rsa private key")
	}
	privKey, err := x509.ParsePKCS1PrivateKey(block.Bytes)
	if err != nil {
		return nil, err
	}
	return privKey, nil
}

func RsaEncrypt(rawData []byte, pubKey *rsa.PublicKey) (encData []byte, err error) {
	return rsa.EncryptPKCS1v15(rand.Reader, pubKey, rawData)
}

func RsaDecrypt(encData []byte, privKey *rsa.PrivateKey) (decData []byte, err error) {
	return rsa.DecryptPKCS1v15(rand.Reader, privKey, encData)
}

func RsaSign(rawData []byte, privKey *rsa.PrivateKey) (signData []byte, err error) {
	msgHash := sha256.New()
	_, err = msgHash.Write(rawData)
	if err != nil {
		return nil, err
	}
	msgHashSum := msgHash.Sum(nil)
	signData, err = rsa.SignPKCS1v15(rand.Reader, privKey, crypto.SHA256, msgHashSum)
	if err != nil {
		return nil, err
	}
	return signData, nil
}

func RsaVerify(rawData []byte, signData []byte, pubKey *rsa.PublicKey) (ok bool, err error) {
	msgHash := sha256.New()
	_, err = msgHash.Write(rawData)
	if err != nil {
		return false, err
	}
	msgHashSum := msgHash.Sum(nil)
	err = rsa.VerifyPKCS1v15(pubKey, crypto.SHA256, msgHashSum, signData)
	if err != nil {
		return false, err
	}
	return true, nil
}

func AesCFBEncrypt(rawData []byte, key []byte, iv []byte) (encData []byte, err error) {
	block, err := aes.NewCipher(key)
	if err != nil {
		return nil, err
	}
	encData = make([]byte, len(rawData))
	if iv == nil {
		iv = make([]byte, aes.BlockSize)
	}
	stream := cipher.NewCFBEncrypter(block, iv)
	stream.XORKeyStream(encData, rawData)
	return encData, nil
}

func AesCFBDecrypt(encData []byte, key []byte, iv []byte) (decData []byte, err error) {
	block, err := aes.NewCipher(key)
	if err != nil {
		return nil, err
	}
	if iv == nil {
		iv = make([]byte, aes.BlockSize)
	}
	stream := cipher.NewCFBDecrypter(block, iv)
	decData = make([]byte, len(encData))
	stream.XORKeyStream(decData, encData)
	return decData, nil
}

func AesCBCEncrypt(rawData []byte, key []byte, iv []byte) (encData []byte, err error) {
	block, err := aes.NewCipher(key)
	if err != nil {
		return nil, err
	}
	paddingChar := block.BlockSize() - len(rawData)%block.BlockSize()
	paddingData := bytes.Repeat([]byte{byte(paddingChar)}, paddingChar)
	rawData = append(rawData, paddingData...)
	encData = make([]byte, len(rawData))
	if iv == nil {
		iv = make([]byte, aes.BlockSize)
	}
	blockMode := cipher.NewCBCEncrypter(block, iv)
	blockMode.CryptBlocks(encData, rawData)
	return encData, nil
}

func AesCBCDecrypt(encData []byte, key []byte, iv []byte) (decData []byte, err error) {
	block, err := aes.NewCipher(key)
	if err != nil {
		return nil, err
	}
	if iv == nil {
		iv = make([]byte, aes.BlockSize)
	}
	blockMode := cipher.NewCBCDecrypter(block, iv)
	decData = make([]byte, len(encData))
	blockMode.CryptBlocks(decData, encData)
	paddingChar := int(decData[len(decData)-1])
	decData = decData[:len(decData)-paddingChar]
	return decData, nil
}

func Sha1Str(inputStr string) string {
	h := sha1.New()
	return hashStr(h, inputStr)
}

func Sha256Str(inputStr string) string {
	h := sha256.New()
	return hashStr(h, inputStr)
}

func Md5Str(inputStr string) string {
	h := md5.New()
	return hashStr(h, inputStr)
}

func hashStr(h hash.Hash, inputStr string) string {
	h.Write([]byte(inputStr))
	return hex.EncodeToString(h.Sum(nil))
}

func Xor(data []byte, key []byte) {
	for i := 0; i < len(data); i++ {
		data[i] ^= key[i%len(key)]
	}
}

func Hk4eAbilityHashCode(ability string) int32 {
	hashCode := int32(0)
	for i := 0; i < len(ability); i++ {
		hashCode = int32(ability[i]) + 131*hashCode
	}
	return hashCode
}
