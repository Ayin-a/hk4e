-- 基础信息
local base_info = {
	group_id = 133220664
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 664001, monster_id = 24020101, pos = { x = -2323.704, y = 240.553, z = -4190.014 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 17, drop_id = 1000100, disableWander = true, pose_id = 100, area_id = 11 },
	{ config_id = 664002, monster_id = 24020201, pos = { x = -2313.562, y = 239.757, z = -4180.159 }, rot = { x = 0.000, y = 269.023, z = 0.000 }, level = 17, drop_id = 1000100, disableWander = true, pose_id = 100, area_id = 11 },
	{ config_id = 664003, monster_id = 24020301, pos = { x = -2339.002, y = 238.776, z = -4184.123 }, rot = { x = 0.000, y = 80.953, z = 0.000 }, level = 17, drop_id = 1000100, disableWander = true, pose_id = 100, area_id = 11 },
	{ config_id = 664004, monster_id = 24020401, pos = { x = -2327.471, y = 237.562, z = -4171.795 }, rot = { x = 0.000, y = 176.686, z = 0.000 }, level = 17, drop_id = 1000100, disableWander = true, pose_id = 100, area_id = 11 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1664005, name = "GROUP_LOAD_664005", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_664005", trigger_count = 0 },
	{ config_id = 1664006, name = "HUNTING_FINISH_FINAL_664006", event = EventType.EVENT_HUNTING_FINISH_FINAL, source = "", condition = "", action = "action_EVENT_HUNTING_FINISH_FINAL_664006" },
	{ config_id = 1664007, name = "VARIABLE_CHANGE_664007", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_664007", action = "action_EVENT_VARIABLE_CHANGE_664007", trigger_count = 0 },
	{ config_id = 1664008, name = "VARIABLE_CHANGE_664008", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_664008", action = "action_EVENT_VARIABLE_CHANGE_664008", trigger_count = 0 },
	{ config_id = 1664009, name = "VARIABLE_CHANGE_664009", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_664009", action = "action_EVENT_VARIABLE_CHANGE_664009", trigger_count = 0 },
	{ config_id = 1664010, name = "VARIABLE_CHANGE_664010", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_664010", action = "action_EVENT_VARIABLE_CHANGE_664010", trigger_count = 0 }
}

-- 点位
points = {
	{ config_id = 664011, pos = { x = -2325.752, y = 239.043, z = -4181.496 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, area_id = 11 }
}

-- 变量
variables = {
	{ config_id = 1, name = "IS_BOSS_DEAD", value = 0, no_refresh = true }
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
		triggers = { "GROUP_LOAD_664005", "HUNTING_FINISH_FINAL_664006" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = 雄蜂,
		monsters = { 664001 },
		gadgets = { },
		regions = { },
		triggers = { "VARIABLE_CHANGE_664007" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = 藤蔓,
		monsters = { 664002 },
		gadgets = { },
		regions = { },
		triggers = { "VARIABLE_CHANGE_664008" },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = 蜘蛛,
		monsters = { 664003 },
		gadgets = { },
		regions = { },
		triggers = { "VARIABLE_CHANGE_664009" },
		rand_weight = 100
	},
	{
		-- suite_id = 5,
		-- description = 水母,
		monsters = { 664004 },
		gadgets = { },
		regions = { },
		triggers = { "VARIABLE_CHANGE_664010" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发操作
function action_EVENT_GROUP_LOAD_664005(context, evt)
	-- 初始化table
	    local suite_table = {}
	
	-- 需要在group创建时调用，该函数会通过context的groupid读取HuntingData表，来创建entity填充points
	    if 0~= ScriptLib.RefreshHuntingClueGroup(context) then
	        ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_hunting_clue_group")
	        return -1
	    end
	
	-- 根据HuntingData表的配置来激活对应的suite
	    if 0~= ScriptLib.GetHuntingMonsterExtraSuiteIndexVec(context) then
	        suite_table = ScriptLib.GetHuntingMonsterExtraSuiteIndexVec(context)
	        for i,suite_id in ipairs (suite_table) do
	            ScriptLib.AddExtraGroupSuite(context, 133220664, suite_id)
	        end
	    end
	
	return 0
end

-- 触发操作
function action_EVENT_HUNTING_FINISH_FINAL_664006(context, evt)
	-- 将本组内变量名为 "IS_BOSS_DEAD" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "IS_BOSS_DEAD", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_664007(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"IS_BOSS_DEAD"为1
	if ScriptLib.GetGroupVariableValueByGroup(context, "IS_BOSS_DEAD", 133220664) ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_664007(context, evt)
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133220664, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_664008(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"IS_BOSS_DEAD"为1
	if ScriptLib.GetGroupVariableValueByGroup(context, "IS_BOSS_DEAD", 133220664) ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_664008(context, evt)
	-- 删除suite3的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133220664, 3)
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_664009(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"IS_BOSS_DEAD"为1
	if ScriptLib.GetGroupVariableValueByGroup(context, "IS_BOSS_DEAD", 133220664) ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_664009(context, evt)
	-- 删除suite4的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133220664, 4)
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_664010(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"IS_BOSS_DEAD"为1
	if ScriptLib.GetGroupVariableValueByGroup(context, "IS_BOSS_DEAD", 133220664) ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_664010(context, evt)
	-- 删除suite5的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133220664, 5)
	
	return 0
end