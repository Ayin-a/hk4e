-- 基础信息
local base_info = {
	group_id = 199003138
}

-- DEFS_MISCS
local        defs = {
guide_region =138006 ,
        gear_info = 
        {        --connect: 每个物件各个旋转档位可连接的对象 0表示无可连接
                [1] = { config_id=138001 , connect = {138002,138004,138003}, point_array_id = 900300023 },
                [2] = { config_id=138002 , connect = {138004,138003,138001}, point_array_id = 900300024 },
                [3] = { config_id= 138003 , connect = {138005,138004,138002, 138001}, point_array_id = 900300025},
                [4] = { config_id=138004 , connect = {138003,138001, 138002,138005}, point_array_id =900300026},
                [5] = { config_id= 138005 , connect = {138003,138004}, point_array_id =900300027 },
               
        },

        --几种解
        solutions = 
        {
                --[解法x] = {gear_info[1]切到它的第x档, gear_info[2]切到它的第y档...}
                [1] = { connection = {1,2,4,1,2}, ends = {}},
                [2] = { connection = {3,3,3,1,2}, ends = { }},
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
	[138001] = { config_id = 138001, gadget_id = 70310178, pos = { x = -722.258, y = 120.675, z = -12.094 }, rot = { x = 0.000, y = 293.942, z = 0.000 }, level = 20, persistent = true, is_use_point_array = true, area_id = 403 },
	[138002] = { config_id = 138002, gadget_id = 70310178, pos = { x = -711.526, y = 120.787, z = -0.407 }, rot = { x = 0.000, y = 3.813, z = 0.000 }, level = 20, persistent = true, is_use_point_array = true, area_id = 403 },
	[138003] = { config_id = 138003, gadget_id = 70310178, pos = { x = -729.782, y = 121.128, z = 6.070 }, rot = { x = 0.000, y = 85.177, z = 0.000 }, level = 20, persistent = true, is_use_point_array = true, area_id = 403 },
	[138004] = { config_id = 138004, gadget_id = 70310178, pos = { x = -721.148, y = 121.366, z = 16.294 }, rot = { x = 0.000, y = 338.143, z = 0.000 }, level = 20, persistent = true, is_use_point_array = true, area_id = 403 },
	[138005] = { config_id = 138005, gadget_id = 70310178, pos = { x = -725.822, y = 122.783, z = 25.654 }, rot = { x = 0.000, y = 65.024, z = 0.000 }, level = 20, persistent = true, is_use_point_array = true, area_id = 403 },
	[138011] = { config_id = 138011, gadget_id = 70211121, pos = { x = -736.807, y = 120.620, z = -10.951 }, rot = { x = 0.000, y = 44.871, z = 0.000 }, level = 16, drop_tag = "解谜高级群岛", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 403 }
}

-- 区域
regions = {
	[138006] = { config_id = 138006, shape = RegionShape.SPHERE, radius = 15, pos = { x = -717.168, y = 120.620, z = -1.045 }, area_id = 403 }
}

-- 触发器
triggers = {
	{ config_id = 1138006, name = "ENTER_REGION_138006", event = EventType.EVENT_ENTER_REGION, source = "", condition = "", action = "" },
	-- 满足解法条件生成宝箱
	{ config_id = 1138012, name = "VARIABLE_CHANGE_138012", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_138012", action = "action_EVENT_VARIABLE_CHANGE_138012", trigger_count = 0 }
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
		gadgets = { 138001, 138002, 138003, 138004, 138005 },
		regions = { 138006 },
		triggers = { "ENTER_REGION_138006", "VARIABLE_CHANGE_138012" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 138011 },
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
function condition_EVENT_VARIABLE_CHANGE_138012(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"solution"为1
	if ScriptLib.GetGroupVariableValue(context, "solution") < 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_138012(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 199003138, 2)
	
	return 0
end

require "V2_8/ConstellationMachine"