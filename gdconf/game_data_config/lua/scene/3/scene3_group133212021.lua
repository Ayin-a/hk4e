-- 基础信息
local base_info = {
	group_id = 133212021
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 21001, monster_id = 25080201, pos = { x = -3805.933, y = 238.507, z = -2486.500 }, rot = { x = 0.000, y = 50.312, z = 0.000 }, level = 27, drop_tag = "浪人武士", affix = { 1101 }, pose_id = 1, area_id = 13 },
	{ config_id = 21002, monster_id = 25080201, pos = { x = -3808.973, y = 238.293, z = -2487.313 }, rot = { x = 0.000, y = 53.790, z = 0.000 }, level = 27, drop_tag = "浪人武士", affix = { 1101 }, pose_id = 1, area_id = 13 },
	{ config_id = 21003, monster_id = 25080201, pos = { x = -3806.371, y = 238.571, z = -2489.173 }, rot = { x = 0.000, y = 60.760, z = 0.000 }, level = 27, drop_tag = "浪人武士", affix = { 1101 }, pose_id = 1, area_id = 13 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
}

-- 区域
regions = {
	{ config_id = 21004, shape = RegionShape.SPHERE, radius = 10, pos = { x = -3806.081, y = 238.503, z = -2486.283 }, area_id = 13 }
}

-- 触发器
triggers = {
	{ config_id = 1021004, name = "ENTER_REGION_21004", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_21004", action = "action_EVENT_ENTER_REGION_21004" }
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
		regions = { 21004 },
		triggers = { "ENTER_REGION_21004" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 21001, 21002, 21003 },
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
function condition_EVENT_ENTER_REGION_21004(context, evt)
	if evt.param1 ~= 21004 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_21004(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133212021, 2)
	
	return 0
end