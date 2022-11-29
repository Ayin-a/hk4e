-- 基础信息
local base_info = {
	group_id = 133310526
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 526001, monster_id = 26090901, pos = { x = -2460.386, y = 256.843, z = 4363.739 }, rot = { x = 0.000, y = 8.021, z = 0.000 }, level = 32, drop_tag = "蕈兽", pose_id = 101, area_id = 26 },
	{ config_id = 526002, monster_id = 26090901, pos = { x = -2453.288, y = 256.528, z = 4377.389 }, rot = { x = 0.000, y = 237.082, z = 0.000 }, level = 32, drop_tag = "蕈兽", pose_id = 101, area_id = 26 },
	{ config_id = 526003, monster_id = 26090901, pos = { x = -2468.630, y = 255.760, z = 4372.779 }, rot = { x = 0.000, y = 91.621, z = 0.000 }, level = 32, drop_tag = "蕈兽", pose_id = 101, area_id = 26 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
}

-- 区域
regions = {
	{ config_id = 526004, shape = RegionShape.SPHERE, radius = 14.2, pos = { x = -2460.925, y = 256.021, z = 4371.813 }, area_id = 26 }
}

-- 触发器
triggers = {
	{ config_id = 1526004, name = "ENTER_REGION_526004", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_526004", action = "action_EVENT_ENTER_REGION_526004" }
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
		regions = { 526004 },
		triggers = { "ENTER_REGION_526004" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 526001, 526002, 526003 },
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
function condition_EVENT_ENTER_REGION_526004(context, evt)
	if evt.param1 ~= 526004 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_526004(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133310526, 2)
	
	return 0
end