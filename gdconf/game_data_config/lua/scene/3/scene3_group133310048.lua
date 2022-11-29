-- 基础信息
local base_info = {
	group_id = 133310048
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 48001, monster_id = 26090301, pos = { x = -2996.158, y = 264.532, z = 5033.774 }, rot = { x = 0.000, y = 140.125, z = 0.000 }, level = 32, drop_tag = "蕈兽", disableWander = true, pose_id = 101, area_id = 28 },
	{ config_id = 48003, monster_id = 26090301, pos = { x = -2990.564, y = 264.093, z = 5033.741 }, rot = { x = 0.000, y = 144.309, z = 0.000 }, level = 32, drop_tag = "蕈兽", disableWander = true, pose_id = 101, area_id = 28 },
	{ config_id = 48005, monster_id = 26090801, pos = { x = -2992.688, y = 262.891, z = 5039.397 }, rot = { x = 0.000, y = 175.205, z = 0.000 }, level = 32, drop_tag = "蕈兽", pose_id = 101, area_id = 28 },
	{ config_id = 48006, monster_id = 26090801, pos = { x = -2990.115, y = 263.123, z = 5037.167 }, rot = { x = 0.000, y = 189.408, z = 0.000 }, level = 32, drop_tag = "蕈兽", pose_id = 101, area_id = 28 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
}

-- 区域
regions = {
	{ config_id = 48004, shape = RegionShape.SPHERE, radius = 5, pos = { x = -2987.272, y = 264.368, z = 5032.348 }, area_id = 28 }
}

-- 触发器
triggers = {
	{ config_id = 1048004, name = "ENTER_REGION_48004", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_48004", action = "action_EVENT_ENTER_REGION_48004" }
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
		regions = { 48004 },
		triggers = { "ENTER_REGION_48004" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 48001, 48003, 48005, 48006 },
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
function condition_EVENT_ENTER_REGION_48004(context, evt)
	if evt.param1 ~= 48004 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_48004(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133310048, 2)
	
	return 0
end