-- 基础信息
local base_info = {
	group_id = 133213233
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 233001, monster_id = 25100101, pos = { x = -3535.739, y = 200.000, z = -2997.510 }, rot = { x = 0.000, y = 74.457, z = 0.000 }, level = 28, drop_tag = "高阶武士", disableWander = true, pose_id = 1, area_id = 12 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
}

-- 区域
regions = {
	{ config_id = 233004, shape = RegionShape.SPHERE, radius = 5, pos = { x = -3532.969, y = 200.000, z = -2999.249 }, area_id = 12 }
}

-- 触发器
triggers = {
	{ config_id = 1233004, name = "ENTER_REGION_233004", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_233004", action = "action_EVENT_ENTER_REGION_233004" }
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
		regions = { 233004 },
		triggers = { "ENTER_REGION_233004" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 233001 },
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
function condition_EVENT_ENTER_REGION_233004(context, evt)
	if evt.param1 ~= 233004 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_233004(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133213233, 2)
	
	return 0
end