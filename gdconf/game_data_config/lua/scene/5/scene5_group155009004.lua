-- 基础信息
local base_info = {
	group_id = 155009004
}

-- Trigger变量
local defs = {
	group_ID = 155009004
}

-- DEFS_MISCS
local Controllers = {}
local EnvControlGadgets = {}
local Worktops = {}
local DayAppearGadgets = {4008,4009}
local NightAppearGadgets = {4003,4005}
local TriggerInsertWhitelist = {1}

local battleinfo = 
{
	{4003,"battle_01",3,155009007,155009025},
	{4004,"battle_02",4,155009008,155009026},
	{4005,"battle_03",5,155009009,155009027},
	{4006,"battle_04",6,155009010,155009028}
}

function Initial(context)

	for i=1,#battleinfo do
		ScriptLib.RemoveExtraGroupSuite(context, defs.group_ID, battleinfo[i][3])
		ScriptLib.SetGadgetStateByConfigId(context, battleinfo[i][1], 0)
	end

	ScriptLib.SetGroupVariableValue(context, "battleState", 0)
	ScriptLib.SetGroupVariableValue(context, "battleindex", 1)
end

function BattleStart(context,battleindex)

	ScriptLib.AddExtraGroupSuite(context, defs.group_ID, battleinfo[battleindex][3])
	ScriptLib.SetGroupVariableValue(context,"battleState",1)

end

function BattleOver(context,battleindex)
	ScriptLib.RemoveExtraGroupSuite(context, defs.group_ID, battleinfo[battleindex-1][3])
	ScriptLib.SetGroupVariableValue(context,"battleState",0)

end

function ALLBattleCompleted(context)
		ScriptLib.SetGroupVariableValue(context,"is_daynight_finish",1)

		for i=1,#battleinfo do
			ScriptLib.SetGroupVariableValueByGroup(context, "gameplayState", 2, battleinfo[i][4])
				
			if ScriptLib.GetGroupVariableValueByGroup(context, "gameplayState", battleinfo[i][5]) ~= 3 then
				ScriptLib.SetGroupVariableValueByGroup(context, "gameplayState", 2, battleinfo[i][5])
			end
			
			ScriptLib.SetGadgetStateByConfigId(context, battleinfo[i][1], 201)
		end
		ScriptLib.RemoveEntityByConfigId(context, defs.group_ID, EntityType.GADGET, 4008 )
		ScriptLib.RemoveEntityByConfigId(context, defs.group_ID, EntityType.GADGET, 4009 )
end

local gameplayStateFuncitons = 
{
	["0"] = function(context)
		ScriptLib.SetGroupVariableValue(context,"is_daynight_finish",1)
		
	end,
	["1"] = function(context)
		ScriptLib.AddExtraGroupSuite(context, defs.group_ID, 2)
		ScriptLib.SetGroupVariableValue(context,"is_daynight_finish",0)
		
		Initial(context)


	end,
	["2"] = function(context)
		ScriptLib.SetGroupVariableValue(context,"is_daynight_finish",1)
		ScriptLib.AddExtraGroupSuite(context, defs.group_ID, 7)
		for i=1,#battleinfo do
			ScriptLib.RemoveExtraGroupSuite(context, defs.group_ID, battleinfo[i][3])
			ScriptLib.SetGadgetStateByConfigId(context, battleinfo[i][1], 201)
		end
		ScriptLib.SetGroupVariableValue(context, "battleState", 0)
		ScriptLib.SetGroupVariableValue(context, "battleindex", 1)

	end,
	["3"] = function(context)
		ScriptLib.SetGroupVariableValue(context,"is_daynight_finish",1)
		ScriptLib.AddExtraGroupSuite(context, defs.group_ID, 7)
		ALLBattleCompleted(context)
	end,
	["4"] = function(context)
		ScriptLib.SetGroupVariableValue(context,"is_daynight_finish",1)
		ScriptLib.AddExtraGroupSuite(context, defs.group_ID, 7)
		for i=1,#battleinfo do
			
			ScriptLib.SetGadgetStateByConfigId(context, battleinfo[i][1], 201)
		end
	end
}


function UpdateGamePlayState(context)
	local state = ScriptLib.GetGroupVariableValue(context, "gameplayState") 

	gameplayStateFuncitons[tostring(state)](context)

end

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 4012, monster_id = 22040201, pos = { x = -756.024, y = 139.110, z = -214.963 }, rot = { x = 0.000, y = 192.015, z = 0.000 }, level = 36, drop_id = 1000100, disableWander = true, pose_id = 101, area_id = 200 },
	{ config_id = 4013, monster_id = 22040201, pos = { x = -745.907, y = 139.302, z = -229.380 }, rot = { x = 0.000, y = 312.864, z = 0.000 }, level = 36, drop_id = 1000100, disableWander = true, pose_id = 101, area_id = 200 },
	{ config_id = 4014, monster_id = 22040201, pos = { x = -757.752, y = 139.102, z = -236.097 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, drop_id = 1000100, disableWander = true, pose_id = 101, area_id = 200 },
	{ config_id = 4015, monster_id = 22040201, pos = { x = -766.042, y = 139.273, z = -222.033 }, rot = { x = 0.000, y = 104.113, z = 0.000 }, level = 36, drop_id = 1000100, disableWander = true, pose_id = 101, area_id = 200 },
	{ config_id = 4017, monster_id = 22010401, pos = { x = -763.191, y = 139.295, z = -220.392 }, rot = { x = 0.000, y = 105.396, z = 0.000 }, level = 36, drop_id = 1000100, disableWander = true, area_id = 200 },
	{ config_id = 4018, monster_id = 22010201, pos = { x = -756.877, y = 139.403, z = -234.654 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, drop_id = 1000100, disableWander = true, area_id = 200 },
	{ config_id = 4019, monster_id = 22010301, pos = { x = -750.154, y = 139.029, z = -222.030 }, rot = { x = 0.000, y = 271.058, z = 0.000 }, level = 36, drop_id = 1000100, disableWander = true, area_id = 200 },
	{ config_id = 4021, monster_id = 26050901, pos = { x = -760.102, y = 139.357, z = -220.019 }, rot = { x = 0.000, y = 133.135, z = 0.000 }, level = 36, drop_id = 1000100, disableWander = true, area_id = 200 },
	{ config_id = 4022, monster_id = 26051001, pos = { x = -753.833, y = 139.445, z = -229.971 }, rot = { x = 0.000, y = 317.761, z = 0.000 }, level = 36, drop_id = 1000100, disableWander = true, area_id = 200 },
	{ config_id = 4025, monster_id = 22020102, pos = { x = -756.496, y = 139.178, z = -224.722 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, drop_id = 1000100, disableWander = true, pose_id = 101, area_id = 200 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 4003, gadget_id = 70310011, pos = { x = -753.991, y = 138.608, z = -210.449 }, rot = { x = 358.247, y = 195.808, z = 1.024 }, level = 36, persistent = true, area_id = 200 },
	{ config_id = 4004, gadget_id = 70310011, pos = { x = -742.520, y = 138.558, z = -228.865 }, rot = { x = 358.958, y = 287.391, z = 357.216 }, level = 36, persistent = true, area_id = 200 },
	{ config_id = 4005, gadget_id = 70310011, pos = { x = -756.757, y = 139.332, z = -237.615 }, rot = { x = 0.000, y = 8.500, z = 0.000 }, level = 36, persistent = true, area_id = 200 },
	{ config_id = 4006, gadget_id = 70310011, pos = { x = -768.370, y = 139.288, z = -220.100 }, rot = { x = 0.000, y = 108.294, z = 0.000 }, level = 36, persistent = true, area_id = 200 },
	{ config_id = 4008, gadget_id = 70290229, pos = { x = -754.116, y = 139.708, z = -210.582 }, rot = { x = 3.013, y = 0.013, z = 0.478 }, level = 36, area_id = 200 },
	{ config_id = 4009, gadget_id = 70290229, pos = { x = -756.751, y = 140.396, z = -237.610 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, area_id = 200 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1004001, name = "GROUP_LOAD_4001", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_4001", trigger_count = 0 },
	{ config_id = 1004002, name = "VARIABLE_CHANGE_4002", event = EventType.EVENT_VARIABLE_CHANGE, source = "gameplayState", condition = "", action = "action_EVENT_VARIABLE_CHANGE_4002", trigger_count = 0 },
	-- 点燃所有火把开始挑战
	{ config_id = 1004007, name = "GADGET_STATE_CHANGE_4007", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_4007", action = "action_EVENT_GADGET_STATE_CHANGE_4007", trigger_count = 0 },
	{ config_id = 1004027, name = "ANY_MONSTER_DIE_4027", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_4027", action = "action_EVENT_ANY_MONSTER_DIE_4027", trigger_count = 0 },
	{ config_id = 1004028, name = "ANY_MONSTER_DIE_4028", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_4028", action = "action_EVENT_ANY_MONSTER_DIE_4028", trigger_count = 0 },
	{ config_id = 1004029, name = "ANY_MONSTER_DIE_4029", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_4029", action = "action_EVENT_ANY_MONSTER_DIE_4029", trigger_count = 0 },
	{ config_id = 1004030, name = "ANY_MONSTER_DIE_4030", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_4030", action = "action_EVENT_ANY_MONSTER_DIE_4030", trigger_count = 0 },
	-- 监听战斗阶段
	{ config_id = 1004031, name = "VARIABLE_CHANGE_4031", event = EventType.EVENT_VARIABLE_CHANGE, source = "battleState", condition = "", action = "action_EVENT_VARIABLE_CHANGE_4031", trigger_count = 0 },
	-- 7227007 Start 接受任务的消息
	{ config_id = 1004032, name = "QUEST_START_4032", event = EventType.EVENT_QUEST_START, source = "7227007", condition = "", action = "action_EVENT_QUEST_START_4032", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "gameplayState", value = 0, no_refresh = true },
	{ config_id = 2, name = "battle_01", value = 0, no_refresh = true },
	{ config_id = 3, name = "battle_02", value = 0, no_refresh = true },
	{ config_id = 4, name = "battle_03", value = 0, no_refresh = true },
	{ config_id = 5, name = "battle_04", value = 0, no_refresh = true },
	{ config_id = 6, name = "battleState", value = 0, no_refresh = false },
	{ config_id = 7, name = "battleindex", value = 1, no_refresh = false }
}

--================================================================
-- 
-- 初始化配置
-- 
--================================================================

-- 初始化时创建
init_config = {
	suite = 1,
	end_suite = 0,
	rand_suite = false
}

--================================================================
-- 
-- 小组配置
-- 
--================================================================

suites = {
	{
		-- suite_id = 1,
		-- description = ,
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { "GROUP_LOAD_4001", "VARIABLE_CHANGE_4002" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = 默认Group,
		monsters = { },
		gadgets = { 4004, 4006 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_4007", "VARIABLE_CHANGE_4031", "QUEST_START_4032" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = 挑战1,
		monsters = { 4012, 4013, 4014, 4015 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_4027" },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = 挑战2,
		monsters = { 4017, 4018, 4019 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_4028" },
		rand_weight = 100
	},
	{
		-- suite_id = 5,
		-- description = 挑战3,
		monsters = { 4021, 4022 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_4029" },
		rand_weight = 100
	},
	{
		-- suite_id = 6,
		-- description = 挑战4,
		monsters = { 4025 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_4030" },
		rand_weight = 100
	},
	{
		-- suite_id = 7,
		-- description = 完成挑战,
		monsters = { },
		gadgets = { 4003, 4004, 4005, 4006 },
		regions = { },
		triggers = { },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发操作
function action_EVENT_GROUP_LOAD_4001(context, evt)
				local isactive = ScriptLib.GetGroupVariableValueByGroup(context, "IslandActive", 155009001)
			
				if isactive == 1 then 
					if ScriptLib.GetGroupVariableValue(context,"gameplayState") == 0 then 
						ScriptLib.SetGroupVariableValue(context,"gameplayState", 1)
					end
					
				end
			
	UpdateGamePlayState(context)
		return 0
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_4002(context, evt)
	if evt.param1 == evt.param2 then return -1 end
	
	UpdateGamePlayState(context)
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_4007(context, evt)
	if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 155009004, 4003) then
		return false
	end
	
	if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 155009004, 4004) then
		return false
	end
	
	if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 155009004, 4005) then
		return false
	end
	
	if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 155009004, 4006) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_4007(context, evt)
				local value = ScriptLib.GetGroupVariableValue(context, "battleState") 
				if value ~= 0 then 
					return -1 
				end 
		
				ScriptLib.SetGroupVariableValue(context, "battleState", 0)
				ScriptLib.SetGroupVariableValue(context, "battleindex", 1)
				ScriptLib.SetGroupVariableValue(context, "gameplayState", 2)
			
				--[[local pos = {x=-758, y=139, z=-226}
				local pos_follow = {x=0, y=0, z=0}
					if 0 ~= ScriptLib.BeginCameraSceneLook(context, { look_pos = pos, is_allow_input = false, duration = 2, is_force = true, is_broadcast = false, is_recover_keep_current = true, delay = 0,
																	is_set_follow_pos = false, follow_pos = pos_follow, is_force_walk = false, is_change_play_mode = false,
																	is_set_screen_XY = false, screen_x = 0, screen_y = 0 }) then
								ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_cameraLook_Begin")
						return -1
							end 
				]]
				BattleStart(context,ScriptLib.GetGroupVariableValue(context, "battleindex") )
				return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_4027(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_4027(context, evt)
	-- 将本组内变量名为 "battle_01" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "battle_01", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 将本组内变量名为 "battleindex" 的变量设置为 2
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "battleindex", 2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 将本组内变量名为 "battleState" 的变量设置为 2
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "battleState", 2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_4028(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_4028(context, evt)
	-- 将本组内变量名为 "battle_02" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "battle_02", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 将本组内变量名为 "battleindex" 的变量设置为 3
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "battleindex", 3) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 将本组内变量名为 "battleState" 的变量设置为 2
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "battleState", 2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_4029(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_4029(context, evt)
	-- 将本组内变量名为 "battle_03" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "battle_03", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 将本组内变量名为 "battleindex" 的变量设置为 4
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "battleindex", 4) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 将本组内变量名为 "battleState" 的变量设置为 2
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "battleState", 2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_4030(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_4030(context, evt)
	-- 将本组内变量名为 "battle_04" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "battle_04", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 将本组内变量名为 "battleState" 的变量设置为 3
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "battleState", 3) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_4031(context, evt)
	if evt.param1 == evt.param2 then return -1 end
	
			local value = ScriptLib.GetGroupVariableValue(context, "battleState") 
		
			if value == 0 then 
				BattleStart(context,ScriptLib.GetGroupVariableValue(context, "battleindex") )
		
			elseif value == 1 then 
		
			elseif value == 2 then
				BattleOver(context,ScriptLib.GetGroupVariableValue(context, "battleindex"))
			elseif value == 3 then 
				ScriptLib.SetGroupVariableValue(context,"gameplayState", 3)
			end
			--TODO
			return 0
end

-- 触发操作
function action_EVENT_QUEST_START_4032(context, evt)
	-- 将本组内变量名为 "gameplayState" 的变量设置为 4
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "gameplayState", 4) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

require "V2_4/EnvState"