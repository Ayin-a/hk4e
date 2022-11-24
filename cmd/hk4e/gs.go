package main

import (
	"context"

	"hk4e/gs/app"

	"github.com/spf13/cobra"
)

// GSCmd
func GSCmd() *cobra.Command {
	var cfg string
	c := &cobra.Command{
		Use:   "gs",
		Short: "game server",
		RunE: func(cmd *cobra.Command, args []string) error {
			return app.Run(context.Background(), cfg)
		},
	}
	c.Flags().StringVar(&cfg, "config", "application.toml", "config file")
	return c
}
