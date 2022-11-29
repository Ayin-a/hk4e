-- 基础信息
local base_info = {
	group_id = 220134092
}

-- DEFS_MISCS
local        defs = {

    is_movable = 1,

    patterns = 
    {
            --形态1
            [1] = 
            {
                    [92001] = {connect =0 , point_array = 0, point_id = {0}} ,
                    [92004] = {connect =0 , point_array = 0, point_id = {0}} ,
                    
            },

 

                        --形态3 star2
                        [2] = 
                        {
                        
                            [92001] = {connect =0, point_array = 69, point_id = {1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25}} ,
                 
                            
                    },

                                                --形态4 star3
                        [3] = 
                        { [92001] = {connect =92004, point_array = 69, point_id = {25}} ,
                        [92004] = {connect =92001, point_array = 87, point_id = {2}},

                    },
                    
            
    },

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
	-- 3
	[92001] = { config_id = 92001, gadget_id = 70310231, pos = { x = 713.299, y = 623.845, z = -1717.990 }, rot = { x = 318.956, y = 206.110, z = 6.123 }, level = 1, persistent = true, is_use_point_array = true },
	-- 3
	[92002] = { config_id = 92002, gadget_id = 70360001, pos = { x = 713.299, y = 623.845, z = -1717.990 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, worktop_config = { init_options = { 411 } } },
	[92004] = { config_id = 92004, gadget_id = 70310231, pos = { x = 718.437, y = 662.479, z = -1777.488 }, rot = { x = 318.956, y = 206.110, z = 6.123 }, level = 1, state = GadgetState.GearAction1, is_use_point_array = true }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	-- 1
	{ config_id = 1092003, name = "SELECT_OPTION_92003", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_92003", action = "action_EVENT_SELECT_OPTION_92003", trigger_count = 0 },
	{ config_id = 1092005, name = "PLATFORM_REACH_POINT_92005", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_92005", action = "action_EVENT_PLATFORM_REACH_POINT_92005", trigger_count = 0 },
	{ config_id = 1092006, name = "GROUP_LOAD_92006", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_92006", action = "action_EVENT_GROUP_LOAD_92006", trigger_count = 0 },
	{ config_id = 1092008, name = "VARIABLE_CHANGE_92008", event = EventType.EVENT_VARIABLE_CHANGE, source = "star4", condition = "condition_EVENT_VARIABLE_CHANGE_92008", action = "action_EVENT_VARIABLE_CHANGE_92008", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "star3", value = 0, no_refresh = true },
	{ config_id = 2, name = "star4", value = 0, no_refresh = true }
}

-- 废弃数据
garbages = {
	triggers = {
		{ config_id = 1092007, name = "VARIABLE_CHANGE_92007", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_92007", action = "action_EVENT_VARIABLE_CHANGE_92007", trigger_count = 0 }
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
		gadgets = { 92001, 92002, 92004 },
		regions = { },
		triggers = { "SELECT_OPTION_92003", "PLATFORM_REACH_POINT_92005", "GROUP_LOAD_92006", "VARIABLE_CHANGE_92008" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_SELECT_OPTION_92003(context, evt)
	-- 判断是gadgetid 92002 option_id 411
	if 92002 ~= evt.param1 then
		return false	
	end
	
	if 411 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_92003(context, evt)
	-- 将本组内变量名为 "pattern" 的变量设置为 2
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "pattern", 2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 将本组内变量名为 "star3" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "star3", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 删除指定group： 220134092 ；指定config：92002；物件身上指定option：411；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 220134092, 92002, 411) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_PLATFORM_REACH_POINT_92005(context, evt)
	-- 判断是gadgetid 为 92001的移动平台，是否到达了69 的点集中的 25 点
	
	if 92001 ~= evt.param1 then
	  return false
	end
	
	if 69 ~= evt.param2 then
	  return false
	end
	
	if 25 ~= evt.param3 then
	  return false
	end
	
	
	-- 判断变量"star4"为1
	if ScriptLib.GetGroupVariableValue(context, "star4") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_PLATFORM_REACH_POINT_92005(context, evt)
	-- 将本组内变量名为 "pattern" 的变量设置为 3
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "pattern", 3) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_92006(context, evt)
	-- 判断变量"star3"为1
	if ScriptLib.GetGroupVariableValue(context, "star3") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_92006(context, evt)
	-- 将本组内变量名为 "pattern" 的变量设置为 2
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "pattern", 2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_92008(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"star4"为1
	if ScriptLib.GetGroupVariableValue(context, "star4") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_92008(context, evt)
	if ScriptLib.GetGroupVariableValue(context,"star3") == 1 then
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "pattern", 3) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	end
	return 0
end

require "V2_8/ConstellationPattern"