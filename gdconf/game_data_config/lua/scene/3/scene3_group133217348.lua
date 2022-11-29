-- 基础信息
local base_info = {
	group_id = 133217348
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 348001, monster_id = 20060101, pos = { x = -4615.826, y = 200.483, z = -4501.852 }, rot = { x = 0.000, y = 76.059, z = 0.000 }, level = 30, drop_tag = "飘浮灵", pose_id = 101, climate_area_id = 10, area_id = 14 },
	{ config_id = 348002, monster_id = 20060101, pos = { x = -4608.306, y = 200.313, z = -4495.603 }, rot = { x = 0.000, y = 274.514, z = 0.000 }, level = 30, drop_tag = "飘浮灵", pose_id = 101, climate_area_id = 10, area_id = 14 },
	{ config_id = 348003, monster_id = 20060101, pos = { x = -4606.628, y = 199.694, z = -4505.353 }, rot = { x = 0.000, y = 304.136, z = 0.000 }, level = 30, drop_tag = "飘浮灵", pose_id = 101, climate_area_id = 10, area_id = 14 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
}

-- 区域
regions = {
	{ config_id = 348004, shape = RegionShape.SPHERE, radius = 12, pos = { x = -4611.199, y = 200.366, z = -4500.088 }, area_id = 14 }
}

-- 触发器
triggers = {
	{ config_id = 1348004, name = "ENTER_REGION_348004", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_348004", action = "action_EVENT_ENTER_REGION_348004" }
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
		regions = { 348004 },
		triggers = { "ENTER_REGION_348004" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 348001, 348002, 348003 },
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
function condition_EVENT_ENTER_REGION_348004(context, evt)
	if evt.param1 ~= 348004 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_348004(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133217348, 2)
	
	return 0
end