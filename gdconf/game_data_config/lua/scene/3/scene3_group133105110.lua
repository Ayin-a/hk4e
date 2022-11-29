-- 基础信息
local base_info = {
	group_id = 133105110
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 63, monster_id = 21010701, pos = { x = 691.896, y = 224.056, z = -222.344 }, rot = { x = 0.000, y = 261.715, z = 0.000 }, level = 22, drop_tag = "丘丘人", disableWander = true, area_id = 9 },
	{ config_id = 64, monster_id = 21030201, pos = { x = 687.635, y = 224.357, z = -223.931 }, rot = { x = 0.000, y = 50.903, z = 0.000 }, level = 22, drop_tag = "丘丘萨满", isElite = true, pose_id = 9012, area_id = 9 },
	{ config_id = 65, monster_id = 21010601, pos = { x = 690.412, y = 224.121, z = -220.038 }, rot = { x = 0.000, y = 230.633, z = 0.000 }, level = 22, drop_tag = "丘丘人", pose_id = 9003, area_id = 9 },
	{ config_id = 66, monster_id = 21010601, pos = { x = 687.296, y = 224.277, z = -219.533 }, rot = { x = 0.000, y = 191.460, z = 0.000 }, level = 22, drop_tag = "丘丘人", pose_id = 9003, area_id = 9 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 268, gadget_id = 70211012, pos = { x = 687.268, y = 224.357, z = -226.926 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 21, drop_tag = "战斗中级璃月", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 9 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1000157, name = "ANY_MONSTER_DIE_157", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_157", action = "action_EVENT_ANY_MONSTER_DIE_157" },
	{ config_id = 1110001, name = "MONSTER_BATTLE_110001", event = EventType.EVENT_MONSTER_BATTLE, source = "", condition = "condition_EVENT_MONSTER_BATTLE_110001", action = "action_EVENT_MONSTER_BATTLE_110001" }
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
		monsters = { 64 },
		gadgets = { 268 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_157", "MONSTER_BATTLE_110001" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 63, 65, 66 },
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
function condition_EVENT_ANY_MONSTER_DIE_157(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_157(context, evt)
	-- 将configid为 268 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 268, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_MONSTER_BATTLE_110001(context, evt)
	if 64 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_MONSTER_BATTLE_110001(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133105110, 2)
	
	return 0
end