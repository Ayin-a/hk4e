-- 基础信息
local base_info = {
	group_id = 133106580
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 580001, monster_id = 20011201, pos = { x = -901.978, y = 174.216, z = 1898.518 }, rot = { x = 0.000, y = 41.363, z = 0.000 }, level = 36, drop_tag = "史莱姆", area_id = 19 },
	{ config_id = 580002, monster_id = 20011201, pos = { x = -900.490, y = 174.216, z = 1897.293 }, rot = { x = 0.000, y = 41.363, z = 0.000 }, level = 36, drop_tag = "史莱姆", area_id = 19 },
	{ config_id = 580003, monster_id = 20011201, pos = { x = -903.460, y = 174.216, z = 1897.385 }, rot = { x = 0.000, y = 41.363, z = 0.000 }, level = 36, drop_tag = "史莱姆", area_id = 19 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
}

-- 区域
regions = {
	{ config_id = 580004, shape = RegionShape.SPHERE, radius = 8, pos = { x = -901.988, y = 170.397, z = 1897.316 }, area_id = 19 }
}

-- 触发器
triggers = {
	{ config_id = 1580004, name = "ENTER_REGION_580004", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_580004", action = "action_EVENT_ENTER_REGION_580004" }
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
		regions = { 580004 },
		triggers = { "ENTER_REGION_580004" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 580001, 580002, 580003 },
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
function condition_EVENT_ENTER_REGION_580004(context, evt)
	if evt.param1 ~= 580004 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_580004(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133106580, 2)
	
	return 0
end