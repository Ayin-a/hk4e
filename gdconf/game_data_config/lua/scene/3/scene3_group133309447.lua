-- 基础信息
local base_info = {
	group_id = 133309447
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 447001, monster_id = 26090601, pos = { x = -2411.500, y = -44.470, z = 5804.958 }, rot = { x = 0.000, y = 3.354, z = 0.000 }, level = 32, drop_tag = "蕈兽", pose_id = 101, area_id = 27 },
	{ config_id = 447002, monster_id = 26090601, pos = { x = -2414.461, y = -43.326, z = 5807.188 }, rot = { x = 0.000, y = 2.669, z = 0.000 }, level = 32, drop_tag = "蕈兽", pose_id = 101, area_id = 27 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
}

-- 区域
regions = {
	{ config_id = 447004, shape = RegionShape.SPHERE, radius = 8, pos = { x = -2417.991, y = -45.346, z = 5808.010 }, area_id = 27 }
}

-- 触发器
triggers = {
	{ config_id = 1447004, name = "ENTER_REGION_447004", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_447004", action = "action_EVENT_ENTER_REGION_447004" }
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
		regions = { 447004 },
		triggers = { "ENTER_REGION_447004" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 447001, 447002 },
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
function condition_EVENT_ENTER_REGION_447004(context, evt)
	if evt.param1 ~= 447004 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_447004(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133309447, 2)
	
	return 0
end