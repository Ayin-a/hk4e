-- 基础信息
local base_info = {
	group_id = 111101279
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 279001, monster_id = 20010301, pos = { x = 2171.865, y = 259.824, z = -1748.044 }, rot = { x = 0.000, y = 11.413, z = 0.000 }, level = 1, drop_tag = "史莱姆", disableWander = true },
	{ config_id = 279002, monster_id = 20010301, pos = { x = 2165.618, y = 258.992, z = -1747.092 }, rot = { x = 0.000, y = 11.413, z = 0.000 }, level = 1, drop_tag = "史莱姆", disableWander = true },
	{ config_id = 279003, monster_id = 20010401, pos = { x = 2168.912, y = 259.383, z = -1746.683 }, rot = { x = 0.000, y = 11.413, z = 0.000 }, level = 1, drop_tag = "大史莱姆", disableWander = true },
	{ config_id = 279004, monster_id = 21010401, pos = { x = 2170.917, y = 259.836, z = -1749.953 }, rot = { x = 0.000, y = 11.413, z = 0.000 }, level = 1, drop_tag = "远程丘丘人", disableWander = true },
	{ config_id = 279005, monster_id = 21010401, pos = { x = 2165.900, y = 259.546, z = -1748.937 }, rot = { x = 0.000, y = 11.413, z = 0.000 }, level = 1, drop_tag = "远程丘丘人", disableWander = true },
	{ config_id = 279007, monster_id = 21010101, pos = { x = 2171.064, y = 260.315, z = -1753.299 }, rot = { x = 0.000, y = 11.413, z = 0.000 }, level = 1, drop_tag = "丘丘人", disableWander = true },
	{ config_id = 279008, monster_id = 21010101, pos = { x = 2164.610, y = 259.896, z = -1751.934 }, rot = { x = 0.000, y = 11.413, z = 0.000 }, level = 1, drop_tag = "丘丘人", disableWander = true },
	{ config_id = 279009, monster_id = 21010201, pos = { x = 2169.834, y = 260.012, z = -1751.417 }, rot = { x = 0.000, y = 11.413, z = 0.000 }, level = 1, drop_tag = "丘丘人", disableWander = true },
	{ config_id = 279010, monster_id = 21010201, pos = { x = 2166.410, y = 259.723, z = -1750.789 }, rot = { x = 0.000, y = 11.413, z = 0.000 }, level = 1, drop_tag = "丘丘人", disableWander = true },
	{ config_id = 279011, monster_id = 21010201, pos = { x = 2167.780, y = 260.020, z = -1752.658 }, rot = { x = 0.000, y = 11.413, z = 0.000 }, level = 1, drop_tag = "丘丘人", disableWander = true }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	-- 初始状态为红圈锁定
	{ config_id = 279013, gadget_id = 70211002, pos = { x = 2168.354, y = 259.692, z = -1749.575 }, rot = { x = 0.000, y = 11.413, z = 0.000 }, level = 11, drop_tag = "战斗低级蒙德", state = GadgetState.ChestLocked, isOneoff = true, persistent = true }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	-- 全部怪物死亡后解锁宝箱
	{ config_id = 1279006, name = "ANY_MONSTER_DIE_279006", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_279006", action = "action_EVENT_ANY_MONSTER_DIE_279006" },
	-- 宝箱打开后解锁D区域元素方碑282002
	{ config_id = 1279012, name = "GADGET_STATE_CHANGE_279012", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_279012", action = "action_EVENT_GADGET_STATE_CHANGE_279012" },
	-- 进入战斗后刷新第二波怪物
	{ config_id = 1279014, name = "MONSTER_BATTLE_279014", event = EventType.EVENT_MONSTER_BATTLE, source = "", condition = "", action = "action_EVENT_MONSTER_BATTLE_279014" }
}

-- 变量
variables = {
	{ config_id = 1, name = "isBattle", value = 0, no_refresh = false }
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
		monsters = { 279001, 279002, 279003, 279004, 279005 },
		gadgets = { 279013 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_279012", "MONSTER_BATTLE_279014" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 279007, 279008, 279009, 279010, 279011 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_279006" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
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
function condition_EVENT_ANY_MONSTER_DIE_279006(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_279006(context, evt)
	-- 将configid为 279013 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 279013, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_279012(context, evt)
	-- 检测config_id为279013的gadget是否从GadgetState.Default变为GadgetState.ChestOpened
	if 279013 ~= evt.param2 or GadgetState.ChestOpened ~= evt.param1 or GadgetState.Default ~= evt.param3 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_279012(context, evt)
	-- 改变指定group组111101282中， configid为282002的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 111101282, 282002, GadgetState.Default) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	return 0
end

-- 触发操作
function action_EVENT_MONSTER_BATTLE_279014(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 111101279, 2)
	
	-- 将本组内变量名为 "isBattle" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "isBattle", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end