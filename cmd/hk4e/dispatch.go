package main

import (
	"context"

	"hk4e/dispatch/app"

	"github.com/spf13/cobra"
)

// DispatchCmd
func DispatchCmd() *cobra.Command {
	var cfg string
	c := &cobra.Command{
		Use:   "dispatch",
		Short: "dispatch server",
		RunE: func(cmd *cobra.Command, args []string) error {
			return app.Run(context.Background(), cfg)
		},
	}
	c.Flags().StringVar(&cfg, "config", "application.toml", "config file")
	return c
}
