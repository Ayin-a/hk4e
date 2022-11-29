local MAX_attackbylevelentity_LV = 20
local MAX_mutehurtbylevelentity_LV = 10
local MAX_defencebylevelentity_LV = 10
local MAX_chargebylevelentity_LV = 10




--场景破碎物计数
function KillLevelEntityCount( context )
	local UidList = ScriptLib.GetSceneUidList(context)

	-- ScriptLib.AddExhibitionAccumulableData(context, UidList[1], "Rogue_BrokenLevelEntity_AccumulableCount_1", 1)

	-- ScriptLib.AddExhibitionReplaceableData(context, UidList[1], "Rogue_BrokenLevelEntity_ReplaceableCount_1", 1)

	return 0
	
end

--炸药桶计数
function KillLevelEntityCount( context )
	local UidList = ScriptLib.GetSceneUidList(context)

	-- ScriptLib.AddExhibitionAccumulableData(context, UidList[1], "Rogue_BrokenBomb_AccumulableCount_1", 1)

	-- ScriptLib.AddExhibitionAccumulableData(context, UidList[1], "Rogue_BrokenBomb_ReplaceableCount_1", 1)

	return 0
	
end



--场景破碎物上发消息
function LevelEntityBroken_Attack(context)

	ScriptLib.PrintContextLog(context, "##Rogue LOG : LevelEntityBroken ")

	local UidList = ScriptLib.GetSceneUidList(context)


	local TeamValue = ScriptLib.GetTeamServerGlobalValue(context, UidList[1], "SGV_ROGUE_ATTACKBYLEVELENTITY")

	ScriptLib.PrintContextLog(context, "##Rogue LOG : LevelEntityBroken TeamValue =="..TeamValue)


	--改SGV
	if TeamValue < MAX_attackbylevelentity_LV then

		ScriptLib.AddTeamServerGlobalValue(context, UidList[1], "SGV_ROGUE_ATTACKBYLEVELENTITY", 1)
	end

	return 0
end

--场景破碎物上发消息
function LevelEntityBroken_MuteHurt(context)

	ScriptLib.PrintContextLog(context, "##Rogue LOG : LevelEntityBroken ")

	local UidList = ScriptLib.GetSceneUidList(context)


	local TeamValue = ScriptLib.GetTeamServerGlobalValue(context, UidList[1], "SGV_ROGUE_MUTEHURTBYLEVELENTITY")

	ScriptLib.PrintContextLog(context, "##Rogue LOG : LevelEntityBroken TeamValue =="..TeamValue)


	--改SGV
	if TeamValue < MAX_mutehurtbylevelentity_LV then

		ScriptLib.AddTeamServerGlobalValue(context, UidList[1], "SGV_ROGUE_MUTEHURTBYLEVELENTITY", 1)
	end

	return 0
end

--场景破碎物上发消息
function LevelEntityBroken_ChargeSpeed(context)

	ScriptLib.PrintContextLog(context, "##Rogue LOG : LevelEntityBroken ")

	local UidList = ScriptLib.GetSceneUidList(context)


	local TeamValue = ScriptLib.GetTeamServerGlobalValue(context, UidList[1], "SGV_ROGUE_CHARGEBYLEVELENTITY")

	ScriptLib.PrintContextLog(context, "##Rogue LOG : LevelEntityBroken TeamValue =="..TeamValue)


	--改SGV
	if TeamValue < MAX_chargebylevelentity_LV then

		ScriptLib.AddTeamServerGlobalValue(context, UidList[1], "SGV_ROGUE_CHARGEBYLEVELENTITY", 1)
	end

	return 0
end

--场景破碎物上发消息
function LevelEntityBroken_Defence(context)

	ScriptLib.PrintContextLog(context, "##Rogue LOG : LevelEntityBroken ")

	local UidList = ScriptLib.GetSceneUidList(context)


	local TeamValue = ScriptLib.GetTeamServerGlobalValue(context, UidList[1], "SGV_ROGUE_DEFENCEBYLEVELENTITY")

	ScriptLib.PrintContextLog(context, "##Rogue LOG : LevelEntityBroken TeamValue =="..TeamValue)


	--改SGV
	if TeamValue < MAX_defencebylevelentity_LV then
		ScriptLib.AddTeamServerGlobalValue(context, UidList[1], "SGV_ROGUE_DEFENCEBYLEVELENTITY", 1)
	end

	return 0
end


--关闭元素机关上发消息
function CloseGear(context)
	local UidList = ScriptLib.GetSceneUidList(context)


	local TeamValue = ScriptLib.GetTeamServerGlobalValue(context, UidList[1], "SGV_ROGUE_MASTERYBYGEAR")

	ScriptLib.PrintContextLog(context, "##Rogue LOG : LevelEntityBroken TeamValue =="..TeamValue)

	--先改SGV
	ScriptLib.AddTeamServerGlobalValue(context, UidList[1], "SGV_ROGUE_MASTERYBYGEAR", 1)

	--再通知客户端取值更新
	--ScriptLib.AssignPlayerUidOpNotify(context, param_table)

	return 0
end


--踩到陷阱
function TriggerTrap(context, isBlock)
	local UidList = ScriptLib.GetSceneUidList(context)


	local TeamValue = ScriptLib.GetTeamServerGlobalValue(context, UidList[1], "SGV_ROGUE_TRAPBLOCK")

	--触发陷阱计数
	--ScriptLib.AddExhibitionAccumulableData(context, UidList[1], "Rogue_TriggerTrap_Count", 1)

	if isBlock == 0 then
		--触发陷阱
		ScriptLib.TriggerRoguelikeCurseByLua(context, UidList[1])
	elseif isBlock ==1 then
		--修改抵抗层数
		ScriptLib.AddTeamServerGlobalValue(context, UidList[1], "SGV_ROGUE_TRAPBLOCK", -1)

		ScriptLib.DisableRoguelikeTrapBySgv(context, "SGV_ROGUE_TRAPBLOCK", UidList[1])
	end


	return 0

end






--回复房间加BUFF
function AddReviveRoomBuff(context)
	local UidList = ScriptLib.GetSceneUidList(context)


	local TeamValue = ScriptLib.GetTeamServerGlobalValue(context, UidList[1], "SGV_ROGUE_REVIVEROOMBUFF")

	ScriptLib.PrintContextLog(context, "##Rogue LOG : LevelEntityBroken TeamValue =="..TeamValue)


	--先改SGV
	ScriptLib.AddTeamServerGlobalValue(context, UidList[1], "SGV_ROGUE_REVIVEROOMBUFF", 1)

	--再通知客户端取值更新
	--ScriptLib.AssignPlayerUidOpNotify(context, param_table)

	return 0
end



--战斗房间加BUFF
function AddBattleRoomBuff(context)
	local UidList = ScriptLib.GetSceneUidList(context)


	local TeamValue = ScriptLib.GetTeamServerGlobalValue(context, UidList[1], "SGV_ROGUE_BATTLEROOMBUFF")

	ScriptLib.PrintContextLog(context, "##Rogue LOG : LevelEntityBroken TeamValue =="..TeamValue)


	--先改SGV
	ScriptLib.AddTeamServerGlobalValue(context, UidList[1], "SGV_ROGUE_BATTLEROOMBUFF", 1)

	--再通知客户端取值更新
	--ScriptLib.AssignPlayerUidOpNotify(context, param_table)

	return 0
end



--吃到增益球
function GetRogueBuff( context )

	local UidList = ScriptLib.GetSceneUidList(context)

	--吃到BUFF计数
	--ScriptLib.AddExhibitionAccumulableData(context, UidList[1], "Rogue_GetBuff_AccumulableCount", 1)

	--ScriptLib.AddExhibitionReplaceableData(context, UidList[1], "Rogue_TriggerTrap_ReplaceableCount", 1)

	return 0
	
end


function SetGardianSGV( context, value)

	local entityID = ScriptLib.GetContextGadgetEntityId(context)

	ScriptLib.SetEntityServerGlobalValueByEntityId(context, entityID, "SGV_CAN_CLEAR_THREAT", value )

	return 0
end

function SetGardianState(context, value )

	ScriptLib.SetGadgetState(context, value)

	return 0 
end