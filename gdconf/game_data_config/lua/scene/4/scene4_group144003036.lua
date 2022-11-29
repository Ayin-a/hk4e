-- 基础信息
local base_info = {
	group_id = 144003036
}

-- Trigger变量
local defs = {
	group_id = 144003036,
	gadget_signal_id = 36001
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
	{ config_id = 36001, gadget_id = 70220068, pos = { x = -293.380, y = 200.000, z = 126.884 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, persistent = true, area_id = 103 }
}

-- 区域
regions = {
	-- 靠近海上浮标后1）切换物件状态；2）显示Reminder
	{ config_id = 36002, shape = RegionShape.SPHERE, radius = 8, pos = { x = -293.380, y = 200.000, z = 126.884 }, area_id = 103 },
	-- 靠近海上浮标后更新信号源
	{ config_id = 36003, shape = RegionShape.SPHERE, radius = 8, pos = { x = -293.380, y = 200.000, z = 126.884 }, area_id = 103 },
	-- 首次靠近海上浮标后通知任务完成
	{ config_id = 36004, shape = RegionShape.SPHERE, radius = 10, pos = { x = -294.813, y = 200.135, z = 128.700 }, area_id = 103 }
}

-- 触发器
triggers = {
	-- 靠近海上浮标后1）切换物件状态；2）显示Reminder
	{ config_id = 1036002, name = "ENTER_REGION_36002", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_36002", action = "action_EVENT_ENTER_REGION_36002", trigger_count = 0 },
	-- 靠近海上浮标后更新信号源
	{ config_id = 1036003, name = "ENTER_REGION_36003", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_36003", action = "action_EVENT_ENTER_REGION_36003", trigger_count = 0 },
	-- 首次靠近海上浮标后通知任务完成
	{ config_id = 1036004, name = "ENTER_REGION_36004", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_36004", action = "action_EVENT_ENTER_REGION_36004" }
}

-- 点位
points = {
	-- 声明创建船只的transform
	{ config_id = 36005, pos = { x = -288.254, y = 200.135, z = 133.061 }, rot = { x = 0.000, y = 53.872, z = 0.000 }, area_id = 103 }
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
		gadgets = { 36001 },
		regions = { 36002, 36003, 36004 },
		triggers = { "ENTER_REGION_36002", "ENTER_REGION_36003", "ENTER_REGION_36004" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_36002(context, evt)
	if evt.param1 ~= 36002 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_36002(context, evt)
	-- 将configid为 36001 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 36001, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_36003(context, evt)
	if evt.param1 ~= 36003 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_36003(context, evt)
	ScriptLib.UnlockFloatSignal(context, defs.group_id, defs.gadget_signal_id)
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_36004(context, evt)
	if evt.param1 ~= 36004 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_36004(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "7900901") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end