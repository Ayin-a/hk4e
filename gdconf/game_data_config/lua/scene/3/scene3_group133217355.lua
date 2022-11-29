-- 基础信息
local base_info = {
	group_id = 133217355
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 355001, monster_id = 20011101, pos = { x = -4289.406, y = 237.145, z = -4184.661 }, rot = { x = 0.000, y = 221.690, z = 0.000 }, level = 32, drop_tag = "大史莱姆", area_id = 14 },
	{ config_id = 355002, monster_id = 20011101, pos = { x = -4288.862, y = 237.052, z = -4190.857 }, rot = { x = 0.000, y = 305.306, z = 0.000 }, level = 32, drop_tag = "大史莱姆", area_id = 14 },
	{ config_id = 355003, monster_id = 20011101, pos = { x = -4294.537, y = 238.810, z = -4188.400 }, rot = { x = 0.000, y = 71.359, z = 0.000 }, level = 32, drop_tag = "大史莱姆", area_id = 14 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
}

-- 区域
regions = {
	{ config_id = 355004, shape = RegionShape.SPHERE, radius = 8, pos = { x = -4292.008, y = 238.006, z = -4188.236 }, area_id = 14 }
}

-- 触发器
triggers = {
	{ config_id = 1355004, name = "ENTER_REGION_355004", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_355004", action = "action_EVENT_ENTER_REGION_355004" }
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
		regions = { 355004 },
		triggers = { "ENTER_REGION_355004" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 355001, 355002, 355003 },
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
function condition_EVENT_ENTER_REGION_355004(context, evt)
	if evt.param1 ~= 355004 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_355004(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133217355, 2)
	
	return 0
end