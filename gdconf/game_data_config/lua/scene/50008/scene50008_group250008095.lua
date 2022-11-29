-- 基础信息
local base_info = {
	group_id = 250008095
}

-- Trigger变量
local defs = {
	father_quest = 20020
}

-- DEFS_MISCS
defs.quest_id = defs.father_quest.."03"
--defs.quest_progress = defs.quest_id.."_visionPuzzle"
defs.quest_progress = "VisionRiddle"

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
	{ config_id = 393, gadget_id = 70800013, pos = { x = 216.150, y = 9.210, z = -200.903 }, rot = { x = 18.720, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 394, gadget_id = 70800014, pos = { x = 212.730, y = 4.817, z = -194.340 }, rot = { x = 18.080, y = 330.000, z = 0.000 }, level = 1 },
	{ config_id = 395, gadget_id = 70800014, pos = { x = 223.890, y = -2.200, z = -200.607 }, rot = { x = 8.900, y = 35.000, z = 0.000 }, level = 1 }
}

-- 区域
regions = {
	{ config_id = 288, shape = RegionShape.SPHERE, radius = 15, pos = { x = 216.120, y = 9.210, z = -212.098 } },
	{ config_id = 95001, shape = RegionShape.SPHERE, radius = 40, pos = { x = 217.649, y = 9.210, z = -206.305 } }
}

-- 触发器
triggers = {
	{ config_id = 1000288, name = "ENTER_REGION_288", event = EventType.EVENT_ENTER_REGION, source = "0", condition = "condition_EVENT_ENTER_REGION_288", action = "action_EVENT_ENTER_REGION_288", trigger_count = 0 },
	{ config_id = 1095001, name = "ENTER_REGION_95001", event = EventType.EVENT_ENTER_REGION, source = "0", condition = "condition_EVENT_ENTER_REGION_95001", action = "action_EVENT_ENTER_REGION_95001", trigger_count = 0 },
	{ config_id = 1095002, name = "QUEST_FINISH_95002", event = EventType.EVENT_QUEST_FINISH, source = defs.quest_id, condition = "", action = "action_EVENT_QUEST_FINISH_95002", trigger_count = 0 }
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
		gadgets = { 393, 394, 395 },
		regions = { 288, 95001 },
		triggers = { "ENTER_REGION_288", "ENTER_REGION_95001", "QUEST_FINISH_95002" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_288(context, evt)
	if evt.param1 ~= 288 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_288(context, evt)
	-- 将configid为 393 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 393, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_95001(context, evt)
	if evt.param1 ~= 95001 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_95001(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, defs.quest_progress) then
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_QUEST_FINISH_95002(context, evt)
	-- 将configid为 393 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 393, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end