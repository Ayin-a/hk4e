-- 基础信息
local base_info = {
	group_id = 133106641
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 641001, monster_id = 20010401, pos = { x = -811.981, y = 163.234, z = 1861.421 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, drop_tag = "大史莱姆", area_id = 19 },
	{ config_id = 641002, monster_id = 20010401, pos = { x = -809.636, y = 162.982, z = 1858.333 }, rot = { x = 0.000, y = 30.406, z = 0.000 }, level = 36, drop_tag = "大史莱姆", area_id = 19 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
}

-- 区域
regions = {
	{ config_id = 641004, shape = RegionShape.SPHERE, radius = 5, pos = { x = -811.787, y = 163.359, z = 1861.543 }, area_id = 19 }
}

-- 触发器
triggers = {
	{ config_id = 1641004, name = "ENTER_REGION_641004", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_641004", action = "action_EVENT_ENTER_REGION_641004" }
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
		regions = { 641004 },
		triggers = { "ENTER_REGION_641004" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 641001, 641002 },
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
function condition_EVENT_ENTER_REGION_641004(context, evt)
	if evt.param1 ~= 641004 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_641004(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133106641, 2)
	
	return 0
end