-- 基础信息
local base_info = {
	group_id = 155006126
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 126001, monster_id = 20011401, pos = { x = 338.424, y = 168.050, z = -359.318 }, rot = { x = 0.000, y = 250.985, z = 0.000 }, level = 36, drop_tag = "史莱姆", area_id = 200 },
	{ config_id = 126002, monster_id = 20011401, pos = { x = 334.999, y = 168.050, z = -361.530 }, rot = { x = 0.000, y = 260.278, z = 0.000 }, level = 36, drop_tag = "史莱姆", area_id = 200 },
	{ config_id = 126003, monster_id = 20011401, pos = { x = 336.779, y = 168.050, z = -365.182 }, rot = { x = 0.000, y = 316.671, z = 0.000 }, level = 36, drop_tag = "史莱姆", area_id = 200 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
}

-- 区域
regions = {
	{ config_id = 126004, shape = RegionShape.SPHERE, radius = 5, pos = { x = 338.680, y = 168.050, z = -361.846 }, area_id = 200 }
}

-- 触发器
triggers = {
	{ config_id = 1126004, name = "ENTER_REGION_126004", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_126004", action = "action_EVENT_ENTER_REGION_126004" }
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
		regions = { 126004 },
		triggers = { "ENTER_REGION_126004" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 126001, 126002, 126003 },
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
function condition_EVENT_ENTER_REGION_126004(context, evt)
	if evt.param1 ~= 126004 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_126004(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 155006126, 2)
	
	return 0
end