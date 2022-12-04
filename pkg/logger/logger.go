package logger

import (
	"bytes"
	"fmt"
	"log"
	"os"
	"path"
	"runtime"
	"strconv"
	"strings"
	"time"
)

const (
	DEBUG   int = 1
	INFO    int = 2
	ERROR   int = 3
	UNKNOWN int = 4
)

const (
	CONSOLE int = 1
	FILE    int = 2
	BOTH    int = 3
	NEITHER int = 4
)

type Config struct {
	Level     string `toml:"level"`
	Method    string `toml:"method"`
	TrackLine bool   `toml:"track_line"`
}

var LOG *Logger = nil

type Logger struct {
	Level       int
	Method      int
	TrackLine   bool
	File        *os.File
	LogInfoChan chan *LogInfo
}

type LogInfo struct {
	Level       int
	Msg         string
	Param       []any
	FileName    string
	FuncName    string
	Line        int
	GoroutineId string
	Stack       string
}

func InitLogger(name string, cfg Config) {
	log.SetFlags(0)
	LOG = new(Logger)
	LOG.Level = getLevelInt(cfg.Level)
	LOG.Method = getMethodInt(cfg.Method)
	LOG.TrackLine = cfg.TrackLine
	LOG.LogInfoChan = make(chan *LogInfo, 1000)
	if LOG.Method == FILE || LOG.Method == BOTH {
		file, err := os.OpenFile("./"+name+".log", os.O_CREATE|os.O_WRONLY|os.O_APPEND, 0644)
		if err != nil {
			info := fmt.Sprintf("open log file error: %v\n", err)
			panic(info)
		}
		LOG.File = file
	}
	go LOG.doLog()
}

var GREEN = string([]byte{27, 91, 51, 50, 109})
var WHITE = string([]byte{27, 91, 51, 55, 109})
var YELLOW = string([]byte{27, 91, 51, 51, 109})
var RED = string([]byte{27, 91, 51, 49, 109})
var BLUE = string([]byte{27, 91, 51, 52, 109})
var MAGENTA = string([]byte{27, 91, 51, 53, 109})
var CYAN = string([]byte{27, 91, 51, 54, 109})
var RESET = string([]byte{27, 91, 48, 109})

func (l *Logger) doLog() {
	for {
		logInfo := <-l.LogInfoChan
		timeNow := time.Now()
		timeNowStr := timeNow.Format("2006-01-02 15:04:05.000")
		logHeader := CYAN + "[" + timeNowStr + "]" + RESET + " "
		if logInfo.Level == DEBUG {
			logHeader += BLUE + "[" + l.getLevelStr(logInfo.Level) + "]" + RESET + " "
		} else if logInfo.Level == INFO {
			logHeader += GREEN + "[" + l.getLevelStr(logInfo.Level) + "]" + RESET + " "
		} else if logInfo.Level == ERROR {
			logHeader += RED + "[" + l.getLevelStr(logInfo.Level) + "]" + RESET + " "
		}
		if l.TrackLine {
			logHeader += MAGENTA + "[" +
				logInfo.FileName + ":" + strconv.Itoa(logInfo.Line) + " " +
				logInfo.FuncName + "()" + " " +
				"goroutine:" + logInfo.GoroutineId +
				"]" + RESET + " "
		}
		logStr := logHeader + fmt.Sprintf(logInfo.Msg, logInfo.Param...) + "\n"
		if logInfo.Level == ERROR {
			logStr += logInfo.Stack
		}
		if l.Method == CONSOLE {
			log.Print(logStr)
		} else if l.Method == FILE {
			_, _ = l.File.WriteString(logStr)
		} else if l.Method == BOTH {
			log.Print(logStr)
			_, _ = l.File.WriteString(logStr)
		}
	}
}

func (l *Logger) Debug(msg string, param ...any) {
	if l.Level > DEBUG {
		return
	}
	logInfo := new(LogInfo)
	logInfo.Level = DEBUG
	logInfo.Msg = msg
	logInfo.Param = param
	if l.TrackLine {
		logInfo.FileName, logInfo.Line, logInfo.FuncName = l.getLineFunc()
		logInfo.GoroutineId = l.getGoroutineId()
		logInfo.Stack = l.Stack()
	}
	l.LogInfoChan <- logInfo
}

func (l *Logger) Info(msg string, param ...any) {
	if l.Level > INFO {
		return
	}
	logInfo := new(LogInfo)
	logInfo.Level = INFO
	logInfo.Msg = msg
	logInfo.Param = param
	if l.TrackLine {
		logInfo.FileName, logInfo.Line, logInfo.FuncName = l.getLineFunc()
		logInfo.GoroutineId = l.getGoroutineId()
		logInfo.Stack = l.Stack()
	}
	l.LogInfoChan <- logInfo
}

func (l *Logger) Error(msg string, param ...any) {
	if l.Level > ERROR {
		return
	}
	logInfo := new(LogInfo)
	logInfo.Level = ERROR
	logInfo.Msg = msg
	logInfo.Param = param
	if l.TrackLine {
		logInfo.FileName, logInfo.Line, logInfo.FuncName = l.getLineFunc()
		logInfo.GoroutineId = l.getGoroutineId()
		logInfo.Stack = l.Stack()
	}
	l.LogInfoChan <- logInfo
}

func getLevelInt(level string) (ret int) {
	switch level {
	case "DEBUG":
		ret = DEBUG
	case "INFO":
		ret = INFO
	case "ERROR":
		ret = ERROR
	default:
		ret = UNKNOWN
	}
	return ret
}

func (l *Logger) getLevelStr(level int) (ret string) {
	switch level {
	case DEBUG:
		ret = "DEBUG"
	case INFO:
		ret = "INFO"
	case ERROR:
		ret = "ERROR"
	}
	return ret
}

func getMethodInt(method string) (ret int) {
	switch method {
	case "CONSOLE":
		ret = CONSOLE
	case "FILE":
		ret = FILE
	case "BOTH":
		ret = BOTH
	default:
		ret = NEITHER
	}
	return ret
}

func (l *Logger) getGoroutineId() (goroutineId string) {
	buf := make([]byte, 32)
	runtime.Stack(buf, false)
	buf = bytes.TrimPrefix(buf, []byte("goroutine "))
	buf = buf[:bytes.IndexByte(buf, ' ')]
	goroutineId = string(buf)
	return goroutineId
}

func (l *Logger) getLineFunc() (fileName string, line int, funcName string) {
	var pc uintptr
	var file string
	var ok bool
	pc, file, line, ok = runtime.Caller(2)
	if !ok {
		return "???", -1, "???"
	}
	fileName = path.Base(file)
	funcName = runtime.FuncForPC(pc).Name()
	split := strings.Split(funcName, ".")
	if len(split) != 0 {
		funcName = split[len(split)-1]
	}
	return fileName, line, funcName
}

func (l *Logger) Stack() string {
	buf := make([]byte, 1024)
	for {
		n := runtime.Stack(buf, false)
		if n < len(buf) {
			return string(buf[:n])
		}
		buf = make([]byte, 2*len(buf))
	}
}

func (l *Logger) StackAll() string {
	buf := make([]byte, 1024*16)
	for {
		n := runtime.Stack(buf, true)
		if n < len(buf) {
			return string(buf[:n])
		}
		buf = make([]byte, 2*len(buf))
	}
}
