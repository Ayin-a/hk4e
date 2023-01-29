-- 基础信息
local base_info = {
	group_id = 133313099
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 99001, monster_id = 26090601, pos = { x = -506.991, y = 51.979, z = 5727.224 }, rot = { x = 0.000, y = 293.843, z = 0.000 }, level = 32, drop_tag = "蕈兽", disableWander = true, pose_id = 101, area_id = 32 },
	{ config_id = 99002, monster_id = 26090601, pos = { x = -512.618, y = 50.283, z = 5730.371 }, rot = { x = 0.000, y = 123.538, z = 0.000 }, level = 32, drop_tag = "蕈兽", disableWander = true, pose_id = 101, area_id = 32 },
	{ config_id = 99003, monster_id = 26090701, pos = { x = -506.136, y = 52.267, z = 5731.466 }, rot = { x = 0.000, y = 231.640, z = 0.000 }, level = 32, drop_tag = "蕈兽", disableWander = true, pose_id = 101, area_id = 32 },
	{ config_id = 99005, monster_id = 26090701, pos = { x = -510.170, y = 51.299, z = 5726.053 }, rot = { x = 0.000, y = 351.029, z = 0.000 }, level = 32, drop_tag = "蕈兽", disableWander = true, pose_id = 101, area_id = 32 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
}

-- 区域
regions = {
	{ config_id = 99004, shape = RegionShape.SPHERE, radius = 8, pos = { x = -509.589, y = 51.440, z = 5729.552 }, area_id = 32 }
}

-- 触发器
triggers = {
	{ config_id = 1099004, name = "ENTER_REGION_99004", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_99004", action = "action_EVENT_ENTER_REGION_99004" }
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
		regions = { 99004 },
		triggers = { "ENTER_REGION_99004" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 99001, 99002, 99003, 99005 },
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
function condition_EVENT_ENTER_REGION_99004(context, evt)
	if evt.param1 ~= 99004 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_99004(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133313099, 2)
	
	return 0
end