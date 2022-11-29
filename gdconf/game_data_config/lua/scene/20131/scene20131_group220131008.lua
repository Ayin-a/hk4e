-- 基础信息
local base_info = {
	group_id = 220131008
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 8001, monster_id = 22010101, pos = { x = 49.319, y = 10.531, z = -93.410 }, rot = { x = 0.000, y = 85.161, z = 0.000 }, level = 1, disableWander = true, pose_id = 9013 },
	{ config_id = 8002, monster_id = 21010402, pos = { x = 48.815, y = 10.532, z = -91.321 }, rot = { x = 0.000, y = 135.650, z = 0.000 }, level = 1, disableWander = true, pose_id = 9012 },
	{ config_id = 8003, monster_id = 21010402, pos = { x = 52.719, y = 10.530, z = -90.837 }, rot = { x = 0.000, y = 211.943, z = 0.000 }, level = 1, disableWander = true, pose_id = 9012 },
	{ config_id = 8004, monster_id = 21010402, pos = { x = 54.133, y = 10.530, z = -94.554 }, rot = { x = 0.000, y = 298.509, z = 0.000 }, level = 1, disableWander = true, pose_id = 9012 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 8005, gadget_id = 70300089, pos = { x = 51.148, y = 10.530, z = -93.477 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 }
}

-- 区域
regions = {
	{ config_id = 8006, shape = RegionShape.CUBIC, size = { x = 15.000, y = 15.000, z = 2.000 }, pos = { x = 68.385, y = 12.719, z = -78.912 } }
}

-- 触发器
triggers = {
	{ config_id = 1008006, name = "ENTER_REGION_8006", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_8006", action = "action_EVENT_ENTER_REGION_8006" }
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
		gadgets = { 8005 },
		regions = { 8006 },
		triggers = { "ENTER_REGION_8006" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 8001, 8002, 8003, 8004 },
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
function condition_EVENT_ENTER_REGION_8006(context, evt)
	if evt.param1 ~= 8006 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_8006(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 220131008, 2)
	
	return 0
end