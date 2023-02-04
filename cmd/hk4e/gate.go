package main

import (
	"context"

	"hk4e/gate/app"

	"github.com/spf13/cobra"
)

func GateCmd() *cobra.Command {
	var cfg string
	c := &cobra.Command{
		Use:   "gate",
		Short: "gate server",
		RunE: func(cmd *cobra.Command, args []string) error {
			return app.Run(context.Background(), cfg)
		},
	}
	c.Flags().StringVar(&cfg, "config", "application.toml", "config file")
	return c
}
