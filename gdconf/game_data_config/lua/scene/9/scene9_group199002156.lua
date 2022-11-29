-- 基础信息
local base_info = {
	group_id = 199002156
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 156005, monster_id = 20011401, pos = { x = 520.684, y = 120.007, z = -161.047 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, drop_tag = "史莱姆", area_id = 402 },
	{ config_id = 156006, monster_id = 20011401, pos = { x = 519.260, y = 120.007, z = -155.926 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, drop_tag = "史莱姆", area_id = 402 },
	{ config_id = 156007, monster_id = 20011401, pos = { x = 517.685, y = 120.000, z = -161.043 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, drop_tag = "史莱姆", area_id = 402 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
}

-- 区域
regions = {
	{ config_id = 156004, shape = RegionShape.SPHERE, radius = 5, pos = { x = 520.758, y = 120.007, z = -158.842 }, area_id = 402 }
}

-- 触发器
triggers = {
	{ config_id = 1156004, name = "ENTER_REGION_156004", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_156004", action = "action_EVENT_ENTER_REGION_156004" }
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
		regions = { 156004 },
		triggers = { "ENTER_REGION_156004" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 156005, 156006, 156007 },
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
function condition_EVENT_ENTER_REGION_156004(context, evt)
	if evt.param1 ~= 156004 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_156004(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 199002156, 2)
	
	return 0
end