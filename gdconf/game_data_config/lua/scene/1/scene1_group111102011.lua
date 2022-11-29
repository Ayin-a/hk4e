-- 基础信息
local base_info = {
	group_id = 111102011
}

-- DEFS_MISCS
local        defs = {

        gear_info = 
        {        --connect: 每个物件各个旋转档位可连接的对象 0表示无可连接
                [1] = { config_id=11002 , connect = {11003,11004,11005}, point_array_id = 110200001 },
                [2] = { config_id=11003 , connect = {11008,11007,11004, 11002}, point_array_id = 110200002 },
                [3] = { config_id= 11004 , connect = {11007,11005,11002, 11003}, point_array_id = 110200003},
                [4] = { config_id=11005 , connect = {11004,11007, 11010,11006}, point_array_id = 110200004},
                [5] = { config_id= 11006 , connect = {11007,11010,11011, 11005}, point_array_id = 110200005 },
                [6] = { config_id=11007 , connect = {11008,11010,11004}, point_array_id = 110200006 },
                [7] = { config_id=11008 , connect = {11009,11007,11003}, point_array_id = 110200007 },
                [8] = { config_id=11009 , connect = {11008,11007,11010}, point_array_id = 110200008 },
                [9] = { config_id=11010 , connect = {11011,11006, 11007,11008}, point_array_id = 110200009 },
                [10] = { config_id=11011 , connect = {11006,11010}, point_array_id = 110200010 },
        },

        --几种解
        solutions = 
        {
                --[解法x] = {gear_info[1]切到它的第x档, gear_info[2]切到它的第y档...}
                [1] = { connection = {1,3,2,4,4,3,2,1,3,1}, ends = {11006, }},
                [2] = { connection = {1,4,4,1,4,3,2,1,3,1}, ends = {11002, }},
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
	{ config_id = 11002, gadget_id = 70310178, pos = { x = 1569.807, y = 252.081, z = -1647.818 }, rot = { x = 0.000, y = 293.942, z = 0.000 }, level = 1, is_use_point_array = true },
	{ config_id = 11003, gadget_id = 70310178, pos = { x = 1569.464, y = 252.081, z = -1643.725 }, rot = { x = 0.000, y = 3.813, z = 0.000 }, level = 1, is_use_point_array = true },
	{ config_id = 11004, gadget_id = 70310178, pos = { x = 1564.902, y = 252.081, z = -1643.739 }, rot = { x = 0.000, y = 85.177, z = 0.000 }, level = 1, is_use_point_array = true },
	{ config_id = 11005, gadget_id = 70310178, pos = { x = 1560.115, y = 252.081, z = -1643.832 }, rot = { x = 0.000, y = 338.143, z = 0.000 }, level = 1, is_use_point_array = true },
	{ config_id = 11006, gadget_id = 70310178, pos = { x = 1558.388, y = 252.081, z = -1640.576 }, rot = { x = 0.000, y = 65.024, z = 0.000 }, level = 1, is_use_point_array = true },
	{ config_id = 11007, gadget_id = 70310178, pos = { x = 1564.971, y = 252.081, z = -1639.136 }, rot = { x = 0.000, y = 188.024, z = 0.000 }, level = 1, is_use_point_array = true },
	{ config_id = 11008, gadget_id = 70310178, pos = { x = 1568.858, y = 252.081, z = -1636.375 }, rot = { x = 0.000, y = 166.751, z = 0.000 }, level = 1, is_use_point_array = true },
	{ config_id = 11009, gadget_id = 70310178, pos = { x = 1568.864, y = 252.081, z = -1633.199 }, rot = { x = 0.000, y = 251.692, z = 0.000 }, level = 1, is_use_point_array = true },
	{ config_id = 11010, gadget_id = 70310178, pos = { x = 1561.152, y = 252.081, z = -1636.057 }, rot = { x = 0.000, y = 83.049, z = 0.000 }, level = 1, is_use_point_array = true },
	{ config_id = 11011, gadget_id = 70310178, pos = { x = 1557.333, y = 252.081, z = -1636.083 }, rot = { x = 0.000, y = 163.565, z = 0.000 }, level = 1, is_use_point_array = true },
	{ config_id = 11012, gadget_id = 70211111, pos = { x = 1564.807, y = 252.214, z = -1648.043 }, rot = { x = 0.000, y = 180.548, z = 0.000 }, level = 11, chest_drop_id = 1000100, drop_count = 1, isOneoff = true, persistent = true }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	-- 满足解法条件生成宝箱
	{ config_id = 1011013, name = "VARIABLE_CHANGE_11013", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_11013", action = "action_EVENT_VARIABLE_CHANGE_11013", trigger_count = 0 }
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
		gadgets = { 11002, 11003, 11004, 11005, 11006, 11007, 11008, 11009, 11010, 11011 },
		regions = { },
		triggers = { "VARIABLE_CHANGE_11013" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 11012 },
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
function condition_EVENT_VARIABLE_CHANGE_11013(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"solution"大于1
	if ScriptLib.GetGroupVariableValue(context, "solution") >= 1 then
			return true
	end
	
	return false
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_11013(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 111102011, 2)
	
	return 0
end

require "V2_8/ConstellationMachine"