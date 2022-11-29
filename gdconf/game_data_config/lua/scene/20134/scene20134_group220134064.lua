-- 基础信息
local base_info = {
	group_id = 220134064
}

-- DEFS_MISCS
local        defs = {

	gear_info = 
	{        --connect: 每个物件各个旋转档位可连接的对象 0表示无可连接
			[1] = { config_id=64001 , connect = {64004,64002,64003}, point_array_id =78 },
			[2] = { config_id=64002 , connect = {64004,64003,64001}, point_array_id = 79 },
			[3] = { config_id=64003 , connect = {64004,64005,64002}, point_array_id = 80},
			[4] = { config_id=64004 , connect = {64006,64005,64003}, point_array_id = 81},
			[5] = { config_id=64005 , connect = {64003,64004,64006}, point_array_id = 82 },
			[6] = { config_id=64006 , connect = {64003,64005,64007}, point_array_id = 83 },
			[7] = { config_id=64007 , connect = {64005,64006,64008}, point_array_id = 84 },
			[8] = { config_id=64008 , connect = {64005,64007,64006}, point_array_id = 85 },
		   
	},

	--几种解
	solutions = 
	{
			--[解法x] = {gear_info[1]切到它的第x档, gear_info[2]切到它的第y档...}
			[1] = { connection = {2,2,1,2,3,3,3,2}, ends = { 64008}},
			[2] = { connection = {2,3,3,3,2,2,2,2}, ends = {64001}},
			[3] = { connection = {2,2,1,2,3,3,2,2}, ends = {64007}},
			[4] = { connection = {2,2,1,2,3,2,2,2}, ends = {64006}},
			[5] = { connection = {2,2,1,2,2,2,2,2}, ends = {64005}},
			[6] = { connection = {2,2,1,3,2,2,2,2}, ends = {64004}},
			[7] = { connection = {2,2,3,3,2,2,2,2}, ends = {64003}},
			[8] = { connection = {2,3,3,3,2,2,2,2}, ends = {64002}},
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
	{ config_id = 64001, gadget_id = 70310178, pos = { x = 768.998, y = 624.193, z = -1779.607 }, rot = { x = 0.000, y = 334.497, z = 0.000 }, level = 1, is_use_point_array = true },
	{ config_id = 64002, gadget_id = 70310178, pos = { x = 757.630, y = 622.419, z = -1772.510 }, rot = { x = 0.000, y = 117.000, z = 0.000 }, level = 1, is_use_point_array = true },
	{ config_id = 64003, gadget_id = 70310178, pos = { x = 758.939, y = 619.301, z = -1758.166 }, rot = { x = 0.000, y = 184.888, z = 0.000 }, level = 1, is_use_point_array = true },
	{ config_id = 64004, gadget_id = 70310178, pos = { x = 732.778, y = 622.101, z = -1774.110 }, rot = { x = 1.406, y = 62.491, z = 359.876 }, level = 1, is_use_point_array = true },
	{ config_id = 64005, gadget_id = 70310178, pos = { x = 743.528, y = 622.031, z = -1745.452 }, rot = { x = 0.000, y = 246.389, z = 0.000 }, level = 1, is_use_point_array = true },
	{ config_id = 64006, gadget_id = 70310178, pos = { x = 721.452, y = 613.431, z = -1758.655 }, rot = { x = 0.000, y = 3.972, z = 0.000 }, level = 1, is_use_point_array = true },
	{ config_id = 64007, gadget_id = 70310178, pos = { x = 721.096, y = 620.322, z = -1747.829 }, rot = { x = 0.000, y = 292.910, z = 0.000 }, level = 1, is_use_point_array = true },
	{ config_id = 64008, gadget_id = 70310178, pos = { x = 715.432, y = 621.336, z = -1743.939 }, rot = { x = 0.000, y = 164.683, z = 0.000 }, level = 1, is_use_point_array = true },
	{ config_id = 64011, gadget_id = 70211111, pos = { x = 744.978, y = 617.221, z = -1756.579 }, rot = { x = 0.000, y = 34.476, z = 0.000 }, level = 16, drop_tag = "解谜中级群岛", isOneoff = true, persistent = true }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	-- 满足解法条件生成宝箱
	{ config_id = 1064012, name = "VARIABLE_CHANGE_64012", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_64012", action = "action_EVENT_VARIABLE_CHANGE_64012", trigger_count = 0 }
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
	end_suite = 2,
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
		gadgets = { 64001, 64002, 64003, 64004, 64005, 64006, 64007, 64008 },
		regions = { },
		triggers = { "VARIABLE_CHANGE_64012" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 64011 },
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
function condition_EVENT_VARIABLE_CHANGE_64012(context, evt)
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
function action_EVENT_VARIABLE_CHANGE_64012(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 220134064, 2)
	
	-- group调整group进度,只对非randSuite有效
	if 0 ~= ScriptLib.GoToGroupSuite(context, 220134064, 2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : goto_groupSuite")
		return -1
	end
	
	return 0
end

require "V2_8/ConstellationMachine"