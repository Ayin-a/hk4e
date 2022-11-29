-- 基础信息
local base_info = {
	group_id = 133301710
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 710001, monster_id = 26090501, pos = { x = -825.642, y = 119.874, z = 3432.104 }, rot = { x = 0.000, y = 40.308, z = 0.000 }, level = 30, drop_tag = "蕈兽", pose_id = 101, area_id = 23 },
	{ config_id = 710002, monster_id = 26090501, pos = { x = -828.579, y = 121.246, z = 3426.020 }, rot = { x = 0.000, y = 40.308, z = 0.000 }, level = 30, drop_tag = "蕈兽", pose_id = 101, area_id = 23 },
	{ config_id = 710003, monster_id = 26090501, pos = { x = -832.763, y = 121.215, z = 3431.140 }, rot = { x = 0.000, y = 40.308, z = 0.000 }, level = 30, drop_tag = "蕈兽", pose_id = 101, area_id = 23 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
}

-- 区域
regions = {
	{ config_id = 710004, shape = RegionShape.SPHERE, radius = 5, pos = { x = -829.227, y = 120.339, z = 3429.626 }, area_id = 23 }
}

-- 触发器
triggers = {
	{ config_id = 1710004, name = "ENTER_REGION_710004", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_710004", action = "action_EVENT_ENTER_REGION_710004" }
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
		regions = { 710004 },
		triggers = { "ENTER_REGION_710004" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 710001, 710002, 710003 },
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
function condition_EVENT_ENTER_REGION_710004(context, evt)
	if evt.param1 ~= 710004 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_710004(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133301710, 2)
	
	return 0
end