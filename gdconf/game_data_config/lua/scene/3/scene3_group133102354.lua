-- 基础信息
local base_info = {
	group_id = 133102354
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 354002, monster_id = 20011001, pos = { x = 1192.830, y = 200.000, z = 477.784 }, rot = { x = 0.000, y = 205.218, z = 0.000 }, level = 16, drop_tag = "史莱姆", area_id = 5 },
	{ config_id = 354003, monster_id = 20011001, pos = { x = 1193.259, y = 200.000, z = 473.543 }, rot = { x = 0.000, y = 64.251, z = 0.000 }, level = 16, drop_tag = "史莱姆", area_id = 5 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
}

-- 区域
regions = {
	{ config_id = 354001, shape = RegionShape.SPHERE, radius = 3, pos = { x = 1192.918, y = 200.000, z = 476.507 }, area_id = 5 }
}

-- 触发器
triggers = {
	{ config_id = 1354001, name = "ENTER_REGION_354001", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_354001", action = "action_EVENT_ENTER_REGION_354001" }
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
		regions = { 354001 },
		triggers = { "ENTER_REGION_354001" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { 354002, 354003 },
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
function condition_EVENT_ENTER_REGION_354001(context, evt)
	if evt.param1 ~= 354001 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_354001(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133102354, 2)
	
	return 0
end