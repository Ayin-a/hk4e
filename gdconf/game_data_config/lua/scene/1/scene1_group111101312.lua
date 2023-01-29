-- 基础信息
local base_info = {
	group_id = 111101312
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 312001, monster_id = 21010501, pos = { x = 2174.850, y = 256.330, z = -1705.635 }, rot = { x = 0.000, y = 74.900, z = 0.000 }, level = 1, drop_tag = "远程丘丘人", pose_id = 9013 },
	{ config_id = 312004, monster_id = 21020201, pos = { x = 2170.636, y = 256.285, z = -1711.964 }, rot = { x = 0.000, y = 358.756, z = 0.000 }, level = 1, drop_tag = "丘丘暴徒", pose_id = 401 },
	{ config_id = 312010, monster_id = 21020101, pos = { x = 2172.584, y = 256.012, z = -1701.960 }, rot = { x = 0.000, y = 220.914, z = 0.000 }, level = 1, drop_tag = "丘丘暴徒" },
	{ config_id = 312011, monster_id = 21010101, pos = { x = 2166.253, y = 255.217, z = -1700.730 }, rot = { x = 0.000, y = 223.901, z = 0.000 }, level = 1, drop_tag = "丘丘人" },
	{ config_id = 312012, monster_id = 21010101, pos = { x = 2169.344, y = 255.496, z = -1699.113 }, rot = { x = 0.000, y = 148.808, z = 0.000 }, level = 1, drop_tag = "丘丘人" }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 312005, gadget_id = 70310001, pos = { x = 2175.794, y = 256.639, z = -1708.945 }, rot = { x = 0.000, y = 26.459, z = 0.000 }, level = 1 },
	{ config_id = 312006, gadget_id = 70220013, pos = { x = 2167.941, y = 256.134, z = -1713.329 }, rot = { x = 0.000, y = 278.657, z = 0.000 }, level = 1 },
	{ config_id = 312007, gadget_id = 70220013, pos = { x = 2173.716, y = 257.091, z = -1715.801 }, rot = { x = 0.000, y = 3.677, z = 0.000 }, level = 1 },
	{ config_id = 312008, gadget_id = 70290443, pos = { x = 2170.929, y = 256.233, z = -1710.073 }, rot = { x = 0.000, y = 16.006, z = 0.000 }, level = 1 },
	{ config_id = 312009, gadget_id = 70211002, pos = { x = 2172.688, y = 256.416, z = -1709.298 }, rot = { x = 3.157, y = 356.106, z = 6.899 }, level = 11, drop_tag = "战斗低级蒙德", state = GadgetState.ChestLocked, isOneoff = true, persistent = true }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1312013, name = "MONSTER_BATTLE_312013", event = EventType.EVENT_MONSTER_BATTLE, source = "", condition = "", action = "action_EVENT_MONSTER_BATTLE_312013", trigger_count = 0 },
	{ config_id = 1312014, name = "ANY_MONSTER_DIE_312014", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_312014", action = "action_EVENT_ANY_MONSTER_DIE_312014" },
	{ config_id = 1312015, name = "GADGET_STATE_CHANGE_312015", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_312015", action = "action_EVENT_GADGET_STATE_CHANGE_312015" }
}

-- 变量
variables = {
	{ config_id = 1, name = "chest", value = 0, no_refresh = true }
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
		monsters = { 312001, 312004 },
		gadgets = { 312005, 312006, 312007, 312008, 312009 },
		regions = { },
		triggers = { "MONSTER_BATTLE_312013", "ANY_MONSTER_DIE_312014", "GADGET_STATE_CHANGE_312015" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 312010, 312011, 312012 },
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
function action_EVENT_MONSTER_BATTLE_312013(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 111101312, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_312014(context, evt)
	-- 判断指定group组剩余怪物数量是否是0 
	if ScriptLib.GetGroupMonsterCountByGroupId(context, 111101312) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_312014(context, evt)
	-- 将configid为 312009 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 312009, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_312015(context, evt)
	-- 检测config_id为312009的gadget是否从GadgetState.Default变为GadgetState.ChestOpened
	if 312009 ~= evt.param2 or GadgetState.ChestOpened ~= evt.param1 or GadgetState.Default ~= evt.param3 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_312015(context, evt)
	-- 将本组内变量名为 "chest" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "chest", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end