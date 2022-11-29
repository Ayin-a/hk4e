-- 基础信息
local base_info = {
	group_id = 133103081
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 72, monster_id = 20011201, pos = { x = 810.560, y = 333.595, z = 1847.966 }, rot = { x = 315.397, y = 288.271, z = 350.947 }, level = 24, drop_tag = "史莱姆", area_id = 6 },
	{ config_id = 73, monster_id = 20011201, pos = { x = 807.100, y = 334.533, z = 1849.182 }, rot = { x = 305.922, y = 293.749, z = 342.087 }, level = 24, drop_tag = "史莱姆", area_id = 6 },
	{ config_id = 74, monster_id = 20011301, pos = { x = 808.650, y = 334.083, z = 1846.830 }, rot = { x = 353.663, y = 284.307, z = 4.414 }, level = 24, drop_tag = "大史莱姆", area_id = 6 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
}

-- 区域
regions = {
	{ config_id = 86, shape = RegionShape.SPHERE, radius = 5, pos = { x = 807.074, y = 334.443, z = 1855.739 }, area_id = 6 }
}

-- 触发器
triggers = {
	{ config_id = 1000086, name = "ENTER_REGION_86", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_86", action = "action_EVENT_ENTER_REGION_86" }
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
		regions = { 86 },
		triggers = { "ENTER_REGION_86" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { 72, 73, 74 },
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
function condition_EVENT_ENTER_REGION_86(context, evt)
	if evt.param1 ~= 86 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_86(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133103081, 2)
	
	return 0
end