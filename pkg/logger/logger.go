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

	"hk4e/common/config"
)

const (
	DEBUG = iota
	INFO
	WARN
	ERROR
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
	FileName    string
	FuncName    string
	Line        int
	GoroutineId string
	ThreadId    string
}

func InitLogger(appName string) {
	log.SetFlags(0)
	LOG = new(Logger)
	LOG.AppName = appName
	LOG.Level = LOG.getLevelInt(config.GetConfig().Logger.Level)
	LOG.Mode = LOG.getModeInt(config.GetConfig().Logger.Mode)
	LOG.Track = config.GetConfig().Logger.Track
	LOG.MaxSize = config.GetConfig().Logger.MaxSize
	LOG.LogInfoChan = make(chan *LogInfo, 1000)
	LOG.File = nil
	go LOG.doLog()
}

func CloseLogger() {
	// 等待所有日志打印完毕
	for {
		if len(LOG.LogInfoChan) == 0 {
			break
		}
		time.Sleep(time.Millisecond * 100)
	}
}

func (l *Logger) doLog() {
	for {
		logInfo := <-l.LogInfoChan
		timeNow := time.Now()
		timeNowStr := timeNow.Format("2006-01-02 15:04:05.000")
		logStr := CYAN + "[" + timeNowStr + "]" + RESET + " "
		if logInfo.Level == DEBUG {
			logStr += BLUE + "[" + l.getLevelStr(logInfo.Level) + "]" + RESET
		} else if logInfo.Level == INFO {
			logStr += GREEN + "[" + l.getLevelStr(logInfo.Level) + "]" + RESET
		} else if logInfo.Level == WARN {
			logStr += YELLOW + "[" + l.getLevelStr(logInfo.Level) + "]" + RESET
		} else if logInfo.Level == ERROR {
			logStr += RED + "[" + l.getLevelStr(logInfo.Level) + "]" + RESET
		}
		if logInfo.Level == ERROR {
			logStr += " " + RED + logInfo.Msg + RESET + " "
		} else {
			logStr += " " + logInfo.Msg + " "
		}
		if l.Track {
			logStr += MAGENTA + "[" +
				logInfo.FileName + ":" + strconv.Itoa(logInfo.Line) + " " +
				logInfo.FuncName + "()" + " " +
				"goroutine:" + logInfo.GoroutineId + " " +
				"thread:" + logInfo.ThreadId +
				"]" + RESET
		}
		logStr += "\n"
		if l.Mode == CONSOLE {
			log.Print(logStr)
		} else if l.Mode == FILE {
			l.writeLogFile(logStr)
		} else if l.Mode == BOTH {
			log.Print(logStr)
			l.writeLogFile(logStr)
		}
	}
}

func (l *Logger) writeLogFile(logStr string) {
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

func Debug(msg string, param ...any) {
	if LOG.Level > DEBUG {
		return
	}
	logInfo := new(LogInfo)
	logInfo.Level = DEBUG
	logInfo.Msg = fmt.Sprintf(msg, param...)
	if LOG.Track {
		logInfo.FileName, logInfo.Line, logInfo.FuncName = LOG.getLineFunc()
		logInfo.GoroutineId = LOG.getGoroutineId()
		logInfo.ThreadId = LOG.getThreadId()
	}
	LOG.LogInfoChan <- logInfo
}

func Info(msg string, param ...any) {
	if LOG.Level > INFO {
		return
	}
	logInfo := new(LogInfo)
	logInfo.Level = INFO
	logInfo.Msg = fmt.Sprintf(msg, param...)
	if LOG.Track {
		logInfo.FileName, logInfo.Line, logInfo.FuncName = LOG.getLineFunc()
		logInfo.GoroutineId = LOG.getGoroutineId()
		logInfo.ThreadId = LOG.getThreadId()
	}
	LOG.LogInfoChan <- logInfo
}

func Warn(msg string, param ...any) {
	if LOG.Level > WARN {
		return
	}
	logInfo := new(LogInfo)
	logInfo.Level = WARN
	logInfo.Msg = fmt.Sprintf(msg, param...)
	if LOG.Track {
		logInfo.FileName, logInfo.Line, logInfo.FuncName = LOG.getLineFunc()
		logInfo.GoroutineId = LOG.getGoroutineId()
		logInfo.ThreadId = LOG.getThreadId()
	}
	LOG.LogInfoChan <- logInfo
}

func Error(msg string, param ...any) {
	if LOG.Level > ERROR {
		return
	}
	logInfo := new(LogInfo)
	logInfo.Level = ERROR
	logInfo.Msg = fmt.Sprintf(msg, param...)
	if LOG.Track {
		logInfo.FileName, logInfo.Line, logInfo.FuncName = LOG.getLineFunc()
		logInfo.GoroutineId = LOG.getGoroutineId()
		logInfo.ThreadId = LOG.getThreadId()
	}
	LOG.LogInfoChan <- logInfo
}

func (l *Logger) getLevelInt(level string) (ret int) {
	switch level {
	case "DEBUG":
		ret = DEBUG
	case "INFO":
		ret = INFO
	case "WARN":
		ret = WARN
	case "ERROR":
		ret = ERROR
	default:
		ret = DEBUG
	}
	return ret
}

func (l *Logger) getLevelStr(level int) (ret string) {
	switch level {
	case DEBUG:
		ret = "DEBUG"
	case INFO:
		ret = "INFO"
	case WARN:
		ret = "WARN"
	case ERROR:
		ret = "ERROR"
	default:
		ret = "DEBUG"
	}
	return ret
}

func (l *Logger) getModeInt(mode string) (ret int) {
	switch mode {
	case "CONSOLE":
		ret = CONSOLE
	case "FILE":
		ret = FILE
	case "BOTH":
		ret = BOTH
	case "NEITHER":
		ret = NEITHER
	default:
		ret = CONSOLE
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

func Stack() string {
	buf := make([]byte, 1024)
	for {
		n := runtime.Stack(buf, false)
		if n < len(buf) {
			return string(buf[:n])
		}
		buf = make([]byte, 2*len(buf))
	}
}

func StackAll() string {
	buf := make([]byte, 1024*16)
	for {
		n := runtime.Stack(buf, true)
		if n < len(buf) {
			return string(buf[:n])
		}
		buf = make([]byte, 2*len(buf))
	}
}
