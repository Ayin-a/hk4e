-- 基础信息
local base_info = {
	group_id = 133104393
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 393006, monster_id = 21020301, pos = { x = 388.335, y = 203.897, z = 929.969 }, rot = { x = 357.179, y = 108.274, z = 2.833 }, level = 19, drop_tag = "丘丘暴徒", disableWander = true, pose_id = 401, oneoff_reset_version = 2, area_id = 6 },
	{ config_id = 393007, monster_id = 21011001, pos = { x = 393.935, y = 203.346, z = 931.529 }, rot = { x = 0.510, y = 250.747, z = 356.035 }, level = 19, drop_tag = "远程丘丘人", disableWander = true, isOneoff = true, area_id = 6 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 393001, gadget_id = 70310001, pos = { x = 388.605, y = 204.172, z = 932.604 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 19, area_id = 6 },
	{ config_id = 393002, gadget_id = 70211012, pos = { x = 390.193, y = 203.917, z = 932.242 }, rot = { x = 12.983, y = 172.901, z = 4.106 }, level = 16, drop_tag = "战斗中级璃月", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 6 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1393003, name = "ANY_MONSTER_DIE_393003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_393003", action = "action_EVENT_ANY_MONSTER_DIE_393003" },
	{ config_id = 1393004, name = "MONSTER_BATTLE_393004", event = EventType.EVENT_MONSTER_BATTLE, source = "", condition = "condition_EVENT_MONSTER_BATTLE_393004", action = "action_EVENT_MONSTER_BATTLE_393004" }
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
		monsters = { 393006 },
		gadgets = { 393001, 393002 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_393003", "MONSTER_BATTLE_393004" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 393007 },
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
function condition_EVENT_ANY_MONSTER_DIE_393003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_393003(context, evt)
	-- 将configid为 393002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 393002, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_MONSTER_BATTLE_393004(context, evt)
	if 393006 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_MONSTER_BATTLE_393004(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133104393, 2)
	
	return 0
end