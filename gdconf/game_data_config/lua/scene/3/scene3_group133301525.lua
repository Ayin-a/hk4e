-- 基础信息
local base_info = {
	group_id = 133301525
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 525001, monster_id = 26090401, pos = { x = -616.148, y = 115.550, z = 3444.712 }, rot = { x = 0.000, y = 260.909, z = 0.000 }, level = 33, drop_tag = "蕈兽", pose_id = 101, area_id = 22 },
	{ config_id = 525002, monster_id = 26090401, pos = { x = -613.010, y = 116.293, z = 3449.714 }, rot = { x = 0.000, y = 260.909, z = 0.000 }, level = 33, drop_tag = "蕈兽", pose_id = 101, area_id = 22 },
	{ config_id = 525003, monster_id = 26090401, pos = { x = -612.970, y = 115.945, z = 3438.253 }, rot = { x = 0.000, y = 260.909, z = 0.000 }, level = 33, drop_tag = "蕈兽", pose_id = 101, area_id = 22 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 525005, gadget_id = 70217020, pos = { x = -574.652, y = 132.771, z = 3417.203 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "摩拉石箱须弥", isOneoff = true, persistent = true, explore = { name = "chest", exp = 4 }, area_id = 22 },
	{ config_id = 525006, gadget_id = 70217020, pos = { x = -625.194, y = 116.621, z = 3445.023 }, rot = { x = 0.000, y = 138.910, z = 0.000 }, level = 26, drop_tag = "摩拉石箱须弥", isOneoff = true, persistent = true, explore = { name = "chest", exp = 4 }, area_id = 22 }
}

-- 区域
regions = {
	{ config_id = 525004, shape = RegionShape.SPHERE, radius = 2, pos = { x = -624.457, y = 116.829, z = 3444.676 }, area_id = 22 }
}

-- 触发器
triggers = {
	{ config_id = 1525004, name = "ENTER_REGION_525004", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_525004", action = "action_EVENT_ENTER_REGION_525004" }
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
		gadgets = { 525005, 525006 },
		regions = { 525004 },
		triggers = { "ENTER_REGION_525004" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 525001, 525002, 525003 },
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
function condition_EVENT_ENTER_REGION_525004(context, evt)
	if evt.param1 ~= 525004 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_525004(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133301525, 2)
	
	return 0
end