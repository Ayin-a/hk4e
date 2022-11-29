-- 基础信息
local base_info = {
	group_id = 133212296
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 296002, monster_id = 26010101, pos = { x = -3801.701, y = 280.860, z = -2409.140 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, drop_tag = "骗骗花", area_id = 13 },
	{ config_id = 296003, monster_id = 20010801, pos = { x = -3804.872, y = 281.545, z = -2406.521 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, drop_tag = "史莱姆", area_id = 13 },
	{ config_id = 296004, monster_id = 20010801, pos = { x = -3797.552, y = 280.208, z = -2407.070 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, drop_tag = "史莱姆", area_id = 13 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
}

-- 区域
regions = {
	{ config_id = 296001, shape = RegionShape.SPHERE, radius = 10, pos = { x = -3802.707, y = 281.048, z = -2409.073 }, area_id = 13 }
}

-- 触发器
triggers = {
	{ config_id = 1296001, name = "ENTER_REGION_296001", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_296001", action = "action_EVENT_ENTER_REGION_296001" }
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
		regions = { 296001 },
		triggers = { "ENTER_REGION_296001" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 296002, 296003, 296004 },
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
function condition_EVENT_ENTER_REGION_296001(context, evt)
	if evt.param1 ~= 296001 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_296001(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133212296, 2)
	
	return 0
end