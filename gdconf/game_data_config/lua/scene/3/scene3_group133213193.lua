-- 基础信息
local base_info = {
	group_id = 133213193
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 193001, monster_id = 25080101, pos = { x = -3341.248, y = 200.832, z = -3578.652 }, rot = { x = 0.000, y = 154.743, z = 0.000 }, level = 25, drop_tag = "浪人武士", pose_id = 1, area_id = 12 },
	{ config_id = 193002, monster_id = 25080101, pos = { x = -3335.504, y = 200.802, z = -3578.925 }, rot = { x = 0.000, y = 194.457, z = 0.000 }, level = 25, drop_tag = "浪人武士", pose_id = 1, area_id = 12 },
	{ config_id = 193003, monster_id = 25080201, pos = { x = -3343.368, y = 200.353, z = -3580.223 }, rot = { x = 0.000, y = 126.310, z = 0.000 }, level = 25, drop_tag = "浪人武士", pose_id = 1, area_id = 12 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
}

-- 区域
regions = {
	{ config_id = 193004, shape = RegionShape.SPHERE, radius = 5, pos = { x = -3339.058, y = 200.040, z = -3586.137 }, area_id = 12 }
}

-- 触发器
triggers = {
	{ config_id = 1193004, name = "ENTER_REGION_193004", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_193004", action = "action_EVENT_ENTER_REGION_193004" }
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
		regions = { 193004 },
		triggers = { "ENTER_REGION_193004" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 193001, 193002, 193003 },
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
function condition_EVENT_ENTER_REGION_193004(context, evt)
	if evt.param1 ~= 193004 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_193004(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133213193, 2)
	
	return 0
end