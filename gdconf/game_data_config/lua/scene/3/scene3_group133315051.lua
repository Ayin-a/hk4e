-- 基础信息
local base_info = {
	group_id = 133315051
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 51001, monster_id = 26090501, pos = { x = 179.066, y = 234.927, z = 2425.150 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, drop_tag = "蕈兽", pose_id = 101, area_id = 20 },
	{ config_id = 51002, monster_id = 26090501, pos = { x = 180.634, y = 235.482, z = 2422.550 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, drop_tag = "蕈兽", pose_id = 101, area_id = 20 },
	{ config_id = 51003, monster_id = 28050106, pos = { x = 153.377, y = 250.784, z = 2391.573 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, drop_tag = "魔法生物", area_id = 20 },
	{ config_id = 51005, monster_id = 28050106, pos = { x = 152.117, y = 251.107, z = 2394.564 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, drop_tag = "魔法生物", area_id = 20 },
	{ config_id = 51006, monster_id = 28050106, pos = { x = 116.629, y = 237.993, z = 2390.650 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, drop_tag = "魔法生物", area_id = 20 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
}

-- 区域
regions = {
	{ config_id = 51004, shape = RegionShape.SPHERE, radius = 10, pos = { x = 178.796, y = 237.499, z = 2423.877 }, area_id = 20 }
}

-- 触发器
triggers = {
	{ config_id = 1051004, name = "ENTER_REGION_51004", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_51004", action = "action_EVENT_ENTER_REGION_51004" }
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
		monsters = { 51003, 51005, 51006 },
		gadgets = { },
		regions = { 51004 },
		triggers = { "ENTER_REGION_51004" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 51001, 51002 },
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
function condition_EVENT_ENTER_REGION_51004(context, evt)
	if evt.param1 ~= 51004 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_51004(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133315051, 2)
	
	return 0
end