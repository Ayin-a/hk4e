-- 基础信息
local base_info = {
	group_id = 199003071
}

-- DEFS_MISCS
local   defs = {


	guide_region =71010 ,
	
				gear_info = 
				{        --connect: 每个物件各个旋转档位可连接的对象 0表示无可连接
						[1] = { config_id=71001 , connect = {71004,71002}, point_array_id = 900300003 },
						[2] = { config_id=71002 , connect = {71001,71004,71003}, point_array_id = 900300004  },
						[3] = { config_id= 71003 , connect = {71006,71002}, point_array_id = 900300005 },
						[4] = { config_id=71004 , connect = {71002,71005}, point_array_id = 900300006 },
						[5] = { config_id= 71005 , connect = {71006,71004,71007}, point_array_id = 900300007  },
						[6] = { config_id=71006 , connect = {71005,71003}, point_array_id = 900300008  },
						[7] = { config_id=71007 , connect = {71005,71006}, point_array_id = 900300009 },
						
						
					},
	--几种解
	solutions = 
				{
						--[解法x] = {gear_info[1]切到它的第x档, gear_info[2]切到它的第y档...}
						[1] = { connection = {2,3,2,1,2,1,1}, ends = {71003 }},
						[2] = { connection = {2,1,2,1,2,1,1}, ends = {71001}},
						[3] = { connection = {2,2,2,1,2,1,1}, ends = {71002}},
	[4] = { connection = {2,2,2,2,2,1,1}, ends = {71004}},
	[5] = { connection = {2,2,2,2,1,1,1}, ends = {71005}},
	[6] = { connection = {2,2,2,2,1,1,1}, ends = {71006}},
	[7] = { connection = {2,2,2,2,3,1,1}, ends = {71007}},
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
	{ config_id = 71001, gadget_id = 70310178, pos = { x = -742.086, y = 241.341, z = -32.722 }, rot = { x = 0.000, y = 117.611, z = 0.000 }, level = 20, is_use_point_array = true, area_id = 403 },
	{ config_id = 71002, gadget_id = 70310178, pos = { x = -737.494, y = 241.367, z = -25.821 }, rot = { x = 0.000, y = 209.314, z = 0.000 }, level = 20, is_use_point_array = true, area_id = 403 },
	{ config_id = 71003, gadget_id = 70310178, pos = { x = -732.085, y = 241.419, z = -15.807 }, rot = { x = 0.000, y = 214.250, z = 0.000 }, level = 20, is_use_point_array = true, area_id = 403 },
	{ config_id = 71004, gadget_id = 70310178, pos = { x = -729.677, y = 241.367, z = -30.725 }, rot = { x = 0.000, y = 141.807, z = 0.000 }, level = 20, is_use_point_array = true, area_id = 403 },
	{ config_id = 71005, gadget_id = 70310178, pos = { x = -724.075, y = 241.367, z = -29.990 }, rot = { x = 0.000, y = 104.087, z = 0.000 }, level = 20, is_use_point_array = true, area_id = 403 },
	{ config_id = 71006, gadget_id = 70310178, pos = { x = -721.054, y = 241.394, z = -21.370 }, rot = { x = 0.000, y = 170.766, z = 0.000 }, level = 20, is_use_point_array = true, area_id = 403 },
	{ config_id = 71007, gadget_id = 70310178, pos = { x = -715.165, y = 241.442, z = -36.211 }, rot = { x = 0.000, y = 44.310, z = 0.000 }, level = 20, is_use_point_array = true, area_id = 403 },
	{ config_id = 71011, gadget_id = 70211121, pos = { x = -729.103, y = 241.421, z = -37.480 }, rot = { x = 0.000, y = 180.548, z = 0.000 }, level = 16, drop_tag = "解谜高级群岛", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 403 }
}

-- 区域
regions = {
	{ config_id = 71010, shape = RegionShape.CYLINDER, radius = 15, pos = { x = -727.395, y = 244.117, z = -26.542 }, height = 5.000, area_id = 403 }
}

-- 触发器
triggers = {
	-- 开箱出纸星星
	{ config_id = 1071009, name = "GADGET_STATE_CHANGE_71009", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_71009", action = "action_EVENT_GADGET_STATE_CHANGE_71009" },
	{ config_id = 1071010, name = "ENTER_REGION_71010", event = EventType.EVENT_ENTER_REGION, source = "", condition = "", action = "" },
	-- 满足解法条件生成宝箱
	{ config_id = 1071012, name = "VARIABLE_CHANGE_71012", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_71012", action = "action_EVENT_VARIABLE_CHANGE_71012", trigger_count = 0 }
}

-- 变量
variables = {
}

-- 废弃数据
garbages = {
	gadgets = {
		{ config_id = 71008, gadget_id = 70310178, pos = { x = -718.678, y = 241.310, z = -31.504 }, rot = { x = 0.000, y = 352.622, z = 0.000 }, level = 20, isOneoff = true, is_use_point_array = true, area_id = 403 }
	}
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
		gadgets = { 71001, 71002, 71003, 71004, 71005, 71006, 71007 },
		regions = { 71010 },
		triggers = { "GADGET_STATE_CHANGE_71009", "ENTER_REGION_71010", "VARIABLE_CHANGE_71012" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 71011 },
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
function condition_EVENT_GADGET_STATE_CHANGE_71009(context, evt)
	if 71011 ~= evt.param2 or GadgetState.ChestOpened ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_71009(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 199003090, suite = 1 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_71012(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"solution"为1
	if ScriptLib.GetGroupVariableValue(context, "solution") >= 1 then
			return true
	end
	
	return false
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_71012(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 199003071, 2)
	
	return 0
end

require "V2_8/ConstellationMachine"