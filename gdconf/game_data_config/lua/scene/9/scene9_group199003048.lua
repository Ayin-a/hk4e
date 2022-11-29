-- 基础信息
local base_info = {
	group_id = 199003048
}

-- DEFS_MISCS
local        defs = {
guide_region =48009 ,
        gear_info = 
        {        --connect: 每个物件各个旋转档位可连接的对象 0表示无可连接
                [1] = { config_id=48001, connect = {48002,48003,48004}, point_array_id = 900300012 },
                [2] = { config_id=48002 , connect = {48001,48004,48003}, point_array_id = 900300013 },
                [3] = { config_id=48003 , connect = {48004,48001,48002}, point_array_id = 900300014},
                [4] = { config_id=48004 , connect = {48003,48002,48001}, point_array_id = 900300015},
                [5] = { config_id=48005 , connect = {48002,48003,48006}, point_array_id = 900300016 },
                [6] = { config_id=48006 , connect = {48005,48003,48007}, point_array_id = 900300017 },
                [7] = { config_id=48007 , connect = {48006,48003,48004}, point_array_id = 900300018 },
                
        },

        --几种解
        solutions = 
        {
                --[解法x] = {gear_info[1]切到它的第x档, gear_info[2]切到它的第y档...}
                [1] = { connection = {1,3,1,3,1,1,1}, ends = { }},
                [2] = { connection = {3,1,3,1,1,1,1}, ends = { }},
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
	{ config_id = 48001, gadget_id = 70310178, pos = { x = -631.569, y = 206.572, z = 33.744 }, rot = { x = 0.000, y = 313.278, z = 0.000 }, level = 20, is_use_point_array = true, area_id = 403 },
	{ config_id = 48002, gadget_id = 70310178, pos = { x = -634.870, y = 206.194, z = 28.075 }, rot = { x = 0.000, y = 303.896, z = 0.000 }, level = 20, is_use_point_array = true, area_id = 403 },
	{ config_id = 48003, gadget_id = 70310178, pos = { x = -640.602, y = 206.563, z = 32.198 }, rot = { x = 0.000, y = 127.943, z = 0.000 }, level = 20, is_use_point_array = true, area_id = 403 },
	{ config_id = 48004, gadget_id = 70310178, pos = { x = -636.333, y = 206.996, z = 38.680 }, rot = { x = 0.000, y = 141.941, z = 0.000 }, level = 20, is_use_point_array = true, area_id = 403 },
	{ config_id = 48005, gadget_id = 70310178, pos = { x = -641.065, y = 205.748, z = 24.424 }, rot = { x = 0.000, y = 311.327, z = 0.000 }, level = 20, is_use_point_array = true, area_id = 403 },
	{ config_id = 48006, gadget_id = 70310178, pos = { x = -647.103, y = 206.092, z = 28.845 }, rot = { x = 0.000, y = 20.509, z = 0.000 }, level = 20, is_use_point_array = true, area_id = 403 },
	{ config_id = 48007, gadget_id = 70310178, pos = { x = -644.917, y = 206.831, z = 36.734 }, rot = { x = 0.000, y = 83.037, z = 0.000 }, level = 20, is_use_point_array = true, area_id = 403 },
	{ config_id = 48011, gadget_id = 70211111, pos = { x = -624.318, y = 207.334, z = 30.068 }, rot = { x = 0.000, y = 75.493, z = 0.000 }, level = 16, drop_tag = "解谜中级群岛", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 403 }
}

-- 区域
regions = {
	{ config_id = 48009, shape = RegionShape.SPHERE, radius = 15, pos = { x = -639.012, y = 206.281, z = 29.671 }, area_id = 403 }
}

-- 触发器
triggers = {
	{ config_id = 1048008, name = "GADGET_STATE_CHANGE_48008", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_48008", action = "action_EVENT_GADGET_STATE_CHANGE_48008", trigger_count = 0 },
	{ config_id = 1048009, name = "ENTER_REGION_48009", event = EventType.EVENT_ENTER_REGION, source = "", condition = "", action = "" },
	-- 满足解法条件生成宝箱
	{ config_id = 1048012, name = "VARIABLE_CHANGE_48012", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_48012", action = "action_EVENT_VARIABLE_CHANGE_48012", trigger_count = 0 }
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
		gadgets = { 48001, 48002, 48003, 48004, 48005, 48006, 48007 },
		regions = { 48009 },
		triggers = { "GADGET_STATE_CHANGE_48008", "ENTER_REGION_48009", "VARIABLE_CHANGE_48012" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 48011 },
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
function condition_EVENT_GADGET_STATE_CHANGE_48008(context, evt)
	if 48011 ~= evt.param2 or GadgetState.ChestOpened ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_48008(context, evt)
	-- group调整group进度,只对非randSuite有效
	if 0 ~= ScriptLib.GoToGroupSuite(context, 199003048, 2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : goto_groupSuite")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_48012(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"solution"为1
	if ScriptLib.GetGroupVariableValue(context, "solution") >= 1 then
			return true
	end
	
	return false
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_48012(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 199003048, 2)
	
	return 0
end

require "V2_8/ConstellationMachine"