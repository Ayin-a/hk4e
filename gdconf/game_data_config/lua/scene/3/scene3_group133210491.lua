-- 基础信息
local base_info = {
	group_id = 133210491
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 491001, monster_id = 20060201, pos = { x = -3970.260, y = 199.790, z = -414.826 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, drop_tag = "飘浮灵", pose_id = 101, area_id = 17 },
	{ config_id = 491002, monster_id = 20060101, pos = { x = -3965.839, y = 199.919, z = -408.264 }, rot = { x = 0.000, y = 250.518, z = 0.000 }, level = 32, drop_tag = "飘浮灵", pose_id = 101, area_id = 17 },
	{ config_id = 491003, monster_id = 20060101, pos = { x = -3973.299, y = 199.995, z = -408.305 }, rot = { x = 0.000, y = 109.435, z = 0.000 }, level = 32, drop_tag = "飘浮灵", pose_id = 101, area_id = 17 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
}

-- 区域
regions = {
	{ config_id = 491004, shape = RegionShape.SPHERE, radius = 5, pos = { x = -3969.571, y = 200.484, z = -409.903 }, area_id = 17 }
}

-- 触发器
triggers = {
	{ config_id = 1491004, name = "ENTER_REGION_491004", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_491004", action = "action_EVENT_ENTER_REGION_491004" }
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
		regions = { 491004 },
		triggers = { "ENTER_REGION_491004" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 491001, 491002, 491003 },
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
function condition_EVENT_ENTER_REGION_491004(context, evt)
	if evt.param1 ~= 491004 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_491004(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133210491, 2)
	
	return 0
end