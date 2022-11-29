-- 基础信息
local base_info = {
	group_id = 155005038
}

-- Trigger变量
local defs = {
	group_id = 155005038
}

-- DEFS_MISCS
local EnvControlGadgets = {38001}
local Worktops = {38001}
local DayAppearGadgets = {}
local NightAppearGadgets = {}


local gameplayStateFuncitons = 
{
	["0"] = function(context)
		DayNight_Gadget_Lock(context,38001)

	end,
	["1"] = function(context)
		ScriptLib.AddExtraGroupSuite(context, 155005038, 2)
		DayNight_Gadget_Lock(context,38001)
		
		
	end,
	["2"] = function(context)
		ScriptLib.AddExtraGroupSuite(context, 155005038, 3)
		DayNight_Gadget_Lock(context,38001)
		
	end,
	["3"] = function(context)
		ScriptLib.AddQuestProgress(context, "72190_DefeatAmbush")
		DayNight_Gadget_Unlock(context,38001)

	end,
	["4"] = function(context)
		ScriptLib.AddQuestProgress(context, "72190_SolvePuzzle")
	end,
	["5"] = function(context)
		ScriptLib.SetGroupGadgetStateByConfigId(context, 155005038, 38006, 201)
		DayNight_Gadget_Finish(context,38001)

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
	{ config_id = 38007, monster_id = 22040101, pos = { x = 219.191, y = 174.436, z = -422.662 }, rot = { x = 0.000, y = 11.629, z = 0.000 }, level = 36, drop_id = 1000100, pose_id = 101, area_id = 200 },
	{ config_id = 38008, monster_id = 22040101, pos = { x = 214.156, y = 173.903, z = -412.055 }, rot = { x = 0.000, y = 58.791, z = 0.000 }, level = 36, drop_id = 1000100, pose_id = 101, area_id = 200 },
	{ config_id = 38009, monster_id = 22040101, pos = { x = 222.079, y = 174.448, z = -414.591 }, rot = { x = 0.000, y = 281.739, z = 0.000 }, level = 36, drop_id = 1000100, pose_id = 101, area_id = 200 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 38001, gadget_id = 70360312, pos = { x = 213.394, y = 174.858, z = -412.741 }, rot = { x = 0.000, y = 98.185, z = 0.000 }, level = 36, area_id = 200 },
	{ config_id = 38006, gadget_id = 70290291, pos = { x = 214.264, y = 174.763, z = -417.471 }, rot = { x = 0.000, y = 59.254, z = 0.000 }, level = 36, area_id = 200 }
}

-- 区域
regions = {
	-- 派蒙提示开启晚上机关
	{ config_id = 38002, shape = RegionShape.SPHERE, radius = 10, pos = { x = 216.602, y = 175.214, z = -416.210 }, area_id = 200 }
}

-- 触发器
triggers = {
	-- 派蒙提示开启晚上机关
	{ config_id = 1038002, name = "ENTER_REGION_38002", event = EventType.EVENT_ENTER_REGION, source = "1", condition = "condition_EVENT_ENTER_REGION_38002", action = "action_EVENT_ENTER_REGION_38002", trigger_count = 0 },
	-- 监听gameplayState
	{ config_id = 1038003, name = "VARIABLE_CHANGE_38003", event = EventType.EVENT_VARIABLE_CHANGE, source = "gameplayState", condition = "", action = "action_EVENT_VARIABLE_CHANGE_38003", trigger_count = 0 },
	-- 7219001[1] Start
	{ config_id = 1038004, name = "QUEST_START_38004", event = EventType.EVENT_QUEST_START, source = "7219001", condition = "", action = "action_EVENT_QUEST_START_38004", trigger_count = 0 },
	-- 解锁谜题
	{ config_id = 1038005, name = "GADGET_STATE_CHANGE_38005", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_38005", action = "action_EVENT_GADGET_STATE_CHANGE_38005", trigger_count = 0 },
	-- 7219003[4] Start
	{ config_id = 1038010, name = "QUEST_START_38010", event = EventType.EVENT_QUEST_START, source = "7219003", condition = "", action = "action_EVENT_QUEST_START_38010", trigger_count = 0 },
	-- 怪物死亡
	{ config_id = 1038011, name = "ANY_MONSTER_DIE_38011", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_38011", action = "action_EVENT_ANY_MONSTER_DIE_38011", trigger_count = 0 },
	-- 初始化,
	{ config_id = 1038012, name = "GROUP_LOAD_38012", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_38012", trigger_count = 0 },
	-- 7219002[2] Start
	{ config_id = 1038013, name = "QUEST_START_38013", event = EventType.EVENT_QUEST_START, source = "7219002", condition = "", action = "action_EVENT_QUEST_START_38013", trigger_count = 0 },
	-- 重置Reminder
	{ config_id = 1038014, name = "TIME_AXIS_PASS_38014", event = EventType.EVENT_TIME_AXIS_PASS, source = "reactiveReminder", condition = "", action = "action_EVENT_TIME_AXIS_PASS_38014", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "gameplayState", value = 0, no_refresh = true },
	{ config_id = 2, name = "ReminderTimer", value = 0, no_refresh = true }
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
		-- description = suite_1,
		monsters = { },
		gadgets = { 38001, 38006 },
		regions = { },
		triggers = { "VARIABLE_CHANGE_38003", "QUEST_START_38004", "GADGET_STATE_CHANGE_38005", "QUEST_START_38010", "GROUP_LOAD_38012", "QUEST_START_38013" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { },
		regions = { 38002 },
		triggers = { "ENTER_REGION_38002", "TIME_AXIS_PASS_38014" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { 38007, 38008, 38009 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_38011" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_38002(context, evt)
	if evt.param1 ~= 38002 then return false end
	
	
	-- 判断角色数量不少于0
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 0 then
		return false
	end
	
	
	-- 判断变量"gameplayState"为1
	if ScriptLib.GetGroupVariableValue(context, "gameplayState") ~= 1 then
			return false
	end
	
	if ScriptLib.GetGroupVariableValue(context, "ReminderTimer") ~= 0 then
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
function action_EVENT_ENTER_REGION_38002(context, evt)
	-- 调用提示id为 7217714 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 7217714) then
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
function action_EVENT_VARIABLE_CHANGE_38003(context, evt)
	if evt.param1 == evt.param2 then return -1 end
	
	UpdateGamePlayState(context)
	
		
		return 0
end

-- 触发操作
function action_EVENT_QUEST_START_38004(context, evt)
	-- 将本组内变量名为 "gameplayState" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "gameplayState", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_38005(context, evt)
		if 38001 ~= evt.param2  then
			return false
		end
		
		return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_38005(context, evt)
			local state_1 = ScriptLib.GetGadgetStateByConfigId(context, 155005038, 38001)
					
					
					if state_1 == 312  then 
						ScriptLib.SetGroupVariableValue(context,"gameplayState",4)
					end
					return 0
end

-- 触发操作
function action_EVENT_QUEST_START_38010(context, evt)
			ScriptLib.SetGroupVariableValue(context,"gameplayState",5)
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_38011(context, evt)
	-- 判断指定group组剩余怪物数量是否是0 
	if ScriptLib.GetGroupMonsterCountByGroupId(context, 155005038) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_38011(context, evt)
	-- 将本组内变量名为 "gameplayState" 的变量设置为 3
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "gameplayState", 3) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_GROUP_LOAD_38012(context, evt)
	UpdateGamePlayState(context)
	return 0
end

-- 触发操作
function action_EVENT_QUEST_START_38013(context, evt)
	ScriptLib.SetGroupVariableValue(context, "gameplayState", 2)
	return 0
end

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_38014(context, evt)
	-- 将本组内变量名为 "ReminderTimer" 的变量设置为 0
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "ReminderTimer", 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

require "V2_4/EnvState"
require "V2_4/EnvStateWorktop"