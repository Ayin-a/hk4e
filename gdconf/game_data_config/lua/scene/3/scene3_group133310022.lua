-- 基础信息
local base_info = {
	group_id = 133310022
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 22001, monster_id = 25210503, pos = { x = -2915.381, y = 265.686, z = 4929.697 }, rot = { x = 0.000, y = 241.343, z = 0.000 }, level = 32, drop_tag = "镀金旅团", disableWander = true, pose_id = 9001, area_id = 28 },
	{ config_id = 22005, monster_id = 25210503, pos = { x = -2915.151, y = 265.556, z = 4942.069 }, rot = { x = 0.000, y = 110.043, z = 0.000 }, level = 32, drop_tag = "镀金旅团", disableWander = true, pose_id = 9504, area_id = 28 },
	{ config_id = 22006, monster_id = 25210302, pos = { x = -2911.082, y = 266.045, z = 4912.451 }, rot = { x = 0.000, y = 52.372, z = 0.000 }, level = 32, drop_tag = "镀金旅团", disableWander = true, pose_id = 9003, area_id = 28 },
	{ config_id = 22007, monster_id = 25210402, pos = { x = -2904.142, y = 265.649, z = 4908.914 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, drop_tag = "镀金旅团", disableWander = true, pose_id = 9503, area_id = 28 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 22002, gadget_id = 70211002, pos = { x = -2906.055, y = 263.139, z = 4925.063 }, rot = { x = 346.909, y = 241.468, z = 4.707 }, level = 26, drop_tag = "战斗低级须弥", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 10 }, area_id = 28 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1022003, name = "ANY_MONSTER_DIE_22003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_22003", action = "action_EVENT_ANY_MONSTER_DIE_22003" },
	{ config_id = 1022004, name = "GROUP_LOAD_22004", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_22004", action = "action_EVENT_GROUP_LOAD_22004", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 2, name = "opendoor", value = 0, no_refresh = true }
}

--================================================================
-- 
-- 初始化配置
-- 
--================================================================

-- 初始化时创建
init_config = {
	suite = 1,
	end_suite = 2,
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
		triggers = { "GROUP_LOAD_22004" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 22001, 22005, 22006, 22007 },
		gadgets = { 22002 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_22003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_22003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_22003(context, evt)
	-- 将configid为 22002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 22002, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 4001, 3, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_22004(context, evt)
	-- 判断变量"opendoor"为1
	if ScriptLib.GetGroupVariableValue(context, "opendoor") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_22004(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133310022, suite = 2 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end