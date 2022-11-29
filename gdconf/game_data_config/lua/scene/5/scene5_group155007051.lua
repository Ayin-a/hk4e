-- 基础信息
local base_info = {
	group_id = 155007051
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 51002, monster_id = 20011101, pos = { x = -95.682, y = 196.600, z = 1504.954 }, rot = { x = 0.308, y = 45.133, z = 358.690 }, level = 36, drop_tag = "大史莱姆", area_id = 200 },
	{ config_id = 51003, monster_id = 20011101, pos = { x = -104.285, y = 196.600, z = 1509.641 }, rot = { x = 0.000, y = 46.152, z = 0.000 }, level = 36, drop_tag = "大史莱姆", area_id = 200 },
	{ config_id = 51004, monster_id = 20011001, pos = { x = -94.038, y = 196.600, z = 1508.887 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, drop_tag = "史莱姆", area_id = 200 },
	{ config_id = 51005, monster_id = 20011001, pos = { x = -99.729, y = 196.600, z = 1513.024 }, rot = { x = 0.000, y = 22.615, z = 0.000 }, level = 36, drop_tag = "史莱姆", area_id = 200 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
}

-- 区域
regions = {
	{ config_id = 51001, shape = RegionShape.SPHERE, radius = 10, pos = { x = -98.122, y = 196.600, z = 1509.604 }, area_id = 200 }
}

-- 触发器
triggers = {
	{ config_id = 1051001, name = "ENTER_REGION_51001", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_51001", action = "action_EVENT_ENTER_REGION_51001" }
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
	end_suite = 2,
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
		regions = { 51001 },
		triggers = { "ENTER_REGION_51001" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 51002, 51003, 51004, 51005 },
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
function condition_EVENT_ENTER_REGION_51001(context, evt)
	if evt.param1 ~= 51001 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_51001(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 155007051, 2)
	
	return 0
end