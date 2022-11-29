-- 基础信息
local base_info = {
	group_id = 133302097
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 97001, monster_id = 26090101, pos = { x = -553.811, y = 103.097, z = 2335.545 }, rot = { x = 0.000, y = 285.572, z = 0.000 }, level = 27, drop_tag = "蕈兽", pose_id = 101, area_id = 24 },
	{ config_id = 97002, monster_id = 26090101, pos = { x = -556.635, y = 103.097, z = 2332.834 }, rot = { x = 0.000, y = 285.572, z = 0.000 }, level = 27, drop_tag = "蕈兽", pose_id = 101, area_id = 24 },
	{ config_id = 97003, monster_id = 26090101, pos = { x = -556.899, y = 103.097, z = 2336.164 }, rot = { x = 0.000, y = 285.572, z = 0.000 }, level = 27, drop_tag = "蕈兽", pose_id = 101, area_id = 24 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
}

-- 区域
regions = {
	{ config_id = 97004, shape = RegionShape.SPHERE, radius = 5, pos = { x = -556.096, y = 102.853, z = 2334.153 }, area_id = 24 }
}

-- 触发器
triggers = {
	{ config_id = 1097004, name = "ENTER_REGION_97004", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_97004", action = "action_EVENT_ENTER_REGION_97004" }
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
		regions = { 97004 },
		triggers = { "ENTER_REGION_97004" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 97001, 97002, 97003 },
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
function condition_EVENT_ENTER_REGION_97004(context, evt)
	if evt.param1 ~= 97004 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_97004(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133302097, 2)
	
	return 0
end