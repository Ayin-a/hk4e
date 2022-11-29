-- 基础信息
local base_info = {
	group_id = 144001140
}

-- Trigger变量
local defs = {
	group_id = 144001140,
	gadget_signal_id = 140001
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
	{ config_id = 140001, gadget_id = 70220068, pos = { x = 177.200, y = 200.000, z = 368.563 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, persistent = true, area_id = 102 }
}

-- 区域
regions = {
	-- 靠近海上浮标后1）切换物件状态；2）显示Reminder
	{ config_id = 140002, shape = RegionShape.SPHERE, radius = 8, pos = { x = 177.200, y = 200.000, z = 368.563 }, area_id = 102 },
	-- 靠近海上浮标后更新信号源
	{ config_id = 140003, shape = RegionShape.SPHERE, radius = 8, pos = { x = 177.200, y = 200.000, z = 368.563 }, area_id = 102 },
	-- 首次靠近海上浮标后通知任务完成
	{ config_id = 140004, shape = RegionShape.SPHERE, radius = 10, pos = { x = 175.818, y = 200.000, z = 370.497 }, area_id = 102 }
}

-- 触发器
triggers = {
	-- 靠近海上浮标后1）切换物件状态；2）显示Reminder
	{ config_id = 1140002, name = "ENTER_REGION_140002", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_140002", action = "action_EVENT_ENTER_REGION_140002", trigger_count = 0 },
	-- 靠近海上浮标后更新信号源
	{ config_id = 1140003, name = "ENTER_REGION_140003", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_140003", action = "action_EVENT_ENTER_REGION_140003", trigger_count = 0 },
	-- 首次靠近海上浮标后通知任务完成
	{ config_id = 1140004, name = "ENTER_REGION_140004", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_140004", action = "action_EVENT_ENTER_REGION_140004" }
}

-- 点位
points = {
	-- 声明创建船只的transform
	{ config_id = 140005, pos = { x = 182.378, y = 200.000, z = 374.858 }, rot = { x = 0.000, y = 53.872, z = 0.000 }, area_id = 102 }
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
		gadgets = { 140001 },
		regions = { 140002, 140003, 140004 },
		triggers = { "ENTER_REGION_140002", "ENTER_REGION_140003", "ENTER_REGION_140004" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_140002(context, evt)
	if evt.param1 ~= 140002 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_140002(context, evt)
	-- 将configid为 140001 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 140001, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_140003(context, evt)
	if evt.param1 ~= 140003 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_140003(context, evt)
	ScriptLib.UnlockFloatSignal(context, defs.group_id, defs.gadget_signal_id)
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_140004(context, evt)
	if evt.param1 ~= 140004 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_140004(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "7900901") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end