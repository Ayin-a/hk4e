-- 基础信息
local base_info = {
	group_id = 220134002
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
	{ config_id = 2009, gadget_id = 70290428, pos = { x = 343.860, y = 624.924, z = -1673.326 }, rot = { x = 0.000, y = 61.934, z = 0.000 }, level = 1 },
	{ config_id = 2011, gadget_id = 70211111, pos = { x = 388.959, y = 613.406, z = -1648.354 }, rot = { x = 4.318, y = 63.809, z = 357.747 }, level = 16, chest_drop_id = 1050201, drop_count = 1, isOneoff = true, persistent = true, autopick = true }
}

-- 区域
regions = {
	{ config_id = 2008, shape = RegionShape.SPHERE, radius = 12, pos = { x = 398.404, y = 613.406, z = -1643.467 } },
	{ config_id = 2010, shape = RegionShape.SPHERE, radius = 5, pos = { x = 423.239, y = 615.039, z = -1630.916 } }
}

-- 触发器
triggers = {
	{ config_id = 1002007, name = "GADGET_STATE_CHANGE_2007", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_2007", action = "action_EVENT_GADGET_STATE_CHANGE_2007" },
	{ config_id = 1002008, name = "ENTER_REGION_2008", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_2008", action = "action_EVENT_ENTER_REGION_2008" },
	{ config_id = 1002010, name = "ENTER_REGION_2010", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_2010", action = "action_EVENT_ENTER_REGION_2010" },
	-- 满足解法条件生成宝箱
	{ config_id = 1002012, name = "VARIABLE_CHANGE_2012", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_2012", action = "action_EVENT_VARIABLE_CHANGE_2012", trigger_count = 0 },
	{ config_id = 1002013, name = "GROUP_LOAD_2013", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_2013", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "finish", value = 0, no_refresh = true }
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
		gadgets = { 2001, 2002, 2003, 2004, 2005, 2006, 2009 },
		regions = { 2008, 2010 },
		triggers = { "GADGET_STATE_CHANGE_2007", "ENTER_REGION_2008", "ENTER_REGION_2010", "VARIABLE_CHANGE_2012", "GROUP_LOAD_2013" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 2009, 2011 },
		regions = { },
		triggers = { "GROUP_LOAD_2013" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 2011 },
		regions = { },
		triggers = { "GROUP_LOAD_2013" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_2007(context, evt)
	if 2011 ~= evt.param2 or GadgetState.ChestOpened ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_2007(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "monaroom1complete") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	-- group调整group进度,只对非randSuite有效
	if 0 ~= ScriptLib.GoToGroupSuite(context, 220134015, 2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : goto_groupSuite")
		return -1
	end
	
	-- group调整group进度,只对非randSuite有效
	if 0 ~= ScriptLib.GoToGroupSuite(context, 220134002, 2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : goto_groupSuite")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_2008(context, evt)
	if evt.param1 ~= 2008 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_2008(context, evt)
			ScriptLib.TryRecordActivityPushTips(context, 2014003)
			ScriptLib.ShowClientTutorial(context, 1169, {})
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_2010(context, evt)
	if evt.param1 ~= 2010 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_2010(context, evt)
	-- 触发镜头注目，注目位置为坐标（387，672.5，-1648.8），持续时间为2秒，并且为强制注目形式，不广播其他玩家
		local pos = {x=387, y=672.5, z=-1648.8}
	  local pos_follow = {x=0, y=0, z=0}
	    if 0 ~= ScriptLib.BeginCameraSceneLook(context, { look_pos = pos, is_allow_input = true, duration = 2, is_force = true, is_broadcast = false, is_recover_keep_current = true, delay = 0,
	                                                      is_set_follow_pos = false, follow_pos = pos_follow, is_force_walk = false, is_change_play_mode = false,
	                                                      is_set_screen_XY = false, screen_x = 0, screen_y = 0 }) then
					ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_cameraLook_Begin")
	        return -1
				end 
	
	return 0
end

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
	    ScriptLib.AddExtraGroupSuite(context, 220134002, 2)
	
	-- 将本组内变量名为 "finish" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "finish", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_GROUP_LOAD_2013(context, evt)
	    if ScriptLib.GetHostQuestState(context,4007407)==3 or ScriptLib.GetHostQuestState(context,4007413)==3 or 
	ScriptLib.GetHostQuestState(context,4007410)==3 then
		ScriptLib.RefreshGroup(context, { group_id = 220134002, suite = 3 }) 
	        ScriptLib.GoToGroupSuite(context, 220134002, 3) 
		end
	
	return 0
end

require "V2_8/ConstellationMachine"