-- 基础信息
local base_info = {
	group_id = 133210352
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 352005, monster_id = 20010901, pos = { x = -3987.607, y = 199.998, z = -563.527 }, rot = { x = 0.000, y = 333.407, z = 0.000 }, level = 30, drop_tag = "大史莱姆", disableWander = true, area_id = 17 },
	{ config_id = 352006, monster_id = 20010801, pos = { x = -3985.239, y = 199.998, z = -559.851 }, rot = { x = 0.000, y = 268.232, z = 0.000 }, level = 30, drop_tag = "史莱姆", disableWander = true, area_id = 17 },
	{ config_id = 352007, monster_id = 20010801, pos = { x = -3994.191, y = 199.998, z = -560.676 }, rot = { x = 0.000, y = 70.812, z = 0.000 }, level = 30, drop_tag = "史莱姆", disableWander = true, area_id = 17 },
	{ config_id = 352008, monster_id = 20010801, pos = { x = -3991.782, y = 199.998, z = -564.128 }, rot = { x = 0.000, y = 15.412, z = 0.000 }, level = 30, drop_tag = "史莱姆", disableWander = true, area_id = 17 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
}

-- 区域
regions = {
	{ config_id = 352004, shape = RegionShape.SPHERE, radius = 5, pos = { x = -3990.092, y = 199.998, z = -560.333 }, area_id = 17 }
}

-- 触发器
triggers = {
	{ config_id = 1352004, name = "ENTER_REGION_352004", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_352004", action = "action_EVENT_ENTER_REGION_352004" }
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
		regions = { 352004 },
		triggers = { "ENTER_REGION_352004" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 352005, 352006, 352007, 352008 },
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
function condition_EVENT_ENTER_REGION_352004(context, evt)
	if evt.param1 ~= 352004 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_352004(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133210352, 2)
	
	return 0
end