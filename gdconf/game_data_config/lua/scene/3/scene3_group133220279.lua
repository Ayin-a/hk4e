-- 基础信息
local base_info = {
	group_id = 133220279
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 279002, monster_id = 24020101, pos = { x = -2323.741, y = 240.709, z = -4189.991 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 17, drop_id = 1000100, disableWander = true, pose_id = 100, area_id = 11 },
	{ config_id = 279003, monster_id = 24020201, pos = { x = -2313.599, y = 239.914, z = -4180.136 }, rot = { x = 0.000, y = 269.023, z = 0.000 }, level = 17, drop_id = 1000100, disableWander = true, pose_id = 100, area_id = 11 },
	{ config_id = 279004, monster_id = 24020301, pos = { x = -2339.039, y = 238.933, z = -4184.100 }, rot = { x = 0.000, y = 80.953, z = 0.000 }, level = 17, drop_id = 1000100, disableWander = true, pose_id = 100, area_id = 11 },
	{ config_id = 279005, monster_id = 24020401, pos = { x = -2327.508, y = 237.718, z = -4171.772 }, rot = { x = 0.000, y = 176.686, z = 0.000 }, level = 17, drop_id = 1000100, disableWander = true, pose_id = 100, area_id = 11 }
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
	{ config_id = 1279001, name = "GROUP_LOAD_279001", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_279001", trigger_count = 0 },
	{ config_id = 1279006, name = "HUNTING_FINISH_FINAL_279006", event = EventType.EVENT_HUNTING_FINISH_FINAL, source = "", condition = "", action = "action_EVENT_HUNTING_FINISH_FINAL_279006" },
	{ config_id = 1279008, name = "VARIABLE_CHANGE_279008", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_279008", action = "action_EVENT_VARIABLE_CHANGE_279008", trigger_count = 0 },
	{ config_id = 1279009, name = "VARIABLE_CHANGE_279009", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_279009", action = "action_EVENT_VARIABLE_CHANGE_279009", trigger_count = 0 },
	{ config_id = 1279010, name = "VARIABLE_CHANGE_279010", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_279010", action = "action_EVENT_VARIABLE_CHANGE_279010", trigger_count = 0 },
	{ config_id = 1279011, name = "VARIABLE_CHANGE_279011", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_279011", action = "action_EVENT_VARIABLE_CHANGE_279011", trigger_count = 0 }
}

-- 点位
points = {
	{ config_id = 279007, pos = { x = -2325.789, y = 239.199, z = -4181.473 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, area_id = 11 }
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
		triggers = { "GROUP_LOAD_279001", "HUNTING_FINISH_FINAL_279006" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = 雄蜂,
		monsters = { 279002 },
		gadgets = { },
		regions = { },
		triggers = { "VARIABLE_CHANGE_279008" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = 藤蔓,
		monsters = { 279003 },
		gadgets = { },
		regions = { },
		triggers = { "VARIABLE_CHANGE_279009" },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = 蜘蛛,
		monsters = { 279004 },
		gadgets = { },
		regions = { },
		triggers = { "VARIABLE_CHANGE_279010" },
		rand_weight = 100
	},
	{
		-- suite_id = 5,
		-- description = 水母,
		monsters = { 279005 },
		gadgets = { },
		regions = { },
		triggers = { "VARIABLE_CHANGE_279011" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发操作
function action_EVENT_GROUP_LOAD_279001(context, evt)
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
	            ScriptLib.AddExtraGroupSuite(context, 133220279, suite_id)
	        end
	    end
	
	return 0
end

-- 触发操作
function action_EVENT_HUNTING_FINISH_FINAL_279006(context, evt)
	-- 将本组内变量名为 "IS_BOSS_DEAD" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "IS_BOSS_DEAD", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_279008(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"IS_BOSS_DEAD"为1
	if ScriptLib.GetGroupVariableValueByGroup(context, "IS_BOSS_DEAD", 133220279) ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_279008(context, evt)
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133220279, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_279009(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"IS_BOSS_DEAD"为1
	if ScriptLib.GetGroupVariableValueByGroup(context, "IS_BOSS_DEAD", 133220279) ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_279009(context, evt)
	-- 删除suite3的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133220279, 3)
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_279010(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"IS_BOSS_DEAD"为1
	if ScriptLib.GetGroupVariableValueByGroup(context, "IS_BOSS_DEAD", 133220279) ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_279010(context, evt)
	-- 删除suite4的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133220279, 4)
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_279011(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"IS_BOSS_DEAD"为1
	if ScriptLib.GetGroupVariableValueByGroup(context, "IS_BOSS_DEAD", 133220279) ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_279011(context, evt)
	-- 删除suite5的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133220279, 5)
	
	return 0
end