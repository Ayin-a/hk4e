-- 基础信息
local base_info = {
	group_id = 133007266
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 266001, monster_id = 21010901, pos = { x = 2892.979, y = 208.997, z = 211.501 }, rot = { x = 0.000, y = 32.825, z = 0.000 }, level = 32, drop_id = 1000100, area_id = 4 },
	{ config_id = 266002, monster_id = 21010501, pos = { x = 2902.518, y = 209.299, z = 194.780 }, rot = { x = 0.000, y = 340.956, z = 0.000 }, level = 1, drop_id = 1000100, area_id = 4 },
	{ config_id = 266003, monster_id = 21011001, pos = { x = 2886.746, y = 208.781, z = 191.255 }, rot = { x = 0.000, y = 31.697, z = 0.000 }, level = 1, drop_id = 1000100, area_id = 4 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
}

-- 区域
regions = {
	{ config_id = 266004, shape = RegionShape.SPHERE, radius = 20, pos = { x = 2902.016, y = 207.645, z = 215.386 }, area_id = 4 }
}

-- 触发器
triggers = {
	{ config_id = 1266004, name = "ENTER_REGION_266004", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_266004", action = "action_EVENT_ENTER_REGION_266004" }
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
		regions = { 266004 },
		triggers = { "ENTER_REGION_266004" },
		rand_weight = 100,
		ban_refresh = true
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 266001, 266002, 266003 },
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
function condition_EVENT_ENTER_REGION_266004(context, evt)
	if evt.param1 ~= 266004 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_266004(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133007266, 2)
	
	return 0
end