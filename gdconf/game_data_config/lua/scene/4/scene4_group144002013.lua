-- 基础信息
local base_info = {
	group_id = 144002013
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
	-- 笔记隐形npc
	{ config_id = 13002, npc_id = 2003057, pos = { x = 572.377, y = 187.978, z = -501.831 }, rot = { x = 0.000, y = 340.220, z = 0.000 }, area_id = 101 }
}

-- 装置
gadgets = {
	{ config_id = 13004, gadget_id = 70220021, pos = { x = 573.154, y = 186.476, z = -498.155 }, rot = { x = 351.938, y = 180.294, z = 0.919 }, level = 1, isOneoff = true, area_id = 101 },
	{ config_id = 13005, gadget_id = 70220049, pos = { x = 569.605, y = 186.911, z = -502.833 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 101 }
}

-- 区域
regions = {
	{ config_id = 13001, shape = RegionShape.SPHERE, radius = 5, pos = { x = 570.033, y = 186.769, z = -501.760 }, area_id = 101 }
}

-- 触发器
triggers = {
	{ config_id = 1013001, name = "ENTER_REGION_13001", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_13001", action = "action_EVENT_ENTER_REGION_13001" },
	{ config_id = 1013003, name = "ANY_GADGET_DIE_13003", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_13003", action = "action_EVENT_ANY_GADGET_DIE_13003", trigger_count = 0 }
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
		gadgets = { 13004, 13005 },
		regions = { 13001 },
		triggers = { "ENTER_REGION_13001", "ANY_GADGET_DIE_13003" },
		npcs = { 13002 },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_13001(context, evt)
	if evt.param1 ~= 13001 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_13001(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "7900501finish") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_13003(context, evt)
	if 13004 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_13003(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "7900501finish") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end