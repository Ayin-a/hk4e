-- 基础信息
local base_info = {
	group_id = 199004187
}

-- Trigger变量
local defs = {
	duration = 90,
	group_id = 199004187
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
	{ config_id = 187001, gadget_id = 70211111, pos = { x = -328.620, y = 232.191, z = -659.379 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 16, drop_tag = "解谜中级群岛", isOneoff = true, persistent = true, vision_level = VisionLevelType.VISION_LEVEL_REMOTE, explore = { name = "chest", exp = 1 }, area_id = 400 },
	{ config_id = 187002, gadget_id = 70350083, pos = { x = -449.187, y = 119.882, z = -585.548 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, persistent = true, area_id = 400 },
	{ config_id = 187003, gadget_id = 70360001, pos = { x = -449.187, y = 120.847, z = -585.554 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, persistent = true, area_id = 400 },
	{ config_id = 187004, gadget_id = 70360046, pos = { x = -431.112, y = 161.680, z = -576.046 }, rot = { x = 0.000, y = 72.351, z = 0.000 }, level = 20, area_id = 400 },
	{ config_id = 187012, gadget_id = 70360046, pos = { x = -323.205, y = 193.558, z = -611.312 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, area_id = 400 },
	{ config_id = 187013, gadget_id = 70360046, pos = { x = -322.518, y = 194.816, z = -619.752 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, area_id = 400 },
	{ config_id = 187014, gadget_id = 70360046, pos = { x = -322.518, y = 195.100, z = -628.631 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, area_id = 400 },
	{ config_id = 187015, gadget_id = 70360046, pos = { x = -411.747, y = 161.680, z = -571.688 }, rot = { x = 0.000, y = 72.351, z = 0.000 }, level = 20, area_id = 400 },
	{ config_id = 187016, gadget_id = 70690010, pos = { x = -448.920, y = 107.503, z = -584.460 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, area_id = 400 },
	{ config_id = 187017, gadget_id = 70360046, pos = { x = -421.551, y = 161.680, z = -573.747 }, rot = { x = 0.000, y = 72.351, z = 0.000 }, level = 20, area_id = 400 },
	{ config_id = 187024, gadget_id = 70350292, pos = { x = -321.407, y = 192.100, z = -648.722 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, state = GadgetState.GearStart, area_id = 400 },
	{ config_id = 187025, gadget_id = 70900380, pos = { x = -314.329, y = 200.299, z = -648.094 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, area_id = 400 },
	{ config_id = 187027, gadget_id = 70900380, pos = { x = -314.972, y = 211.453, z = -648.771 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, area_id = 400 },
	{ config_id = 187029, gadget_id = 70900380, pos = { x = -312.538, y = 225.317, z = -648.437 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, area_id = 400 },
	{ config_id = 187031, gadget_id = 70900380, pos = { x = -323.859, y = 235.082, z = -651.378 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, area_id = 400 },
	{ config_id = 187032, gadget_id = 70690011, pos = { x = -411.802, y = 160.547, z = -572.212 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, area_id = 400 },
	{ config_id = 187038, gadget_id = 70690011, pos = { x = -331.115, y = 174.047, z = -602.387 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, area_id = 400 },
	{ config_id = 187040, gadget_id = 70690001, pos = { x = -390.075, y = 183.857, z = -577.322 }, rot = { x = 348.155, y = 100.954, z = 350.000 }, level = 20, area_id = 400 },
	{ config_id = 187041, gadget_id = 70690001, pos = { x = -380.360, y = 185.302, z = -579.202 }, rot = { x = 343.984, y = 100.954, z = 0.000 }, level = 20, area_id = 400 },
	{ config_id = 187042, gadget_id = 70690001, pos = { x = -370.645, y = 186.746, z = -581.083 }, rot = { x = 351.694, y = 100.954, z = 0.000 }, level = 20, area_id = 400 },
	{ config_id = 187043, gadget_id = 70690001, pos = { x = -360.930, y = 188.191, z = -582.963 }, rot = { x = 343.502, y = 100.954, z = 0.000 }, level = 20, area_id = 400 },
	{ config_id = 187044, gadget_id = 70690001, pos = { x = -351.215, y = 189.636, z = -584.843 }, rot = { x = 351.694, y = 100.954, z = 0.000 }, level = 20, area_id = 400 },
	{ config_id = 187045, gadget_id = 70690001, pos = { x = -341.615, y = 191.063, z = -586.701 }, rot = { x = 347.862, y = 137.140, z = 351.258 }, level = 20, area_id = 400 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1187005, name = "CHALLENGE_SUCCESS_187005", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "666", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_187005", trigger_count = 0 },
	{ config_id = 1187006, name = "CHALLENGE_FAIL_187006", event = EventType.EVENT_CHALLENGE_FAIL, source = "666", condition = "", action = "action_EVENT_CHALLENGE_FAIL_187006", trigger_count = 0 },
	{ config_id = 1187007, name = "GADGET_STATE_CHANGE_187007", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_187007", action = "action_EVENT_GADGET_STATE_CHANGE_187007", trigger_count = 0 },
	{ config_id = 1187008, name = "GADGET_STATE_CHANGE_187008", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_187008", action = "", tag = "202" },
	{ config_id = 1187009, name = "GADGET_CREATE_187009", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_187009", action = "action_EVENT_GADGET_CREATE_187009", trigger_count = 0 },
	{ config_id = 1187010, name = "SELECT_OPTION_187010", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_187010", action = "action_EVENT_SELECT_OPTION_187010", trigger_count = 0 },
	-- 2.0rel加的保底，如果group在挑战中间被卸载了，需要在加载时加个保底置回初始状态
	{ config_id = 1187011, name = "GROUP_LOAD_187011", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_187011", trigger_count = 0 }
}

-- 变量
variables = {
}

-- 废弃数据
garbages = {
	gadgets = {
		{ config_id = 187018, gadget_id = 70690001, pos = { x = -377.025, y = 173.898, z = -567.687 }, rot = { x = 350.697, y = 95.347, z = 345.276 }, level = 20, area_id = 400 },
		{ config_id = 187019, gadget_id = 70690001, pos = { x = -385.853, y = 164.515, z = -568.741 }, rot = { x = 350.697, y = 95.347, z = 345.276 }, level = 20, area_id = 400 },
		{ config_id = 187020, gadget_id = 70690001, pos = { x = -361.058, y = 168.595, z = -571.061 }, rot = { x = 340.713, y = 122.962, z = 359.278 }, level = 20, area_id = 400 },
		{ config_id = 187021, gadget_id = 70690001, pos = { x = -346.697, y = 174.585, z = -580.374 }, rot = { x = 327.892, y = 137.219, z = 352.493 }, level = 20, area_id = 400 },
		{ config_id = 187022, gadget_id = 70690001, pos = { x = -336.919, y = 183.619, z = -590.940 }, rot = { x = 327.892, y = 137.219, z = 352.493 }, level = 20, area_id = 400 },
		{ config_id = 187023, gadget_id = 70690001, pos = { x = -328.364, y = 191.522, z = -600.185 }, rot = { x = 334.606, y = 166.049, z = 338.373 }, level = 20, area_id = 400 },
		{ config_id = 187026, gadget_id = 70900380, pos = { x = -306.663, y = 203.747, z = -648.094 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, area_id = 400 },
		{ config_id = 187028, gadget_id = 70900380, pos = { x = -307.005, y = 218.614, z = -647.885 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, area_id = 400 },
		{ config_id = 187030, gadget_id = 70900380, pos = { x = -318.815, y = 229.232, z = -648.754 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, area_id = 400 },
		{ config_id = 187033, gadget_id = 70690001, pos = { x = -380.498, y = 182.676, z = -562.192 }, rot = { x = 359.396, y = 129.277, z = 0.000 }, level = 20, area_id = 400 },
		{ config_id = 187034, gadget_id = 70690001, pos = { x = -371.209, y = 182.803, z = -569.789 }, rot = { x = 359.396, y = 129.277, z = 0.000 }, level = 20, area_id = 400 },
		{ config_id = 187035, gadget_id = 70690001, pos = { x = -361.921, y = 182.929, z = -577.385 }, rot = { x = 359.396, y = 129.277, z = 0.000 }, level = 20, area_id = 400 },
		{ config_id = 187036, gadget_id = 70690001, pos = { x = -352.632, y = 183.056, z = -584.981 }, rot = { x = 359.396, y = 129.277, z = 0.000 }, level = 20, area_id = 400 },
		{ config_id = 187037, gadget_id = 70690001, pos = { x = -343.344, y = 183.182, z = -592.578 }, rot = { x = 359.396, y = 129.277, z = 0.000 }, level = 20, area_id = 400 }
	}
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
		-- description = ,
		monsters = { },
		gadgets = { 187002, 187003 },
		regions = { },
		triggers = { "CHALLENGE_SUCCESS_187005", "CHALLENGE_FAIL_187006", "GADGET_STATE_CHANGE_187007", "GADGET_STATE_CHANGE_187008", "GADGET_CREATE_187009", "SELECT_OPTION_187010", "GROUP_LOAD_187011" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 187001, 187004, 187012, 187013, 187014, 187015, 187016, 187017, 187024, 187025, 187027, 187029, 187031, 187032, 187038, 187040, 187041, 187042, 187043, 187044, 187045 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 187002 },
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
function action_EVENT_CHALLENGE_SUCCESS_187005(context, evt)
	-- 将configid为 187002 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 187002, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	    -- 杀死指定group内的gadget和monster,移除其它东西
	    ScriptLib.KillExtraGroupSuite(context, 199004187, 2)
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 3002, 3, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	-- group调整group进度,只对非randSuite有效
	if 0 ~= ScriptLib.GoToGroupSuite(context, 199004187, 3) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : goto_groupSuite")
		return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_FAIL_187006(context, evt)
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 199004187, 2)
	
	-- 将configid为 187002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 187002, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 创建id为187003的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 187003 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 3002, 4, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_187007(context, evt)
	if 187002 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_187007(context, evt)
	-- 202号挑战,duration内开启宝箱
	if 0 ~= ScriptLib.ActiveChallenge(context, 666, 202, defs.duration, 7, 202, 1) then
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
function condition_EVENT_GADGET_STATE_CHANGE_187008(context, evt)
	if 187001 ~= evt.param2 or GadgetState.ChestOpened ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_187009(context, evt)
	if 187003 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_187009(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 199004187, 187003, {177}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_187010(context, evt)
	-- 判断是gadgetid 187003 option_id 177
	if 187003 ~= evt.param1 then
		return false	
	end
	
	if 177 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_187010(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 187003 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	-- 将configid为 187002 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 187002, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发操作
function action_EVENT_GROUP_LOAD_187011(context, evt)
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 199004187, 2)
	
	-- 将configid为 187002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 187002, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 创建id为187003的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 187003 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 3002, 4, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end

require "V2_0/ElectricCore"