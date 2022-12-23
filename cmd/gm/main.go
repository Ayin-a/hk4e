package main

import (
	"context"
	"flag"
	"fmt"
	_ "net/http/pprof"
	"os"

	"hk4e/gm/app"
	"hk4e/pkg/statsviz_serve"
)

var (
	config = flag.String("config", "application.toml", "config file")
)

func main() {
	flag.Parse()
	go func() {
		err := statsviz_serve.Serve("0.0.0.0:7890")
		if err != nil {
			panic(err)
		}
	}()
	err := app.Run(context.TODO(), *config)
	if err != nil {
		fmt.Println(err)
		os.Exit(1)
	}
}
