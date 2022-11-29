-- 基础信息
local base_info = {
	group_id = 133001925
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
	{ config_id = 925001, gadget_id = 70310022, pos = { x = 1091.174, y = 199.662, z = -1239.424 }, rot = { x = 0.000, y = 43.968, z = 0.000 }, level = 1, persistent = true, area_id = 10 },
	{ config_id = 925002, gadget_id = 70300104, pos = { x = 1088.854, y = 200.362, z = -1237.238 }, rot = { x = 355.161, y = 320.187, z = 0.000 }, level = 1, area_id = 10 },
	{ config_id = 925003, gadget_id = 70300094, pos = { x = 1087.543, y = 200.021, z = -1238.798 }, rot = { x = 0.000, y = 12.346, z = 0.000 }, level = 1, area_id = 10 },
	{ config_id = 925004, gadget_id = 70300094, pos = { x = 1090.304, y = 199.946, z = -1235.518 }, rot = { x = 0.000, y = 332.069, z = 0.000 }, level = 1, area_id = 10 }
}

-- 区域
regions = {
	-- 测试如果group内有enter region 是否会卸载不掉
	{ config_id = 925007, shape = RegionShape.SPHERE, radius = 5, pos = { x = 1091.808, y = 199.635, z = -1236.688 }, area_id = 10 }
}

-- 触发器
triggers = {
	{ config_id = 1925005, name = "GADGET_STATE_CHANGE_925005", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_925005", action = "action_EVENT_GADGET_STATE_CHANGE_925005", trigger_count = 0 },
	{ config_id = 1925006, name = "GADGET_STATE_CHANGE_925006", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_925006", action = "action_EVENT_GADGET_STATE_CHANGE_925006", trigger_count = 0 },
	-- 测试如果group内有enter region 是否会卸载不掉
	{ config_id = 1925007, name = "ENTER_REGION_925007", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_925007", action = "action_EVENT_ENTER_REGION_925007", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "133001925", value = 0, no_refresh = false }
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
		gadgets = { 925001, 925002, 925003, 925004 },
		regions = { 925007 },
		triggers = { "GADGET_STATE_CHANGE_925005", "GADGET_STATE_CHANGE_925006", "ENTER_REGION_925007" },
		rand_weight = 100,
		ban_refresh = true
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_925005(context, evt)
	if 925001 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_925005(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "7080012") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "7080014") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_925006(context, evt)
	if 925001 ~= evt.param2 or GadgetState.Default ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_925006(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "7080013") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_925007(context, evt)
	if evt.param1 ~= 925007 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_925007(context, evt)
	-- 将本组内变量名为 "133001925" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "133001925", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end