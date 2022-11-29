-- 基础信息
local base_info = {
	group_id = 144003037
}

-- Trigger变量
local defs = {
	group_id = 144003037,
	gadget_signal_id = 37001
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
	{ config_id = 37001, gadget_id = 70220068, pos = { x = -396.167, y = 200.308, z = 86.218 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, persistent = true, area_id = 103 }
}

-- 区域
regions = {
	-- 靠近海上浮标后1）切换物件状态；2）显示Reminder
	{ config_id = 37002, shape = RegionShape.SPHERE, radius = 8, pos = { x = -396.167, y = 200.308, z = 86.218 }, area_id = 103 },
	-- 靠近海上浮标后更新信号源
	{ config_id = 37003, shape = RegionShape.SPHERE, radius = 8, pos = { x = -396.167, y = 200.308, z = 86.218 }, area_id = 103 },
	-- 首次靠近海上浮标后通知任务完成
	{ config_id = 37004, shape = RegionShape.SPHERE, radius = 10, pos = { x = -397.360, y = 200.308, z = 87.745 }, area_id = 103 }
}

-- 触发器
triggers = {
	-- 靠近海上浮标后1）切换物件状态；2）显示Reminder
	{ config_id = 1037002, name = "ENTER_REGION_37002", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_37002", action = "action_EVENT_ENTER_REGION_37002", trigger_count = 0 },
	-- 靠近海上浮标后更新信号源
	{ config_id = 1037003, name = "ENTER_REGION_37003", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_37003", action = "action_EVENT_ENTER_REGION_37003", trigger_count = 0 },
	-- 首次靠近海上浮标后通知任务完成
	{ config_id = 1037004, name = "ENTER_REGION_37004", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_37004", action = "action_EVENT_ENTER_REGION_37004" }
}

-- 点位
points = {
	-- 声明创建船只的transform
	{ config_id = 37005, pos = { x = -390.800, y = 200.308, z = 92.106 }, rot = { x = 0.000, y = 53.872, z = 0.000 }, area_id = 103 }
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
		gadgets = { 37001 },
		regions = { 37002, 37003, 37004 },
		triggers = { "ENTER_REGION_37002", "ENTER_REGION_37003", "ENTER_REGION_37004" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_37002(context, evt)
	if evt.param1 ~= 37002 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_37002(context, evt)
	-- 将configid为 37001 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 37001, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_37003(context, evt)
	if evt.param1 ~= 37003 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_37003(context, evt)
	ScriptLib.UnlockFloatSignal(context, defs.group_id, defs.gadget_signal_id)
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_37004(context, evt)
	if evt.param1 ~= 37004 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_37004(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "7900901") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end