-- 基础信息
local base_info = {
	group_id = 133309387
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 387001, monster_id = 28060401, pos = { x = -2191.870, y = 37.075, z = 5410.649 }, rot = { x = 0.000, y = 291.477, z = 0.000 }, level = 32, drop_tag = "走兽", pose_id = 1, area_id = 27 },
	{ config_id = 387002, monster_id = 28060401, pos = { x = -2192.221, y = 37.859, z = 5415.742 }, rot = { x = 0.000, y = 158.753, z = 0.000 }, level = 32, drop_tag = "走兽", pose_id = 1, area_id = 27 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
}

-- 区域
regions = {
	{ config_id = 387004, shape = RegionShape.SPHERE, radius = 6, pos = { x = -2193.508, y = 37.151, z = 5411.197 }, area_id = 27 }
}

-- 触发器
triggers = {
	{ config_id = 1387004, name = "ENTER_REGION_387004", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_387004", action = "action_EVENT_ENTER_REGION_387004" }
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
		regions = { 387004 },
		triggers = { "ENTER_REGION_387004" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 387001, 387002 },
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
function condition_EVENT_ENTER_REGION_387004(context, evt)
	if evt.param1 ~= 387004 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_387004(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133309387, 2)
	
	return 0
end