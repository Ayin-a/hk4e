-- 基础信息
local base_info = {
	group_id = 133102018
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 18001, monster_id = 21010901, pos = { x = 1877.398, y = 212.549, z = 755.161 }, rot = { x = 0.000, y = 26.358, z = 0.000 }, level = 32, drop_id = 1000100, area_id = 5 },
	{ config_id = 18002, monster_id = 21010501, pos = { x = 1883.350, y = 212.668, z = 744.767 }, rot = { x = 0.000, y = 18.655, z = 0.000 }, level = 1, drop_id = 1000100, area_id = 5 },
	{ config_id = 18003, monster_id = 21011001, pos = { x = 1892.889, y = 213.782, z = 738.292 }, rot = { x = 0.000, y = 325.575, z = 0.000 }, level = 1, drop_id = 1000100, area_id = 5 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
}

-- 区域
regions = {
	{ config_id = 18004, shape = RegionShape.SPHERE, radius = 20, pos = { x = 1885.762, y = 212.239, z = 758.719 }, area_id = 5 }
}

-- 触发器
triggers = {
	{ config_id = 1018004, name = "ENTER_REGION_18004", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_18004", action = "action_EVENT_ENTER_REGION_18004" }
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
		regions = { 18004 },
		triggers = { "ENTER_REGION_18004" },
		rand_weight = 100,
		ban_refresh = true
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 18001, 18002, 18003 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100,
		ban_refresh = true
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_18004(context, evt)
	if evt.param1 ~= 18004 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_18004(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133102018, 2)
	
	return 0
end