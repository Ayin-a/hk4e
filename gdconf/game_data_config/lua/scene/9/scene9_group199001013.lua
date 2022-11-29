-- 基础信息
local base_info = {
	group_id = 199001013
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
	{ config_id = 13001, gadget_id = 70290196, pos = { x = -240.551, y = 121.837, z = 420.352 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 403 }
}

-- 区域
regions = {
	{ config_id = 13002, shape = RegionShape.SPHERE, radius = 25, pos = { x = -240.856, y = 121.831, z = 420.031 }, area_id = 403 }
}

-- 触发器
triggers = {
	{ config_id = 1013002, name = "ENTER_REGION_13002", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_13002", action = "action_EVENT_ENTER_REGION_13002", trigger_count = 0 }
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
		gadgets = { 13001 },
		regions = { 13002 },
		triggers = { "ENTER_REGION_13002" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_13002(context, evt)
	if evt.param1 ~= 13002 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_13002(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "quest7902308finish") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end