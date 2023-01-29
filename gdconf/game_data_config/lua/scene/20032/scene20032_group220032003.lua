-- 基础信息
local base_info = {
	group_id = 220032003
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 3006, monster_id = 21010501, pos = { x = 492.630, y = -23.089, z = 110.763 }, rot = { x = 0.000, y = 3.679, z = 0.000 }, level = 1, disableWander = true, pose_id = 9003 },
	{ config_id = 3007, monster_id = 21010901, pos = { x = 494.418, y = -23.083, z = 111.889 }, rot = { x = 0.000, y = 283.216, z = 0.000 }, level = 1, disableWander = true, isElite = true, pose_id = 9003 },
	{ config_id = 3009, monster_id = 21020201, pos = { x = 493.778, y = -23.074, z = 131.968 }, rot = { x = 349.691, y = 215.397, z = 356.318 }, level = 1, disableWander = true, pose_id = 401 },
	{ config_id = 3010, monster_id = 21010201, pos = { x = 489.489, y = -23.651, z = 126.419 }, rot = { x = 359.813, y = 261.436, z = 8.734 }, level = 1 },
	{ config_id = 3017, monster_id = 21010301, pos = { x = 484.030, y = -23.540, z = 116.565 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 3001, gadget_id = 70360002, pos = { x = 448.237, y = -9.218, z = 130.429 }, rot = { x = 357.529, y = 225.356, z = 2.602 }, level = 1, state = GadgetState.GearStop },
	{ config_id = 3002, gadget_id = 70350002, pos = { x = 463.506, y = -9.360, z = 120.913 }, rot = { x = 0.000, y = 90.483, z = 0.000 }, level = 1 },
	{ config_id = 3003, gadget_id = 70350002, pos = { x = 500.247, y = -23.290, z = 121.570 }, rot = { x = 359.514, y = 91.399, z = 0.255 }, level = 1 },
	{ config_id = 3011, gadget_id = 70310001, pos = { x = 492.574, y = -23.084, z = 130.267 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 3012, gadget_id = 70310004, pos = { x = 492.813, y = -23.084, z = 112.400 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 3013, gadget_id = 70220026, pos = { x = 400.275, y = -23.434, z = 144.666 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 3014, gadget_id = 70900201, pos = { x = 489.330, y = -23.541, z = 121.525 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 3015, gadget_id = 70900201, pos = { x = 533.073, y = -2.150, z = 218.112 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 3016, gadget_id = 70220026, pos = { x = 398.986, y = -23.434, z = 144.323 }, rot = { x = 0.000, y = 332.337, z = 0.000 }, level = 1 },
	{ config_id = 3018, gadget_id = 70220013, pos = { x = 459.467, y = -9.272, z = 133.332 }, rot = { x = 0.000, y = 263.622, z = 0.000 }, level = 1 },
	{ config_id = 3019, gadget_id = 70220013, pos = { x = 458.874, y = -9.195, z = 131.091 }, rot = { x = 0.000, y = 235.071, z = 0.000 }, level = 1 },
	{ config_id = 3020, gadget_id = 70220026, pos = { x = 458.134, y = -9.332, z = 129.326 }, rot = { x = 0.000, y = 297.635, z = 0.000 }, level = 1 },
	{ config_id = 3021, gadget_id = 70220026, pos = { x = 457.763, y = -9.294, z = 134.329 }, rot = { x = 0.000, y = 240.278, z = 0.000 }, level = 1 },
	{ config_id = 3024, gadget_id = 70220013, pos = { x = 475.354, y = -23.133, z = 107.457 }, rot = { x = 0.000, y = 36.219, z = 0.000 }, level = 1 },
	{ config_id = 3025, gadget_id = 70220013, pos = { x = 475.994, y = -23.134, z = 109.625 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 3026, gadget_id = 70220026, pos = { x = 477.158, y = -23.133, z = 107.956 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 3027, gadget_id = 70220026, pos = { x = 496.945, y = -23.084, z = 110.382 }, rot = { x = 0.000, y = 344.720, z = 0.000 }, level = 1 },
	{ config_id = 3028, gadget_id = 70220005, pos = { x = 496.595, y = -23.083, z = 112.798 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 3029, gadget_id = 70220026, pos = { x = 494.506, y = -23.133, z = 107.712 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 3030, gadget_id = 70220014, pos = { x = 497.052, y = -23.083, z = 111.646 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 3031, gadget_id = 70220013, pos = { x = 495.998, y = -23.084, z = 108.911 }, rot = { x = 0.000, y = 16.122, z = 0.000 }, level = 1 },
	{ config_id = 3032, gadget_id = 70220017, pos = { x = 475.986, y = -23.133, z = 133.004 }, rot = { x = 0.000, y = 347.059, z = 0.000 }, level = 1 },
	{ config_id = 3034, gadget_id = 70220014, pos = { x = 475.558, y = -23.134, z = 135.223 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 3035, gadget_id = 70220014, pos = { x = 474.698, y = -22.877, z = 132.636 }, rot = { x = 273.650, y = 0.110, z = 345.391 }, level = 1 },
	{ config_id = 3036, gadget_id = 70220025, pos = { x = 457.760, y = -9.270, z = 134.321 }, rot = { x = 271.274, y = 100.730, z = 255.600 }, level = 1 },
	{ config_id = 3037, gadget_id = 70220025, pos = { x = 457.786, y = -9.242, z = 132.644 }, rot = { x = 271.275, y = 188.026, z = 255.600 }, level = 1 },
	{ config_id = 3038, gadget_id = 70220025, pos = { x = 493.310, y = -23.016, z = 132.535 }, rot = { x = 271.276, y = 284.403, z = 255.601 }, level = 1 },
	{ config_id = 3039, gadget_id = 70220025, pos = { x = 494.567, y = -22.989, z = 131.469 }, rot = { x = 271.276, y = 284.403, z = 255.601 }, level = 1 },
	{ config_id = 3040, gadget_id = 70220025, pos = { x = 494.731, y = -23.003, z = 111.893 }, rot = { x = 271.276, y = 284.403, z = 255.601 }, level = 1 },
	{ config_id = 3041, gadget_id = 70220025, pos = { x = 492.923, y = -23.031, z = 110.395 }, rot = { x = 271.276, y = 284.403, z = 255.601 }, level = 1 },
	{ config_id = 3042, gadget_id = 70220025, pos = { x = 494.496, y = -22.994, z = 110.090 }, rot = { x = 271.276, y = 284.403, z = 255.601 }, level = 1 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1003004, name = "GADGET_STATE_CHANGE_3004", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_3004", action = "action_EVENT_GADGET_STATE_CHANGE_3004" },
	{ config_id = 1003005, name = "SELECT_OPTION_3005", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_3005", action = "action_EVENT_SELECT_OPTION_3005" },
	{ config_id = 1003008, name = "ANY_MONSTER_DIE_3008", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_3008", action = "action_EVENT_ANY_MONSTER_DIE_3008" },
	{ config_id = 1003023, name = "SELECT_OPTION_3023", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_3023", action = "action_EVENT_SELECT_OPTION_3023" }
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
		monsters = { 3006, 3007, 3009, 3010, 3017 },
		gadgets = { 3001, 3002, 3003, 3011, 3012, 3013, 3016, 3018, 3019, 3020, 3021, 3024, 3025, 3026, 3027, 3028, 3029, 3030, 3031, 3032, 3034, 3035, 3036, 3037, 3038, 3039, 3040, 3041, 3042 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_3004", "SELECT_OPTION_3005", "ANY_MONSTER_DIE_3008", "SELECT_OPTION_3023" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_3004(context, evt)
	if 3001 ~= evt.param2 or GadgetState.ChestOpened ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_3004(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptions(context, {1}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_work_options")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_3005(context, evt)
	-- 判断是gadgetid 3001 option_id 1
	if 3001 ~= evt.param1 then
		return false	
	end
	
	if 1 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_3005(context, evt)
	-- 将configid为 3001 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 3001, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 3002 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 3002, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 改变指定group组220032002中， configid为2004的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 220032002, 2004, GadgetState.Default) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 创建id为3014的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 3014 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 将configid为 3011 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 3011, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_3008(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_3008(context, evt)
	-- 将configid为 3003 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 3003, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
		-- 杀死Group内指定的monster和gadget
		if 0 ~= ScriptLib.KillGroupEntity(context, { group_id = 220032003, monsters = {}, gadgets = {3014} }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_monsters_and_gadgets_by_group")
			return -1
		end
	
	-- 创建id为3015的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 3015 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 添加suite1的新内容
	    ScriptLib.AddExtraGroupSuite(context, 220032004, 1)
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_3023(context, evt)
	-- 判断是gadgetid 3001 option_id 1
	if 3001 ~= evt.param1 then
		return false	
	end
	
	if 1 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_3023(context, evt)
	-- 将configid为 3012 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 3012, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 删除指定group： 220032003 ；指定config：3001；物件身上指定option：1；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 220032003, 3001, 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
		-- 杀死Group内指定的monster和gadget
		if 0 ~= ScriptLib.KillGroupEntity(context, { group_id = 220032002, monsters = {}, gadgets = {2006} }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_monsters_and_gadgets_by_group")
			return -1
		end
	
	return 0
end