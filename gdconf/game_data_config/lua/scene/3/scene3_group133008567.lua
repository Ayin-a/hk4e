-- 基础信息
local base_info = {
	group_id = 133008567
}

-- Trigger变量
local defs = {
	duration = 90,
	group_id = 133008567
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 567001, gadget_id = 70211145, pos = { x = 1049.483, y = 342.041, z = -498.345 }, rot = { x = 356.870, y = 342.151, z = 353.414 }, level = 26, drop_tag = "雪山玉髓高级蒙德", isOneoff = true, persistent = true, explore = { name = "chest", exp = 4 }, area_id = 10 },
	{ config_id = 567002, gadget_id = 70350093, pos = { x = 1051.940, y = 341.537, z = -496.460 }, rot = { x = 358.189, y = 0.093, z = 354.114 }, level = 30, persistent = true, area_id = 10 },
	{ config_id = 567003, gadget_id = 70360001, pos = { x = 1051.940, y = 342.502, z = -496.466 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, persistent = true, area_id = 10 },
	{ config_id = 567004, gadget_id = 70360094, pos = { x = 1055.864, y = 341.030, z = -496.997 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 10 },
	{ config_id = 567005, gadget_id = 70360094, pos = { x = 1067.896, y = 329.063, z = -495.063 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 10 },
	{ config_id = 567006, gadget_id = 70360094, pos = { x = 1080.917, y = 321.681, z = -488.707 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 10 },
	{ config_id = 567007, gadget_id = 70360094, pos = { x = 1097.564, y = 320.774, z = -474.450 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 10 },
	{ config_id = 567008, gadget_id = 70360094, pos = { x = 1112.168, y = 317.908, z = -448.943 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 10 },
	{ config_id = 567009, gadget_id = 70360094, pos = { x = 1108.145, y = 303.716, z = -420.863 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 10 },
	{ config_id = 567010, gadget_id = 70360094, pos = { x = 1075.624, y = 295.556, z = -408.745 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 10 },
	{ config_id = 567011, gadget_id = 70360094, pos = { x = 1061.766, y = 318.859, z = -408.989 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 10 },
	{ config_id = 567018, gadget_id = 70690017, pos = { x = 1097.372, y = 306.098, z = -474.616 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 10 },
	{ config_id = 567019, gadget_id = 70360094, pos = { x = 1037.750, y = 333.788, z = -423.484 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 10 },
	{ config_id = 567020, gadget_id = 70360094, pos = { x = 1037.569, y = 338.063, z = -423.712 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 10 },
	{ config_id = 567021, gadget_id = 70360094, pos = { x = 1038.756, y = 344.851, z = -448.062 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 10 },
	{ config_id = 567022, gadget_id = 70360094, pos = { x = 1044.368, y = 341.344, z = -483.556 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 10 },
	{ config_id = 567023, gadget_id = 70690001, pos = { x = 1101.611, y = 319.472, z = -468.305 }, rot = { x = 0.000, y = 23.575, z = 0.000 }, level = 30, area_id = 10 },
	{ config_id = 567024, gadget_id = 70690001, pos = { x = 1105.182, y = 317.459, z = -461.654 }, rot = { x = 0.000, y = 30.076, z = 0.000 }, level = 30, area_id = 10 },
	{ config_id = 567025, gadget_id = 70690017, pos = { x = 1113.478, y = 293.562, z = -437.330 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 10 },
	{ config_id = 567026, gadget_id = 70690001, pos = { x = 1103.830, y = 303.044, z = -419.103 }, rot = { x = 0.000, y = 290.935, z = 0.000 }, level = 30, area_id = 10 },
	{ config_id = 567027, gadget_id = 70690001, pos = { x = 1089.669, y = 301.438, z = -414.145 }, rot = { x = 0.000, y = 292.685, z = 0.000 }, level = 30, area_id = 10 },
	{ config_id = 567028, gadget_id = 70690017, pos = { x = 1075.370, y = 293.361, z = -408.640 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 10 },
	{ config_id = 567029, gadget_id = 70690017, pos = { x = 1061.527, y = 305.931, z = -409.616 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 10 },
	{ config_id = 567030, gadget_id = 70690001, pos = { x = 1059.497, y = 319.431, z = -410.426 }, rot = { x = 335.799, y = 241.677, z = 4.170 }, level = 30, area_id = 10 },
	{ config_id = 567031, gadget_id = 70690017, pos = { x = 1037.652, y = 323.700, z = -423.887 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 10 },
	{ config_id = 567032, gadget_id = 70690001, pos = { x = 1037.896, y = 336.603, z = -432.360 }, rot = { x = 330.176, y = 168.858, z = 281.105 }, level = 30, area_id = 10 },
	{ config_id = 567033, gadget_id = 70690001, pos = { x = 1038.273, y = 339.882, z = -438.986 }, rot = { x = 330.176, y = 168.858, z = 189.027 }, level = 30, area_id = 10 },
	{ config_id = 567034, gadget_id = 70310022, pos = { x = 1045.219, y = 343.033, z = -500.051 }, rot = { x = 2.645, y = 359.774, z = 350.247 }, level = 30, area_id = 10 },
	{ config_id = 567035, gadget_id = 70310022, pos = { x = 1065.381, y = 296.047, z = -406.854 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, state = GadgetState.GearStart, area_id = 10 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1567012, name = "CHALLENGE_SUCCESS_567012", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "666", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_567012" },
	{ config_id = 1567013, name = "CHALLENGE_FAIL_567013", event = EventType.EVENT_CHALLENGE_FAIL, source = "666", condition = "", action = "action_EVENT_CHALLENGE_FAIL_567013", trigger_count = 0 },
	{ config_id = 1567014, name = "GADGET_STATE_CHANGE_567014", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_567014", action = "action_EVENT_GADGET_STATE_CHANGE_567014", trigger_count = 0 },
	{ config_id = 1567015, name = "ANY_GADGET_DIE_567015", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "", action = "", trigger_count = 0, tag = "218" },
	{ config_id = 1567016, name = "GADGET_CREATE_567016", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_567016", action = "action_EVENT_GADGET_CREATE_567016", trigger_count = 0 },
	{ config_id = 1567017, name = "SELECT_OPTION_567017", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_567017", action = "action_EVENT_SELECT_OPTION_567017", trigger_count = 0 }
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
	end_suite = 3,
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
		-- description = suite_1,
		monsters = { },
		gadgets = { 567002, 567003, 567034 },
		regions = { },
		triggers = { "CHALLENGE_SUCCESS_567012", "CHALLENGE_FAIL_567013", "GADGET_STATE_CHANGE_567014", "ANY_GADGET_DIE_567015", "GADGET_CREATE_567016", "SELECT_OPTION_567017" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { },
		gadgets = { 567004, 567005, 567006, 567007, 567008, 567009, 567010, 567011, 567018, 567019, 567020, 567021, 567022, 567023, 567024, 567025, 567026, 567027, 567028, 567029, 567030, 567031, 567032, 567033, 567035 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 567002 },
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
function action_EVENT_CHALLENGE_SUCCESS_567012(context, evt)
	-- 将configid为 567002 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 567002, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133008567, 2)
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 3002, 3, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	-- group调整group进度,只对非randSuite有效
	if 0 ~= ScriptLib.GoToGroupSuite(context, 133008567, 3) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : goto_groupSuite")
		return -1
	end
	
	-- 创建id为567001的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 567001 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_FAIL_567013(context, evt)
	-- 将configid为 567002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 567002, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 创建id为567003的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 567003 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133008567, 2)
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 3002, 4, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_567014(context, evt)
	if 567002 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_567014(context, evt)
	-- 202号挑战,duration内开启宝箱
	if 0 ~= ScriptLib.ActiveChallenge(context, 666, 218, defs.duration, 2, 218, 12) then
	return -1
	end
	
	-- 添加suite2的新内容
	ScriptLib.AddExtraGroupSuite(context, defs.group_id, 2)
	
	-- 运营数据埋点，匹配LD定义的规则使用
	if 0 ~= ScriptLib.MarkPlayerAction(context, 3002, 1, 1) then
	return -1
	end
	
	return 0
	
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_567016(context, evt)
	if 567003 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_567016(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133008567, 567003, {177}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_567017(context, evt)
	-- 判断是gadgetid 567003 option_id 177
	if 567003 ~= evt.param1 then
		return false	
	end
	
	if 177 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_567017(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 567003 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	-- 将configid为 567002 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 567002, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end