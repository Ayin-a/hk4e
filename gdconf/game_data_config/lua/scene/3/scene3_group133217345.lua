-- 基础信息
local base_info = {
	group_id = 133217345
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 345001, monster_id = 20011001, pos = { x = -4831.657, y = 200.505, z = -4409.472 }, rot = { x = 0.000, y = 76.059, z = 0.000 }, level = 32, drop_tag = "史莱姆", climate_area_id = 10, area_id = 14 },
	{ config_id = 345002, monster_id = 20011001, pos = { x = -4824.497, y = 202.536, z = -4409.260 }, rot = { x = 0.000, y = 274.514, z = 0.000 }, level = 32, drop_tag = "史莱姆", climate_area_id = 10, area_id = 14 },
	{ config_id = 345003, monster_id = 20011001, pos = { x = -4822.177, y = 200.506, z = -4416.858 }, rot = { x = 0.000, y = 304.136, z = 0.000 }, level = 32, drop_tag = "史莱姆", climate_area_id = 10, area_id = 14 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
}

-- 区域
regions = {
	{ config_id = 345004, shape = RegionShape.SPHERE, radius = 12, pos = { x = -4823.995, y = 200.714, z = -4414.166 }, area_id = 14 }
}

-- 触发器
triggers = {
	{ config_id = 1345004, name = "ENTER_REGION_345004", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_345004", action = "action_EVENT_ENTER_REGION_345004" }
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
		regions = { 345004 },
		triggers = { "ENTER_REGION_345004" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 345001, 345002, 345003 },
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
function condition_EVENT_ENTER_REGION_345004(context, evt)
	if evt.param1 ~= 345004 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_345004(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133217345, 2)
	
	return 0
end