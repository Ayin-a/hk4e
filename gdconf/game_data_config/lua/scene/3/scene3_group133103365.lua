-- 基础信息
local base_info = {
	group_id = 133103365
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 365001, monster_id = 21010201, pos = { x = -171.351, y = 314.164, z = 1896.244 }, rot = { x = 0.000, y = 346.969, z = 0.000 }, level = 27, drop_tag = "丘丘人", pose_id = 9012, area_id = 6 },
	{ config_id = 365002, monster_id = 21010901, pos = { x = -161.872, y = 319.738, z = 1905.377 }, rot = { x = 0.000, y = 241.535, z = 0.000 }, level = 27, drop_tag = "远程丘丘人", pose_id = 32, area_id = 6 },
	{ config_id = 365003, monster_id = 21010701, pos = { x = -165.704, y = 315.037, z = 1896.437 }, rot = { x = 0.000, y = 280.121, z = 0.000 }, level = 27, drop_tag = "丘丘人", area_id = 6 },
	{ config_id = 365004, monster_id = 21010701, pos = { x = -183.532, y = 311.621, z = 1898.352 }, rot = { x = 0.000, y = 89.243, z = 0.000 }, level = 27, drop_tag = "丘丘人", area_id = 6 },
	{ config_id = 365005, monster_id = 21010501, pos = { x = -170.368, y = 319.621, z = 1889.465 }, rot = { x = 0.000, y = 327.407, z = 0.000 }, level = 27, drop_tag = "远程丘丘人", pose_id = 32, area_id = 6 },
	{ config_id = 365008, monster_id = 28020301, pos = { x = -135.917, y = 320.362, z = 1897.312 }, rot = { x = 0.000, y = 265.570, z = 0.000 }, level = 27, drop_tag = "走兽", area_id = 6 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 365007, gadget_id = 70310001, pos = { x = -176.520, y = 313.925, z = 1893.578 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, state = GadgetState.GearStart, area_id = 6 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1365006, name = "MONSTER_BATTLE_365006", event = EventType.EVENT_MONSTER_BATTLE, source = "", condition = "condition_EVENT_MONSTER_BATTLE_365006", action = "action_EVENT_MONSTER_BATTLE_365006" }
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
		monsters = { 365001, 365008 },
		gadgets = { 365007 },
		regions = { },
		triggers = { "MONSTER_BATTLE_365006" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 365002, 365003, 365004, 365005 },
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
function condition_EVENT_MONSTER_BATTLE_365006(context, evt)
	if 365001 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_MONSTER_BATTLE_365006(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133103365, 2)
	
	return 0
end