package main

import (
	"flag"
	"fmt"
	_ "net/http/pprof"
	"os"

	"github.com/spf13/cobra"
)

var (
	config = flag.String("config", "application.toml", "config file")
)

func main() {
	rootCmd := &cobra.Command{
		Use:          "hk4e",
		Short:        "hk4e server",
		SilenceUsage: true,
	}
	rootCmd.AddCommand(
		NodeCmd(),
		DispatchCmd(),
		GateCmd(),
		FightCmd(),
		PathfindingCmd(),
		GSCmd(),
		GMCmd(),
	)

	if err := rootCmd.Execute(); err != nil {
		fmt.Println(err)
		os.Exit(1)
	}
}
