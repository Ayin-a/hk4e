-- 基础信息
local base_info = {
	group_id = 155005027
}

-- DEFS_MISCS
local EnvControlGadgets = {27001}
local DayAppearGadgets = {}
local NightAppearGadgets = {}
--[[
	0 = 玩家没有到达图书馆 
	1 = 玩家触发了机关 
	2 = 玩家打败了敌人 
	3 = 玩家解锁了机关
]]



local gameplayStateFuncitons = 
{
	["0"] = function(context)
		
	end,
	["1"] = function(context)
		DayNight_Gadget_Lock(context,27001)
		ScriptLib.AddExtraGroupSuite(context, 155005027, 2)
		
		
	end,
	["2"] = function(context)
		ScriptLib.AddExtraGroupSuite(context, 155005027, 3)
		DayNight_Gadget_Lock(context,27001)
	
	end,
	["3"] = function(context)
		ScriptLib.AddExtraGroupSuite(context, 155005027, 4)
		DayNight_Gadget_Unlock(context,27001)
	end,
	["4"] = function(context)

		ScriptLib.SetGroupGadgetStateByConfigId(context, 155005027, 27006, 201)
		DayNight_Gadget_Finish(context,27001)
	end,

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
	{ config_id = 27007, monster_id = 21011601, pos = { x = 586.757, y = 206.897, z = 647.941 }, rot = { x = 1.214, y = 290.063, z = 7.078 }, level = 36, drop_id = 1000100, area_id = 200 },
	{ config_id = 27008, monster_id = 21010101, pos = { x = 580.949, y = 206.163, z = 644.587 }, rot = { x = 0.000, y = 345.829, z = 0.000 }, level = 36, drop_id = 1000100, area_id = 200 },
	{ config_id = 27009, monster_id = 21010101, pos = { x = 585.986, y = 208.248, z = 654.501 }, rot = { x = 0.000, y = 246.846, z = 0.000 }, level = 36, drop_id = 1000100, area_id = 200 },
	{ config_id = 27010, monster_id = 22010101, pos = { x = 580.382, y = 206.660, z = 651.503 }, rot = { x = 0.000, y = 305.082, z = 0.000 }, level = 36, drop_id = 1000100, area_id = 200 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 27001, gadget_id = 70360305, pos = { x = 582.668, y = 206.783, z = 650.027 }, rot = { x = 1.073, y = 297.933, z = 7.394 }, level = 36, area_id = 200 },
	{ config_id = 27006, gadget_id = 70290291, pos = { x = 589.625, y = 207.322, z = 646.021 }, rot = { x = 0.199, y = 301.663, z = 7.254 }, level = 36, persistent = true, area_id = 200 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	-- 断线重连保护
	{ config_id = 1027002, name = "GROUP_LOAD_27002", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_27002", trigger_count = 0 },
	-- 激活机关开启图书馆大门
	{ config_id = 1027003, name = "GADGET_STATE_CHANGE_27003", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_27003", action = "action_EVENT_GADGET_STATE_CHANGE_27003", trigger_count = 0 },
	-- 监听gameplayStateChange
	{ config_id = 1027004, name = "VARIABLE_CHANGE_27004", event = EventType.EVENT_VARIABLE_CHANGE, source = "gameplayState", condition = "", action = "action_EVENT_VARIABLE_CHANGE_27004", trigger_count = 0 },
	-- 判断所有怪物死亡
	{ config_id = 1027011, name = "ANY_MONSTER_DIE_27011", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_27011", action = "action_EVENT_ANY_MONSTER_DIE_27011", trigger_count = 0 },
	-- 7217710[6] Start 收到任务系统发送的通知 添加敌人GroupSuit
	{ config_id = 1027012, name = "QUEST_START_27012", event = EventType.EVENT_QUEST_START, source = "7217710", condition = "", action = "action_EVENT_QUEST_START_27012", trigger_count = 0 },
	-- 7217711[7] Start 打败敌人,解锁震动机关
	{ config_id = 1027013, name = "QUEST_START_27013", event = EventType.EVENT_QUEST_START, source = "7217711", condition = "", action = "action_EVENT_QUEST_START_27013", trigger_count = 0 },
	-- 7217704[8] Start 解锁了图书馆大门
	{ config_id = 1027015, name = "QUEST_START_27015", event = EventType.EVENT_QUEST_START, source = "7217756", condition = "", action = "action_EVENT_QUEST_START_27015", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "gameplayState", value = 1, no_refresh = true },
	{ config_id = 2, name = "pregameplayState", value = 0, no_refresh = true }
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
		gadgets = { 27001, 27006 },
		regions = { },
		triggers = { "GROUP_LOAD_27002", "VARIABLE_CHANGE_27004", "QUEST_START_27012", "QUEST_START_27013", "QUEST_START_27015" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { 27007, 27008, 27009, 27010 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_27011" },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = ,
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_27003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发操作
function action_EVENT_GROUP_LOAD_27002(context, evt)
	UpdateGamePlayState(context)
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_27003(context, evt)
		if 222 ~= ScriptLib.GetGadgetStateByConfigId(context, 155005027, 27001) then
			return false
		end
		
		if 3 ~=  ScriptLib.GetGroupVariableValue(context, "gameplayState") then 
			return false
		end
		
		return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_27003(context, evt)
	ScriptLib.AddQuestProgress(context, "72177_LibOpen")
	return 0
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_27004(context, evt)
	if evt.param1 == evt.param2 then return -1 end
	
	UpdateGamePlayState(context)
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_27011(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	-- 判断变量"gameplayState"为2
	if ScriptLib.GetGroupVariableValue(context, "gameplayState") ~= 2 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_27011(context, evt)
	ScriptLib.AddQuestProgress(context, "72177_defateLibGuardian")
	return 0
end

-- 触发操作
function action_EVENT_QUEST_START_27012(context, evt)
	-- 将本组内变量名为 "gameplayState" 的变量设置为 2
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "gameplayState", 2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_QUEST_START_27013(context, evt)
	-- 将本组内变量名为 "gameplayState" 的变量设置为 3
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "gameplayState", 3) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_QUEST_START_27015(context, evt)
	-- 将本组内变量名为 "gameplayState" 的变量设置为 4
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "gameplayState", 4) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

require "V2_4/EnvState"