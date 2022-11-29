-- 基础信息
local base_info = {
	group_id = 144001193
}

-- Trigger变量
local defs = {
	duration = 90,
	group_id = 144001193
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
	{ config_id = 193001, gadget_id = 70211111, pos = { x = 206.153, y = 210.649, z = 141.906 }, rot = { x = 0.000, y = 35.903, z = 352.855 }, level = 16, drop_tag = "解谜中级群岛", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 102 },
	{ config_id = 193002, gadget_id = 70350083, pos = { x = 365.259, y = 189.770, z = 424.242 }, rot = { x = 0.000, y = 0.000, z = 355.104 }, level = 1, persistent = true, area_id = 102 },
	{ config_id = 193003, gadget_id = 70360001, pos = { x = 366.091, y = 190.656, z = 424.236 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, persistent = true, area_id = 102 },
	{ config_id = 193004, gadget_id = 70690001, pos = { x = 364.099, y = 189.478, z = 414.992 }, rot = { x = 351.862, y = 184.846, z = 0.000 }, level = 1, area_id = 102 },
	{ config_id = 193011, gadget_id = 70690001, pos = { x = 363.513, y = 190.469, z = 408.088 }, rot = { x = 352.344, y = 186.458, z = 0.000 }, level = 1, area_id = 102 },
	{ config_id = 193012, gadget_id = 70690001, pos = { x = 362.733, y = 191.402, z = 401.195 }, rot = { x = 352.734, y = 187.744, z = 0.000 }, level = 1, area_id = 102 },
	{ config_id = 193013, gadget_id = 70690001, pos = { x = 361.797, y = 192.287, z = 394.314 }, rot = { x = 353.105, y = 188.958, z = 0.000 }, level = 1, area_id = 102 },
	{ config_id = 193014, gadget_id = 70690001, pos = { x = 360.715, y = 193.127, z = 387.450 }, rot = { x = 353.476, y = 190.154, z = 0.000 }, level = 1, area_id = 102 },
	{ config_id = 193015, gadget_id = 70690001, pos = { x = 359.489, y = 193.923, z = 380.604 }, rot = { x = 353.856, y = 191.372, z = 0.000 }, level = 1, area_id = 102 },
	{ config_id = 193016, gadget_id = 70690001, pos = { x = 358.117, y = 194.672, z = 373.781 }, rot = { x = 354.258, y = 192.650, z = 0.000 }, level = 1, area_id = 102 },
	{ config_id = 193017, gadget_id = 70690001, pos = { x = 356.592, y = 195.372, z = 366.986 }, rot = { x = 354.668, y = 193.940, z = 0.000 }, level = 1, area_id = 102 },
	{ config_id = 193018, gadget_id = 70690001, pos = { x = 354.913, y = 196.023, z = 360.221 }, rot = { x = 355.128, y = 195.375, z = 0.000 }, level = 1, area_id = 102 },
	{ config_id = 193019, gadget_id = 70690001, pos = { x = 353.064, y = 196.617, z = 353.497 }, rot = { x = 355.593, y = 196.818, z = 0.000 }, level = 1, area_id = 102 },
	{ config_id = 193020, gadget_id = 70690001, pos = { x = 351.044, y = 197.155, z = 346.816 }, rot = { x = 356.134, y = 198.480, z = 0.000 }, level = 1, area_id = 102 },
	{ config_id = 193021, gadget_id = 70690001, pos = { x = 348.831, y = 197.627, z = 340.192 }, rot = { x = 356.670, y = 200.203, z = 0.000 }, level = 1, area_id = 102 },
	{ config_id = 193022, gadget_id = 70690001, pos = { x = 346.417, y = 198.033, z = 333.635 }, rot = { x = 356.957, y = 201.851, z = 0.000 }, level = 1, area_id = 102 },
	{ config_id = 193023, gadget_id = 70690001, pos = { x = 343.816, y = 198.405, z = 327.147 }, rot = { x = 357.113, y = 203.286, z = 0.000 }, level = 1, area_id = 102 },
	{ config_id = 193024, gadget_id = 70690001, pos = { x = 332.380, y = 202.108, z = 306.039 }, rot = { x = 270.040, y = 205.701, z = 0.000 }, level = 1, area_id = 102 },
	{ config_id = 193025, gadget_id = 70690001, pos = { x = 332.378, y = 209.108, z = 306.033 }, rot = { x = 270.040, y = 205.701, z = 0.000 }, level = 1, area_id = 102 },
	{ config_id = 193026, gadget_id = 70690001, pos = { x = 332.375, y = 216.108, z = 306.028 }, rot = { x = 270.049, y = 205.821, z = 0.000 }, level = 1, area_id = 102 },
	{ config_id = 193027, gadget_id = 70690001, pos = { x = 332.372, y = 223.108, z = 306.022 }, rot = { x = 270.049, y = 205.821, z = 0.000 }, level = 1, area_id = 102 },
	{ config_id = 193028, gadget_id = 70690013, pos = { x = 332.407, y = 174.271, z = 306.035 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 102 },
	{ config_id = 193032, gadget_id = 70690001, pos = { x = 315.675, y = 201.242, z = 270.891 }, rot = { x = 357.633, y = 209.646, z = 0.000 }, level = 1, area_id = 102 },
	{ config_id = 193033, gadget_id = 70690001, pos = { x = 312.215, y = 201.531, z = 264.812 }, rot = { x = 357.647, y = 210.154, z = 0.000 }, level = 1, area_id = 102 },
	{ config_id = 193034, gadget_id = 70690001, pos = { x = 308.702, y = 201.819, z = 258.765 }, rot = { x = 357.656, y = 210.672, z = 0.000 }, level = 1, area_id = 102 },
	{ config_id = 193035, gadget_id = 70690001, pos = { x = 305.134, y = 202.105, z = 252.749 }, rot = { x = 357.658, y = 211.210, z = 0.000 }, level = 1, area_id = 102 },
	{ config_id = 193036, gadget_id = 70690001, pos = { x = 301.510, y = 202.391, z = 246.767 }, rot = { x = 357.651, y = 211.770, z = 0.000 }, level = 1, area_id = 102 },
	{ config_id = 193037, gadget_id = 70690001, pos = { x = 297.827, y = 202.678, z = 240.821 }, rot = { x = 357.635, y = 212.395, z = 0.000 }, level = 1, area_id = 102 },
	{ config_id = 193038, gadget_id = 70690001, pos = { x = 294.080, y = 202.967, z = 234.915 }, rot = { x = 357.607, y = 213.092, z = 0.000 }, level = 1, area_id = 102 },
	{ config_id = 193039, gadget_id = 70690001, pos = { x = 290.262, y = 203.259, z = 229.056 }, rot = { x = 357.561, y = 213.931, z = 0.000 }, level = 1, area_id = 102 },
	{ config_id = 193040, gadget_id = 70690001, pos = { x = 286.358, y = 203.557, z = 223.253 }, rot = { x = 357.486, y = 214.999, z = 0.000 }, level = 1, area_id = 102 },
	{ config_id = 193041, gadget_id = 70690001, pos = { x = 282.347, y = 203.864, z = 217.525 }, rot = { x = 357.363, y = 216.478, z = 0.000 }, level = 1, area_id = 102 },
	{ config_id = 193042, gadget_id = 70690001, pos = { x = 278.190, y = 204.186, z = 211.902 }, rot = { x = 357.058, y = 218.826, z = 0.000 }, level = 1, area_id = 102 },
	{ config_id = 193043, gadget_id = 70690001, pos = { x = 273.808, y = 204.545, z = 206.457 }, rot = { x = 356.566, y = 221.219, z = 0.000 }, level = 1, area_id = 102 },
	{ config_id = 193044, gadget_id = 70690001, pos = { x = 269.203, y = 204.965, z = 201.201 }, rot = { x = 356.202, y = 222.954, z = 0.000 }, level = 1, area_id = 102 },
	{ config_id = 193045, gadget_id = 70690001, pos = { x = 264.444, y = 205.428, z = 196.089 }, rot = { x = 355.927, y = 224.279, z = 0.000 }, level = 1, area_id = 102 },
	{ config_id = 193046, gadget_id = 70690001, pos = { x = 259.570, y = 205.925, z = 191.090 }, rot = { x = 355.714, y = 225.314, z = 0.000 }, level = 1, area_id = 102 },
	{ config_id = 193047, gadget_id = 70690001, pos = { x = 254.607, y = 206.448, z = 186.182 }, rot = { x = 355.537, y = 226.174, z = 0.000 }, level = 1, area_id = 102 },
	{ config_id = 193048, gadget_id = 70690001, pos = { x = 249.572, y = 206.993, z = 181.349 }, rot = { x = 355.383, y = 226.934, z = 0.000 }, level = 1, area_id = 102 },
	{ config_id = 193049, gadget_id = 70690001, pos = { x = 244.475, y = 207.557, z = 176.585 }, rot = { x = 355.252, y = 227.582, z = 0.000 }, level = 1, area_id = 102 },
	{ config_id = 193050, gadget_id = 70690001, pos = { x = 239.325, y = 208.136, z = 171.879 }, rot = { x = 355.133, y = 228.170, z = 0.000 }, level = 1, area_id = 102 },
	{ config_id = 193051, gadget_id = 70690001, pos = { x = 234.128, y = 208.730, z = 167.228 }, rot = { x = 355.021, y = 228.727, z = 0.000 }, level = 1, area_id = 102 },
	{ config_id = 193052, gadget_id = 70690001, pos = { x = 228.887, y = 209.337, z = 162.627 }, rot = { x = 354.912, y = 229.275, z = 0.000 }, level = 1, area_id = 102 },
	{ config_id = 193053, gadget_id = 70690001, pos = { x = 223.603, y = 209.958, z = 158.078 }, rot = { x = 354.784, y = 229.916, z = 0.000 }, level = 1, area_id = 102 },
	{ config_id = 193054, gadget_id = 70690001, pos = { x = 218.269, y = 210.595, z = 153.590 }, rot = { x = 354.784, y = 229.916, z = 0.000 }, level = 1, area_id = 102 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1193005, name = "CHALLENGE_SUCCESS_193005", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "666", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_193005" },
	{ config_id = 1193006, name = "CHALLENGE_FAIL_193006", event = EventType.EVENT_CHALLENGE_FAIL, source = "666", condition = "", action = "action_EVENT_CHALLENGE_FAIL_193006", trigger_count = 0 },
	{ config_id = 1193007, name = "GADGET_STATE_CHANGE_193007", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_193007", action = "action_EVENT_GADGET_STATE_CHANGE_193007", trigger_count = 0 },
	{ config_id = 1193008, name = "GADGET_STATE_CHANGE_193008", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_193008", action = "", tag = "202" },
	{ config_id = 1193009, name = "GADGET_CREATE_193009", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_193009", action = "action_EVENT_GADGET_CREATE_193009", trigger_count = 0 },
	{ config_id = 1193010, name = "SELECT_OPTION_193010", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_193010", action = "action_EVENT_SELECT_OPTION_193010", trigger_count = 0 }
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
		gadgets = { 193002, 193003 },
		regions = { },
		triggers = { "CHALLENGE_SUCCESS_193005", "CHALLENGE_FAIL_193006", "GADGET_STATE_CHANGE_193007", "GADGET_STATE_CHANGE_193008", "GADGET_CREATE_193009", "SELECT_OPTION_193010" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { },
		gadgets = { 193001, 193004, 193011, 193012, 193013, 193014, 193015, 193016, 193017, 193018, 193019, 193020, 193021, 193022, 193023, 193024, 193025, 193026, 193027, 193028, 193032, 193033, 193034, 193035, 193036, 193037, 193038, 193039, 193040, 193041, 193042, 193043, 193044, 193045, 193046, 193047, 193048, 193049, 193050, 193051, 193052, 193053, 193054 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 193002 },
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
function action_EVENT_CHALLENGE_SUCCESS_193005(context, evt)
	-- 将configid为 193002 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 193002, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	    -- 杀死指定group内的gadget和monster,移除其它东西
	    ScriptLib.KillExtraGroupSuite(context, 144001193, 2)
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 3002, 3, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	-- group调整group进度,只对非randSuite有效
	if 0 ~= ScriptLib.GoToGroupSuite(context, 144001193, 3) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : goto_groupSuite")
		return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_FAIL_193006(context, evt)
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 144001193, 2)
	
	-- 将configid为 193002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 193002, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 创建id为193003的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 193003 }) then
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
function condition_EVENT_GADGET_STATE_CHANGE_193007(context, evt)
	if 193002 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_193007(context, evt)
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
function condition_EVENT_GADGET_STATE_CHANGE_193008(context, evt)
	if 193001 ~= evt.param2 or GadgetState.ChestOpened ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_193009(context, evt)
	if 193003 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_193009(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 144001193, 193003, {177}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_193010(context, evt)
	-- 判断是gadgetid 193003 option_id 177
	if 193003 ~= evt.param1 then
		return false	
	end
	
	if 177 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_193010(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 193003 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	-- 将configid为 193002 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 193002, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end