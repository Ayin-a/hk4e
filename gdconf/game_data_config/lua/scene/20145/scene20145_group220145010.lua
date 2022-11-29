-- 基础信息
local base_info = {
	group_id = 220145010
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 10001, monster_id = 26090401, pos = { x = 525.651, y = 94.359, z = 555.406 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, pose_id = 101 },
	{ config_id = 10002, monster_id = 26090201, pos = { x = 520.183, y = 89.646, z = 587.890 }, rot = { x = 0.000, y = 298.233, z = 0.000 }, level = 1, pose_id = 105 },
	{ config_id = 10003, monster_id = 26090201, pos = { x = 517.217, y = 89.630, z = 583.630 }, rot = { x = 0.000, y = 42.363, z = 0.000 }, level = 1, pose_id = 105 },
	{ config_id = 10005, monster_id = 26090501, pos = { x = 565.231, y = 92.030, z = 527.480 }, rot = { x = 0.000, y = 193.440, z = 0.000 }, level = 1, disableWander = true, pose_id = 101 },
	{ config_id = 10006, monster_id = 26090501, pos = { x = 568.388, y = 92.084, z = 521.080 }, rot = { x = 0.000, y = 299.765, z = 0.000 }, level = 1, disableWander = true, pose_id = 101 },
	{ config_id = 10007, monster_id = 26090501, pos = { x = 561.099, y = 92.048, z = 520.497 }, rot = { x = 0.000, y = 51.448, z = 0.000 }, level = 1, disableWander = true, pose_id = 101 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 10008, gadget_id = 70210101, pos = { x = 528.988, y = 94.104, z = 556.417 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "搜刮点解谜通用须弥", isOneoff = true, persistent = true }
}

-- 区域
regions = {
	{ config_id = 10004, shape = RegionShape.SPHERE, radius = 10, pos = { x = 568.801, y = 92.074, z = 520.748 } }
}

-- 触发器
triggers = {
	{ config_id = 1010004, name = "ENTER_REGION_10004", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_10004", action = "action_EVENT_ENTER_REGION_10004" }
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
		monsters = { 10001, 10002, 10003 },
		gadgets = { 10008 },
		regions = { 10004 },
		triggers = { "ENTER_REGION_10004" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 10005, 10006, 10007 },
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
function condition_EVENT_ENTER_REGION_10004(context, evt)
	if evt.param1 ~= 10004 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_10004(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 220145010, 2)
	
	return 0
end