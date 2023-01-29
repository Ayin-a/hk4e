-- 基础信息
local base_info = {
	group_id = 133308745
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 745001, monster_id = 26100401, pos = { x = -1166.178, y = 97.508, z = 5053.284 }, rot = { x = 0.000, y = 223.067, z = 0.000 }, level = 32, drop_tag = "高级镀金旅团", disableWander = true, pose_id = 1, area_id = 32 },
	{ config_id = 745004, monster_id = 28060401, pos = { x = -1165.217, y = 97.696, z = 5048.204 }, rot = { x = 0.000, y = 288.355, z = 0.000 }, level = 32, drop_tag = "走兽", pose_id = 1, area_id = 32 },
	{ config_id = 745005, monster_id = 28060401, pos = { x = -1168.429, y = 96.569, z = 5055.512 }, rot = { x = 0.000, y = 219.979, z = 0.000 }, level = 32, drop_tag = "走兽", pose_id = 1, area_id = 32 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 745002, gadget_id = 70211022, pos = { x = -1151.938, y = 103.457, z = 5053.031 }, rot = { x = 18.524, y = 281.067, z = 12.855 }, level = 26, drop_tag = "战斗高级须弥", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 10 }, area_id = 32 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1745003, name = "ANY_MONSTER_DIE_745003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_745003", action = "action_EVENT_ANY_MONSTER_DIE_745003" },
	{ config_id = 1745006, name = "MONSTER_BATTLE_745006", event = EventType.EVENT_MONSTER_BATTLE, source = "", condition = "condition_EVENT_MONSTER_BATTLE_745006", action = "action_EVENT_MONSTER_BATTLE_745006" }
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
		monsters = { 745001 },
		gadgets = { 745002 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_745003", "MONSTER_BATTLE_745006" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 745004, 745005 },
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
function condition_EVENT_ANY_MONSTER_DIE_745003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_745003(context, evt)
	-- 将configid为 745002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 745002, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_MONSTER_BATTLE_745006(context, evt)
	if 745001 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_MONSTER_BATTLE_745006(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133308745, 2)
	
	return 0
end