-- 基础信息
local base_info = {
	group_id = 133217253
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 253001, monster_id = 20060301, pos = { x = -4272.776, y = 206.154, z = -3839.724 }, rot = { x = 0.000, y = 133.384, z = 0.000 }, level = 32, drop_tag = "飘浮灵", pose_id = 101, area_id = 14 },
	{ config_id = 253002, monster_id = 20060301, pos = { x = -4267.472, y = 204.359, z = -3834.890 }, rot = { x = 0.000, y = 340.687, z = 0.000 }, level = 32, drop_tag = "飘浮灵", pose_id = 101, area_id = 14 },
	{ config_id = 253003, monster_id = 20060301, pos = { x = -4274.508, y = 206.030, z = -3832.684 }, rot = { x = 0.000, y = 16.331, z = 0.000 }, level = 32, drop_tag = "飘浮灵", pose_id = 101, area_id = 14 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
}

-- 区域
regions = {
	{ config_id = 253004, shape = RegionShape.SPHERE, radius = 10, pos = { x = -4270.569, y = 205.264, z = -3836.277 }, area_id = 14 }
}

-- 触发器
triggers = {
	{ config_id = 1253004, name = "ENTER_REGION_253004", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_253004", action = "action_EVENT_ENTER_REGION_253004" }
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
		regions = { 253004 },
		triggers = { "ENTER_REGION_253004" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 253001, 253002, 253003 },
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
function condition_EVENT_ENTER_REGION_253004(context, evt)
	if evt.param1 ~= 253004 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_253004(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133217253, 2)
	
	return 0
end