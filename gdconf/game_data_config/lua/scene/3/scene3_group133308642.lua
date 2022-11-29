-- 基础信息
local base_info = {
	group_id = 133308642
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 642001, monster_id = 26090301, pos = { x = -1939.200, y = 234.872, z = 4462.777 }, rot = { x = 0.000, y = 232.578, z = 0.000 }, level = 32, drop_tag = "蕈兽", pose_id = 101, area_id = 26 },
	{ config_id = 642002, monster_id = 26090801, pos = { x = -1937.878, y = 235.444, z = 4455.237 }, rot = { x = 0.000, y = 256.933, z = 0.000 }, level = 32, drop_tag = "蕈兽", pose_id = 101, area_id = 26 },
	{ config_id = 642003, monster_id = 26090801, pos = { x = -1943.887, y = 234.565, z = 4465.019 }, rot = { x = 0.000, y = 209.432, z = 0.000 }, level = 32, drop_tag = "蕈兽", pose_id = 101, area_id = 26 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
}

-- 区域
regions = {
	{ config_id = 642004, shape = RegionShape.SPHERE, radius = 10, pos = { x = -1943.180, y = 234.711, z = 4457.353 }, area_id = 26 }
}

-- 触发器
triggers = {
	{ config_id = 1642004, name = "ENTER_REGION_642004", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_642004", action = "action_EVENT_ENTER_REGION_642004" }
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
		regions = { 642004 },
		triggers = { "ENTER_REGION_642004" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 642001, 642002, 642003 },
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
function condition_EVENT_ENTER_REGION_642004(context, evt)
	if evt.param1 ~= 642004 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_642004(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133308642, 2)
	
	return 0
end