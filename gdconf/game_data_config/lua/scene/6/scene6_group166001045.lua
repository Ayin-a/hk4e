-- 基础信息
local base_info = {
	group_id = 166001045
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
	{ config_id = 45001, gadget_id = 70290341, pos = { x = 453.740, y = 378.071, z = 520.790 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, persistent = true, area_id = 300 }
}

-- 区域
regions = {
	{ config_id = 45003, shape = RegionShape.SPHERE, radius = 20, pos = { x = 453.171, y = 378.229, z = 520.838 }, area_id = 300 },
	{ config_id = 45004, shape = RegionShape.SPHERE, radius = 13, pos = { x = 477.154, y = 380.323, z = 526.089 }, area_id = 300 }
}

-- 触发器
triggers = {
	{ config_id = 1045002, name = "QUEST_FINISH_45002", event = EventType.EVENT_QUEST_FINISH, source = "", condition = "", action = "action_EVENT_QUEST_FINISH_45002", trigger_count = 0 },
	{ config_id = 1045003, name = "ENTER_REGION_45003", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_45003", action = "action_EVENT_ENTER_REGION_45003", trigger_count = 0 },
	{ config_id = 1045004, name = "ENTER_REGION_45004", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_45004", action = "action_EVENT_ENTER_REGION_45004", trigger_count = 0 }
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
		gadgets = { 45001 },
		regions = { 45003, 45004 },
		triggers = { "QUEST_FINISH_45002", "ENTER_REGION_45003", "ENTER_REGION_45004" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发操作
function action_EVENT_QUEST_FINISH_45002(context, evt)
	-- 将configid为 45001 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 45001, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_45003(context, evt)
	if evt.param1 ~= 45003 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_45003(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "166001045") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_45004(context, evt)
	if evt.param1 ~= 45004 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_45004(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "166001045") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end