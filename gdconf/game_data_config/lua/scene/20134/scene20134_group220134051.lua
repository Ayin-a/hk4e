-- 基础信息
local base_info = {
	group_id = 220134051
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
	{ config_id = 51001, gadget_id = 70310342, pos = { x = 315.614, y = 625.360, z = -1656.789 }, rot = { x = 0.000, y = 329.171, z = 0.000 }, level = 1 }
}

-- 区域
regions = {
	{ config_id = 51002, shape = RegionShape.SPHERE, radius = 10, pos = { x = 315.353, y = 625.360, z = -1660.611 } }
}

-- 触发器
triggers = {
	{ config_id = 1051002, name = "ENTER_REGION_51002", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_51002", action = "action_EVENT_ENTER_REGION_51002", trigger_count = 0 }
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
		gadgets = { 51001 },
		regions = { 51002 },
		triggers = { "ENTER_REGION_51002" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_51002(context, evt)
	if evt.param1 ~= 51002 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_51002(context, evt)
	if ScriptLib.GetHostQuestState(context,4007405)==3 then
	ScriptLib.ActivateDungeonCheckPoint(context, 3)
	end
	return 0
end