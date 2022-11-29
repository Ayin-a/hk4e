-- 基础信息
local base_info = {
	group_id = 133309188
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 188001, monster_id = 28060401, pos = { x = -2624.066, y = -14.964, z = 5775.699 }, rot = { x = 0.000, y = 50.430, z = 0.000 }, level = 32, drop_tag = "走兽", pose_id = 1, area_id = 27 },
	{ config_id = 188003, monster_id = 28060401, pos = { x = -2616.441, y = -16.946, z = 5773.180 }, rot = { x = 0.000, y = 318.862, z = 0.000 }, level = 32, drop_tag = "走兽", pose_id = 1, area_id = 27 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
}

-- 区域
regions = {
	{ config_id = 188004, shape = RegionShape.SPHERE, radius = 5, pos = { x = -2619.572, y = -16.216, z = 5775.582 }, area_id = 27 }
}

-- 触发器
triggers = {
	{ config_id = 1188004, name = "ENTER_REGION_188004", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_188004", action = "action_EVENT_ENTER_REGION_188004" }
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
		regions = { 188004 },
		triggers = { "ENTER_REGION_188004" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 188001, 188003 },
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
function condition_EVENT_ENTER_REGION_188004(context, evt)
	if evt.param1 ~= 188004 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_188004(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133309188, 2)
	
	return 0
end