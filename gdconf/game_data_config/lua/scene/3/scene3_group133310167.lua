-- 基础信息
local base_info = {
	group_id = 133310167
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 167001, monster_id = 25210201, pos = { x = -2882.243, y = 267.416, z = 4850.796 }, rot = { x = 0.000, y = 4.437, z = 0.000 }, level = 32, drop_tag = "镀金旅团", disableWander = true, pose_id = 9001, area_id = 28 },
	{ config_id = 167002, monster_id = 25210503, pos = { x = -2903.213, y = 267.681, z = 4872.554 }, rot = { x = 0.000, y = 122.618, z = 0.000 }, level = 32, drop_tag = "镀金旅团", disableWander = true, pose_id = 9503, area_id = 28 },
	{ config_id = 167004, monster_id = 25210202, pos = { x = -2901.804, y = 265.608, z = 4865.304 }, rot = { x = 0.000, y = 341.630, z = 0.000 }, level = 32, drop_tag = "镀金旅团", disableWander = true, pose_id = 9006, area_id = 28 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 167005, gadget_id = 70211002, pos = { x = -2904.827, y = 267.500, z = 4873.642 }, rot = { x = 358.328, y = 124.039, z = 359.929 }, level = 26, drop_tag = "战斗低级须弥", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 10 }, area_id = 28 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1167006, name = "ANY_MONSTER_DIE_167006", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_167006", action = "action_EVENT_ANY_MONSTER_DIE_167006" },
	{ config_id = 1167007, name = "GROUP_LOAD_167007", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_167007", action = "action_EVENT_GROUP_LOAD_167007", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "opendoor", value = 0, no_refresh = true }
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
		triggers = { "GROUP_LOAD_167007" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 167001, 167002, 167004 },
		gadgets = { 167005 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_167006" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_167006(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_167006(context, evt)
	-- 将configid为 167005 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 167005, GadgetState.Default) then
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
function condition_EVENT_GROUP_LOAD_167007(context, evt)
	-- 判断变量"opendoor"为1
	if ScriptLib.GetGroupVariableValue(context, "opendoor") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_167007(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133310167, suite = 2 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end