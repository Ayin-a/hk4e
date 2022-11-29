-- 基础信息
local base_info = {
	group_id = 133105300
}

-- Trigger变量
local defs = {
	point_sum = 11,
	route_2 = 310500088,
	gadget_seelie = 300002
}

-- DEFS_MISCS
defs.final_point = defs.point_sum - 1

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 300010, monster_id = 22010201, pos = { x = 620.666, y = 201.578, z = -895.115 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_id = 1000100, climate_area_id = 1, area_id = 10 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 300001, gadget_id = 70720215, pos = { x = 636.195, y = 200.703, z = -861.517 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 35, area_id = 10 },
	{ config_id = 300002, gadget_id = 70720214, pos = { x = 616.266, y = 205.703, z = -914.806 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 35, route_id = 310500089, area_id = 10 },
	{ config_id = 300003, gadget_id = 70720216, pos = { x = 634.454, y = 200.552, z = -863.752 }, rot = { x = 0.000, y = 351.766, z = 0.000 }, level = 35, area_id = 10 }
}

-- 区域
regions = {
	{ config_id = 300007, shape = RegionShape.SPHERE, radius = 3.4, pos = { x = 616.740, y = 206.237, z = -915.289 }, area_id = 10 }
}

-- 触发器
triggers = {
	{ config_id = 1300004, name = "QUEST_START_300004", event = EventType.EVENT_QUEST_START, source = "1104510", condition = "condition_EVENT_QUEST_START_300004", action = "action_EVENT_QUEST_START_300004", trigger_count = 0 },
	{ config_id = 1300005, name = "PLATFORM_REACH_POINT_300005", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_300005", action = "action_EVENT_PLATFORM_REACH_POINT_300005", trigger_count = 0 },
	{ config_id = 1300006, name = "AVATAR_NEAR_PLATFORM_300006", event = EventType.EVENT_AVATAR_NEAR_PLATFORM, source = "", condition = "condition_EVENT_AVATAR_NEAR_PLATFORM_300006", action = "action_EVENT_AVATAR_NEAR_PLATFORM_300006", trigger_count = 0 },
	{ config_id = 1300007, name = "ENTER_REGION_300007", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_300007", action = "action_EVENT_ENTER_REGION_300007", trigger_count = 0 },
	{ config_id = 1300008, name = "GADGET_STATE_CHANGE_300008", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_300008", action = "action_EVENT_GADGET_STATE_CHANGE_300008", trigger_count = 0 },
	{ config_id = 1300009, name = "GADGET_CREATE_300009", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_300009", action = "action_EVENT_GADGET_CREATE_300009", trigger_count = 0 },
	{ config_id = 1300011, name = "PLATFORM_REACH_POINT_300011", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_300011", action = "action_EVENT_PLATFORM_REACH_POINT_300011", trigger_count = 0 },
	{ config_id = 1300012, name = "QUEST_START_300012", event = EventType.EVENT_QUEST_START, source = "1104510", condition = "condition_EVENT_QUEST_START_300012", action = "action_EVENT_QUEST_START_300012", trigger_count = 0 },
	{ config_id = 1300013, name = "QUEST_FINISH_300013", event = EventType.EVENT_QUEST_FINISH, source = "1104506", condition = "", action = "action_EVENT_QUEST_FINISH_300013", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "quest", value = 0, no_refresh = true }
}

--================================================================
-- 
-- 初始化配置
-- 
--================================================================

-- 初始化时创建
init_config = {
	suite = 4,
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
		-- description = suite_1,
		monsters = { },
		gadgets = { 300001, 300002, 300003 },
		regions = { 300007 },
		triggers = { "QUEST_START_300004", "PLATFORM_REACH_POINT_300005", "AVATAR_NEAR_PLATFORM_300006", "ENTER_REGION_300007", "GADGET_STATE_CHANGE_300008", "PLATFORM_REACH_POINT_300011", "QUEST_START_300012", "QUEST_FINISH_300013" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { },
		gadgets = { 300001 },
		regions = { },
		triggers = { "QUEST_START_300004", "GADGET_CREATE_300009", "QUEST_START_300012", "QUEST_FINISH_300013" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { "QUEST_START_300004", "QUEST_START_300012", "QUEST_FINISH_300013" },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = ,
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { "QUEST_START_300004", "QUEST_START_300012", "QUEST_FINISH_300013" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_QUEST_START_300004(context, evt)
	-- 判断变量"quest"为0
	if ScriptLib.GetGroupVariableValue(context, "quest") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_QUEST_START_300004(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133105300, suite = 1 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_PLATFORM_REACH_POINT_300005(context, evt)
	if defs.gadget_seelie ~= evt.param1 then
	return false
	end
	
	if defs.route_2 ~= evt.param2 then
	return false
	end
	
	if  defs.final_point ~= evt.param3 then
	return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_PLATFORM_REACH_POINT_300005(context, evt)
	-- 将configid为 300001 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 300001, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 停止移动平台
	if 0 ~= ScriptLib.StopPlatform(context, 300002) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : stop_platform")
	  return -1
	end
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 300002 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 2013, 3, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "133105300") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_AVATAR_NEAR_PLATFORM_300006(context, evt)
	if defs.gadget_seelie ~= evt.param1 then
	return false
	end
	
	if defs.route_2 ~= evt.param2 then
	return false
	end
	
	if defs.final_point == evt.param3 then
	return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_AVATAR_NEAR_PLATFORM_300006(context, evt)
	if 0 ~= ScriptLib.StartPlatform(context, 300002) then
	return -1
	end
	
	-- 运营数据埋点，匹配LD定义的规则使用
	if 0 ~= evt.param3 then
	ScriptLib.MarkPlayerAction(context, 2013, 2, evt.param3 + 1)
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_300007(context, evt)
	if evt.param1 ~= 300007 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_300007(context, evt)
	-- 设置移动平台路径
	if 0 ~= ScriptLib.SetPlatformRouteId(context, 300002, 310500088) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_routeId")
	  return -1
	end
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 300003 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 2013, 1, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_300008(context, evt)
	if 300001 ~= evt.param2 or GadgetState.GearAction1 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_300008(context, evt)
	-- group调整group进度,只对非randSuite有效
	if 0 ~= ScriptLib.GoToGroupSuite(context, 133105300, 2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : goto_groupSuite")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_300009(context, evt)
	if 300001 ~= evt.param1 or GadgetState.Default ~= ScriptLib.GetGadgetStateByConfigId(context, 0, evt.param1) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_300009(context, evt)
	-- 将configid为 300001 的物件更改为状态 GadgetState.GearAction1
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 300001, GadgetState.GearAction1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_PLATFORM_REACH_POINT_300011(context, evt)
	-- 判断是gadgetid 为 300002的移动平台，是否到达了310500088 的路线中的 2 点
	
	if 300002 ~= evt.param1 then
	  return false
	end
	
	if 310500088 ~= evt.param2 then
	  return false
	end
	
	if 2 ~= evt.param3 then
	  return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_PLATFORM_REACH_POINT_300011(context, evt)
	-- 延迟0.1秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 300010, delay_time = 0.1 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_QUEST_START_300012(context, evt)
	-- 判断变量"quest"为1
	if ScriptLib.GetGroupVariableValue(context, "quest") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_QUEST_START_300012(context, evt)
	-- group调整group进度,只对非randSuite有效
	if 0 ~= ScriptLib.GoToGroupSuite(context, 133105300, 2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : goto_groupSuite")
		return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_QUEST_FINISH_300013(context, evt)
	-- 将本组内变量名为 "quest" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "quest", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end