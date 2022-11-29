-- 基础信息
local base_info = {
	group_id = 133213284
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 284001, monster_id = 21010501, pos = { x = -3926.910, y = 282.282, z = -3141.151 }, rot = { x = 0.000, y = 221.474, z = 0.000 }, level = 28, drop_tag = "远程丘丘人", area_id = 12 },
	{ config_id = 284002, monster_id = 22010101, pos = { x = -3926.462, y = 279.302, z = -3147.416 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 28, drop_tag = "深渊法师", area_id = 12 },
	{ config_id = 284003, monster_id = 21030601, pos = { x = -3932.703, y = 280.759, z = -3145.234 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 28, drop_tag = "丘丘萨满", area_id = 12 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
}

-- 区域
regions = {
	{ config_id = 284005, shape = RegionShape.SPHERE, radius = 5, pos = { x = -3928.611, y = 280.710, z = -3145.004 }, area_id = 12 }
}

-- 触发器
triggers = {
	{ config_id = 1284005, name = "ENTER_REGION_284005", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_284005", action = "action_EVENT_ENTER_REGION_284005" }
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
		-- description = suite_1,
		monsters = { },
		gadgets = { },
		regions = { 284005 },
		triggers = { "ENTER_REGION_284005" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { 284001, 284002, 284003 },
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
function condition_EVENT_ENTER_REGION_284005(context, evt)
	if evt.param1 ~= 284005 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_284005(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133213284, 2)
	
	return 0
end