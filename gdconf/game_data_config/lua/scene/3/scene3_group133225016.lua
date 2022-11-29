-- 基础信息
local base_info = {
	group_id = 133225016
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 16001, monster_id = 20060201, pos = { x = -6436.218, y = 225.878, z = -2657.472 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 33, drop_tag = "飘浮灵", pose_id = 101, climate_area_id = 7, area_id = 18 },
	{ config_id = 16002, monster_id = 20060201, pos = { x = -6428.528, y = 225.782, z = -2660.665 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 33, drop_tag = "飘浮灵", pose_id = 101, climate_area_id = 7, area_id = 18 },
	{ config_id = 16003, monster_id = 20060201, pos = { x = -6436.006, y = 224.494, z = -2664.738 }, rot = { x = 0.000, y = 67.324, z = 0.000 }, level = 33, drop_tag = "飘浮灵", pose_id = 101, climate_area_id = 7, area_id = 18 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
}

-- 区域
regions = {
	{ config_id = 16004, shape = RegionShape.SPHERE, radius = 5, pos = { x = -6429.752, y = 225.997, z = -2658.289 }, area_id = 18 }
}

-- 触发器
triggers = {
	{ config_id = 1016004, name = "ENTER_REGION_16004", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_16004", action = "action_EVENT_ENTER_REGION_16004" }
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
		regions = { 16004 },
		triggers = { "ENTER_REGION_16004" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 16001, 16002, 16003 },
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
function condition_EVENT_ENTER_REGION_16004(context, evt)
	if evt.param1 ~= 16004 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_16004(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133225016, 2)
	
	return 0
end