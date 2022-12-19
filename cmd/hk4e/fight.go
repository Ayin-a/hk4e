package main

import (
	"context"

	"hk4e/fight/app"

	"github.com/spf13/cobra"
)

// FightCmd 检查配表命令
func FightCmd() *cobra.Command {
	var cfg string
	c := &cobra.Command{
		Use:   "fight",
		Short: "fight server",
		RunE: func(cmd *cobra.Command, args []string) error {
			return app.Run(context.Background(), cfg)
		},
	}
	c.Flags().StringVar(&cfg, "config", "application.toml", "config file")
	return c
}
