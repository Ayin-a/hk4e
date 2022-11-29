-- 基础信息
local base_info = {
	group_id = 133212529
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 529001, monster_id = 25010601, pos = { x = -3935.836, y = 243.604, z = -2204.212 }, rot = { x = 0.000, y = 306.913, z = 0.000 }, level = 27, drop_tag = "盗宝团", area_id = 13 },
	{ config_id = 529002, monster_id = 25010601, pos = { x = -3931.782, y = 242.348, z = -2193.430 }, rot = { x = 0.000, y = 238.813, z = 0.000 }, level = 27, drop_tag = "盗宝团", area_id = 13 },
	{ config_id = 529003, monster_id = 25010601, pos = { x = -3947.113, y = 243.693, z = -2191.892 }, rot = { x = 0.000, y = 110.705, z = 0.000 }, level = 27, drop_tag = "盗宝团", area_id = 13 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
}

-- 区域
regions = {
	{ config_id = 529004, shape = RegionShape.SPHERE, radius = 5, pos = { x = -3941.970, y = 243.027, z = -2198.917 }, area_id = 13 }
}

-- 触发器
triggers = {
	{ config_id = 1529004, name = "ENTER_REGION_529004", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_529004", action = "action_EVENT_ENTER_REGION_529004" }
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
		regions = { 529004 },
		triggers = { "ENTER_REGION_529004" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 529001, 529002, 529003 },
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
function condition_EVENT_ENTER_REGION_529004(context, evt)
	if evt.param1 ~= 529004 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_529004(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133212529, 2)
	
	return 0
end