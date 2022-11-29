-- 基础信息
local base_info = {
	group_id = 220134069
}

-- DEFS_MISCS
local        defs = {

    is_movable = 1,

    patterns = 
    {
            --形态1
            [1] = 
            {
                    [69001] = {connect =0 , point_array = 0, point_id = {0}} ,
            
                    [69003] = {connect =0 , point_array = 0, point_id = {0}} ,
                  
                    
            },

            --形态2 star1
            [2] = 
            {

                [69003] = {connect =0 , point_array = 67, point_id = {1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25}} ,
                
        },

                        --形态3 star2
                        [3] = 
                        {
                            [69001] = {connect =69003, point_array = 86, point_id = {2}} ,
                [69003] = {connect =69001 , point_array = 67, point_id = {25}} ,
                            
                    },

                       

}}

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
	[69001] = { config_id = 69001, gadget_id = 70310231, pos = { x = 731.683, y = 655.675, z = -1781.270 }, rot = { x = 318.956, y = 206.110, z = 6.123 }, level = 1, state = GadgetState.GearAction1, is_use_point_array = true },
	-- 1
	[69003] = { config_id = 69003, gadget_id = 70310231, pos = { x = 779.772, y = 624.589, z = -1779.734 }, rot = { x = 318.956, y = 206.110, z = 6.123 }, level = 1, persistent = true, is_use_point_array = true },
	-- 1
	[69006] = { config_id = 69006, gadget_id = 70360001, pos = { x = 779.772, y = 624.589, z = -1779.734 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, worktop_config = { init_options = { 411 } } }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	-- 1
	{ config_id = 1069008, name = "SELECT_OPTION_69008", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_69008", action = "action_EVENT_SELECT_OPTION_69008", trigger_count = 0 },
	{ config_id = 1069012, name = "VARIABLE_CHANGE_69012", event = EventType.EVENT_VARIABLE_CHANGE, source = "star4", condition = "condition_EVENT_VARIABLE_CHANGE_69012", action = "action_EVENT_VARIABLE_CHANGE_69012", trigger_count = 0 },
	{ config_id = 1069013, name = "GROUP_LOAD_69013", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_69013", action = "action_EVENT_GROUP_LOAD_69013", trigger_count = 0 },
	{ config_id = 1069017, name = "PLATFORM_REACH_POINT_69017", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_69017", action = "action_EVENT_PLATFORM_REACH_POINT_69017", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "star1", value = 0, no_refresh = true },
	{ config_id = 2, name = "star2", value = 0, no_refresh = true },
	{ config_id = 3, name = "star3", value = 0, no_refresh = true },
	{ config_id = 4, name = "star4", value = 0, no_refresh = true }
}

-- 废弃数据
garbages = {
	triggers = {
		{ config_id = 1069002, name = "VARIABLE_CHANGE_69002", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_69002", action = "action_EVENT_VARIABLE_CHANGE_69002", trigger_count = 0 }
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
		gadgets = { 69001, 69003, 69006 },
		regions = { },
		triggers = { "SELECT_OPTION_69008", "VARIABLE_CHANGE_69012", "GROUP_LOAD_69013", "PLATFORM_REACH_POINT_69017" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_SELECT_OPTION_69008(context, evt)
	-- 判断是gadgetid 69006 option_id 411
	if 69006 ~= evt.param1 then
		return false	
	end
	
	if 411 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_69008(context, evt)
	-- 将本组内变量名为 "pattern" 的变量设置为 2
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "pattern", 2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 将本组内变量名为 "star1" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "star1", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 将本组内变量名为 "star1" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "star1", 1, 220134091) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	-- 删除指定group： 220134069 ；指定config：69006；物件身上指定option：411；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 220134069, 69006, 411) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_69012(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"star4"为1
	if ScriptLib.GetGroupVariableValue(context, "star4") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_69012(context, evt)
	if ScriptLib.GetGroupVariableValue(context,"star1") == 1 then
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "pattern", 3) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_69013(context, evt)
	-- 判断变量"star1"为1
	if ScriptLib.GetGroupVariableValue(context, "star1") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_69013(context, evt)
	-- 将本组内变量名为 "pattern" 的变量设置为 2
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "pattern", 2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_PLATFORM_REACH_POINT_69017(context, evt)
	-- 判断是gadgetid 为 69003的移动平台，是否到达了67 的点集中的 25 点
	
	if 69003 ~= evt.param1 then
	  return false
	end
	
	if 67 ~= evt.param2 then
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
function action_EVENT_PLATFORM_REACH_POINT_69017(context, evt)
	-- 将本组内变量名为 "pattern" 的变量设置为 3
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "pattern", 3) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

require "V2_8/ConstellationPattern"