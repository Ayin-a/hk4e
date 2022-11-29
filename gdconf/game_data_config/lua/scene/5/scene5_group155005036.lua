-- 基础信息
local base_info = {
	group_id = 155005036
}

-- DEFS_MISCS
local EnvControlGadgets = {36001}
local DayAppearGadgets = {36002}
local NightAppearGadgets = {}


--[[
	0 = 没有触发守卫战斗
	1 = 触发了守卫战斗
	2 = 战斗完成
	3 = 机关解除开启大门
	4 = 玩法完成
]]
local gameplayStateFuncitons = 
{
	["0"] = function(context)
		DayNight_Gadget_Lock(context,36001)

		
	end,
	["1"] = function(context)
		ScriptLib.AddExtraGroupSuite(context, 155005036, 2)
		DayNight_Gadget_Unlock(context,36001)

	end,
	["2"] = function(context)
		
		DayNight_Gadget_Unlock(context,36001)

		
		
	end,
	["3"] = function(context)
		ScriptLib.AddQuestProgress(context, "72192_DefeatMonster")
		DayNight_Gadget_Unlock(context,36001)

		
	end,
	["4"] = function(context)
		DayNight_Gadget_Unlock(context,36001)



	end,
	["5"] = function(context)
		ScriptLib.AddQuestProgress(context, "72192_SolvePuzzle")
		ScriptLib.SetGadgetStateByConfigId(context, 36007, GadgetState.GearStart)
		DayNight_Gadget_Finish(context,36001)

	end,
	["6"] = function(context)
		DayNight_Gadget_Finish(context,36001)
		ScriptLib.SetGadgetStateByConfigId(context, 36007, GadgetState.GearStart)
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
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 36001, gadget_id = 70360309, pos = { x = 511.507, y = 172.492, z = 652.622 }, rot = { x = 2.654, y = 27.477, z = 0.000 }, level = 36, area_id = 200 },
	{ config_id = 36002, gadget_id = 70360314, pos = { x = 511.704, y = 170.494, z = 652.134 }, rot = { x = 2.318, y = 28.623, z = 357.320 }, level = 36, area_id = 200 },
	{ config_id = 36007, gadget_id = 70350006, pos = { x = 514.073, y = 172.248, z = 656.742 }, rot = { x = 0.000, y = 29.971, z = 0.000 }, level = 36, persistent = true, area_id = 200 }
}

-- 区域
regions = {
	-- 夜晚到达狭间密室门前
	{ config_id = 36021, shape = RegionShape.SPHERE, radius = 8, pos = { x = 499.675, y = 172.976, z = 659.277 }, area_id = 200 },
	-- 派蒙Reminder提示
	{ config_id = 36024, shape = RegionShape.SPHERE, radius = 15, pos = { x = 497.004, y = 172.400, z = 661.580 }, area_id = 200 }
}

-- 触发器
triggers = {
	-- 初始化
	{ config_id = 1036005, name = "GROUP_LOAD_36005", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_36005", trigger_count = 0 },
	-- 监听震动机关激活
	{ config_id = 1036006, name = "VARIABLE_CHANGE_36006", event = EventType.EVENT_VARIABLE_CHANGE, source = "activecount", condition = "condition_EVENT_VARIABLE_CHANGE_36006", action = "action_EVENT_VARIABLE_CHANGE_36006", trigger_count = 0 },
	-- 监听gameplayState
	{ config_id = 1036008, name = "VARIABLE_CHANGE_36008", event = EventType.EVENT_VARIABLE_CHANGE, source = "gameplayState", condition = "", action = "action_EVENT_VARIABLE_CHANGE_36008", trigger_count = 0 },
	-- 7219203[3] Start 解除水纹密室的谜题
	{ config_id = 1036015, name = "QUEST_START_36015", event = EventType.EVENT_QUEST_START, source = "7219203", condition = "", action = "action_EVENT_QUEST_START_36015", trigger_count = 0 },
	-- 7219204[4] Start 完成解除水纹密室
	{ config_id = 1036016, name = "QUEST_START_36016", event = EventType.EVENT_QUEST_START, source = "7219204", condition = "", action = "action_EVENT_QUEST_START_36016", trigger_count = 0 },
	-- 开启震动机关
	{ config_id = 1036020, name = "GADGET_STATE_CHANGE_36020", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_36020", action = "action_EVENT_GADGET_STATE_CHANGE_36020", trigger_count = 0 },
	-- 夜晚到达狭间密室门前
	{ config_id = 1036021, name = "ENTER_REGION_36021", event = EventType.EVENT_ENTER_REGION, source = "1", condition = "condition_EVENT_ENTER_REGION_36021", action = "action_EVENT_ENTER_REGION_36021", trigger_count = 0 },
	-- 7219201[1] Start
	{ config_id = 1036023, name = "QUEST_START_36023", event = EventType.EVENT_QUEST_START, source = "7219201", condition = "", action = "action_EVENT_QUEST_START_36023", trigger_count = 0 },
	-- 派蒙Reminder提示
	{ config_id = 1036024, name = "ENTER_REGION_36024", event = EventType.EVENT_ENTER_REGION, source = "1", condition = "condition_EVENT_ENTER_REGION_36024", action = "action_EVENT_ENTER_REGION_36024", trigger_count = 0 },
	-- 重置Reminder
	{ config_id = 1036025, name = "TIME_AXIS_PASS_36025", event = EventType.EVENT_TIME_AXIS_PASS, source = "reactiveReminder", condition = "", action = "action_EVENT_TIME_AXIS_PASS_36025", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "gameplayState", value = 0, no_refresh = true },
	{ config_id = 2, name = "activecount", value = 0, no_refresh = true },
	{ config_id = 3, name = "ReminderTimer", value = 0, no_refresh = false }
}

-- 废弃数据
garbages = {
	triggers = {
		{ config_id = 1036018, name = "GADGET_CREATE_36018", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_36018", action = "action_EVENT_GADGET_CREATE_36018", trigger_count = 0 }
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
		gadgets = { 36001, 36007 },
		regions = { 36021 },
		triggers = { "GROUP_LOAD_36005", "VARIABLE_CHANGE_36006", "VARIABLE_CHANGE_36008", "QUEST_START_36015", "QUEST_START_36016", "GADGET_STATE_CHANGE_36020", "ENTER_REGION_36021", "QUEST_START_36023" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { },
		regions = { 36024 },
		triggers = { "ENTER_REGION_36024", "TIME_AXIS_PASS_36025" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { },
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
function action_EVENT_GROUP_LOAD_36005(context, evt)
	UpdateGamePlayState(context)
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_36006(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"activecount"为1
	if ScriptLib.GetGroupVariableValue(context, "activecount") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_36006(context, evt)
	-- 将本组内变量名为 "gameplayState" 的变量设置为 5
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "gameplayState", 5) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_36008(context, evt)
	if evt.param1 == evt.param2 then return -1 end
	
	UpdateGamePlayState(context)
	
	return 0
end

-- 触发操作
function action_EVENT_QUEST_START_36015(context, evt)
	-- 将本组内变量名为 "gameplayState" 的变量设置为 4
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "gameplayState", 4) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_QUEST_START_36016(context, evt)
	
	 ScriptLib.SetGroupVariableValue(context, "gameplayState", 6)
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_36020(context, evt)
	if 322 ~= ScriptLib.GetGadgetStateByConfigId(context, 155005036, 36001) then
		return false
	end
	
	-- 判断变量"gameplayState"为4
	if ScriptLib.GetGroupVariableValue(context, "gameplayState") ~= 4 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_36020(context, evt)
	-- 针对当前group内变量名为 "activecount" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "activecount", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_36021(context, evt)
	if evt.param1 ~= 36021 then return false end
	
	-- 判断角色数量不少于0
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_36021(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "72192_activeEnemy") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_QUEST_START_36023(context, evt)
	-- 将本组内变量名为 "gameplayState" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "gameplayState", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_36024(context, evt)
	if evt.param1 ~= 36024 then return false end
	
	-- 判断角色数量不少于0
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 0 then
		return false
	end
	
	-- 判断变量"gameplayState"为1
	if ScriptLib.GetGroupVariableValue(context, "gameplayState") ~= 1 then
			return false
	end
	
	-- 返回渊下宫当前是否为黑夜
	    local uid_List = ScriptLib.GetSceneUidList(context)
	    local host_id = uid_List[1]
	    local current_env_state_id = ScriptLib.GetCurrentLevelTagVec(context, 1)[1]
	    if (current_env_state_id == 2) then
	        return false
	    else
	        return true
	    end 
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_36024(context, evt)
	-- 调用提示id为 7217716 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 7217716) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	-- 将本组内变量名为 "ReminderTimer" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "ReminderTimer", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 创建标识为"reactiveReminder"，时间节点为{10}的时间轴，false用于控制该时间轴是否循环
	ScriptLib.InitTimeAxis(context, "reactiveReminder", {10}, false)
	
	
	return 0
end

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_36025(context, evt)
	-- 将本组内变量名为 "ReminderTimer" 的变量设置为 0
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "ReminderTimer", 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

require "V2_4/EnvState"