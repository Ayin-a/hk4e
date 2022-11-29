-- 基础信息
local base_info = {
	group_id = 133217270
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 270001, monster_id = 20060101, pos = { x = -4841.007, y = 201.178, z = -4099.963 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, drop_tag = "飘浮灵", pose_id = 101, climate_area_id = 10, area_id = 14 },
	{ config_id = 270002, monster_id = 20060101, pos = { x = -4844.048, y = 202.194, z = -4104.207 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, drop_tag = "飘浮灵", pose_id = 101, climate_area_id = 10, area_id = 14 },
	{ config_id = 270003, monster_id = 20060101, pos = { x = -4846.066, y = 201.405, z = -4099.915 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, drop_tag = "飘浮灵", pose_id = 101, climate_area_id = 10, area_id = 14 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
}

-- 区域
regions = {
	{ config_id = 270004, shape = RegionShape.SPHERE, radius = 10, pos = { x = -4843.911, y = 201.489, z = -4100.146 }, area_id = 14 }
}

-- 触发器
triggers = {
	{ config_id = 1270004, name = "ENTER_REGION_270004", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_270004", action = "action_EVENT_ENTER_REGION_270004" }
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
		regions = { 270004 },
		triggers = { "ENTER_REGION_270004" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 270001, 270002, 270003 },
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
function condition_EVENT_ENTER_REGION_270004(context, evt)
	if evt.param1 ~= 270004 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_270004(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133217270, 2)
	
	return 0
end