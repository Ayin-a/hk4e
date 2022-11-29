-- 基础信息
local base_info = {
	group_id = 133304360
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 360006, monster_id = 26090901, pos = { x = -1861.541, y = 111.529, z = 2924.791 }, rot = { x = 0.000, y = 10.861, z = 0.000 }, level = 30, drop_tag = "蕈兽", disableWander = true, pose_id = 101, area_id = 21 },
	{ config_id = 360007, monster_id = 26120101, pos = { x = -1864.648, y = 100.386, z = 2939.130 }, rot = { x = 0.000, y = 198.470, z = 0.000 }, level = 30, drop_tag = "大蕈兽", disableWander = true, pose_id = 102, area_id = 21 },
	{ config_id = 360008, monster_id = 20010201, pos = { x = -1868.354, y = 87.415, z = 2923.751 }, rot = { x = 0.000, y = 71.715, z = 0.000 }, level = 30, drop_tag = "大史莱姆", disableWander = true, pose_id = 201, area_id = 21 },
	{ config_id = 360012, monster_id = 26120101, pos = { x = -1866.051, y = 87.000, z = 2926.735 }, rot = { x = 0.000, y = 323.732, z = 0.000 }, level = 30, drop_tag = "大蕈兽", disableWander = true, pose_id = 102, area_id = 21 },
	{ config_id = 360017, monster_id = 26090801, pos = { x = -1867.736, y = 86.633, z = 2931.073 }, rot = { x = 0.000, y = 215.320, z = 0.000 }, level = 30, drop_tag = "蕈兽", disableWander = true, pose_id = 102, area_id = 21 },
	{ config_id = 360018, monster_id = 26090901, pos = { x = -1860.168, y = 111.477, z = 2924.766 }, rot = { x = 0.000, y = 359.707, z = 0.000 }, level = 30, drop_tag = "蕈兽", disableWander = true, pose_id = 101, area_id = 21 },
	{ config_id = 360019, monster_id = 26090801, pos = { x = -1870.013, y = 86.960, z = 2928.420 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, drop_tag = "蕈兽", disableWander = true, pose_id = 102, area_id = 21 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 360001, gadget_id = 70211012, pos = { x = -1869.178, y = 87.994, z = 2918.217 }, rot = { x = 5.812, y = 25.211, z = 0.000 }, level = 26, drop_tag = "战斗中级须弥", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, vision_level = VisionLevelType.VISION_LEVEL_NORMAL, explore = { name = "chest", exp = 10 }, area_id = 21 },
	{ config_id = 360002, gadget_id = 70900050, pos = { x = -1864.864, y = 112.795, z = 2921.459 }, rot = { x = 15.183, y = 0.156, z = 3.348 }, level = 30, state = GadgetState.GearStop, persistent = true, area_id = 21 },
	{ config_id = 360003, gadget_id = 70900050, pos = { x = -1875.880, y = 99.308, z = 2910.491 }, rot = { x = 25.014, y = 358.335, z = 347.268 }, level = 30, state = GadgetState.GearStop, persistent = true, area_id = 21 },
	{ config_id = 360004, gadget_id = 70900050, pos = { x = -1865.992, y = 87.069, z = 2921.666 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, state = GadgetState.GearStop, persistent = true, area_id = 21 },
	{ config_id = 360009, gadget_id = 70310200, pos = { x = -1878.803, y = 100.384, z = 2912.359 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, persistent = true, area_id = 21 },
	{ config_id = 360010, gadget_id = 70310198, pos = { x = -1885.240, y = 103.746, z = 2931.842 }, rot = { x = 0.000, y = 84.869, z = 0.000 }, level = 30, area_id = 21 },
	{ config_id = 360014, gadget_id = 70330219, pos = { x = -1864.774, y = 112.560, z = 2921.581 }, rot = { x = 20.999, y = 5.391, z = 0.000 }, level = 30, persistent = true, area_id = 21 },
	{ config_id = 360015, gadget_id = 70217020, pos = { x = -1858.671, y = 111.660, z = 2924.101 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "摩拉石箱须弥", isOneoff = true, persistent = true, explore = { name = "chest", exp = 4 }, area_id = 21 },
	{ config_id = 360016, gadget_id = 70217020, pos = { x = -1881.024, y = 100.613, z = 2922.017 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "摩拉石箱须弥", isOneoff = true, persistent = true, explore = { name = "chest", exp = 4 }, area_id = 21 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1360005, name = "ANY_MONSTER_DIE_360005", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_360005", action = "action_EVENT_ANY_MONSTER_DIE_360005", trigger_count = 0 },
	{ config_id = 1360011, name = "GADGET_STATE_CHANGE_360011", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_360011", action = "action_EVENT_GADGET_STATE_CHANGE_360011" },
	{ config_id = 1360013, name = "GADGET_STATE_CHANGE_360013", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_360013", action = "action_EVENT_GADGET_STATE_CHANGE_360013", trigger_count = 0 },
	{ config_id = 1360020, name = "ANY_GADGET_DIE_360020", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_360020", action = "action_EVENT_ANY_GADGET_DIE_360020" }
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
		monsters = { 360006, 360007, 360008, 360012, 360017, 360018, 360019 },
		gadgets = { 360001, 360002, 360003, 360004, 360009, 360010, 360014, 360015, 360016 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_360005", "GADGET_STATE_CHANGE_360011", "GADGET_STATE_CHANGE_360013", "ANY_GADGET_DIE_360020" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_360005(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_360005(context, evt)
	-- 将configid为 360004 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 360004, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_360011(context, evt)
	if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 133304360, 360009) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_360011(context, evt)
	-- 将configid为 360003 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 360003, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_360013(context, evt)
	if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 133304360, 360002) then
		return false
	end
	
	if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 133304360, 360003) then
		return false
	end
	
	if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 133304360, 360004) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_360013(context, evt)
	-- 将configid为 360001 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 360001, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_360020(context, evt)
	if 360014 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_360020(context, evt)
	-- 将configid为 360002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 360002, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end