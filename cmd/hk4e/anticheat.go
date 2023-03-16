package main

import (
	"context"

	"hk4e/anticheat/app"

	"github.com/spf13/cobra"
)

func AnticheatCmd() *cobra.Command {
	var cfg string
	c := &cobra.Command{
		Use:   "anticheat",
		Short: "anticheat server",
		RunE: func(cmd *cobra.Command, args []string) error {
			return app.Run(context.Background(), cfg)
		},
	}
	c.Flags().StringVar(&cfg, "config", "application.toml", "config file")
	return c
}
