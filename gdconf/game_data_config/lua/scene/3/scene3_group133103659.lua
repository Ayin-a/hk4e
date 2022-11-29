-- 基础信息
local base_info = {
	group_id = 133103659
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 659001, monster_id = 20011201, pos = { x = -39.298, y = 310.189, z = 1900.276 }, rot = { x = 0.000, y = 259.550, z = 0.000 }, level = 27, drop_tag = "史莱姆", area_id = 6 },
	{ config_id = 659002, monster_id = 20011301, pos = { x = -41.719, y = 307.797, z = 1892.455 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, drop_tag = "大史莱姆", area_id = 6 },
	{ config_id = 659003, monster_id = 20011201, pos = { x = -44.489, y = 308.982, z = 1899.393 }, rot = { x = 0.000, y = 92.670, z = 0.000 }, level = 27, drop_tag = "史莱姆", area_id = 6 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
}

-- 区域
regions = {
	{ config_id = 659004, shape = RegionShape.SPHERE, radius = 5, pos = { x = -42.477, y = 309.279, z = 1898.948 }, area_id = 6 }
}

-- 触发器
triggers = {
	{ config_id = 1659004, name = "ENTER_REGION_659004", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_659004", action = "action_EVENT_ENTER_REGION_659004" }
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
		monsters = { 659002 },
		gadgets = { },
		regions = { 659004 },
		triggers = { "ENTER_REGION_659004" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 659001, 659003 },
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
function condition_EVENT_ENTER_REGION_659004(context, evt)
	if evt.param1 ~= 659004 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_659004(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133103659, 2)
	
	return 0
end