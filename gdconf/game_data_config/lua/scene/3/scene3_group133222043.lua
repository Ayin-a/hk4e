-- 基础信息
local base_info = {
	group_id = 133222043
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 43001, monster_id = 20060201, pos = { x = -4365.302, y = 242.446, z = -4177.277 }, rot = { x = 3.117, y = 340.230, z = 1.720 }, level = 32, drop_tag = "飘浮灵", pose_id = 101, area_id = 14 },
	{ config_id = 43002, monster_id = 20060201, pos = { x = -4364.624, y = 242.119, z = -4170.884 }, rot = { x = 0.000, y = 224.747, z = 0.000 }, level = 32, drop_tag = "飘浮灵", pose_id = 101, area_id = 14 },
	{ config_id = 43003, monster_id = 20010501, pos = { x = -4370.610, y = 243.777, z = -4173.553 }, rot = { x = 0.000, y = 104.213, z = 0.000 }, level = 32, drop_tag = "史莱姆", area_id = 14 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
}

-- 区域
regions = {
	{ config_id = 43004, shape = RegionShape.SPHERE, radius = 8, pos = { x = -4367.706, y = 243.105, z = -4174.220 }, area_id = 14 }
}

-- 触发器
triggers = {
	{ config_id = 1043004, name = "ENTER_REGION_43004", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_43004", action = "action_EVENT_ENTER_REGION_43004" }
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
		regions = { 43004 },
		triggers = { "ENTER_REGION_43004" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 43001, 43002, 43003 },
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
function condition_EVENT_ENTER_REGION_43004(context, evt)
	if evt.param1 ~= 43004 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_43004(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133222043, 2)
	
	return 0
end