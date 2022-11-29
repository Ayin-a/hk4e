-- 基础信息
local base_info = {
	group_id = 144004069
}

-- Trigger变量
local defs = {
	group_id = 144004069,
	gadget_signal_id = 69001
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
	{ config_id = 69001, gadget_id = 70220068, pos = { x = 600.056, y = 200.000, z = -279.597 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, persistent = true, area_id = 102 }
}

-- 区域
regions = {
	-- 靠近海上浮标后1）切换物件状态；2）显示Reminder
	{ config_id = 69002, shape = RegionShape.SPHERE, radius = 8, pos = { x = 600.056, y = 200.000, z = -279.597 }, area_id = 102 },
	-- 靠近海上浮标后更新信号源
	{ config_id = 69003, shape = RegionShape.SPHERE, radius = 8, pos = { x = 600.056, y = 200.000, z = -279.597 }, area_id = 102 },
	-- 首次靠近海上浮标后通知任务完成
	{ config_id = 69004, shape = RegionShape.SPHERE, radius = 10, pos = { x = 597.883, y = 200.000, z = -276.882 }, area_id = 102 }
}

-- 触发器
triggers = {
	-- 靠近海上浮标后1）切换物件状态；2）显示Reminder
	{ config_id = 1069002, name = "ENTER_REGION_69002", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_69002", action = "action_EVENT_ENTER_REGION_69002", trigger_count = 0 },
	-- 靠近海上浮标后更新信号源
	{ config_id = 1069003, name = "ENTER_REGION_69003", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_69003", action = "action_EVENT_ENTER_REGION_69003", trigger_count = 0 },
	-- 首次靠近海上浮标后通知任务完成
	{ config_id = 1069004, name = "ENTER_REGION_69004", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_69004", action = "action_EVENT_ENTER_REGION_69004" }
}

-- 点位
points = {
	-- 声明创建船只的transform
	{ config_id = 69005, pos = { x = 604.443, y = 200.000, z = -272.520 }, rot = { x = 0.000, y = 53.872, z = 0.000 }, area_id = 102 }
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
		gadgets = { 69001 },
		regions = { 69002, 69003, 69004 },
		triggers = { "ENTER_REGION_69002", "ENTER_REGION_69003", "ENTER_REGION_69004" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_69002(context, evt)
	if evt.param1 ~= 69002 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_69002(context, evt)
	-- 将configid为 69001 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 69001, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_69003(context, evt)
	if evt.param1 ~= 69003 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_69003(context, evt)
	ScriptLib.UnlockFloatSignal(context, defs.group_id, defs.gadget_signal_id)
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_69004(context, evt)
	if evt.param1 ~= 69004 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_69004(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "7900901") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end