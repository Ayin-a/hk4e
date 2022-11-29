-- 基础信息
local base_info = {
	group_id = 133106603
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 603001, monster_id = 20010801, pos = { x = -532.208, y = 266.372, z = 1515.114 }, rot = { x = 0.000, y = 265.348, z = 0.000 }, level = 36, drop_tag = "史莱姆", disableWander = true, area_id = 19 },
	{ config_id = 603002, monster_id = 20010801, pos = { x = -529.551, y = 268.299, z = 1516.290 }, rot = { x = 0.000, y = 287.295, z = 0.000 }, level = 36, drop_tag = "史莱姆", disableWander = true, area_id = 19 },
	{ config_id = 603003, monster_id = 20010801, pos = { x = -530.649, y = 268.223, z = 1518.998 }, rot = { x = 0.000, y = 217.067, z = 0.000 }, level = 36, drop_tag = "史莱姆", disableWander = true, area_id = 19 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
}

-- 区域
regions = {
	{ config_id = 603004, shape = RegionShape.SPHERE, radius = 8, pos = { x = -529.176, y = 268.223, z = 1518.929 }, area_id = 19 }
}

-- 触发器
triggers = {
	{ config_id = 1603004, name = "ENTER_REGION_603004", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_603004", action = "action_EVENT_ENTER_REGION_603004" }
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
		monsters = { 603001 },
		gadgets = { },
		regions = { 603004 },
		triggers = { "ENTER_REGION_603004" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 603002, 603003 },
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
function condition_EVENT_ENTER_REGION_603004(context, evt)
	if evt.param1 ~= 603004 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_603004(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133106603, 2)
	
	return 0
end