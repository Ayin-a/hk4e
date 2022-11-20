package logger

import (
	"bytes"
	"flswld.com/common/config"
	"fmt"
	"os"
	"path"
	"runtime"
	"strconv"
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

var LOG *Logger = nil

type Logger struct {
	level           int
	method          int
	trackLine       bool
	file            *os.File
	chanLogBaseInfo chan logBaseInfo
}

type logBaseInfo struct {
	logLevel    int
	msg         string
	anySlice    []any
	fileInfo    string
	funcInfo    string
	lineInfo    int
	goroutineId string
}

func InitLogger() {
	LOG = new(Logger)
	LOG.level = getLevelInt(config.CONF.Logger.Level)
	LOG.method = getMethodInt(config.CONF.Logger.Method)
	LOG.trackLine = config.CONF.Logger.TrackLine
	LOG.chanLogBaseInfo = make(chan logBaseInfo)
	if LOG.method == FILE || LOG.method == BOTH {
		file, err := os.OpenFile("./log.log", os.O_CREATE|os.O_WRONLY|os.O_APPEND, 0644)
		if err != nil {
			panic(fmt.Errorf("open file failed ! err: %v", err))
		}
		LOG.file = file
	}
	go LOG.doLog()
}

func (l *Logger) doLog() {
	for {
		baseInfo := <-l.chanLogBaseInfo

		timeNow := time.Now()
		timeNowStr := timeNow.Format("2006-01-02 15:04:05.000")

		var logInfoStr = "[" + timeNowStr + "]" + " " +
			"[" + l.getLevelStr(baseInfo.logLevel) + "]" + " "
		if l.trackLine {
			logInfoStr += "[" +
				"line:" + baseInfo.fileInfo + ":" + strconv.FormatInt(int64(baseInfo.lineInfo), 10) +
				" func:" + baseInfo.funcInfo +
				" goroutine:" + baseInfo.goroutineId +
				"]" + " "
		}

		logStr := fmt.Sprint(logInfoStr)
		logStr += fmt.Sprintf(baseInfo.msg, baseInfo.anySlice...)
		logStr += fmt.Sprintln()

		red := string([]byte{27, 91, 51, 49, 109})
		reset := string([]byte{27, 91, 48, 109})
		if l.method == CONSOLE {
			if baseInfo.logLevel == ERROR {
				fmt.Print(red, logStr, reset)
			} else {
				fmt.Print(logStr)
			}
		} else if l.method == FILE {
			_, _ = l.file.WriteString(logStr)
		} else if l.method == BOTH {
			if baseInfo.logLevel == ERROR {
				fmt.Print(red, logStr, reset)
			} else {
				fmt.Print(logStr)
			}
			_, _ = l.file.WriteString(logStr)
		}
	}
}

func (l *Logger) Debug(msg string, a ...any) {
	if l.level > DEBUG {
		return
	}
	baseInfo := new(logBaseInfo)
	baseInfo.logLevel = DEBUG
	baseInfo.msg = msg
	baseInfo.anySlice = a

	if l.trackLine {
		fileInfo, funcInfo, lineInfo := l.getLineInfo()
		baseInfo.fileInfo = fileInfo
		baseInfo.funcInfo = funcInfo
		baseInfo.lineInfo = lineInfo
		baseInfo.goroutineId = l.getGoroutineId()
	}

	l.chanLogBaseInfo <- *baseInfo
	return
}

func (l *Logger) Info(msg string, a ...any) {
	if l.level > INFO {
		return
	}
	baseInfo := new(logBaseInfo)
	baseInfo.logLevel = INFO
	baseInfo.msg = msg
	baseInfo.anySlice = a

	if l.trackLine {
		fileInfo, funcInfo, lineInfo := l.getLineInfo()
		baseInfo.fileInfo = fileInfo
		baseInfo.funcInfo = funcInfo
		baseInfo.lineInfo = lineInfo
		baseInfo.goroutineId = l.getGoroutineId()
	}

	l.chanLogBaseInfo <- *baseInfo
	return
}

func (l *Logger) Error(msg string, a ...any) {
	if l.level > ERROR {
		return
	}
	baseInfo := new(logBaseInfo)
	baseInfo.logLevel = ERROR
	baseInfo.msg = msg
	baseInfo.anySlice = a

	if l.trackLine {
		fileInfo, funcInfo, lineInfo := l.getLineInfo()
		baseInfo.fileInfo = fileInfo
		baseInfo.funcInfo = funcInfo
		baseInfo.lineInfo = lineInfo
		baseInfo.goroutineId = l.getGoroutineId()
	}

	l.chanLogBaseInfo <- *baseInfo
	return
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
	staticInfo := make([]byte, 32)
	runtime.Stack(staticInfo, false)
	staticInfo = bytes.TrimPrefix(staticInfo, []byte("goroutine "))
	staticInfo = staticInfo[:bytes.IndexByte(staticInfo, ' ')]
	goroutineId = string(staticInfo)
	return goroutineId
}

func (l *Logger) getLineInfo() (fileName string, funcName string, lineNo int) {
	pc, file, line, ok := runtime.Caller(2)
	if ok {
		fileName = path.Base(file)
		funcName = path.Base(runtime.FuncForPC(pc).Name())
		lineNo = line
	}
	return
}
