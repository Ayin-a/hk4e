-- 基础信息
local base_info = {
	group_id = 133210499
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 499001, monster_id = 25080101, pos = { x = -3894.033, y = 201.363, z = -1198.168 }, rot = { x = 0.000, y = 274.641, z = 0.000 }, level = 30, drop_tag = "浪人武士", pose_id = 1003, area_id = 17 },
	{ config_id = 499002, monster_id = 25080101, pos = { x = -3901.256, y = 200.334, z = -1194.224 }, rot = { x = 0.000, y = 110.224, z = 0.000 }, level = 30, drop_tag = "浪人武士", pose_id = 1, area_id = 17 },
	{ config_id = 499003, monster_id = 25080101, pos = { x = -3894.611, y = 201.326, z = -1204.762 }, rot = { x = 0.000, y = 346.020, z = 0.000 }, level = 30, drop_tag = "浪人武士", pose_id = 1, area_id = 17 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 499005, gadget_id = 70900393, pos = { x = -3892.542, y = 201.248, z = -1196.391 }, rot = { x = 1.793, y = 262.049, z = 353.454 }, level = 30, state = GadgetState.GearStart, area_id = 17 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1499004, name = "MONSTER_BATTLE_499004", event = EventType.EVENT_MONSTER_BATTLE, source = "", condition = "condition_EVENT_MONSTER_BATTLE_499004", action = "action_EVENT_MONSTER_BATTLE_499004" }
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
		monsters = { 499001 },
		gadgets = { 499005 },
		regions = { },
		triggers = { "MONSTER_BATTLE_499004" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 499002, 499003 },
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
function condition_EVENT_MONSTER_BATTLE_499004(context, evt)
	if 499001 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_MONSTER_BATTLE_499004(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133210499, 2)
	
	return 0
end