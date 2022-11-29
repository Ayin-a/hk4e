-- 基础信息
local base_info = {
	group_id = 133213471
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 471001, monster_id = 24020201, pos = { x = -3874.032, y = 218.037, z = -3029.283 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 28, drop_tag = "拟生机关", pose_id = 100, area_id = 12 },
	{ config_id = 471002, monster_id = 24020101, pos = { x = -3879.670, y = 220.584, z = -3025.569 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 28, drop_tag = "拟生机关", pose_id = 100, area_id = 12 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
}

-- 区域
regions = {
	{ config_id = 471004, shape = RegionShape.SPHERE, radius = 5, pos = { x = -3879.963, y = 228.934, z = -3039.291 }, area_id = 12 }
}

-- 触发器
triggers = {
	{ config_id = 1471004, name = "ENTER_REGION_471004", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_471004", action = "action_EVENT_ENTER_REGION_471004" }
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
		regions = { 471004 },
		triggers = { "ENTER_REGION_471004" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 471001, 471002 },
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
function condition_EVENT_ENTER_REGION_471004(context, evt)
	if evt.param1 ~= 471004 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_471004(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133213471, 2)
	
	return 0
end