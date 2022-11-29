-- 基础信息
local base_info = {
	group_id = 144003007
}

-- Trigger变量
local defs = {
	duration = 60,
	group_id = 144003007
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
	{ config_id = 7001, gadget_id = 70211111, pos = { x = -775.349, y = 123.676, z = 50.695 }, rot = { x = 339.279, y = 77.929, z = 0.899 }, level = 16, drop_tag = "解谜中级群岛", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 103 },
	{ config_id = 7002, gadget_id = 70350083, pos = { x = -739.734, y = 134.206, z = -241.264 }, rot = { x = 0.000, y = 0.221, z = 0.000 }, level = 1, persistent = true, area_id = 103 },
	{ config_id = 7003, gadget_id = 70360001, pos = { x = -739.846, y = 135.292, z = -241.228 }, rot = { x = 0.000, y = 0.221, z = 0.000 }, level = 1, persistent = true, area_id = 103 },
	{ config_id = 7011, gadget_id = 70690001, pos = { x = -762.336, y = 153.421, z = -20.044 }, rot = { x = 7.734, y = 285.395, z = 341.854 }, level = 1, area_id = 103 },
	{ config_id = 7012, gadget_id = 70690001, pos = { x = -713.259, y = 151.847, z = -220.652 }, rot = { x = 316.659, y = 51.629, z = 351.410 }, level = 1, area_id = 103 },
	{ config_id = 7013, gadget_id = 70690001, pos = { x = -783.677, y = 142.854, z = -4.506 }, rot = { x = 16.821, y = 345.853, z = 348.929 }, level = 1, area_id = 103 },
	{ config_id = 7015, gadget_id = 70690001, pos = { x = -785.580, y = 137.033, z = 9.290 }, rot = { x = 18.783, y = 353.670, z = 354.027 }, level = 1, area_id = 103 },
	{ config_id = 7016, gadget_id = 70690001, pos = { x = -782.552, y = 130.867, z = 30.021 }, rot = { x = 20.007, y = 23.817, z = 1.336 }, level = 1, area_id = 103 },
	{ config_id = 7054, gadget_id = 70690001, pos = { x = -731.608, y = 134.052, z = -236.141 }, rot = { x = 315.879, y = 49.993, z = 0.000 }, level = 1, area_id = 103 },
	{ config_id = 7056, gadget_id = 70690001, pos = { x = -725.784, y = 139.461, z = -231.252 }, rot = { x = 315.685, y = 49.993, z = 0.000 }, level = 1, area_id = 103 },
	{ config_id = 7058, gadget_id = 70690001, pos = { x = -718.847, y = 145.605, z = -225.150 }, rot = { x = 316.659, y = 51.629, z = 351.410 }, level = 1, area_id = 103 },
	{ config_id = 7060, gadget_id = 70690001, pos = { x = -707.815, y = 156.674, z = -216.172 }, rot = { x = 320.777, y = 49.993, z = 0.000 }, level = 1, area_id = 103 },
	{ config_id = 7062, gadget_id = 70690001, pos = { x = -694.889, y = 166.338, z = -205.019 }, rot = { x = 321.831, y = 24.415, z = 0.000 }, level = 1, area_id = 103 },
	{ config_id = 7063, gadget_id = 70690001, pos = { x = -692.525, y = 170.732, z = -199.052 }, rot = { x = 324.153, y = 3.839, z = 0.000 }, level = 1, area_id = 103 },
	{ config_id = 7065, gadget_id = 70690001, pos = { x = -691.493, y = 177.877, z = -186.162 }, rot = { x = 327.664, y = 3.839, z = 0.000 }, level = 1, area_id = 103 },
	{ config_id = 7067, gadget_id = 70690001, pos = { x = -690.529, y = 184.847, z = -171.790 }, rot = { x = 335.135, y = 3.839, z = 0.000 }, level = 1, area_id = 103 },
	{ config_id = 7069, gadget_id = 70690001, pos = { x = -689.528, y = 190.640, z = -156.873 }, rot = { x = 335.135, y = 3.839, z = 0.000 }, level = 1, area_id = 103 },
	{ config_id = 7075, gadget_id = 70690001, pos = { x = -684.619, y = 190.676, z = -111.065 }, rot = { x = 20.974, y = 2.218, z = 357.996 }, level = 1, area_id = 103 },
	{ config_id = 7080, gadget_id = 70690001, pos = { x = -679.585, y = 175.515, z = -74.330 }, rot = { x = 23.942, y = 7.802, z = 0.000 }, level = 1, area_id = 103 },
	{ config_id = 7086, gadget_id = 70690001, pos = { x = -673.430, y = 159.776, z = -29.403 }, rot = { x = 11.915, y = 342.045, z = 0.000 }, level = 1, area_id = 103 },
	{ config_id = 7087, gadget_id = 70690001, pos = { x = -675.545, y = 158.329, z = -22.877 }, rot = { x = 359.937, y = 309.358, z = 0.000 }, level = 1, area_id = 103 },
	{ config_id = 7089, gadget_id = 70690001, pos = { x = -688.189, y = 158.374, z = -13.087 }, rot = { x = 359.515, y = 302.592, z = 0.000 }, level = 1, area_id = 103 },
	{ config_id = 7091, gadget_id = 70690001, pos = { x = -701.976, y = 158.547, z = -5.002 }, rot = { x = 358.902, y = 292.512, z = 0.000 }, level = 1, area_id = 103 },
	{ config_id = 7092, gadget_id = 70690001, pos = { x = -713.401, y = 158.806, z = -2.062 }, rot = { x = 358.506, y = 268.290, z = 0.437 }, level = 1, area_id = 103 },
	{ config_id = 7095, gadget_id = 70690001, pos = { x = -731.413, y = 159.655, z = -7.257 }, rot = { x = 356.609, y = 244.918, z = 359.549 }, level = 1, area_id = 103 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1007005, name = "CHALLENGE_SUCCESS_7005", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "666", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_7005" },
	{ config_id = 1007006, name = "CHALLENGE_FAIL_7006", event = EventType.EVENT_CHALLENGE_FAIL, source = "666", condition = "", action = "action_EVENT_CHALLENGE_FAIL_7006", trigger_count = 0 },
	{ config_id = 1007007, name = "GADGET_STATE_CHANGE_7007", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_7007", action = "action_EVENT_GADGET_STATE_CHANGE_7007", trigger_count = 0 },
	{ config_id = 1007008, name = "GADGET_STATE_CHANGE_7008", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_7008", action = "", tag = "202" },
	{ config_id = 1007009, name = "GADGET_CREATE_7009", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_7009", action = "action_EVENT_GADGET_CREATE_7009", trigger_count = 0 },
	{ config_id = 1007010, name = "SELECT_OPTION_7010", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_7010", action = "action_EVENT_SELECT_OPTION_7010", trigger_count = 0 }
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
		gadgets = { 7002, 7003 },
		regions = { },
		triggers = { "CHALLENGE_SUCCESS_7005", "CHALLENGE_FAIL_7006", "GADGET_STATE_CHANGE_7007", "GADGET_STATE_CHANGE_7008", "GADGET_CREATE_7009", "SELECT_OPTION_7010" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { },
		gadgets = { 7001, 7011, 7012, 7013, 7015, 7016, 7054, 7056, 7058, 7060, 7062, 7063, 7065, 7067, 7069, 7075, 7080, 7086, 7087, 7089, 7091, 7092, 7095 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 7002 },
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
function action_EVENT_CHALLENGE_SUCCESS_7005(context, evt)
	-- 将configid为 7002 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 7002, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	    -- 杀死指定group内的gadget和monster,移除其它东西
	    ScriptLib.KillExtraGroupSuite(context, 144003007, 2)
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 3002, 3, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	-- group调整group进度,只对非randSuite有效
	if 0 ~= ScriptLib.GoToGroupSuite(context, 144003007, 3) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : goto_groupSuite")
		return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_FAIL_7006(context, evt)
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 144003007, 2)
	
	-- 将configid为 7002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 7002, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 创建id为7003的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 7003 }) then
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
function condition_EVENT_GADGET_STATE_CHANGE_7007(context, evt)
	if 7002 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_7007(context, evt)
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
function condition_EVENT_GADGET_STATE_CHANGE_7008(context, evt)
	if 7001 ~= evt.param2 or GadgetState.ChestOpened ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_7009(context, evt)
	if 7003 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_7009(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 144003007, 7003, {177}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_7010(context, evt)
	-- 判断是gadgetid 7003 option_id 177
	if 7003 ~= evt.param1 then
		return false	
	end
	
	if 177 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_7010(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 7003 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	-- 将configid为 7002 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 7002, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end