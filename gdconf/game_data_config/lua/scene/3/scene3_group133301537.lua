-- 基础信息
local base_info = {
	group_id = 133301537
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 537001, monster_id = 26090201, pos = { x = -708.479, y = 220.085, z = 3625.450 }, rot = { x = 0.000, y = 185.001, z = 0.000 }, level = 33, drop_tag = "蕈兽", pose_id = 101, area_id = 22 },
	{ config_id = 537002, monster_id = 26090201, pos = { x = -705.463, y = 220.085, z = 3620.601 }, rot = { x = 0.000, y = 242.893, z = 0.000 }, level = 33, drop_tag = "蕈兽", pose_id = 101, area_id = 22 },
	{ config_id = 537003, monster_id = 26090201, pos = { x = -709.981, y = 218.614, z = 3616.671 }, rot = { x = 0.000, y = 301.478, z = 0.000 }, level = 33, drop_tag = "蕈兽", pose_id = 101, area_id = 22 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
}

-- 区域
regions = {
	{ config_id = 537004, shape = RegionShape.SPHERE, radius = 5, pos = { x = -709.848, y = 218.267, z = 3622.753 }, area_id = 22 }
}

-- 触发器
triggers = {
	{ config_id = 1537004, name = "ENTER_REGION_537004", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_537004", action = "action_EVENT_ENTER_REGION_537004" }
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
		regions = { 537004 },
		triggers = { "ENTER_REGION_537004" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 537001, 537002, 537003 },
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
function condition_EVENT_ENTER_REGION_537004(context, evt)
	if evt.param1 ~= 537004 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_537004(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133301537, 2)
	
	return 0
end