-- 基础信息
local base_info = {
	group_id = 133307183
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 183001, monster_id = 28061501, pos = { x = -1538.379, y = 28.783, z = 5567.159 }, rot = { x = 0.000, y = 208.115, z = 0.000 }, level = 32, drop_tag = "鸟类", pose_id = 1, area_id = 32 },
	{ config_id = 183002, monster_id = 28061501, pos = { x = -1540.917, y = 29.778, z = 5566.576 }, rot = { x = 0.000, y = 188.279, z = 0.000 }, level = 32, drop_tag = "鸟类", pose_id = 1, area_id = 32 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
}

-- 区域
regions = {
	{ config_id = 183004, shape = RegionShape.SPHERE, radius = 5, pos = { x = -1540.397, y = 28.478, z = 5561.998 }, area_id = 32 }
}

-- 触发器
triggers = {
	{ config_id = 1183004, name = "ENTER_REGION_183004", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_183004", action = "action_EVENT_ENTER_REGION_183004" }
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
		regions = { 183004 },
		triggers = { "ENTER_REGION_183004" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 183001, 183002 },
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
function condition_EVENT_ENTER_REGION_183004(context, evt)
	if evt.param1 ~= 183004 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_183004(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133307183, 2)
	
	return 0
end