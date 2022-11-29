-- 基础信息
local base_info = {
	group_id = 133108151
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 151001, monster_id = 21010901, pos = { x = -82.712, y = 200.631, z = -723.739 }, rot = { x = 0.000, y = 323.495, z = 0.000 }, level = 32, drop_id = 1000100, area_id = 7 },
	{ config_id = 151002, monster_id = 21010501, pos = { x = -62.915, y = 202.547, z = -743.415 }, rot = { x = 0.000, y = 334.318, z = 0.000 }, level = 1, drop_id = 1000100, area_id = 7 },
	{ config_id = 151003, monster_id = 21011001, pos = { x = -100.011, y = 202.184, z = -724.708 }, rot = { x = 0.000, y = 33.089, z = 0.000 }, level = 1, drop_id = 1000100, area_id = 7 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
}

-- 区域
regions = {
	{ config_id = 151004, shape = RegionShape.SPHERE, radius = 20, pos = { x = -88.824, y = 201.778, z = -701.227 }, area_id = 7 }
}

-- 触发器
triggers = {
	{ config_id = 1151004, name = "ENTER_REGION_151004", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_151004", action = "action_EVENT_ENTER_REGION_151004" }
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
		regions = { 151004 },
		triggers = { "ENTER_REGION_151004" },
		rand_weight = 100,
		ban_refresh = true
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 151001, 151002, 151003 },
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
function condition_EVENT_ENTER_REGION_151004(context, evt)
	if evt.param1 ~= 151004 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_151004(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133108151, 2)
	
	return 0
end