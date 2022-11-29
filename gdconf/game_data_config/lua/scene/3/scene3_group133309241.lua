-- 基础信息
local base_info = {
	group_id = 133309241
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 241003, monster_id = 25210201, pos = { x = -2972.103, y = 147.761, z = 5415.029 }, rot = { x = 0.000, y = 313.935, z = 0.000 }, level = 32, drop_tag = "镀金旅团", pose_id = 9006, area_id = 27 },
	{ config_id = 241006, monster_id = 25310301, pos = { x = -2962.571, y = 147.438, z = 5417.660 }, rot = { x = 0.000, y = 348.276, z = 0.000 }, level = 32, drop_tag = "中级镀金旅团", pose_id = 9002, area_id = 27 },
	{ config_id = 241008, monster_id = 25210301, pos = { x = -2967.809, y = 147.002, z = 5410.563 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, drop_tag = "镀金旅团", pose_id = 9001, area_id = 27 },
	{ config_id = 241009, monster_id = 25210202, pos = { x = -2955.166, y = 147.264, z = 5412.449 }, rot = { x = 0.000, y = 61.129, z = 0.000 }, level = 32, drop_tag = "镀金旅团", pose_id = 9006, area_id = 27 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 241001, gadget_id = 70210101, pos = { x = -2964.200, y = 147.276, z = 5416.518 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜通用须弥", persistent = true, area_id = 27 },
	{ config_id = 241004, gadget_id = 70211002, pos = { x = -2962.898, y = 146.982, z = 5406.101 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 26, drop_tag = "战斗低级须弥", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 10 }, area_id = 27 },
	{ config_id = 241005, gadget_id = 70330341, pos = { x = -2976.859, y = 149.738, z = 5411.072 }, rot = { x = 0.000, y = 0.000, z = 270.000 }, level = 32, state = GadgetState.GearAction1, persistent = true, area_id = 27 },
	{ config_id = 241007, gadget_id = 70330416, pos = { x = -2977.880, y = 147.297, z = 5406.070 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 32, persistent = true, area_id = 27 },
	{ config_id = 241012, gadget_id = 71700412, pos = { x = -2963.117, y = 147.307, z = 5417.384 }, rot = { x = 0.000, y = 359.839, z = 0.000 }, level = 32, persistent = true, area_id = 27 },
	{ config_id = 241013, gadget_id = 70710352, pos = { x = -2964.163, y = 147.247, z = 5416.657 }, rot = { x = 0.000, y = 323.104, z = 0.000 }, level = 32, persistent = true, area_id = 27 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	-- 保底开宝箱
	{ config_id = 1241002, name = "GROUP_LOAD_241002", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_241002", action = "action_EVENT_GROUP_LOAD_241002", trigger_count = 0 },
	-- 怪死光，解锁宝箱和机关
	{ config_id = 1241010, name = "ANY_MONSTER_DIE_241010", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_241010", action = "action_EVENT_ANY_MONSTER_DIE_241010" },
	-- 交互开门
	{ config_id = 1241011, name = "SELECT_OPTION_241011", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_241011", action = "action_EVENT_SELECT_OPTION_241011", trigger_count = 0 },
	-- 保底门状态
	{ config_id = 1241014, name = "GROUP_LOAD_241014", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_241014", action = "action_EVENT_GROUP_LOAD_241014", trigger_count = 0 },
	-- 保底开关状态
	{ config_id = 1241015, name = "GROUP_LOAD_241015", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_241015", action = "action_EVENT_GROUP_LOAD_241015", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "finished", value = 0, no_refresh = true }
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
		monsters = { 241003, 241006, 241008, 241009 },
		gadgets = { 241001, 241004, 241005, 241007, 241012, 241013 },
		regions = { },
		triggers = { "GROUP_LOAD_241002", "ANY_MONSTER_DIE_241010", "SELECT_OPTION_241011", "GROUP_LOAD_241014", "GROUP_LOAD_241015" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GROUP_LOAD_241002(context, evt)
	-- 判断变量"finished"为1
	if ScriptLib.GetGroupVariableValue(context, "finished") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_241002(context, evt)
	-- 将configid为 241004 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 241004, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_241010(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_241010(context, evt)
	-- 将本组内变量名为 "finished" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "finished", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 将configid为 241004 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 241004, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 241005 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 241005, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133309241, 241005, {1}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_241011(context, evt)
	-- 判断是gadgetid 241005 option_id 1
	if 241005 ~= evt.param1 then
		return false	
	end
	
	if 1 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_241011(context, evt)
	-- 将configid为 241007 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 241007, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 241005 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 241005, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 删除指定group： 133309241 ；指定config：241005；物件身上指定option：1；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 133309241, 241005, 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_241014(context, evt)
	if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 133309241, 241005) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_241014(context, evt)
	-- 将configid为 241007 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 241007, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_241015(context, evt)
	-- 判断变量"finished"为1
	if ScriptLib.GetGroupVariableValue(context, "finished") ~= 1 then
			return false
	end
	
	if GadgetState.Default ~= ScriptLib.GetGadgetStateByConfigId(context, 133309241, 241005) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_241015(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133309241, 241005, {1}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end