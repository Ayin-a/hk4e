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
	"strings"
	"time"
)

const (
	DEBUG = iota
	INFO
	ERROR
	UNKNOWN
)

const (
	CONSOLE = iota
	FILE
	BOTH
	NEITHER
)

var (
	GREEN     = string([]byte{27, 91, 51, 50, 109})
	WHITE     = string([]byte{27, 91, 51, 55, 109})
	YELLOW    = string([]byte{27, 91, 51, 51, 109})
	RED       = string([]byte{27, 91, 51, 49, 109})
	BLUE      = string([]byte{27, 91, 51, 52, 109})
	MAGENTA   = string([]byte{27, 91, 51, 53, 109})
	CYAN      = string([]byte{27, 91, 51, 54, 109})
	RESET     = string([]byte{27, 91, 48, 109})
	ALL_COLOR = []string{GREEN, WHITE, YELLOW, RED, BLUE, MAGENTA, CYAN, RESET}
)

var LOG *Logger = nil

type Logger struct {
	AppName     string
	Level       int
	Mode        int
	Track       bool
	MaxSize     int32
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

func InitLogger(appName string) {
	log.SetFlags(0)
	LOG = new(Logger)
	LOG.AppName = appName
	LOG.Level = getLevelInt(config.CONF.Logger.Level)
	LOG.Mode = getModeInt(config.CONF.Logger.Mode)
	LOG.Track = config.CONF.Logger.Track
	LOG.MaxSize = config.CONF.Logger.MaxSize
	LOG.LogInfoChan = make(chan *LogInfo, 1000)
	LOG.File = nil
	go LOG.doLog()
}

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
		if l.Track {
			logHeader += MAGENTA + "[" +
				logInfo.FileName + ":" + strconv.Itoa(logInfo.Line) + " " +
				logInfo.FuncName + "()" + " " +
				"goroutine:" + logInfo.GoroutineId +
				"]" + RESET + " "
		}
		logStr := logHeader
		if logInfo.Level == ERROR {
			logStr += RED + fmt.Sprintf(logInfo.Msg, logInfo.Param...) + RESET + "\n"
		} else {
			logStr += fmt.Sprintf(logInfo.Msg, logInfo.Param...) + "\n"
		}
		if logInfo.Stack != "" {
			logStr += logInfo.Stack
		}
		if l.Mode == CONSOLE {
			log.Print(logStr)
		} else if l.Mode == FILE {
			l.WriteLogFile(logStr)
		} else if l.Mode == BOTH {
			log.Print(logStr)
			l.WriteLogFile(logStr)
		}
	}
}

func (l *Logger) WriteLogFile(logStr string) {
	for _, v := range ALL_COLOR {
		logStr = strings.ReplaceAll(logStr, v, "")
	}
	if l.File == nil {
		file, err := os.OpenFile("./"+l.AppName+".log", os.O_CREATE|os.O_WRONLY|os.O_APPEND, 0644)
		if err != nil {
			fmt.Printf(RED+"open new log file error: %v\n"+RESET, err)
			return
		}
		LOG.File = file
	}
	fileStat, err := l.File.Stat()
	if err != nil {
		fmt.Printf(RED+"get log file stat error: %v\n"+RESET, err)
		return
	}
	if fileStat.Size() >= int64(l.MaxSize) {
		err = l.File.Close()
		if err != nil {
			fmt.Printf(RED+"close old log file error: %v\n"+RESET, err)
			return
		}
		timeNow := time.Now()
		timeNowStr := timeNow.Format("2006-01-02-15_04_05")
		err = os.Rename(l.File.Name(), l.File.Name()+"."+timeNowStr+".log")
		if err != nil {
			fmt.Printf(RED+"rename old log file error: %v\n"+RESET, err)
			return
		}
		file, err := os.OpenFile("./"+l.AppName+".log", os.O_CREATE|os.O_WRONLY|os.O_APPEND, 0644)
		if err != nil {
			fmt.Printf(RED+"open new log file error: %v\n"+RESET, err)
			return
		}
		LOG.File = file
	}
	_, err = l.File.WriteString(logStr)
	if err != nil {
		fmt.Printf(RED+"write log file error: %v\n"+RESET, err)
		return
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
	if l.Track {
		logInfo.FileName, logInfo.Line, logInfo.FuncName = l.getLineFunc()
		logInfo.GoroutineId = l.getGoroutineId()
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
	if l.Track {
		logInfo.FileName, logInfo.Line, logInfo.FuncName = l.getLineFunc()
		logInfo.GoroutineId = l.getGoroutineId()
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
	if l.Track {
		logInfo.FileName, logInfo.Line, logInfo.FuncName = l.getLineFunc()
		logInfo.GoroutineId = l.getGoroutineId()
	}
	l.LogInfoChan <- logInfo
}

func (l *Logger) ErrorStack(msg string, param ...any) {
	if l.Level > ERROR {
		return
	}
	logInfo := new(LogInfo)
	logInfo.Level = ERROR
	logInfo.Msg = msg
	logInfo.Param = param
	if l.Track {
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

func getModeInt(mode string) (ret int) {
	switch mode {
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
