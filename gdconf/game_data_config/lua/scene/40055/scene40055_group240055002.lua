-- 基础信息
local base_info = {
	group_id = 240055002
}

-- DEFS_MISCS
local defs = {
        worktop_id = 2007,  --操作台gadget的id
        gallery_id = 29016,  --对应gallery的id
        battle_region_id = 2048, --td region的id
        recovergadget_id = 2009,   --恢复gadget的id
        cleaner_id = 2005,  --local gadget（能量球）清理gadget的id
        trans_p1 = 2017,  --P1玩家传送点
        trans_p2 = 2018,  --P2玩家传送点
        trans_p3 = 2019,  --P3玩家传送点
        trans_p4 = 2020,  --P4玩家传送点  
        monster_num = 4,  --刷怪总数量
        is_first_group = false,   --是否是第一个group  
        next_group_id = 240055003  --下一个group的id，最后一个group不需要这条
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	[2001] = { config_id = 2001, monster_id = 21011401, pos = { x = -4.897, y = 0.081, z = -2.182 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, disableWander = true },
	[2002] = { config_id = 2002, monster_id = 21020101, pos = { x = 0.924, y = 0.081, z = -3.470 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, disableWander = true },
	[2003] = { config_id = 2003, monster_id = 21020401, pos = { x = -10.734, y = 0.084, z = 6.781 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1, disableWander = true },
	[2004] = { config_id = 2004, monster_id = 21010902, pos = { x = -7.906, y = 0.082, z = 3.878 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1, disableWander = true },
	[2021] = { config_id = 2021, monster_id = 21011302, pos = { x = 0.889, y = 0.082, z = -4.980 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, disableWander = true },
	[2022] = { config_id = 2022, monster_id = 21011401, pos = { x = 6.711, y = 0.082, z = -2.129 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, disableWander = true },
	[2023] = { config_id = 2023, monster_id = 21011302, pos = { x = 5.265, y = 0.084, z = -6.297 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, disableWander = true },
	[2024] = { config_id = 2024, monster_id = 21011401, pos = { x = 0.932, y = 0.080, z = -2.184 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, disableWander = true },
	[2025] = { config_id = 2025, monster_id = 21011302, pos = { x = -3.298, y = 0.084, z = -6.550 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, disableWander = true },
	[2026] = { config_id = 2026, monster_id = 21030501, pos = { x = -7.845, y = 0.082, z = 6.741 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1, disableWander = true },
	[2027] = { config_id = 2027, monster_id = 21010502, pos = { x = -7.753, y = 0.083, z = 9.714 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1, disableWander = true },
	[2028] = { config_id = 2028, monster_id = 21011002, pos = { x = 9.650, y = 0.082, z = 3.878 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, level = 1, disableWander = true },
	[2029] = { config_id = 2029, monster_id = 21030501, pos = { x = 9.710, y = 0.082, z = 6.741 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, level = 1, disableWander = true },
	[2030] = { config_id = 2030, monster_id = 21010502, pos = { x = 9.803, y = 0.083, z = 9.714 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, level = 1, disableWander = true },
	[2031] = { config_id = 2031, monster_id = 21011002, pos = { x = -4.897, y = 0.085, z = 15.394 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 1, disableWander = true },
	[2032] = { config_id = 2032, monster_id = 21010502, pos = { x = 6.711, y = 0.085, z = 15.447 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 1, disableWander = true },
	[2033] = { config_id = 2033, monster_id = 21030501, pos = { x = 0.932, y = 0.084, z = 15.392 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 1, disableWander = true },
	[2034] = { config_id = 2034, monster_id = 21020601, pos = { x = 5.221, y = 0.082, z = -3.425 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, disableWander = true },
	[2035] = { config_id = 2035, monster_id = 21020601, pos = { x = -3.498, y = 0.082, z = -3.473 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, disableWander = true },
	[2036] = { config_id = 2036, monster_id = 21020101, pos = { x = 0.916, y = 0.084, z = -7.684 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, disableWander = true },
	[2037] = { config_id = 2037, monster_id = 21020101, pos = { x = 6.797, y = 0.085, z = -7.684 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, disableWander = true },
	[2038] = { config_id = 2038, monster_id = 21020601, pos = { x = -4.933, y = 0.085, z = -7.684 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, disableWander = true },
	[2039] = { config_id = 2039, monster_id = 22010202, pos = { x = 12.517, y = 0.085, z = 6.711 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, level = 1, disableWander = true }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	[2005] = { config_id = 2005, gadget_id = 44000456, pos = { x = -0.131, y = 0.074, z = 0.290 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	[2006] = { config_id = 2006, gadget_id = 70900205, pos = { x = 1.941, y = -0.461, z = -1.168 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	[2007] = { config_id = 2007, gadget_id = 70360367, pos = { x = 0.116, y = 0.000, z = 8.749 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, worktop_config = { init_options = { 175 } } },
	[2008] = { config_id = 2008, gadget_id = 70950042, pos = { x = 0.000, y = 0.000, z = 0.000 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	[2009] = { config_id = 2009, gadget_id = 44000006, pos = { x = 0.035, y = 0.074, z = 20.225 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	[2042] = { config_id = 2042, gadget_id = 70350463, pos = { x = 0.000, y = 0.239, z = 0.000 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.GearStop },
	[2043] = { config_id = 2043, gadget_id = 70310017, pos = { x = -14.307, y = 0.085, z = 14.539 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	[2044] = { config_id = 2044, gadget_id = 70310017, pos = { x = 14.743, y = 0.085, z = 14.549 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	[2045] = { config_id = 2045, gadget_id = 70310029, pos = { x = 0.000, y = 0.239, z = 0.000 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.GearStop },
	[2046] = { config_id = 2046, gadget_id = 70310017, pos = { x = 14.787, y = 0.085, z = -14.550 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	[2047] = { config_id = 2047, gadget_id = 70310017, pos = { x = -14.353, y = 0.085, z = -14.574 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 }
}

-- 区域
regions = {
	[2048] = { config_id = 2048, shape = RegionShape.SPHERE, radius = 35, pos = { x = 0.190, y = 0.073, z = -0.124 } }
}

-- 触发器
triggers = {
	{ config_id = 1002010, name = "ANY_MONSTER_LIVE_2010", event = EventType.EVENT_ANY_MONSTER_LIVE, source = "", condition = "condition_EVENT_ANY_MONSTER_LIVE_2010", action = "action_EVENT_ANY_MONSTER_LIVE_2010" },
	{ config_id = 1002011, name = "SELECT_OPTION_2011", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_2011", action = "action_EVENT_SELECT_OPTION_2011" },
	{ config_id = 1002012, name = "ANY_MONSTER_DIE_2012", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_2012", action = "action_EVENT_ANY_MONSTER_DIE_2012" },
	{ config_id = 1002013, name = "ANY_MONSTER_DIE_2013", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_2013", action = "action_EVENT_ANY_MONSTER_DIE_2013" },
	{ config_id = 1002014, name = "ANY_MONSTER_DIE_2014", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_2014", action = "action_EVENT_ANY_MONSTER_DIE_2014" },
	{ config_id = 1002015, name = "VARIABLE_CHANGE_2015", event = EventType.EVENT_VARIABLE_CHANGE, source = "monster_count", condition = "condition_EVENT_VARIABLE_CHANGE_2015", action = "action_EVENT_VARIABLE_CHANGE_2015", trigger_count = 0 },
	{ config_id = 1002016, name = "ANY_MONSTER_DIE_2016", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "", action = "action_EVENT_ANY_MONSTER_DIE_2016", trigger_count = 0 },
	{ config_id = 1002040, name = "MONSTER_TIDE_DIE_2040", event = EventType.EVENT_MONSTER_TIDE_DIE, source = "1", condition = "condition_EVENT_MONSTER_TIDE_DIE_2040", action = "action_EVENT_MONSTER_TIDE_DIE_2040", trigger_count = 0 },
	{ config_id = 1002041, name = "MONSTER_TIDE_DIE_2041", event = EventType.EVENT_MONSTER_TIDE_DIE, source = "3", condition = "condition_EVENT_MONSTER_TIDE_DIE_2041", action = "action_EVENT_MONSTER_TIDE_DIE_2041", trigger_count = 0 }
}

-- 点位
points = {
	{ config_id = 2017, pos = { x = 0.191, y = 0.000, z = 17.427 }, rot = { x = 0.000, y = 180.000, z = 0.000 } },
	{ config_id = 2018, pos = { x = 0.191, y = 0.000, z = 23.304 }, rot = { x = 0.000, y = 180.000, z = 0.000 } },
	{ config_id = 2019, pos = { x = 3.104, y = 0.000, z = 20.332 }, rot = { x = 0.000, y = 180.000, z = 0.000 } },
	{ config_id = 2020, pos = { x = -2.720, y = 0.000, z = 20.332 }, rot = { x = 0.000, y = 180.000, z = 0.000 } }
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
		gadgets = { 2006 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 2005, 2006, 2007, 2008, 2009, 2042, 2043, 2044, 2045, 2046, 2047 },
		regions = { 2048 },
		triggers = { "ANY_MONSTER_LIVE_2010", "SELECT_OPTION_2011", "VARIABLE_CHANGE_2015", "ANY_MONSTER_DIE_2016", "MONSTER_TIDE_DIE_2040", "MONSTER_TIDE_DIE_2041" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { 2001, 2021, 2022, 2023, 2024, 2025 },
		gadgets = { 2006 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_2012" },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = ,
		monsters = { 2004, 2026, 2027, 2028, 2029, 2030, 2031, 2032, 2033 },
		gadgets = { 2006 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_2013" },
		rand_weight = 100
	},
	{
		-- suite_id = 5,
		-- description = ,
		monsters = { 2002, 2034, 2035, 2036, 2037, 2038 },
		gadgets = { 2006 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_2014" },
		rand_weight = 100
	},
	{
		-- suite_id = 6,
		-- description = ,
		monsters = { 2003, 2039 },
		gadgets = { 2006 },
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
function condition_EVENT_ANY_MONSTER_LIVE_2010(context, evt)
	if 2034 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_LIVE_2010(context, evt)
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
function condition_EVENT_SELECT_OPTION_2011(context, evt)
	-- 判断是gadgetid 2007 option_id 175
	if 2007 ~= evt.param1 then
		return false	
	end
	
	if 175 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_2011(context, evt)
	-- 将configid为 2007 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 2007, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 2042 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 2042, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 240055002, EntityType.GADGET, 2045 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
	-- 删除指定group： 240055002 ；指定config：2007；物件身上指定option：175；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 240055002, 2007, 175) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	-- 创建编号为3（该怪物潮的识别id)的怪物潮，创建怪物总数为2，场上怪物最少1只，最多2只
	if 0 ~= ScriptLib.AutoMonsterTide(context, 3, 240055002, {2034,2035}, 2, 1, 2) then
		return -1
	end
	
	-- 将configid为 2043 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 2043, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 2044 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 2044, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 2046 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 2046, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 2047 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 2047, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_2012(context, evt)
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
function action_EVENT_ANY_MONSTER_DIE_2012(context, evt)
	-- 针对当前group内变量名为 "monster_wave" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "monster_wave", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_2013(context, evt)
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
function action_EVENT_ANY_MONSTER_DIE_2013(context, evt)
	-- 针对当前group内变量名为 "monster_wave" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "monster_wave", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_2014(context, evt)
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
function action_EVENT_ANY_MONSTER_DIE_2014(context, evt)
	-- 针对当前group内变量名为 "monster_wave" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "monster_wave", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_2015(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"monster_count"为4
	if ScriptLib.GetGroupVariableValue(context, "monster_count") ~= 4 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_2015(context, evt)
	-- 将configid为 2042 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 2042, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将本组内变量名为 "GALLERY_STATE" 的变量设置为 2
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "GALLERY_STATE", 2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_2016(context, evt)
	-- 针对当前group内变量名为 "monster_count" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "monster_count", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_MONSTER_TIDE_DIE_2040(context, evt)
	if 6 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_MONSTER_TIDE_DIE_2040(context, evt)
	-- 创建编号为3（该怪物潮的识别id)的怪物潮，创建怪物总数为6，场上怪物最少3只，最多3只
	if 0 ~= ScriptLib.AutoMonsterTide(context, 3, 240055002, {2002,2034,2035,2036,2037,2038}, 6, 3, 3) then
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_MONSTER_TIDE_DIE_2041(context, evt)
	if 2 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_MONSTER_TIDE_DIE_2041(context, evt)
	-- 添加suite6的新内容
	    ScriptLib.AddExtraGroupSuite(context, 240055002, 6)
	
	return 0
end

require "V3_2/HypostasisChallenge"