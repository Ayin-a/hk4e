package logger

import (
	"bytes"
	"fmt"
	"hk4e/common/config"
	"log"
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
	level       int
	method      int
	trackLine   bool
	file        *os.File
	logInfoChan chan *LogInfo
}

type LogInfo struct {
	logLevel    int
	msg         string
	param       []any
	fileInfo    string
	funcInfo    string
	lineInfo    int
	goroutineId string
}

func InitLogger(name string) {
	log.SetFlags(0)
	LOG = new(Logger)
	LOG.level = getLevelInt(config.CONF.Logger.Level)
	LOG.method = getMethodInt(config.CONF.Logger.Method)
	LOG.trackLine = config.CONF.Logger.TrackLine
	LOG.logInfoChan = make(chan *LogInfo, 1000)
	if LOG.method == FILE || LOG.method == BOTH {
		file, err := os.OpenFile("./"+name+".log", os.O_CREATE|os.O_WRONLY|os.O_APPEND, 0644)
		if err != nil {
			info := fmt.Sprintf("open log file error: %v\n", err)
			panic(info)
		}
		LOG.file = file
	}
	go LOG.doLog()
}

func (l *Logger) doLog() {
	for {
		logInfo := <-l.logInfoChan
		timeNow := time.Now()
		timeNowStr := timeNow.Format("2006-01-02 15:04:05.000")
		logHeader := "[" + timeNowStr + "]" + " " +
			"[" + l.getLevelStr(logInfo.logLevel) + "]" + " "
		if l.trackLine {
			logHeader += "[" +
				"line:" + logInfo.fileInfo + ":" + strconv.FormatInt(int64(logInfo.lineInfo), 10) +
				" func:" + logInfo.funcInfo +
				" goroutine:" + logInfo.goroutineId +
				"]" + " "
		}
		logStr := logHeader + fmt.Sprintf(logInfo.msg, logInfo.param...) + "\n"
		red := string([]byte{27, 91, 51, 49, 109})
		reset := string([]byte{27, 91, 48, 109})
		if l.method == CONSOLE {
			if logInfo.logLevel == ERROR {
				log.Print(red, logStr, reset)
			} else {
				log.Print(logStr)
			}
		} else if l.method == FILE {
			_, _ = l.file.WriteString(logStr)
		} else if l.method == BOTH {
			if logInfo.logLevel == ERROR {
				log.Print(red, logStr, reset)
			} else {
				log.Print(logStr)
			}
			_, _ = l.file.WriteString(logStr)
		}
	}
}

func (l *Logger) Debug(msg string, param ...any) {
	if l.level > DEBUG {
		return
	}
	logInfo := new(LogInfo)
	logInfo.logLevel = DEBUG
	logInfo.msg = msg
	logInfo.param = param
	if l.trackLine {
		fileInfo, funcInfo, lineInfo := l.getLineInfo()
		logInfo.fileInfo = fileInfo
		logInfo.funcInfo = funcInfo
		logInfo.lineInfo = lineInfo
		logInfo.goroutineId = l.getGoroutineId()
	}
	l.logInfoChan <- logInfo
}

func (l *Logger) Info(msg string, param ...any) {
	if l.level > INFO {
		return
	}
	logInfo := new(LogInfo)
	logInfo.logLevel = INFO
	logInfo.msg = msg
	logInfo.param = param
	if l.trackLine {
		fileInfo, funcInfo, lineInfo := l.getLineInfo()
		logInfo.fileInfo = fileInfo
		logInfo.funcInfo = funcInfo
		logInfo.lineInfo = lineInfo
		logInfo.goroutineId = l.getGoroutineId()
	}
	l.logInfoChan <- logInfo
}

func (l *Logger) Error(msg string, param ...any) {
	if l.level > ERROR {
		return
	}
	logInfo := new(LogInfo)
	logInfo.logLevel = ERROR
	logInfo.msg = msg
	logInfo.param = param
	if l.trackLine {
		fileInfo, funcInfo, lineInfo := l.getLineInfo()
		logInfo.fileInfo = fileInfo
		logInfo.funcInfo = funcInfo
		logInfo.lineInfo = lineInfo
		logInfo.goroutineId = l.getGoroutineId()
	}
	l.logInfoChan <- logInfo
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
