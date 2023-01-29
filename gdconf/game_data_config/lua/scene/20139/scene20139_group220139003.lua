-- 基础信息
local base_info = {
	group_id = 220139003
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
	{ config_id = 3001, gadget_id = 70310251, pos = { x = -107.420, y = 85.405, z = 22.321 }, rot = { x = 0.000, y = 271.971, z = 0.000 }, level = 1, persistent = true, arguments = { 11 } },
	{ config_id = 3002, gadget_id = 70310491, pos = { x = -53.721, y = 82.135, z = 22.317 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, level = 1, persistent = true },
	{ config_id = 3003, gadget_id = 70310334, pos = { x = -53.771, y = 82.445, z = 22.375 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, persistent = true },
	{ config_id = 3005, gadget_id = 70310375, pos = { x = -81.109, y = 37.096, z = 22.288 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, persistent = true, is_use_point_array = true }
}

-- 区域
regions = {
	{ config_id = 3009, shape = RegionShape.SPHERE, radius = 5, pos = { x = -107.420, y = 88.696, z = 22.321 } }
}

-- 触发器
triggers = {
	{ config_id = 1003004, name = "OBSERVATION_POINT_NOTIFY_3004", event = EventType.EVENT_OBSERVATION_POINT_NOTIFY, source = "", condition = "", action = "action_EVENT_OBSERVATION_POINT_NOTIFY_3004", trigger_count = 0 },
	{ config_id = 1003006, name = "GROUP_LOAD_3006", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_3006", action = "action_EVENT_GROUP_LOAD_3006", trigger_count = 0 },
	{ config_id = 1003007, name = "GADGET_STATE_CHANGE_3007", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_3007", action = "action_EVENT_GADGET_STATE_CHANGE_3007", trigger_count = 0 },
	-- 运营埋点-触发组件
	{ config_id = 1003008, name = "GADGET_STATE_CHANGE_3008", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_3008", action = "action_EVENT_GADGET_STATE_CHANGE_3008", trigger_count = 0 },
	{ config_id = 1003009, name = "ENTER_REGION_3009", event = EventType.EVENT_ENTER_REGION, source = "", condition = "", action = "action_EVENT_ENTER_REGION_3009" }
}

-- 变量
variables = {
	{ config_id = 1, name = "Briage", value = 0, no_refresh = false }
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
		gadgets = { 3001, 3002, 3003, 3005 },
		regions = { 3009 },
		triggers = { "OBSERVATION_POINT_NOTIFY_3004", "GROUP_LOAD_3006", "GADGET_STATE_CHANGE_3007", "GADGET_STATE_CHANGE_3008", "ENTER_REGION_3009" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发操作
function action_EVENT_OBSERVATION_POINT_NOTIFY_3004(context, evt)
	if 3001 == evt.param1 and 405 == evt.param2 then
		ScriptLib.SetGadgetStateByConfigId(context,3003, GadgetState.GearStart)
		
		ScriptLib.AddQuestProgress(context, "4007305")
		
		ScriptLib.SetGadgetStateByConfigId(context,3001, GadgetState.ChestOpened)
		
		ScriptLib.SetGadgetStateByConfigId(context,3005, GadgetState.GearStart)
		
		ScriptLib.SetGadgetStateByConfigId(context,3002, GadgetState.GearStart)
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_3006(context, evt)
	if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 220139003, 3005) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_3006(context, evt)
	-- 设置移动平台点阵,点阵id为point_array_id
	-- route_type = 0,1,2 [OneWay 单向/Reciprocate 往复/Loop 循环]
	-- turn_mode = true/false 开启/关闭
	local tempParam = {route_type = 0, turn_mode = false}
	if 0 ~= ScriptLib.SetPlatformPointArray(context, 3005, 2, {1,2,3}, tempParam) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_pointArray")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_3007(context, evt)
	-- 检测config_id为3005的gadget是否从GadgetState.Default变为GadgetState.GearStart
	if 3005 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 or GadgetState.Default ~= evt.param3 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_3007(context, evt)
	-- 设置移动平台点阵,点阵id为point_array_id
	-- route_type = 0,1,2 [OneWay 单向/Reciprocate 往复/Loop 循环]
	-- turn_mode = true/false 开启/关闭
	local tempParam = {route_type = 0, turn_mode = false}
	if 0 ~= ScriptLib.SetPlatformPointArray(context, 3005, 2, {1,2,3}, tempParam) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_pointArray")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_3008(context, evt)
	if 3003 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_3008(context, evt)
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 2802, 3, 0) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end

-- 触发操作
function action_EVENT_ENTER_REGION_3009(context, evt)
	if ScriptLib.GetRegionEntityCount(context, {region_eid = evt.source_eid, entity_type = EntityType.AVATAR}) == 1 then
		ScriptLib.TryRecordActivityPushTips(context, 2014015)
		
		ScriptLib.ShowClientTutorial(context, 1190, {})
	end
	
	return 0
end