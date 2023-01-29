-- 基础信息
local base_info = {
	group_id = 111101318
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 318002, monster_id = 21010301, pos = { x = 2241.908, y = 270.209, z = -1745.283 }, rot = { x = 0.000, y = 272.263, z = 0.000 }, level = 1, drop_tag = "丘丘人", pose_id = 9003 },
	{ config_id = 318003, monster_id = 21010101, pos = { x = 2236.898, y = 270.162, z = -1745.518 }, rot = { x = 0.000, y = 74.798, z = 0.000 }, level = 1, drop_tag = "丘丘人", pose_id = 9003 },
	{ config_id = 318004, monster_id = 21010101, pos = { x = 2239.032, y = 269.933, z = -1743.709 }, rot = { x = 0.000, y = 175.157, z = 0.000 }, level = 1, drop_tag = "丘丘人", pose_id = 9003 },
	{ config_id = 318006, monster_id = 21010401, pos = { x = 2248.136, y = 275.409, z = -1740.601 }, rot = { x = 0.000, y = 309.060, z = 0.000 }, level = 1, drop_tag = "远程丘丘人" },
	{ config_id = 318015, monster_id = 21010601, pos = { x = 2231.189, y = 270.908, z = -1754.333 }, rot = { x = 0.000, y = 32.966, z = 0.000 }, level = 1, drop_tag = "丘丘人" },
	{ config_id = 318016, monster_id = 21010601, pos = { x = 2229.693, y = 270.005, z = -1750.861 }, rot = { x = 0.000, y = 32.966, z = 0.000 }, level = 1, drop_tag = "丘丘人" },
	{ config_id = 318017, monster_id = 21020101, pos = { x = 2231.654, y = 270.189, z = -1749.942 }, rot = { x = 0.000, y = 32.966, z = 0.000 }, level = 1, drop_tag = "丘丘暴徒" }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 318001, gadget_id = 70300107, pos = { x = 2239.124, y = 270.246, z = -1745.507 }, rot = { x = 8.004, y = 0.063, z = 0.895 }, level = 1, state = GadgetState.GearStart },
	{ config_id = 318005, gadget_id = 70300090, pos = { x = 2248.263, y = 270.017, z = -1740.867 }, rot = { x = 2.540, y = 312.805, z = 358.276 }, level = 1 },
	{ config_id = 318007, gadget_id = 70220013, pos = { x = 2246.373, y = 270.424, z = -1745.444 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 318008, gadget_id = 70220013, pos = { x = 2244.722, y = 270.432, z = -1746.652 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 318009, gadget_id = 70220013, pos = { x = 2244.682, y = 270.123, z = -1744.991 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 318010, gadget_id = 70220026, pos = { x = 2246.051, y = 270.226, z = -1743.778 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 318011, gadget_id = 70300081, pos = { x = 2238.368, y = 270.970, z = -1751.242 }, rot = { x = 0.000, y = 93.181, z = 0.000 }, level = 1 },
	{ config_id = 318012, gadget_id = 70220005, pos = { x = 2244.141, y = 270.040, z = -1743.796 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 318013, gadget_id = 70220005, pos = { x = 2234.845, y = 270.455, z = -1748.900 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 318014, gadget_id = 70220005, pos = { x = 2234.267, y = 270.380, z = -1748.064 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 318019, gadget_id = 70211012, pos = { x = 2238.818, y = 270.723, z = -1749.450 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 11, drop_tag = "战斗中级蒙德", state = GadgetState.ChestLocked, isOneoff = true, persistent = true }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1318018, name = "MONSTER_BATTLE_318018", event = EventType.EVENT_MONSTER_BATTLE, source = "", condition = "", action = "action_EVENT_MONSTER_BATTLE_318018" },
	{ config_id = 1318020, name = "ANY_MONSTER_DIE_318020", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_318020", action = "action_EVENT_ANY_MONSTER_DIE_318020", trigger_count = 10 },
	{ config_id = 1318021, name = "GADGET_STATE_CHANGE_318021", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_318021", action = "action_EVENT_GADGET_STATE_CHANGE_318021" }
}

-- 变量
variables = {
	{ config_id = 1, name = "MonsterDeath_Count", value = 0, no_refresh = true }
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
		monsters = { 318002, 318003, 318004, 318006 },
		gadgets = { 318001, 318005, 318007, 318008, 318009, 318010, 318011, 318012, 318013, 318014, 318019 },
		regions = { },
		triggers = { "MONSTER_BATTLE_318018", "GADGET_STATE_CHANGE_318021" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 318015, 318016, 318017 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_318020" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发操作
function action_EVENT_MONSTER_BATTLE_318018(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 111101318, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_318020(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_318020(context, evt)
	-- 将configid为 318019 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 318019, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_318021(context, evt)
	if 318019 ~= evt.param2 or GadgetState.ChestOpened ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_318021(context, evt)
	-- 改变指定group组111101321中， configid为321002的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 111101321, 321002, GadgetState.Default) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	return 0
end