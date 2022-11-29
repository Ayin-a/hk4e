-- 基础信息
local base_info = {
	group_id = 133308351
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
	{ config_id = 351002, gadget_id = 70360001, pos = { x = -1424.679, y = 82.290, z = 4729.751 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 26 }
}

-- 区域
regions = {
	{ config_id = 351001, shape = RegionShape.SPHERE, radius = 6, pos = { x = -1441.841, y = 82.252, z = 4732.341 }, area_id = 26 }
}

-- 触发器
triggers = {
	{ config_id = 1351001, name = "ENTER_REGION_351001", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_351001", action = "action_EVENT_ENTER_REGION_351001", trigger_count = 0 }
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
		gadgets = { 351002 },
		regions = { 351001 },
		triggers = { "ENTER_REGION_351001" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_351001(context, evt)
	if evt.param1 ~= 351001 then return false end
	
	-- 判断角色数量不少于0
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_351001(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "WQ7305509") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end