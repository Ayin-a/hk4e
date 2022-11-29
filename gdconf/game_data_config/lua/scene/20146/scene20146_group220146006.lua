-- 基础信息
local base_info = {
	group_id = 220146006
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 6001, monster_id = 26090401, pos = { x = 253.850, y = 96.889, z = 690.029 }, rot = { x = 0.000, y = 323.249, z = 0.000 }, level = 1, disableWander = true, pose_id = 102 },
	{ config_id = 6002, monster_id = 26090401, pos = { x = 254.934, y = 96.722, z = 697.166 }, rot = { x = 0.000, y = 230.011, z = 0.000 }, level = 1, disableWander = true, pose_id = 102 },
	{ config_id = 6003, monster_id = 26090501, pos = { x = 250.443, y = 96.707, z = 697.638 }, rot = { x = 0.000, y = 142.150, z = 0.000 }, level = 1, disableWander = true, pose_id = 102 },
	{ config_id = 6004, monster_id = 26090501, pos = { x = 249.487, y = 96.643, z = 691.958 }, rot = { x = 0.000, y = 47.632, z = 0.000 }, level = 1, disableWander = true, pose_id = 102 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 6007, gadget_id = 70950156, pos = { x = 253.763, y = 96.956, z = 694.318 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 6008, gadget_id = 70310148, pos = { x = 253.025, y = 96.959, z = 694.095 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 6009, gadget_id = 70900201, pos = { x = 253.025, y = 99.817, z = 694.095 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 }
}

-- 区域
regions = {
	{ config_id = 6006, shape = RegionShape.SPHERE, radius = 3, pos = { x = 252.747, y = 96.776, z = 694.047 } }
}

-- 触发器
triggers = {
	{ config_id = 1006005, name = "ANY_MONSTER_DIE_6005", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_6005", action = "action_EVENT_ANY_MONSTER_DIE_6005" },
	{ config_id = 1006006, name = "ENTER_REGION_6006", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_6006", action = "action_EVENT_ENTER_REGION_6006" }
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
		regions = { },
		triggers = { "ANY_MONSTER_DIE_6005" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 6008, 6009 },
		regions = { 6006 },
		triggers = { "ENTER_REGION_6006" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { 6001, 6002, 6003, 6004 },
		gadgets = { 6007 },
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
function condition_EVENT_ANY_MONSTER_DIE_6005(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_6005(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 220146007, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_6006(context, evt)
	if evt.param1 ~= 6006 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_6006(context, evt)
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 220146006, 3)
	
	    -- 杀死指定group内的gadget和monster,移除其它东西
	    ScriptLib.KillExtraGroupSuite(context, 220146006, 2)
	
	    -- 杀死指定group内的gadget和monster,移除其它东西
	    ScriptLib.KillExtraGroupSuite(context, 220146005, 1)
	
	return 0
end