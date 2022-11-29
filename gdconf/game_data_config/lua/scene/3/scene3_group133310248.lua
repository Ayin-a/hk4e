-- 基础信息
local base_info = {
	group_id = 133310248
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 248001, monster_id = 26090601, pos = { x = -2733.127, y = 219.426, z = 4280.248 }, rot = { x = 0.000, y = 72.895, z = 0.000 }, level = 32, drop_tag = "蕈兽", disableWander = true, pose_id = 101, area_id = 28 },
	{ config_id = 248002, monster_id = 26090601, pos = { x = -2729.936, y = 219.907, z = 4277.853 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, drop_tag = "蕈兽", disableWander = true, pose_id = 101, area_id = 28 },
	{ config_id = 248003, monster_id = 26090601, pos = { x = -2733.096, y = 220.583, z = 4275.873 }, rot = { x = 0.000, y = 54.056, z = 0.000 }, level = 32, drop_tag = "蕈兽", disableWander = true, pose_id = 101, area_id = 28 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
}

-- 区域
regions = {
	{ config_id = 248004, shape = RegionShape.SPHERE, radius = 5, pos = { x = -2731.885, y = 220.048, z = 4277.703 }, area_id = 28 }
}

-- 触发器
triggers = {
	{ config_id = 1248004, name = "ENTER_REGION_248004", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_248004", action = "action_EVENT_ENTER_REGION_248004" }
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
		regions = { 248004 },
		triggers = { "ENTER_REGION_248004" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 248001, 248002, 248003 },
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
function condition_EVENT_ENTER_REGION_248004(context, evt)
	if evt.param1 ~= 248004 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_248004(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133310248, 2)
	
	return 0
end