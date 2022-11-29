-- 基础信息
local base_info = {
	group_id = 133304304
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 304001, monster_id = 26090501, pos = { x = -1088.715, y = 202.684, z = 2189.354 }, rot = { x = 0.000, y = 220.101, z = 0.000 }, level = 27, drop_tag = "蕈兽", pose_id = 101, area_id = 21 },
	{ config_id = 304002, monster_id = 26090101, pos = { x = -1087.149, y = 202.839, z = 2185.166 }, rot = { x = 0.000, y = 280.776, z = 0.000 }, level = 27, drop_tag = "蕈兽", pose_id = 101, area_id = 21 },
	{ config_id = 304003, monster_id = 26090101, pos = { x = -1092.454, y = 202.331, z = 2186.153 }, rot = { x = 0.000, y = 100.788, z = 0.000 }, level = 27, drop_tag = "蕈兽", pose_id = 101, area_id = 21 },
	{ config_id = 304005, monster_id = 26090501, pos = { x = -1090.917, y = 202.810, z = 2182.214 }, rot = { x = 0.000, y = 10.832, z = 0.000 }, level = 27, drop_tag = "蕈兽", pose_id = 101, area_id = 21 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
}

-- 区域
regions = {
	{ config_id = 304004, shape = RegionShape.SPHERE, radius = 3, pos = { x = -1089.969, y = 202.684, z = 2185.806 }, area_id = 21 }
}

-- 触发器
triggers = {
	{ config_id = 1304004, name = "ENTER_REGION_304004", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_304004", action = "action_EVENT_ENTER_REGION_304004" }
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
		regions = { 304004 },
		triggers = { "ENTER_REGION_304004" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 304001, 304002, 304003, 304005 },
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
function condition_EVENT_ENTER_REGION_304004(context, evt)
	if evt.param1 ~= 304004 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_304004(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133304304, 2)
	
	return 0
end