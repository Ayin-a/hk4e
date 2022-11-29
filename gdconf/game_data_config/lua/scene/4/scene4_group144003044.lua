-- 基础信息
local base_info = {
	group_id = 144003044
}

-- Trigger变量
local defs = {
	group_id = 144003044,
	gadget_signal_id = 44001
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
	{ config_id = 44001, gadget_id = 70220068, pos = { x = -574.893, y = 200.000, z = 76.582 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, persistent = true, area_id = 103 }
}

-- 区域
regions = {
	-- 靠近海上浮标后1）切换物件状态；2）显示Reminder
	{ config_id = 44002, shape = RegionShape.SPHERE, radius = 8, pos = { x = -574.893, y = 200.000, z = 76.582 }, area_id = 103 },
	-- 靠近海上浮标后更新信号源
	{ config_id = 44003, shape = RegionShape.SPHERE, radius = 8, pos = { x = -574.893, y = 200.000, z = 76.582 }, area_id = 103 },
	-- 首次靠近海上浮标后通知任务完成
	{ config_id = 44004, shape = RegionShape.SPHERE, radius = 10, pos = { x = -579.767, y = 200.000, z = 79.865 }, area_id = 103 }
}

-- 触发器
triggers = {
	-- 靠近海上浮标后1）切换物件状态；2）显示Reminder
	{ config_id = 1044002, name = "ENTER_REGION_44002", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_44002", action = "action_EVENT_ENTER_REGION_44002", trigger_count = 0 },
	-- 靠近海上浮标后更新信号源
	{ config_id = 1044003, name = "ENTER_REGION_44003", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_44003", action = "action_EVENT_ENTER_REGION_44003", trigger_count = 0 },
	-- 首次靠近海上浮标后通知任务完成
	{ config_id = 1044004, name = "ENTER_REGION_44004", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_44004", action = "action_EVENT_ENTER_REGION_44004" }
}

-- 点位
points = {
	-- 声明创建船只的transform
	{ config_id = 44005, pos = { x = -573.207, y = 200.000, z = 84.226 }, rot = { x = 0.000, y = 53.872, z = 0.000 }, area_id = 103 }
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
		gadgets = { 44001 },
		regions = { 44002, 44003, 44004 },
		triggers = { "ENTER_REGION_44002", "ENTER_REGION_44003", "ENTER_REGION_44004" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_44002(context, evt)
	if evt.param1 ~= 44002 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_44002(context, evt)
	-- 将configid为 44001 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 44001, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_44003(context, evt)
	if evt.param1 ~= 44003 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_44003(context, evt)
	ScriptLib.UnlockFloatSignal(context, defs.group_id, defs.gadget_signal_id)
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_44004(context, evt)
	if evt.param1 ~= 44004 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_44004(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "7900901") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end