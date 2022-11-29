-- 基础信息
local base_info = {
	group_id = 133102260
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 457, monster_id = 20010801, pos = { x = 1022.814, y = 200.000, z = 214.789 }, rot = { x = 359.120, y = 359.918, z = 10.620 }, level = 16, drop_tag = "史莱姆", disableWander = true, area_id = 5 },
	{ config_id = 458, monster_id = 20010801, pos = { x = 1025.211, y = 200.000, z = 215.468 }, rot = { x = 5.429, y = 310.460, z = 12.787 }, level = 16, drop_tag = "史莱姆", disableWander = true, area_id = 5 },
	{ config_id = 459, monster_id = 20010801, pos = { x = 1023.018, y = 200.000, z = 217.699 }, rot = { x = 357.379, y = 359.521, z = 15.099 }, level = 16, drop_tag = "史莱姆", disableWander = true, area_id = 5 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
}

-- 区域
regions = {
	{ config_id = 260001, shape = RegionShape.SPHERE, radius = 3, pos = { x = 1023.909, y = 200.000, z = 216.163 }, area_id = 5 }
}

-- 触发器
triggers = {
	{ config_id = 1260001, name = "ENTER_REGION_260001", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_260001", action = "action_EVENT_ENTER_REGION_260001" }
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
		regions = { 260001 },
		triggers = { "ENTER_REGION_260001" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { 457, 458, 459 },
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
function condition_EVENT_ENTER_REGION_260001(context, evt)
	if evt.param1 ~= 260001 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_260001(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133102260, 2)
	
	return 0
end