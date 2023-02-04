package main

import (
	"context"

	"hk4e/pathfinding/app"

	"github.com/spf13/cobra"
)

func PathfindingCmd() *cobra.Command {
	var cfg string
	c := &cobra.Command{
		Use:   "pathfinding",
		Short: "pathfinding server",
		RunE: func(cmd *cobra.Command, args []string) error {
			return app.Run(context.Background(), cfg)
		},
	}
	c.Flags().StringVar(&cfg, "config", "application.toml", "config file")
	return c
}
