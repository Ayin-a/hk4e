-- 基础信息
local base_info = {
	group_id = 133104688
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 688005, monster_id = 20011401, pos = { x = 621.970, y = 227.571, z = 766.599 }, rot = { x = 10.783, y = 66.665, z = 351.605 }, level = 22, drop_tag = "史莱姆", area_id = 6 },
	{ config_id = 688006, monster_id = 20011501, pos = { x = 622.376, y = 227.591, z = 768.421 }, rot = { x = 10.385, y = 69.943, z = 352.167 }, level = 22, drop_tag = "大史莱姆", area_id = 6 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
}

-- 区域
regions = {
	{ config_id = 688004, shape = RegionShape.SPHERE, radius = 5, pos = { x = 621.170, y = 227.591, z = 767.471 }, area_id = 6 }
}

-- 触发器
triggers = {
	{ config_id = 1688004, name = "ENTER_REGION_688004", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_688004", action = "action_EVENT_ENTER_REGION_688004" }
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
		gadgets = { },
		regions = { 688004 },
		triggers = { "ENTER_REGION_688004" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 688005, 688006 },
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

-- 触发条件
function condition_EVENT_ENTER_REGION_688004(context, evt)
	if evt.param1 ~= 688004 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_688004(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133104688, 2)
	
	return 0
end