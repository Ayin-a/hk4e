-- 基础信息
local base_info = {
	group_id = 133301652
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 652002, monster_id = 26090801, pos = { x = -897.913, y = 367.980, z = 3246.058 }, rot = { x = 0.000, y = 24.782, z = 0.000 }, level = 30, drop_tag = "蕈兽", pose_id = 101, area_id = 23 },
	{ config_id = 652003, monster_id = 26090801, pos = { x = -898.153, y = 365.652, z = 3251.275 }, rot = { x = 0.000, y = 98.113, z = 0.000 }, level = 30, drop_tag = "蕈兽", pose_id = 101, area_id = 23 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
}

-- 区域
regions = {
	{ config_id = 652004, shape = RegionShape.SPHERE, radius = 5, pos = { x = -897.001, y = 367.516, z = 3247.134 }, area_id = 23 }
}

-- 触发器
triggers = {
	{ config_id = 1652004, name = "ENTER_REGION_652004", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_652004", action = "action_EVENT_ENTER_REGION_652004" }
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
		regions = { 652004 },
		triggers = { "ENTER_REGION_652004" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 652002, 652003 },
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
function condition_EVENT_ENTER_REGION_652004(context, evt)
	if evt.param1 ~= 652004 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_652004(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133301652, 2)
	
	return 0
end