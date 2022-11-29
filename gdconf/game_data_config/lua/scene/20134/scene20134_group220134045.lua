-- 基础信息
local base_info = {
	group_id = 220134045
}

-- DEFS_MISCS
local        defs = {

      gear_info = {
       [1] = { config_id=45001 , connect = {45003, 45002, 45005, 45006, 45004}, point_array_id = 40},
                [2] = { config_id=45002 , connect = {45003, 45001, 45005}, point_array_id = 41 },
                [3] = { config_id= 45003 , connect = {45002, 45001, 45004}, point_array_id = 42},
                [4] = { config_id=45004 , connect = {45003, 45002, 45001, 45005, 45006}, point_array_id = 43},
                [5] = { config_id= 45005 , connect = {45006, 45001, 45002}, point_array_id = 44 },
                [6] = { config_id=45006 , connect = {45004, 45001, 45005}, point_array_id = 45 },
             
        },


        --几种解
        solutions = 
        {
                --[解法x] = {gear_info[1]切到它的第x档, gear_info[2]切到它的第y档...}
                [1] = { connection = {2,1,3,5,2,3}, ends = {}},
                [2] = { connection = {3,2,1,1,1,1}, ends = {}},
        },
turn_option = 31,
}

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
	{ config_id = 45001, gadget_id = 70310178, pos = { x = 674.823, y = 619.198, z = -1570.746 }, rot = { x = 0.000, y = 59.655, z = 0.000 }, level = 1, is_use_point_array = true },
	{ config_id = 45002, gadget_id = 70310178, pos = { x = 668.191, y = 619.198, z = -1568.607 }, rot = { x = 0.000, y = 151.912, z = 0.000 }, level = 1, is_use_point_array = true },
	{ config_id = 45003, gadget_id = 70310178, pos = { x = 670.232, y = 619.198, z = -1561.842 }, rot = { x = 0.000, y = 96.705, z = 0.000 }, level = 1, is_use_point_array = true },
	{ config_id = 45004, gadget_id = 70310178, pos = { x = 685.482, y = 619.198, z = -1564.695 }, rot = { x = 0.000, y = 198.470, z = 0.000 }, level = 1, is_use_point_array = true },
	{ config_id = 45005, gadget_id = 70310178, pos = { x = 672.701, y = 619.198, z = -1576.974 }, rot = { x = 0.000, y = 326.403, z = 0.000 }, level = 1, is_use_point_array = true },
	{ config_id = 45006, gadget_id = 70310178, pos = { x = 679.393, y = 619.198, z = -1579.088 }, rot = { x = 0.000, y = 286.357, z = 0.000 }, level = 1, is_use_point_array = true },
	{ config_id = 45011, gadget_id = 70211111, pos = { x = 679.564, y = 619.198, z = -1568.027 }, rot = { x = 0.000, y = 240.939, z = 0.000 }, level = 16, drop_tag = "解谜中级群岛", isOneoff = true, persistent = true }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	-- 满足解法条件生成宝箱
	{ config_id = 1045012, name = "VARIABLE_CHANGE_45012", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_45012", action = "action_EVENT_VARIABLE_CHANGE_45012", trigger_count = 0 }
}

-- 变量
variables = {
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
		gadgets = { 45001, 45002, 45003, 45004, 45005, 45006 },
		regions = { },
		triggers = { "VARIABLE_CHANGE_45012" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 45011 },
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

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_45012(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"solution"为3
	if ScriptLib.GetGroupVariableValue(context, "solution") < 1 
	 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_45012(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 220134045, 2)
	
	return 0
end

require "V2_8/ConstellationMachine"