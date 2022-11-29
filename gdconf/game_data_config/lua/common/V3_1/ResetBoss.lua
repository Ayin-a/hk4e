function SLC_Reset_Boss(context)

    ScriptLib.PrintContextLog(context,"ResetBoss: 触发脱战，重新生成BOSS")
	ScriptLib.RemoveEntityByConfigId(context, 0, EntityType.MONSTER, BossConfigID)
    --再重新创建出来
	ScriptLib.CreateMonster(context, { config_id = BossConfigID, delay_time = 0 })

    return 0
end