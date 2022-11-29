--- ServerUploadTool Save to [/root/env/data/lua/common/V3_2]  ---

--[[======================================
||	filename:	CharAmuse_BattleTide
||	owner: 		weiwei.sun
||	description: 	3.2奇趣秘园 局内逻辑 战斗
||	LogName:	## [CharAmuse_BattleTide]
||	Protection:	
=======================================]]
--[[

local defs = {

	rule = 
	{
		[1] = 
		{	--[杀怪数] = { 启动的tide， 停止补怪的tide}
			[10] = { toStart = {}, toStop = {} },
		},
		[2] = 
		{	--[杀怪数] = { 启动的tide， 停止补怪的tide}
			[10] = { toStart = {}, toStop = {}},
		},
		[3] = 
		{	--[杀怪数] = { 启动的tide， 停止补怪的tide}
			[10] = { toStart = {}, toStop = {}},
		},
		[4] = 
		{	--[杀怪数] = { 启动的tide， 停止补怪的tide}
			[10] = { toStart = {}, toStop = {}},
		},
	},

	--怪物信息 每个tide每次只出一只，按次序刷出
	tide = 
	{	
		[1] = { 1001, 1002 },
		[2] = { 1001, 1002 },
		[3] = { 1001, 1002 },
	}
}

]]
local cfg = {
	--主控GroupID
	main_group = 251008007,
}

local extraTriggers = {
	{ config_id = 8000001, name = "TimeAxis_StopGallery", event = EventType.EVENT_TIME_AXIS_PASS, source = "StopGallery", condition = "", action = "action_TimeAxis_StopGallery", trigger_count = 0 },
	{ config_id = 8000002, name = "Any_Monster_Die", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "", action = "action_Any_Monster_Die", trigger_count = 0 },
	{ config_id = 8000004, name = "Gallery_Stop", event = EventType.EVENT_GALLERY_STOP, source = "", condition = "", action = "action_Gallery_Stop", trigger_count = 0 },
	{ config_id = 8000005, name = "TimeAxis_StopGallery_Fail", event = EventType.EVENT_TIME_AXIS_PASS, source = "StopGallery_Fail", condition = "", action = "action_TimeAxis_StopGallery_Fail", trigger_count = 0 },
	{ config_id = 8000006, name = "AirWallVariable_Change", event = EventType.EVENT_VARIABLE_CHANGE, source = "air_wall", condition = "", action = "action_AirWallVariable_Change", trigger_count = 0 },
	{ config_id = 8000007, name = "Group_Load", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_Group_Load", trigger_count = 0 },
	{ config_id = 8000008, name = "Clear_TimeAxis_Pass", event = EventType.EVENT_TIME_AXIS_PASS, source = "clear_delay", condition = "", action = "action_Clear_TimeAxis_Pass", trigger_count = 0 },
}

function LF_Initialize()
	for k,v in pairs(extraTriggers) do
		table.insert(triggers, v)
		table.insert(suites[init_config.suite].triggers, v.name)
	end
	table.insert(variables,{ config_id = 50000001, name = "air_wall", value = 0})
end

--主控调用
function EX_StartGallery(context, prev_context, gallery_id, is_last_level)
	--加载玩法suite
	if nil ~= defs.play_suites then
		for k,v in pairs(defs.play_suites) do
			ScriptLib.AddExtraGroupSuite(context, base_info.group_id, v)
		end	
	end
	local uid_list = ScriptLib.GetSceneUidList(context)	
	ScriptLib.SetGroupTempValue(context, "player_count", #uid_list, {})	
	ScriptLib.SetGroupTempValue(context, "is_last_level", is_last_level, {})

	--开启gallery
	ScriptLib.StartGallery(context, gallery_id)
	ScriptLib.SetGroupTempValue(context, "gallery_id", gallery_id, {})
	ScriptLib.PrintContextLog(context,"## [CharAmuse_BattleTide] EX_StartGallery. player_count@"..#uid_list.." --------------")

	--玩法启动
	ScriptLib.SetGroupVariableValue(context, "air_wall", 0)
	LF_Start_Play(context)

	return 0
end

function action_Group_Load(context, evt)
	if nil == defs.air_wall then
		return 0
	end
	if 1 == ScriptLib.GetGroupVariableValue(context, "air_wall") then
		for i,v in ipairs(defs.air_wall) do
			ScriptLib.CreateGadget(context, { config_id = v })
		end
	end
	return 0
end

function action_AirWallVariable_Change(context, evt)
	if nil == defs.air_wall then
		return 0
	end
	if 1 == evt.param1 and 0 == evt.param2 then
		for i,v in ipairs(defs.air_wall) do
			ScriptLib.CreateGadget(context, { config_id = v })
		end
	elseif 0 == evt.param1 and 1 == evt.param2 then
		for i,v in ipairs(defs.air_wall) do
			ScriptLib.RemoveEntityByConfigId(context, 0, EntityType.GADGET, v)
		end	
	end
	return 0
end

--evt.param2: 1-失败 0-成功
function action_Gallery_Stop(context, evt)
	--卸载玩法suite
	if nil ~= defs.play_suites then
		for k,v in pairs(defs.play_suites) do
			ScriptLib.RemoveExtraGroupSuite(context, base_info.group_id, v)
		end	
	end

	if 3 ~= evt.param3 then		
		local is_last_level = (ScriptLib.GetGroupTempValue(context, "is_last_level", {}) >= 1)
		--ScriptLib.InitTimeAxis(context, "StopGallery_Fail", { 3 } , false) 9.21修改 失败不要延时结束
		ScriptLib.ExecuteGroupLua(context, cfg.main_group, "EX_EndPlayStage", {1, base_info.group_id})
	else
		local is_last_level = (ScriptLib.GetGroupTempValue(context, "is_last_level", {}) >= 1)--最后一关无等待
		if is_last_level then
			ScriptLib.ExecuteGroupLua(context, cfg.main_group, "EX_EndPlayStage", {0, base_info.group_id})
		else
			ScriptLib.InitTimeAxis(context, "StopGallery", { 3 } , false)
		end	
	end

	--埋点
	local counter_1 = ScriptLib.GetGroupTempValue(context, "action_counter_1", {})
	local counter_2 = ScriptLib.GetGroupTempValue(context, "action_counter_2", {})

	local gallery_id = ScriptLib.GetGroupTempValue(context, "gallery_id", {})

	if 28015 == gallery_id or 28016 == gallery_id then
		ScriptLib.MarkGroupLuaAction(context, "CharAmuse_ElecAttack", ScriptLib.GetDungeonTransaction(context), {["reaction"] = counter_1}) 
	elseif 28017 == gallery_id or 28018 == gallery_id then
		ScriptLib.MarkGroupLuaAction(context, "CharAmuse_NormalAttack", ScriptLib.GetDungeonTransaction(context), {["attack"] = counter_2}) 
	end
	ScriptLib.PrintContextLog(context,"## [CharAmuse_BattleTide] Gallery stoped. reason@".. evt.param3.." --------------")
	return 0
end

---------------------------------------------------------------------------------------------------------------
function LF_Start_Play(context)
	--埋点计数器
	ScriptLib.SetGroupTempValue(context, "action_counter_1", 0, {})
	ScriptLib.SetGroupTempValue(context, "action_counter_2", 0, {})

	--怪物队列index初始化
	--0: 关闭 
	for k,v in pairs(defs.tide) do
		ScriptLib.SetGroupTempValue(context, "tide_"..k, 1, {})
	end

	--杀怪数
	ScriptLib.SetGroupTempValue(context, "kill_num", 0, {})

	local player_count = ScriptLib.GetGroupTempValue(context, "player_count", {})

	local gallery_id = ScriptLib.GetGroupTempValue(context, "gallery_id", {})
	local target = 0
	if player_count > 1 then
		target = ScriptLib.GetCharAmusementGalleryTarget(context, gallery_id, true)
	else
		target = ScriptLib.GetCharAmusementGalleryTarget(context, gallery_id, false)
	end
	ScriptLib.SetGroupTempValue(context, "cur_score", target, {})
	ScriptLib.UpdatePlayerGalleryScore(context, gallery_id, { ["max_score"]= target} )

	if nil == defs.rule[player_count] then
		return 0
	end
	if nil == defs.rule[player_count][0] then
		return 0
	end

	LF_InitMonsterByQueueList(context, defs.rule[player_count][0].toStart)

	return 0
end

function action_TimeAxis_StopGallery(context, evt)
	ScriptLib.ExecuteGroupLua(context, cfg.main_group, "EX_EndPlayStage", {0, base_info.group_id})

	return 0
end
function action_TimeAxis_StopGallery_Fail(context, evt)
	ScriptLib.ExecuteGroupLua(context, cfg.main_group, "EX_EndPlayStage", {1, base_info.group_id})
	return 0
end
--循环刷怪
function action_Any_Monster_Die(context, evt)

	local gallery_id = ScriptLib.GetGroupTempValue(context, "gallery_id", {})

	if false == ScriptLib.IsGalleryStart(context, gallery_id) then
		return 0
	end

	--加分
	ScriptLib.UpdatePlayerGalleryScore(context, gallery_id, { ["add_score"]= 1} )
	ScriptLib.CharAmusementUpdateScore(context, cfg.main_group, 1, 1)--给MultStage更新分数 服务器侧埋点用

	--是否结算
	ScriptLib.ChangeGroupTempValue(context, "cur_score", -1 , {})
	if 0 >= ScriptLib.GetGroupTempValue(context, "cur_score", {}) then
		--客户端弹提示
		local is_last_level = (ScriptLib.GetGroupTempValue(context, "is_last_level", {}) >= 1)
		ScriptLib.UpdatePlayerGalleryScore(context, gallery_id, { ["is_last_level"] = is_last_level, ["is_finish"] = true, ["is_success"] = true } )

		--ScriptLib.KillGroupEntity(context, { group_id = base_info.group_id, kill_policy = GroupKillPolicy.GROUP_KILL_MONSTER })
		ScriptLib.InitTimeAxis(context, "clear_delay", {1.2}, false)--有delay出现的怪

		ScriptLib.StopGallery(context, gallery_id, false)
		return 0
	end


	--启动/停止怪物队列
	ScriptLib.ChangeGroupTempValue(context, "kill_num", 1, {})
	local kill_num = ScriptLib.GetGroupTempValue(context, "kill_num", {})
	local player_count = ScriptLib.GetGroupTempValue(context, "player_count", {})
	if nil == defs.rule[player_count] then
		return 0
	end

	if nil ~= defs.rule[player_count][kill_num] then
		if nil ~= defs.rule[player_count][kill_num].toStart and 0 ~= defs.rule[player_count][kill_num].toStart then
			local tide_index_list = defs.rule[player_count][kill_num].toStart
			LF_InitMonsterByQueueList(context, tide_index_list)
		end

		if nil ~= defs.rule[player_count][kill_num].toStop and 0 ~= defs.rule[player_count][kill_num].toStop then
			local tide_index_list = defs.rule[player_count][kill_num].toStop
			LF_StopMonsterByQueue(context, tide_index_list)
		end

	end

	--所在怪物队列补怪
	local from_tide = LF_GetMonsterTideIndexByConfigID(context, evt.param1)

	if 0 < ScriptLib.GetGroupTempValue(context, "tide_"..from_tide, {}) then
		LF_CreateMonsterByQueue(context, from_tide)
	end


	return 0
end

function action_Clear_TimeAxis_Pass(context, evt)
	ScriptLib.KillGroupEntity(context, { group_id = base_info.group_id, kill_policy = GroupKillPolicy.GROUP_KILL_MONSTER })
	return 0
end

function LF_InitMonsterByQueueList(context, tide_index_list)

	for i,v in ipairs(tide_index_list) do
		if nil == defs.tide[v] then
			ScriptLib.PrintContextLog(context, "## [CharAmuse_BattleTide] LF_InitMonsterByQueueList. Undefined tide index. index@"..v )
    		return 0
   		end
   		local monster_index = ScriptLib.GetGroupTempValue(context, "tide_"..v, {})
   		if 0 < monster_index then
   			if nil == defs.tide[v][monster_index] then
   				ScriptLib.PrintContextLog(context, "## [CharAmuse_BattleTide] LF_InitMonsterByQueueList. Undefined monster_index. tide@"..v.." monster_index@"..monster_index )
   				return 0
   			end
   			ScriptLib.CreateMonster(context, { config_id = defs.tide[v][monster_index], delay_time = 0 })
   			if monster_index >= #defs.tide[v] then
	   			ScriptLib.SetGroupTempValue(context, "tide_"..v, 1, {})
	   		else
	   			ScriptLib.ChangeGroupTempValue(context, "tide_"..v, 1, {})
	   		end
   		end
	end
	return 0
end

function LF_CreateMonsterByQueue(context, tide_index)

	local monster_index = ScriptLib.GetGroupTempValue(context, "tide_"..tide_index, {})

	ScriptLib.PrintContextLog(context, "## [CharAmuse_BattleTide] LF_CreateMonsterByQueue. tide@tide_"..tide_index.." monster_index@"..monster_index )

	if nil == defs.tide[tide_index] then
		ScriptLib.PrintContextLog(context, "## [CharAmuse_BattleTide] LF_CreateMonsterByQueue. Undefined tide index. index@"..tide_index )
		return 0
	end

	if 0 < monster_index then
		if nil == defs.tide[tide_index][monster_index]  then
			ScriptLib.PrintContextLog(context, "## [CharAmuse_BattleTide] LF_CreateMonsterByQueue. Undefined monster_index. tide@"..tide_index.." monster_index@"..monster_index )
			return 0
		end

		ScriptLib.CreateMonster(context, { config_id = defs.tide[tide_index][monster_index], delay_time = 1 })

		if monster_index >= #defs.tide[tide_index] then
			ScriptLib.SetGroupTempValue(context, "tide_"..tide_index, 1, {})
   		else
   			ScriptLib.ChangeGroupTempValue(context, "tide_"..tide_index, 1, {})
   		end
	end
	return 0
end

function LF_StopMonsterByQueue(context, tide_index_list)
	for i,v in ipairs(tide_index_list) do
		if nil == defs.tide[v] then
			ScriptLib.PrintContextLog(context, "## [CharAmuse_BattleTide] LF_StopMonsterByQueue. Undefined tide index. index@"..v )
    		return 0
   		end
   		ScriptLib.SetGroupTempValue(context, "tide_"..v, 0, {})
	end
	return 0
end

function LF_GetMonsterTideIndexByConfigID(context, config_id)
	for k,v in pairs(defs.tide) do
		for i, j in ipairs(v) do
			if config_id == j then
				return k
			end
		end
	end
	return 0
end
--玩家行为埋点
--param1 1-触发感电激化 2-触发普攻重击
function SLC_CharAmuse_BattleAction(context, param1)
	if 1 == param1 then
		ScriptLib.ChangeGroupTempValue(context, "action_counter_1", 1, {})
	elseif 2 == param1 then
		ScriptLib.ChangeGroupTempValue(context, "action_counter_2", 1, {})
	end
	return 0
end

LF_Initialize()