package main
import (
  log "github.com/sirupsen/logrus"
  "os"
)

func init_logger(name string, ip string, log_file string) {
   log.SetFormatter(&log.JSONFormatter{})
   log.SetReportCaller(true)
   standardFields := log.Fields{
	"apk" : name,
	"device" : ip,
   }
   file, err := os.OpenFile(log_file, os.O_WRONLY | os.O_CREATE | os.O_APPEND, 0755)
   if err != nil {
	log.Error("Unable to open log file", err)
   }
   defer file.Close()
   log.SetOutput(file)
}
