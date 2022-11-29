-- 基础信息
local base_info = {
	group_id = 133103174
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 174001, monster_id = 20011201, pos = { x = 608.416, y = 235.969, z = 1603.255 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 24, drop_tag = "史莱姆", area_id = 6 },
	{ config_id = 174002, monster_id = 20011201, pos = { x = 606.295, y = 235.529, z = 1608.466 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 24, drop_tag = "史莱姆", area_id = 6 },
	{ config_id = 174003, monster_id = 20011301, pos = { x = 605.979, y = 236.318, z = 1605.667 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 24, drop_tag = "大史莱姆", area_id = 6 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
}

-- 区域
regions = {
	{ config_id = 174004, shape = RegionShape.SPHERE, radius = 5, pos = { x = 606.849, y = 235.970, z = 1605.923 }, area_id = 6 }
}

-- 触发器
triggers = {
	{ config_id = 1174004, name = "ENTER_REGION_174004", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_174004", action = "action_EVENT_ENTER_REGION_174004" }
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
		regions = { 174004 },
		triggers = { "ENTER_REGION_174004" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { 174001, 174002, 174003 },
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
function condition_EVENT_ENTER_REGION_174004(context, evt)
	if evt.param1 ~= 174004 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_174004(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133103174, 2)
	
	return 0
end