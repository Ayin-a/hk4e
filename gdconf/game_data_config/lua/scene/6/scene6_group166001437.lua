-- 基础信息
local base_info = {
	group_id = 166001437
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 437001, monster_id = 24020401, pos = { x = 810.051, y = 953.028, z = 1022.061 }, rot = { x = 0.000, y = 164.669, z = 0.000 }, level = 36, drop_tag = "拟生机关", pose_id = 100, area_id = 300 },
	{ config_id = 437003, monster_id = 24020401, pos = { x = 818.974, y = 955.238, z = 1023.250 }, rot = { x = 0.000, y = 164.669, z = 0.000 }, level = 36, drop_tag = "拟生机关", pose_id = 100, area_id = 300 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
}

-- 区域
regions = {
	{ config_id = 437004, shape = RegionShape.SPHERE, radius = 5, pos = { x = 814.974, y = 953.270, z = 1020.238 }, area_id = 300 }
}

-- 触发器
triggers = {
	{ config_id = 1437004, name = "ENTER_REGION_437004", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_437004", action = "action_EVENT_ENTER_REGION_437004" }
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
		regions = { 437004 },
		triggers = { "ENTER_REGION_437004" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 437001, 437003 },
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
function condition_EVENT_ENTER_REGION_437004(context, evt)
	if evt.param1 ~= 437004 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_437004(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 166001437, 2)
	
	return 0
end