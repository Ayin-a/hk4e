-- 基础信息
local base_info = {
	group_id = 133102088
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 88001, monster_id = 20011501, pos = { x = 1417.551, y = 159.649, z = -202.783 }, rot = { x = 0.000, y = 269.600, z = 0.000 }, level = 32, drop_tag = "大史莱姆", area_id = 5 },
	{ config_id = 88002, monster_id = 20011501, pos = { x = 1417.520, y = 159.596, z = -205.589 }, rot = { x = 0.000, y = 282.773, z = 0.000 }, level = 16, drop_tag = "大史莱姆", area_id = 5 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
}

-- 区域
regions = {
	{ config_id = 88004, shape = RegionShape.SPHERE, radius = 4, pos = { x = 1416.886, y = 159.628, z = -204.119 }, area_id = 5 }
}

-- 触发器
triggers = {
	{ config_id = 1088004, name = "ENTER_REGION_88004", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_88004", action = "action_EVENT_ENTER_REGION_88004" }
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
		regions = { 88004 },
		triggers = { "ENTER_REGION_88004" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 88001, 88002 },
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
function condition_EVENT_ENTER_REGION_88004(context, evt)
	if evt.param1 ~= 88004 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_88004(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133102088, 2)
	
	return 0
end