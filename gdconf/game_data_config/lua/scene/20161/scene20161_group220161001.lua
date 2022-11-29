-- 基础信息
local base_info = {
	group_id = 220161001
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 1001, monster_id = 21020201, pos = { x = -28.128, y = 0.846, z = 75.567 }, rot = { x = 0.000, y = 112.244, z = 0.000 }, level = 1, disableWander = true, affix = { 1007 } },
	{ config_id = 1002, monster_id = 21020101, pos = { x = -28.183, y = 0.671, z = 70.052 }, rot = { x = 0.000, y = 70.575, z = 0.000 }, level = 1, disableWander = true, affix = { 1007 } },
	{ config_id = 1003, monster_id = 26040101, pos = { x = -29.039, y = 0.484, z = 80.269 }, rot = { x = 0.000, y = 130.717, z = 0.000 }, level = 1, disableWander = true, affix = { 1007 } },
	{ config_id = 1004, monster_id = 26040104, pos = { x = -28.814, y = 0.607, z = 65.122 }, rot = { x = 0.000, y = 55.074, z = 0.000 }, level = 1, disableWander = true, affix = { 1007 } },
	{ config_id = 1005, monster_id = 21020501, pos = { x = -35.712, y = 0.928, z = 76.895 }, rot = { x = 0.000, y = 117.652, z = 0.000 }, level = 1, disableWander = true, affix = { 1007 } },
	{ config_id = 1006, monster_id = 21020801, pos = { x = -35.990, y = 0.592, z = 67.830 }, rot = { x = 0.000, y = 66.495, z = 0.000 }, level = 1, disableWander = true, affix = { 1007 } }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 1007, gadget_id = 70900201, pos = { x = -20.026, y = 3.210, z = 72.855 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1008, gadget_id = 70330417, pos = { x = -54.365, y = 2.950, z = 73.096 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1 },
	{ config_id = 1010, gadget_id = 70950011, pos = { x = -21.852, y = 0.379, z = 89.020 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1011, gadget_id = 70950011, pos = { x = 24.772, y = 3.082, z = 74.209 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1 },
	{ config_id = 1012, gadget_id = 70950010, pos = { x = -44.200, y = 0.651, z = 88.880 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1013, gadget_id = 70330287, pos = { x = -30.238, y = -0.496, z = 72.766 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1015, gadget_id = 70310016, pos = { x = -28.373, y = 0.270, z = 74.687 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1016, gadget_id = 70310016, pos = { x = -33.039, y = 0.270, z = 74.687 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1017, gadget_id = 70310016, pos = { x = -33.039, y = 0.270, z = 70.616 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1018, gadget_id = 70310016, pos = { x = -28.273, y = 0.270, z = 70.616 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1019, gadget_id = 70330452, pos = { x = -13.419, y = 0.038, z = 56.729 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1020, gadget_id = 70330452, pos = { x = -28.416, y = 0.038, z = 56.553 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1021, gadget_id = 70330452, pos = { x = -45.183, y = 0.038, z = 56.685 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1023, gadget_id = 70330334, pos = { x = -20.059, y = 0.592, z = 72.817 }, rot = { x = 0.000, y = 269.273, z = 0.000 }, level = 1 },
	{ config_id = 1024, gadget_id = 70360001, pos = { x = -19.991, y = 1.835, z = 72.828 }, rot = { x = 0.000, y = 49.075, z = 0.000 }, level = 1 },
	{ config_id = 1025, gadget_id = 70211021, pos = { x = -30.233, y = 0.925, z = 72.713 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1, drop_tag = "战斗高级须弥", isOneoff = true, persistent = true }
}

-- 区域
regions = {
	{ config_id = 1009, shape = RegionShape.SPHERE, radius = 2.8, pos = { x = -44.585, y = -7.477, z = 85.781 } },
	{ config_id = 1014, shape = RegionShape.SPHERE, radius = 5, pos = { x = 7.722, y = 0.433, z = 72.761 } }
}

-- 触发器
triggers = {
	{ config_id = 1001009, name = "ENTER_REGION_1009", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_1009", action = "action_EVENT_ENTER_REGION_1009" },
	{ config_id = 1001014, name = "ENTER_REGION_1014", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_1014", action = "action_EVENT_ENTER_REGION_1014" },
	{ config_id = 1001026, name = "GADGET_CREATE_1026", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_1026", action = "action_EVENT_GADGET_CREATE_1026", trigger_count = 0 },
	{ config_id = 1001027, name = "SELECT_OPTION_1027", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_1027", action = "action_EVENT_SELECT_OPTION_1027", trigger_count = 0 },
	{ config_id = 1001028, name = "CHALLENGE_SUCCESS_1028", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "2010075", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_1028", trigger_count = 0 },
	{ config_id = 1001029, name = "CHALLENGE_FAIL_1029", event = EventType.EVENT_CHALLENGE_FAIL, source = "2010075", condition = "", action = "action_EVENT_CHALLENGE_FAIL_1029", trigger_count = 0 },
	{ config_id = 1001030, name = "ANY_MONSTER_DIE_1030", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_1030", action = "action_EVENT_ANY_MONSTER_DIE_1030" },
	{ config_id = 1001031, name = "ANY_MONSTER_DIE_1031", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_1031", action = "action_EVENT_ANY_MONSTER_DIE_1031" },
	{ config_id = 1001032, name = "ANY_MONSTER_DIE_1032", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_1032", action = "" }
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
		monsters = { },
		gadgets = { 1007, 1008, 1010, 1011, 1012, 1013, 1015, 1016, 1017, 1018, 1019, 1020, 1021, 1023, 1024 },
		regions = { 1009, 1014 },
		triggers = { "ENTER_REGION_1009", "ENTER_REGION_1014", "GADGET_CREATE_1026", "SELECT_OPTION_1027", "CHALLENGE_SUCCESS_1028", "CHALLENGE_FAIL_1029" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 1001, 1002 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_1030" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { 1003, 1004 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_1031" },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = ,
		monsters = { 1005, 1006 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_1032" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_1009(context, evt)
	if evt.param1 ~= 1009 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_1009(context, evt)
	-- 启动移动平台
	if 0 ~= ScriptLib.StartPlatform(context, 1008) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : start_platform")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_1014(context, evt)
	if evt.param1 ~= 1014 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_1014(context, evt)
	-- 将configid为 1013 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 1013, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_1026(context, evt)
	if 1024 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_1026(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 220161001, 1024, {177}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_1027(context, evt)
	-- 判断是gadgetid 1024 option_id 177
	if 1024 ~= evt.param1 then
		return false	
	end
	
	if 177 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_1027(context, evt)
	-- 创建编号为2010075（该挑战的识别id),挑战内容为2010075的区域挑战，具体参数填写方式，见DungeonChallengeData表中的注释，所有填写的值都必须是int类型
	if 0 ~= ScriptLib.ActiveChallenge(context, 2010075, 2010075, 220161001, 6, 0, 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_challenge")
		return -1
	end
	
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 220161001, 2)
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 1024 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	-- 将configid为 1023 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 1023, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 220161001, EntityType.GADGET, 1007 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_SUCCESS_1028(context, evt)
	-- 将configid为 1023 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 1023, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 创建id为1025的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 1025 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_FAIL_1029(context, evt)
	-- 将configid为 1023 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 1023, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 创建id为1024的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 1024 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 220161001, 2)
	
	-- 删除suite3的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 220161001, 3)
	
	-- 删除suite4的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 220161001, 4)
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_1030(context, evt)
	-- 判断指定group组剩余怪物数量是否是0 
	if ScriptLib.GetGroupMonsterCountByGroupId(context, 220161001) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_1030(context, evt)
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 220161001, 3)
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_1031(context, evt)
	-- 判断指定group组剩余怪物数量是否是0 
	if ScriptLib.GetGroupMonsterCountByGroupId(context, 220161001) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_1031(context, evt)
	-- 添加suite4的新内容
	    ScriptLib.AddExtraGroupSuite(context, 220161001, 4)
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_1032(context, evt)
	-- 判断指定group组剩余怪物数量是否是0 
	if ScriptLib.GetGroupMonsterCountByGroupId(context, 220161001) ~= 0 then
		return false
	end
	
	return true
end