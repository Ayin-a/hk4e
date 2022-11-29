-- 基础信息
local base_info = {
	group_id = 240058001
}

-- DEFS_MISCS
local defs = {
        worktop_id = 1003,  --操作台gadget的id
        gallery_id = 29027,  --对应gallery的id
        recovergadget_id = 1009,   --恢复gadget的id
        battle_region_id = 1024, --td region的id
        cleaner_id = 1001,  --local gadget（能量球）清理gadget的id
        trans_p1 = 1017,  --P1玩家传送点
        trans_p2 = 1018,  --P2玩家传送点
        trans_p3 = 1019,  --P3玩家传送点
        trans_p4 = 1020,  --P4玩家传送点  
        monster_num = 2,  --刷怪总数量
        is_first_group = true,   --是否是第一个group  
        next_group_id = 240058002  --下一个group的id，最后一个group不需要这条
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	[1006] = { config_id = 1006, monster_id = 26050601, pos = { x = -5.608, y = 0.079, z = -5.885 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, disableWander = true },
	[1007] = { config_id = 1007, monster_id = 22040201, pos = { x = -5.608, y = 0.073, z = -8.758 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, disableWander = true, pose_id = 101 },
	[1008] = { config_id = 1008, monster_id = 22040201, pos = { x = -11.561, y = 0.082, z = 2.824 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1, disableWander = true, pose_id = 101 },
	[1012] = { config_id = 1012, monster_id = 22040201, pos = { x = 6.045, y = 0.073, z = -8.758 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, disableWander = true, pose_id = 101 },
	[1021] = { config_id = 1021, monster_id = 26050601, pos = { x = 6.045, y = 0.079, z = -5.884 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, disableWander = true },
	[1022] = { config_id = 1022, monster_id = 22040201, pos = { x = -11.561, y = 0.082, z = -3.051 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1, disableWander = true, pose_id = 101 },
	[1023] = { config_id = 1023, monster_id = 22040201, pos = { x = 11.885, y = 0.082, z = -3.051 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, level = 1, disableWander = true, pose_id = 101 },
	[1031] = { config_id = 1031, monster_id = 22040201, pos = { x = 11.885, y = 0.082, z = 2.824 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, level = 1, disableWander = true, pose_id = 101 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	[1001] = { config_id = 1001, gadget_id = 44000456, pos = { x = 0.172, y = 0.000, z = 0.000 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	[1002] = { config_id = 1002, gadget_id = 70900205, pos = { x = 2.243, y = -0.535, z = -1.458 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	[1003] = { config_id = 1003, gadget_id = 70360367, pos = { x = 0.192, y = 0.082, z = 8.736 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, worktop_config = { init_options = { 175 } } },
	[1004] = { config_id = 1004, gadget_id = 70950042, pos = { x = 0.000, y = 0.000, z = 0.000 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	[1009] = { config_id = 1009, gadget_id = 44000006, pos = { x = 0.163, y = 0.089, z = 20.326 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 }
}

-- 区域
regions = {
	[1024] = { config_id = 1024, shape = RegionShape.SPHERE, radius = 35, pos = { x = 0.000, y = 0.000, z = 0.000 } }
}

-- 触发器
triggers = {
	{ config_id = 1001005, name = "ANY_MONSTER_LIVE_1005", event = EventType.EVENT_ANY_MONSTER_LIVE, source = "", condition = "condition_EVENT_ANY_MONSTER_LIVE_1005", action = "action_EVENT_ANY_MONSTER_LIVE_1005" },
	{ config_id = 1001010, name = "SELECT_OPTION_1010", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_1010", action = "action_EVENT_SELECT_OPTION_1010" },
	{ config_id = 1001011, name = "ANY_MONSTER_DIE_1011", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_1011", action = "action_EVENT_ANY_MONSTER_DIE_1011" },
	{ config_id = 1001013, name = "ANY_MONSTER_DIE_1013", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_1013", action = "action_EVENT_ANY_MONSTER_DIE_1013" },
	{ config_id = 1001014, name = "ANY_MONSTER_DIE_1014", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_1014", action = "action_EVENT_ANY_MONSTER_DIE_1014" },
	{ config_id = 1001015, name = "ANY_MONSTER_DIE_1015", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "", action = "action_EVENT_ANY_MONSTER_DIE_1015", trigger_count = 0 },
	{ config_id = 1001016, name = "VARIABLE_CHANGE_1016", event = EventType.EVENT_VARIABLE_CHANGE, source = "monster_count", condition = "condition_EVENT_VARIABLE_CHANGE_1016", action = "action_EVENT_VARIABLE_CHANGE_1016", trigger_count = 0 }
}

-- 点位
points = {
	{ config_id = 1017, pos = { x = 0.191, y = 0.000, z = 17.427 }, rot = { x = 0.000, y = 180.000, z = 0.000 } },
	{ config_id = 1018, pos = { x = 0.191, y = 0.000, z = 23.304 }, rot = { x = 0.000, y = 180.000, z = 0.000 } },
	{ config_id = 1019, pos = { x = 3.104, y = 0.000, z = 20.332 }, rot = { x = 0.000, y = 180.000, z = 0.000 } },
	{ config_id = 1020, pos = { x = -2.720, y = 0.000, z = 20.332 }, rot = { x = 0.000, y = 180.000, z = 0.000 } }
}

-- 变量
variables = {
	{ config_id = 1, name = "GALLERY_STATE", value = 0, no_refresh = false },
	{ config_id = 2, name = "monster_wave", value = 0, no_refresh = false },
	{ config_id = 3, name = "monster_count", value = 0, no_refresh = false }
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
		gadgets = { 1001, 1002, 1003, 1004, 1009 },
		regions = { 1024 },
		triggers = { "SELECT_OPTION_1010", "ANY_MONSTER_DIE_1015", "VARIABLE_CHANGE_1016" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 1007, 1008, 1012, 1022, 1023, 1031 },
		gadgets = { 1002 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_1011" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { 1006, 1021 },
		gadgets = { 1002 },
		regions = { },
		triggers = { "ANY_MONSTER_LIVE_1005", "ANY_MONSTER_DIE_1013" },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = ,
		monsters = { },
		gadgets = { 1002 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_1014" },
		rand_weight = 100
	},
	{
		-- suite_id = 5,
		-- description = ,
		monsters = { },
		gadgets = { 1002 },
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
function condition_EVENT_ANY_MONSTER_LIVE_1005(context, evt)
	if 1006 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_LIVE_1005(context, evt)
	-- 将本组内变量名为 "GALLERY_STATE" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "GALLERY_STATE", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 针对当前group内变量名为 "monster_wave" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "monster_wave", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_1010(context, evt)
	-- 判断是gadgetid 1003 option_id 175
	if 1003 ~= evt.param1 then
		return false	
	end
	
	if 175 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_1010(context, evt)
	-- 将configid为 1003 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 1003, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 删除指定group： 240058001 ；指定config：1003；物件身上指定option：175；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 240058001, 1003, 175) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 240058001, 3)
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_1011(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	-- 判断变量"monster_wave"为1
	if ScriptLib.GetGroupVariableValue(context, "monster_wave") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_1011(context, evt)
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 240058001, 3)
	
	-- 针对当前group内变量名为 "monster_wave" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "monster_wave", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_1013(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	-- 判断变量"monster_wave"为2
	if ScriptLib.GetGroupVariableValue(context, "monster_wave") ~= 2 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_1013(context, evt)
	-- 针对当前group内变量名为 "monster_wave" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "monster_wave", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_1014(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	-- 判断变量"monster_wave"为3
	if ScriptLib.GetGroupVariableValue(context, "monster_wave") ~= 3 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_1014(context, evt)
	-- 针对当前group内变量名为 "monster_wave" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "monster_wave", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_1015(context, evt)
	-- 针对当前group内变量名为 "monster_count" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "monster_count", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_1016(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"monster_count"为2
	if ScriptLib.GetGroupVariableValue(context, "monster_count") ~= 2 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_1016(context, evt)
	-- 将本组内变量名为 "GALLERY_STATE" 的变量设置为 2
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "GALLERY_STATE", 2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

require "V3_2/HypostasisChallenge"