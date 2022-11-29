-- 基础信息
local base_info = {
	group_id = 133222119
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 119001, monster_id = 21010601, pos = { x = -4710.858, y = 200.000, z = -4624.532 }, rot = { x = 0.000, y = 18.732, z = 0.000 }, level = 30, drop_tag = "丘丘人", disableWander = true, pose_id = 9016, area_id = 14 },
	{ config_id = 119005, monster_id = 21010101, pos = { x = -4717.177, y = 200.014, z = -4627.770 }, rot = { x = 0.000, y = 315.916, z = 0.000 }, level = 30, drop_tag = "丘丘人", disableWander = true, pose_id = 9016, area_id = 14 },
	{ config_id = 119006, monster_id = 21010201, pos = { x = -4707.456, y = 200.013, z = -4628.064 }, rot = { x = 0.000, y = 274.157, z = 0.000 }, level = 30, drop_tag = "丘丘人", disableWander = true, area_id = 14 },
	{ config_id = 119008, monster_id = 21010201, pos = { x = -4708.904, y = 200.024, z = -4630.534 }, rot = { x = 0.000, y = 315.893, z = 0.000 }, level = 30, drop_tag = "丘丘人", disableWander = true, area_id = 14 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 119002, gadget_id = 70211002, pos = { x = -4709.889, y = 200.004, z = -4627.441 }, rot = { x = 358.734, y = 225.910, z = 359.980 }, level = 26, drop_tag = "战斗低级稻妻", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 14 },
	{ config_id = 119009, gadget_id = 70220013, pos = { x = -4720.450, y = 200.933, z = -4643.179 }, rot = { x = 0.000, y = 283.624, z = 0.000 }, level = 30, area_id = 14 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1119003, name = "MONSTER_BATTLE_119003", event = EventType.EVENT_MONSTER_BATTLE, source = "", condition = "", action = "action_EVENT_MONSTER_BATTLE_119003" },
	{ config_id = 1119004, name = "ANY_MONSTER_DIE_119004", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_119004", action = "action_EVENT_ANY_MONSTER_DIE_119004", trigger_count = 0 }
}

-- 变量
variables = {
}

-- 废弃数据
garbages = {
	gadgets = {
		{ config_id = 119010, gadget_id = 70220014, pos = { x = -4716.403, y = 199.946, z = -4624.863 }, rot = { x = 2.450, y = 24.141, z = 1.097 }, level = 30, area_id = 14 }
	}
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
		monsters = { 119001, 119005 },
		gadgets = { 119002, 119009 },
		regions = { },
		triggers = { "MONSTER_BATTLE_119003", "ANY_MONSTER_DIE_119004" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 119006, 119008 },
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

-- 触发操作
function action_EVENT_MONSTER_BATTLE_119003(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133222119, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_119004(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_119004(context, evt)
	-- 将configid为 119002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 119002, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end