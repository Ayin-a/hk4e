-- 基础信息
local base_info = {
	group_id = 133213502
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 502001, monster_id = 25080301, pos = { x = -3570.956, y = 211.723, z = -3288.208 }, rot = { x = 0.000, y = 131.614, z = 0.000 }, level = 27, drop_tag = "浪人武士", disableWander = true, pose_id = 1, area_id = 12 },
	{ config_id = 502003, monster_id = 25080301, pos = { x = -3565.600, y = 208.154, z = -3298.510 }, rot = { x = 19.051, y = 154.884, z = 354.059 }, level = 27, drop_tag = "浪人武士", pose_id = 1, area_id = 12 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 502002, gadget_id = 70310006, pos = { x = -3553.152, y = 205.183, z = -3305.529 }, rot = { x = 355.539, y = 359.869, z = 2.686 }, level = 27, area_id = 12 },
	{ config_id = 502004, gadget_id = 70220051, pos = { x = -3564.941, y = 210.235, z = -3292.329 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 12 },
	{ config_id = 502005, gadget_id = 70220050, pos = { x = -3562.240, y = 209.926, z = -3293.896 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 12 }
}

-- 区域
regions = {
	{ config_id = 502006, shape = RegionShape.SPHERE, radius = 5, pos = { x = -3569.909, y = 211.306, z = -3289.358 }, area_id = 12 }
}

-- 触发器
triggers = {
	{ config_id = 1502006, name = "ENTER_REGION_502006", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_502006", action = "action_EVENT_ENTER_REGION_502006" }
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
		monsters = { 502003 },
		gadgets = { 502002, 502004, 502005 },
		regions = { 502006 },
		triggers = { "ENTER_REGION_502006" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 502001 },
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
function condition_EVENT_ENTER_REGION_502006(context, evt)
	if evt.param1 ~= 502006 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_502006(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133213502, 2)
	
	return 0
end