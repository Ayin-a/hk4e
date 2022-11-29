-- 基础信息
local base_info = {
	group_id = 133223127
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 127001, monster_id = 22040201, pos = { x = -6020.029, y = 183.494, z = -2867.157 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 33, drop_tag = "兽境幼兽", pose_id = 101, climate_area_id = 7, area_id = 18 },
	{ config_id = 127003, monster_id = 22040201, pos = { x = -6017.001, y = 183.100, z = -2865.877 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 33, drop_tag = "兽境幼兽", pose_id = 101, climate_area_id = 7, area_id = 18 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
}

-- 区域
regions = {
	{ config_id = 127004, shape = RegionShape.SPHERE, radius = 8, pos = { x = -6024.687, y = 184.405, z = -2868.498 }, area_id = 18 }
}

-- 触发器
triggers = {
	{ config_id = 1127004, name = "ENTER_REGION_127004", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_127004", action = "action_EVENT_ENTER_REGION_127004" }
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
		regions = { 127004 },
		triggers = { "ENTER_REGION_127004" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 127001, 127003 },
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
function condition_EVENT_ENTER_REGION_127004(context, evt)
	if evt.param1 ~= 127004 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_127004(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133223127, 2)
	
	return 0
end