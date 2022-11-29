-- 基础信息
local base_info = {
	group_id = 133106645
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 645001, monster_id = 20011401, pos = { x = -762.751, y = 251.710, z = 1438.333 }, rot = { x = 0.000, y = 188.499, z = 0.000 }, level = 36, drop_tag = "史莱姆", area_id = 19 },
	{ config_id = 645002, monster_id = 20011401, pos = { x = -764.041, y = 251.015, z = 1439.764 }, rot = { x = 0.000, y = 188.499, z = 0.000 }, level = 36, drop_tag = "史莱姆", area_id = 19 },
	{ config_id = 645003, monster_id = 20011401, pos = { x = -761.118, y = 251.721, z = 1439.234 }, rot = { x = 0.000, y = 188.499, z = 0.000 }, level = 36, drop_tag = "史莱姆", area_id = 19 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
}

-- 区域
regions = {
	{ config_id = 645004, shape = RegionShape.SPHERE, radius = 7, pos = { x = -762.648, y = 251.606, z = 1438.695 }, area_id = 19 }
}

-- 触发器
triggers = {
	{ config_id = 1645004, name = "ENTER_REGION_645004", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_645004", action = "action_EVENT_ENTER_REGION_645004" }
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
		regions = { 645004 },
		triggers = { "ENTER_REGION_645004" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 645001, 645002, 645003 },
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
function condition_EVENT_ENTER_REGION_645004(context, evt)
	if evt.param1 ~= 645004 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_645004(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133106645, 2)
	
	return 0
end