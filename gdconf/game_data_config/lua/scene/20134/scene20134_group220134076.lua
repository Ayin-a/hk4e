-- 基础信息
local base_info = {
	group_id = 220134076
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
	{ config_id = 76001, gadget_id = 70310342, pos = { x = 499.266, y = 609.303, z = -1655.058 }, rot = { x = 0.000, y = 0.132, z = 0.000 }, level = 1 }
}

-- 区域
regions = {
	{ config_id = 76003, shape = RegionShape.SPHERE, radius = 50, pos = { x = 499.967, y = 613.465, z = -1590.434 } }
}

-- 触发器
triggers = {
	{ config_id = 1076003, name = "ENTER_REGION_76003", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_76003", action = "action_EVENT_ENTER_REGION_76003", trigger_count = 0 }
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
		gadgets = { 76001 },
		regions = { 76003 },
		triggers = { "ENTER_REGION_76003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_76003(context, evt)
	if evt.param1 ~= 76003 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_76003(context, evt)
	ScriptLib.ActivateDungeonCheckPoint(context, 7)
	return 0
end