-- 基础信息
local base_info = {
	group_id = 133212242
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 242001, monster_id = 20011001, pos = { x = -3798.206, y = 200.334, z = -2527.431 }, rot = { x = 0.000, y = 77.164, z = 0.000 }, level = 27, drop_tag = "史莱姆", area_id = 13 },
	{ config_id = 242002, monster_id = 20011001, pos = { x = -3799.838, y = 200.456, z = -2521.811 }, rot = { x = 0.000, y = 77.164, z = 0.000 }, level = 27, drop_tag = "史莱姆", area_id = 13 },
	{ config_id = 242003, monster_id = 20011001, pos = { x = -3797.848, y = 200.689, z = -2532.506 }, rot = { x = 0.000, y = 77.164, z = 0.000 }, level = 27, drop_tag = "史莱姆", area_id = 13 },
	{ config_id = 242005, monster_id = 20011101, pos = { x = -3795.092, y = 200.000, z = -2526.748 }, rot = { x = 0.000, y = 74.548, z = 0.000 }, level = 27, drop_tag = "大史莱姆", area_id = 13 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
}

-- 区域
regions = {
	{ config_id = 242004, shape = RegionShape.SPHERE, radius = 10, pos = { x = -3795.272, y = 200.000, z = -2526.913 }, area_id = 13 }
}

-- 触发器
triggers = {
	{ config_id = 1242004, name = "ENTER_REGION_242004", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_242004", action = "action_EVENT_ENTER_REGION_242004" }
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
		regions = { 242004 },
		triggers = { "ENTER_REGION_242004" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 242001, 242002, 242003, 242005 },
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
function condition_EVENT_ENTER_REGION_242004(context, evt)
	if evt.param1 ~= 242004 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_242004(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133212242, 2)
	
	return 0
end