-- 基础信息
local base_info = {
	group_id = 220134053
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
	{ config_id = 53001, gadget_id = 70310342, pos = { x = 647.115, y = 605.850, z = -1488.759 }, rot = { x = 359.938, y = 6.847, z = 359.734 }, level = 1 }
}

-- 区域
regions = {
	{ config_id = 53002, shape = RegionShape.SPHERE, radius = 10, pos = { x = 655.031, y = 607.582, z = -1487.515 } }
}

-- 触发器
triggers = {
	{ config_id = 1053002, name = "ENTER_REGION_53002", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_53002", action = "action_EVENT_ENTER_REGION_53002", trigger_count = 0 }
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
		gadgets = { 53001 },
		regions = { 53002 },
		triggers = { "ENTER_REGION_53002" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_53002(context, evt)
	if evt.param1 ~= 53002 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_53002(context, evt)
	if ScriptLib.GetHostQuestState(context,4007603)==3 then
	ScriptLib.ActivateDungeonCheckPoint(context, 5)
	end
	return 0
end