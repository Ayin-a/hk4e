-- 基础信息
local base_info = {
	group_id = 133106418
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
	-- 流明石采集物
	{ config_id = 418001, gadget_id = 70290345, pos = { x = -739.418, y = 161.633, z = 1549.791 }, rot = { x = 353.605, y = 37.400, z = 282.389 }, level = 1, area_id = 19 }
}

-- 区域
regions = {
	{ config_id = 418002, shape = RegionShape.SPHERE, radius = 15, pos = { x = -733.762, y = 160.872, z = 1557.894 }, area_id = 19 }
}

-- 触发器
triggers = {
	{ config_id = 1418002, name = "ENTER_REGION_418002", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_418002", action = "action_EVENT_ENTER_REGION_418002", trigger_count = 0 }
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
		gadgets = { 418001 },
		regions = { 418002 },
		triggers = { "ENTER_REGION_418002" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_418002(context, evt)
	if evt.param1 ~= 418002 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_418002(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "7104407finish") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end