-- 基础信息
local base_info = {
	group_id = 133220107
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 107005, monster_id = 28020701, pos = { x = -2638.437, y = 206.647, z = -4058.760 }, rot = { x = 0.000, y = 237.128, z = 0.000 }, level = 27, drop_tag = "走兽", pose_id = 1, area_id = 11 },
	{ config_id = 107010, monster_id = 28030306, pos = { x = -2631.315, y = 203.242, z = -4048.492 }, rot = { x = 0.000, y = 230.899, z = 0.000 }, level = 27, drop_tag = "鸟类", area_id = 11 },
	{ config_id = 107011, monster_id = 28030306, pos = { x = -2633.549, y = 203.287, z = -4049.041 }, rot = { x = 0.000, y = 123.175, z = 0.000 }, level = 27, drop_tag = "鸟类", area_id = 11 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 107001, gadget_id = 71700288, pos = { x = -2639.145, y = 207.444, z = -4061.237 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, state = GadgetState.GearStart, persistent = true, area_id = 11 },
	{ config_id = 107004, gadget_id = 70500000, pos = { x = -2639.145, y = 207.360, z = -4061.207 }, rot = { x = 359.956, y = 351.130, z = 359.843 }, level = 27, point_type = 9139, isOneoff = true, persistent = true, area_id = 11 },
	{ config_id = 107008, gadget_id = 70290107, pos = { x = -2639.031, y = 207.170, z = -4062.030 }, rot = { x = 0.000, y = 352.480, z = 0.000 }, level = 27, persistent = true, area_id = 11 }
}

-- 区域
regions = {
	{ config_id = 107006, shape = RegionShape.SPHERE, radius = 90, pos = { x = -2640.991, y = 201.415, z = -4065.628 }, area_id = 11 },
	{ config_id = 107007, shape = RegionShape.SPHERE, radius = 100, pos = { x = -2638.896, y = 205.947, z = -4056.331 }, area_id = 11 }
}

-- 触发器
triggers = {
	{ config_id = 1107002, name = "GATHER_107002", event = EventType.EVENT_GATHER, source = "", condition = "condition_EVENT_GATHER_107002", action = "action_EVENT_GATHER_107002", trigger_count = 0 },
	{ config_id = 1107003, name = "GADGET_STATE_CHANGE_107003", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_107003", action = "action_EVENT_GADGET_STATE_CHANGE_107003" },
	{ config_id = 1107006, name = "ENTER_REGION_107006", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_107006", action = "action_EVENT_ENTER_REGION_107006", trigger_count = 0 },
	{ config_id = 1107007, name = "ENTER_REGION_107007", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_107007", action = "action_EVENT_ENTER_REGION_107007", trigger_count = 0 },
	{ config_id = 1107009, name = "GADGET_CREATE_107009", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_107009", action = "action_EVENT_GADGET_CREATE_107009", trigger_count = 0 }
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
		monsters = { 107005, 107010, 107011 },
		gadgets = { 107008 },
		regions = { 107006, 107007 },
		triggers = { "GATHER_107002", "GADGET_STATE_CHANGE_107003", "ENTER_REGION_107006", "ENTER_REGION_107007", "GADGET_CREATE_107009" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 107005 },
		gadgets = { 107001, 107004, 107008 },
		regions = { 107006, 107007 },
		triggers = { "GATHER_107002", "GADGET_STATE_CHANGE_107003", "ENTER_REGION_107006", "ENTER_REGION_107007", "GADGET_CREATE_107009" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GATHER_107002(context, evt)
	if 107004 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GATHER_107002(context, evt)
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133220107, EntityType.GADGET, 107001 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_107003(context, evt)
	if 107008 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_107003(context, evt)
	-- 创建id为107004的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 107004 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "fin_7210622") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	-- group调整group进度,只对非randSuite有效
	if 0 ~= ScriptLib.GoToGroupSuite(context, 133220107, 2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : goto_groupSuite")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_107006(context, evt)
	if evt.param1 ~= 107006 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_107006(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "7210601") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_107007(context, evt)
	if evt.param1 ~= 107007 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_107007(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "7210601") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_107009(context, evt)
	if 107004 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_107009(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "fin_7210622") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end