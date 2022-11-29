-- 基础信息
local base_info = {
	group_id = 155005013
}

-- Trigger变量
local defs = {
	group_ID = 155005013,
	gadget_wall_1 = 13007,
	gadget_wall_2 = 13009,
	gadget_wall_3 = 0,
	gadget_wall_4 = 0,
	pointarray_route = 500500001,
	gadget_controller_1 = 13012,
	gadget_controller_2 = 13013,
	gadget_controller_3 = 0,
	gadget_controller_4 = 0
}

-- DEFS_MISCS
local EnvControlGadgets = {13012,13013,}
local DayAppearGadgets = {}
local NightAppearGadgets = {}


MaxSize = 12
ControllerWallMap = 
{
	{defs.gadget_controller_1,
		{
			{defs.gadget_wall_1,{6,11}}, 
		}
	},
	{defs.gadget_controller_2,
		{
			{defs.gadget_wall_2,{9,10}},
		}
	},

}


--手动填写
StartWallMap = 
{
	{defs.gadget_wall_1,6},
	{defs.gadget_wall_2,9},

}
--手动填写
StartBlockerMap = 
{
	--gadgetid, 阻挡的pointArrayIndex, gadgetState
}
--目标解法
TargetSolution = 
{
	11,10
}

--[[
	1=谜题未解开
	2=谜题已经解开
	3=宝箱开启
]]

local gameplayStateFuncitons = 
{
	["0"] = function(context)

	end,
	["1"] = function(context)
		
		ScriptLib.AddExtraGroupSuite(context, defs.group_ID, 2)
		DayNight_Gadget_Unlock(context,13012)
		DayNight_Gadget_Unlock(context,13013)
	end,
	["2"] = function(context)
		ScriptLib.AddExtraGroupSuite(context, defs.group_ID, 2)

		ScriptLib.AddQuestProgress(context, "72177_SolvePuzzle")

	end,
	["3"] = function(context)
		ScriptLib.AddExtraGroupSuite(context, defs.group_ID, 2)
		DayNight_Gadget_Finish(context,13012)
		DayNight_Gadget_Finish(context,13013)
		MovePlatform(context,defs.gadget_wall_1,defs.pointarray_route,{11},0,false)
		MovePlatform(context,defs.gadget_wall_2,defs.pointarray_route,{10},0,false)
		ScriptLib.SetGadgetStateByConfigId(context, 13003, GadgetState.Default)

	end,
	["4"] = function(context)
		ScriptLib.AddExtraGroupSuite(context, defs.group_ID, 2)
		DayNight_Gadget_Finish(context,13012)
		DayNight_Gadget_Finish(context,13013)
		MovePlatform(context,defs.gadget_wall_1,defs.pointarray_route,{11},0,false)
		MovePlatform(context,defs.gadget_wall_2,defs.pointarray_route,{10},0,false)
		ScriptLib.AddQuestProgress(context, "72177_OathPieceFound")
	end
}


function UpdateGamePlayState(context)
	local state = ScriptLib.GetGroupVariableValue(context, "gameplayState") 

	gameplayStateFuncitons[tostring(state)](context)

end


function MovePlatform(context,platform_id,pointarray_id,routelist,routemode,turnmode)
	ScriptLib.SetPlatformPointArray(context, platform_id, pointarray_id, routelist, { route_type = routemode,turn_mode = turnmode } )
	return 0
end

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 13003, gadget_id = 70211112, pos = { x = 756.214, y = 211.050, z = 617.590 }, rot = { x = 0.018, y = 0.000, z = 1.575 }, level = 16, drop_tag = "解谜中级稻妻", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 200 },
	{ config_id = 13007, gadget_id = 70290170, pos = { x = 751.449, y = 209.679, z = 627.197 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 36, is_use_point_array = true, area_id = 200 },
	{ config_id = 13009, gadget_id = 70290170, pos = { x = 746.520, y = 209.679, z = 622.159 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, is_use_point_array = true, area_id = 200 },
	{ config_id = 13012, gadget_id = 70360305, pos = { x = 734.080, y = 209.886, z = 627.406 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 36, area_id = 200 },
	{ config_id = 13013, gadget_id = 70360305, pos = { x = 746.502, y = 211.498, z = 602.571 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, area_id = 200 }
}

-- 区域
regions = {
	-- 解谜完成
	{ config_id = 13001, shape = RegionShape.CUBIC, size = { x = 9.000, y = 10.000, z = 9.000 }, pos = { x = 756.349, y = 215.221, z = 625.569 }, area_id = 200 }
}

-- 触发器
triggers = {
	-- 解谜完成
	{ config_id = 1013001, name = "ENTER_REGION_13001", event = EventType.EVENT_ENTER_REGION, source = "1", condition = "condition_EVENT_ENTER_REGION_13001", action = "action_EVENT_ENTER_REGION_13001", trigger_count = 0 },
	-- 初始化
	{ config_id = 1013004, name = "GROUP_LOAD_13004", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_13004", trigger_count = 0 },
	-- 打开宝箱获取对应的道具
	{ config_id = 1013005, name = "GADGET_STATE_CHANGE_13005", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_13005", action = "action_EVENT_GADGET_STATE_CHANGE_13005", trigger_count = 0 },
	-- 监听gameplayState
	{ config_id = 1013006, name = "VARIABLE_CHANGE_13006", event = EventType.EVENT_VARIABLE_CHANGE, source = "gameplayState", condition = "", action = "action_EVENT_VARIABLE_CHANGE_13006", trigger_count = 0 },
	-- 播放Cutscene
	{ config_id = 1013008, name = "GADGET_STATE_CHANGE_13008", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_13008", action = "action_EVENT_GADGET_STATE_CHANGE_13008", trigger_count = 0 },
	-- 播放Cutscene
	{ config_id = 1013010, name = "GADGET_STATE_CHANGE_13010", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_13010", action = "action_EVENT_GADGET_STATE_CHANGE_13010", trigger_count = 0 },
	-- 玩法完成
	{ config_id = 1013011, name = "VARIABLE_CHANGE_13011", event = EventType.EVENT_VARIABLE_CHANGE, source = "has_succeeded", condition = "condition_EVENT_VARIABLE_CHANGE_13011", action = "action_EVENT_VARIABLE_CHANGE_13011", trigger_count = 0 },
	-- 开启玩法 7228401
	{ config_id = 1013014, name = "QUEST_START_13014", event = EventType.EVENT_QUEST_START, source = "7228401", condition = "", action = "action_EVENT_QUEST_START_13014", trigger_count = 0 },
	-- 开启玩法 7217738
	{ config_id = 1013015, name = "QUEST_START_13015", event = EventType.EVENT_QUEST_START, source = "7217738", condition = "", action = "action_EVENT_QUEST_START_13015", trigger_count = 0 },
	-- 7217705[10] Start 谜题已经解开
	{ config_id = 1013016, name = "QUEST_START_13016", event = EventType.EVENT_QUEST_START, source = "7228402", condition = "", action = "action_EVENT_QUEST_START_13016", trigger_count = 0 },
	-- 7217739[13] Start 谜题已经解开
	{ config_id = 1013017, name = "QUEST_START_13017", event = EventType.EVENT_QUEST_START, source = "7217739", condition = "", action = "action_EVENT_QUEST_START_13017", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "gameplayState", value = 0, no_refresh = true },
	{ config_id = 2, name = "isCsPlayed_01", value = 0, no_refresh = true },
	{ config_id = 3, name = "isCsPlayed_02", value = 0, no_refresh = true }
}

-- 废弃数据
garbages = {
	triggers = {
		{ config_id = 1013002, name = "QUEST_START_13002", event = EventType.EVENT_QUEST_START, source = "7217702", condition = "", action = "action_EVENT_QUEST_START_13002", trigger_count = 0 }
	}
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
		triggers = { "GROUP_LOAD_13004", "VARIABLE_CHANGE_13006", "QUEST_START_13014", "QUEST_START_13015" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 13003, 13007, 13009, 13012, 13013 },
		regions = { 13001 },
		triggers = { "ENTER_REGION_13001", "GROUP_LOAD_13004", "GADGET_STATE_CHANGE_13005", "VARIABLE_CHANGE_13006", "GADGET_STATE_CHANGE_13008", "GADGET_STATE_CHANGE_13010", "VARIABLE_CHANGE_13011", "QUEST_START_13016", "QUEST_START_13017" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_13001(context, evt)
	if evt.param1 ~= 13001 then return false end
	
	-- 判断角色数量不少于0
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 0 then
		return false
	end
	
	-- 判断变量"gameplayState"为1
	if ScriptLib.GetGroupVariableValue(context, "gameplayState") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_13001(context, evt)
	-- 将本组内变量名为 "gameplayState" 的变量设置为 2
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "gameplayState", 2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_GROUP_LOAD_13004(context, evt)
	UpdateGamePlayState(context)
	
		return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_13005(context, evt)
	-- 检测config_id为13003的gadget是否从GadgetState.Default变为GadgetState.ChestOpened
	if 13003 ~= evt.param2 or GadgetState.ChestOpened ~= evt.param1 or GadgetState.Default ~= evt.param3 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_13005(context, evt)
	-- 将本组内变量名为 "gameplayState" 的变量设置为 4
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "gameplayState", 4) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_13006(context, evt)
	if evt.param1 == evt.param2 then return -1 end
	
	if evt.param1 == evt.param2 then return -1 end
	
			
			UpdateGamePlayState(context)
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_13008(context, evt)
	if 222 ~= ScriptLib.GetGadgetStateByConfigId(context, 155005013, 13012) then
		return false
	end
	
	if 0 ~= ScriptLib.GetGroupVariableValue(context, "isCsPlayed_01") then 
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_13008(context, evt)
	-- 通知场景上的所有玩家播放名字为57 的cutscene
	if 0 ~= ScriptLib.PlayCutScene(context, 57, 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : play_cutscene")
			return -1
		end 
	
	-- 将本组内变量名为 "isCsPlayed_01" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "isCsPlayed_01", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_13010(context, evt)
	if 222 ~= ScriptLib.GetGadgetStateByConfigId(context, 155005013, 13013) then
		return false
	end
	
	if 0 ~= ScriptLib.GetGroupVariableValue(context, "isCsPlayed_02") then 
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_13010(context, evt)
	-- 通知场景上的所有玩家播放名字为56 的cutscene
	if 0 ~= ScriptLib.PlayCutScene(context, 56, 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : play_cutscene")
			return -1
		end 
	
	-- 将本组内变量名为 "isCsPlayed_02" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "isCsPlayed_02", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_13011(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"has_succeeded"为1
	if ScriptLib.GetGroupVariableValue(context, "has_succeeded") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_13011(context, evt)
	-- 将本组内变量名为 "gameplayState" 的变量设置为 2
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "gameplayState", 2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_QUEST_START_13014(context, evt)
	-- 将本组内变量名为 "gameplayState" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "gameplayState", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_QUEST_START_13015(context, evt)
	-- 将本组内变量名为 "gameplayState" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "gameplayState", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_QUEST_START_13016(context, evt)
	-- 将本组内变量名为 "gameplayState" 的变量设置为 3
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "gameplayState", 3) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_QUEST_START_13017(context, evt)
	-- 将本组内变量名为 "gameplayState" 的变量设置为 3
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "gameplayState", 3) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

require "V2_4/EnvState"
require "V2_4/WallMaze"