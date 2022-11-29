-- 基础信息
local base_info = {
	group_id = 250079002
}

-- DEFS_MISCS
local        defs = {

        gear_info = 
        {        --connect: 每个物件各个旋转档位可连接的对象 0表示无可连接
                [1] = { config_id=2001 , connect = {2002,2006,2004}, point_array_id = 1 },
                [2] = { config_id=2002 , connect = {2001,2004,2006,2003}, point_array_id = 2 },
                [3] = { config_id= 2003 , connect = {2002,2005,2006}, point_array_id = 3},
                [4] = { config_id=2004 , connect = {2001,2005, 2006,2002}, point_array_id = 4},
                [5] = { config_id= 2005 , connect = {2004,2003,2006}, point_array_id = 5 },
                [6] = { config_id=2006 , connect = {2003,2002,2004,2005}, point_array_id = 6 }
            
        },

        --几种解
        solutions = 
        {
                --[解法x] = {gear_info[1]切到它的第x档, gear_info[2]切到它的第y档...}
                [1] = { connection = {2,3,1,4,1,3}, ends = {}},
[2] = { connection = {2,2,1,3,1,2}, ends = {}}
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
	{ config_id = 2001, gadget_id = 70310178, pos = { x = 393.493, y = 613.406, z = -1646.063 }, rot = { x = 0.000, y = 16.763, z = 0.000 }, level = 1, is_use_point_array = true },
	{ config_id = 2002, gadget_id = 70310178, pos = { x = 400.151, y = 613.406, z = -1648.659 }, rot = { x = 0.000, y = 50.332, z = 0.000 }, level = 1, is_use_point_array = true },
	{ config_id = 2003, gadget_id = 70310178, pos = { x = 404.841, y = 613.659, z = -1651.684 }, rot = { x = 0.000, y = 4.856, z = 0.000 }, level = 1, is_use_point_array = true },
	{ config_id = 2004, gadget_id = 70310178, pos = { x = 395.315, y = 613.406, z = -1639.104 }, rot = { x = 0.000, y = 150.979, z = 0.000 }, level = 1, is_use_point_array = true },
	{ config_id = 2005, gadget_id = 70310178, pos = { x = 395.252, y = 613.406, z = -1633.375 }, rot = { x = 0.000, y = 122.521, z = 0.000 }, level = 1, is_use_point_array = true },
	{ config_id = 2006, gadget_id = 70310178, pos = { x = 407.028, y = 613.406, z = -1639.153 }, rot = { x = 359.148, y = 266.341, z = 0.567 }, level = 1, is_use_point_array = true },
	{ config_id = 2011, gadget_id = 70211111, pos = { x = 388.959, y = 613.406, z = -1648.354 }, rot = { x = 0.000, y = 240.732, z = 0.000 }, level = 1, chest_drop_id = 1000100, drop_count = 1, isOneoff = true, persistent = true }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	-- 满足解法条件生成宝箱
	{ config_id = 1002012, name = "VARIABLE_CHANGE_2012", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_2012", action = "action_EVENT_VARIABLE_CHANGE_2012", trigger_count = 0 }
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
		gadgets = { 2001, 2002, 2003, 2004, 2005, 2006 },
		regions = { },
		triggers = { "VARIABLE_CHANGE_2012" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 2011 },
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
function condition_EVENT_VARIABLE_CHANGE_2012(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"solution"为1
	if ScriptLib.GetGroupVariableValue(context, "solution") >= 1 then
			return true
	end
	
	return false
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_2012(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 250079002, 2)
	
	return 0
end

require "V2_8/ConstellationMachine"