-- 基础信息
local base_info = {
	group_id = 111101270
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 270001, monster_id = 22010101, pos = { x = 2182.767, y = 260.279, z = -1733.050 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "深渊法师", pose_id = 9013 },
	{ config_id = 270002, monster_id = 21010101, pos = { x = 2187.261, y = 259.475, z = -1730.998 }, rot = { x = 0.000, y = 237.184, z = 0.000 }, level = 1, drop_tag = "丘丘人", pose_id = 9012 },
	{ config_id = 270003, monster_id = 21010101, pos = { x = 2184.090, y = 259.075, z = -1728.957 }, rot = { x = 0.000, y = 199.014, z = 0.000 }, level = 1, drop_tag = "丘丘人", pose_id = 9012 },
	{ config_id = 270004, monster_id = 21010101, pos = { x = 2180.700, y = 259.017, z = -1728.584 }, rot = { x = 0.000, y = 141.613, z = 0.000 }, level = 1, drop_tag = "丘丘人", pose_id = 9012 },
	{ config_id = 270005, monster_id = 21020101, pos = { x = 2186.175, y = 259.897, z = -1735.322 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "丘丘暴徒" },
	{ config_id = 270006, monster_id = 21020201, pos = { x = 2178.264, y = 259.136, z = -1734.534 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "丘丘暴徒" }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 270008, gadget_id = 70211012, pos = { x = 2181.711, y = 259.507, z = -1736.192 }, rot = { x = 0.000, y = 19.626, z = 0.000 }, level = 11, drop_tag = "战斗中级蒙德", state = GadgetState.ChestLocked, isOneoff = true, persistent = true }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	-- 入战时生成怪物
	{ config_id = 1270007, name = "MONSTER_BATTLE_270007", event = EventType.EVENT_MONSTER_BATTLE, source = "", condition = "", action = "action_EVENT_MONSTER_BATTLE_270007", trigger_count = 0 },
	-- Group内怪物死光时解锁宝箱
	{ config_id = 1270009, name = "ANY_MONSTER_DIE_270009", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_270009", action = "action_EVENT_ANY_MONSTER_DIE_270009" },
	-- 当宝箱开启时，解锁D区域的一个元素方碑
	{ config_id = 1270010, name = "GADGET_STATE_CHANGE_270010", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_270010", action = "action_EVENT_GADGET_STATE_CHANGE_270010" }
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
		monsters = { 270001, 270002, 270003, 270004 },
		gadgets = { 270008 },
		regions = { },
		triggers = { "MONSTER_BATTLE_270007", "ANY_MONSTER_DIE_270009", "GADGET_STATE_CHANGE_270010" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 270005, 270006 },
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
function action_EVENT_MONSTER_BATTLE_270007(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 111101270, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_270009(context, evt)
	-- 判断指定group组剩余怪物数量是否是0 
	if ScriptLib.GetGroupMonsterCountByGroupId(context, 111101270) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_270009(context, evt)
	-- 将configid为 270008 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 270008, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_270010(context, evt)
	-- 检测config_id为270008的gadget是否从GadgetState.Default变为GadgetState.ChestOpened
	if 270008 ~= evt.param2 or GadgetState.ChestOpened ~= evt.param1 or GadgetState.Default ~= evt.param3 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_270010(context, evt)
	-- 改变指定group组111101276中， configid为276002的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 111101276, 276002, GadgetState.Default) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	return 0
end