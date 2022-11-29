-- 基础信息
local base_info = {
	group_id = 133003770
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 770001, monster_id = 21010901, pos = { x = 2865.510, y = 262.798, z = -1785.706 }, rot = { x = 0.000, y = 25.568, z = 0.000 }, level = 32, drop_id = 1000100, area_id = 1 },
	{ config_id = 770002, monster_id = 21010501, pos = { x = 2862.396, y = 260.504, z = -1802.628 }, rot = { x = 0.000, y = 37.878, z = 0.000 }, level = 1, drop_id = 1000100, area_id = 1 },
	{ config_id = 770003, monster_id = 21011001, pos = { x = 2882.836, y = 259.462, z = -1796.264 }, rot = { x = 0.000, y = 278.138, z = 0.000 }, level = 1, drop_id = 1000100, area_id = 1 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
}

-- 区域
regions = {
	{ config_id = 770004, shape = RegionShape.SPHERE, radius = 20, pos = { x = 2875.141, y = 261.715, z = -1788.613 }, area_id = 1 }
}

-- 触发器
triggers = {
	{ config_id = 1770004, name = "ENTER_REGION_770004", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_770004", action = "action_EVENT_ENTER_REGION_770004" }
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
		regions = { 770004 },
		triggers = { "ENTER_REGION_770004" },
		rand_weight = 100,
		ban_refresh = true
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 770001, 770002, 770003 },
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
function condition_EVENT_ENTER_REGION_770004(context, evt)
	if evt.param1 ~= 770004 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_770004(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133003770, 2)
	
	return 0
end