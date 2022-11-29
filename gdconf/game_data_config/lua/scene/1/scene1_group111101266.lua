-- 基础信息
local base_info = {
	group_id = 111101266
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 266001, monster_id = 21020201, pos = { x = 2198.394, y = 257.409, z = -1707.814 }, rot = { x = 0.000, y = 359.505, z = 0.000 }, level = 1, drop_tag = "丘丘暴徒", isElite = true, pose_id = 401 },
	{ config_id = 266004, monster_id = 21010501, pos = { x = 2212.939, y = 258.494, z = -1704.779 }, rot = { x = 0.000, y = 85.039, z = 0.000 }, level = 1, drop_tag = "远程丘丘人", pose_id = 9016 },
	{ config_id = 266005, monster_id = 21010301, pos = { x = 2205.163, y = 256.721, z = -1699.564 }, rot = { x = 0.000, y = 0.276, z = 0.000 }, level = 1, drop_tag = "丘丘人" },
	{ config_id = 266006, monster_id = 21010301, pos = { x = 2200.231, y = 256.375, z = -1698.548 }, rot = { x = 0.000, y = 359.861, z = 0.000 }, level = 1, drop_tag = "丘丘人" },
	{ config_id = 266007, monster_id = 21030101, pos = { x = 2196.596, y = 257.146, z = -1705.702 }, rot = { x = 0.000, y = 31.065, z = 0.000 }, level = 1, drop_tag = "丘丘萨满", pose_id = 9012 },
	{ config_id = 266008, monster_id = 21030501, pos = { x = 2200.272, y = 257.001, z = -1706.096 }, rot = { x = 0.000, y = 322.135, z = 0.000 }, level = 1, drop_tag = "丘丘萨满", pose_id = 9012 },
	{ config_id = 266011, monster_id = 21020101, pos = { x = 2188.673, y = 257.676, z = -1714.941 }, rot = { x = 0.000, y = 58.597, z = 0.000 }, level = 1, drop_tag = "丘丘暴徒", isElite = true },
	{ config_id = 266012, monster_id = 21010701, pos = { x = 2191.377, y = 258.122, z = -1716.594 }, rot = { x = 0.000, y = 27.537, z = 0.000 }, level = 1, drop_tag = "丘丘人" },
	{ config_id = 266013, monster_id = 21010701, pos = { x = 2186.024, y = 257.297, z = -1713.325 }, rot = { x = 0.000, y = 65.162, z = 0.000 }, level = 1, drop_tag = "丘丘人" }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 266002, gadget_id = 70310001, pos = { x = 2206.929, y = 257.032, z = -1698.864 }, rot = { x = 4.301, y = 0.594, z = 15.710 }, level = 1 },
	{ config_id = 266003, gadget_id = 70310001, pos = { x = 2199.153, y = 256.296, z = -1697.855 }, rot = { x = 10.615, y = 359.834, z = 358.210 }, level = 1 },
	{ config_id = 266009, gadget_id = 70310004, pos = { x = 2198.622, y = 256.914, z = -1705.128 }, rot = { x = 2.681, y = 359.937, z = 357.316 }, level = 1, state = GadgetState.GearStart, persistent = true },
	-- 区域B的最终宝箱
	{ config_id = 266010, gadget_id = 70211012, pos = { x = 2200.512, y = 257.557, z = -1710.762 }, rot = { x = 7.104, y = 0.278, z = 4.467 }, level = 11, drop_tag = "战斗中级蒙德", state = GadgetState.ChestLocked, isOneoff = true, persistent = true }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	-- 进入作战刷新的trigger
	{ config_id = 1266014, name = "MONSTER_BATTLE_266014", event = EventType.EVENT_MONSTER_BATTLE, source = "", condition = "", action = "action_EVENT_MONSTER_BATTLE_266014", trigger_count = 0 },
	-- 开宝箱trigger
	{ config_id = 1266015, name = "ANY_MONSTER_DIE_266015", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_266015", action = "action_EVENT_ANY_MONSTER_DIE_266015", trigger_count = 9 },
	-- 对应区域D的2号方碑
	{ config_id = 1266016, name = "GADGET_STATE_CHANGE_266016", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_266016", action = "action_EVENT_GADGET_STATE_CHANGE_266016" }
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
		monsters = { 266001, 266004, 266005, 266006, 266007, 266008 },
		gadgets = { 266002, 266003, 266009, 266010 },
		regions = { },
		triggers = { "MONSTER_BATTLE_266014", "ANY_MONSTER_DIE_266015", "GADGET_STATE_CHANGE_266016" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 266011, 266012, 266013 },
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
function action_EVENT_MONSTER_BATTLE_266014(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 111101266, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_266015(context, evt)
	-- 判断指定group组剩余怪物数量是否是0 
	if ScriptLib.GetGroupMonsterCountByGroupId(context, 111101266) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_266015(context, evt)
	-- 将configid为 266010 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 266010, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_266016(context, evt)
	if 266010 ~= evt.param2 or GadgetState.ChestOpened ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_266016(context, evt)
	-- 改变指定group组111101275中， configid为275002的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 111101275, 275002, GadgetState.Default) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	return 0
end