-- 基础信息
local base_info = {
	group_id = 111101263
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 263001, monster_id = 20010501, pos = { x = 2239.799, y = 245.395, z = -1590.866 }, rot = { x = 0.000, y = 229.783, z = 0.000 }, level = 1, drop_id = 1000100 },
	{ config_id = 263002, monster_id = 20010501, pos = { x = 2241.343, y = 245.395, z = -1592.602 }, rot = { x = 0.000, y = 251.930, z = 0.000 }, level = 1, drop_id = 1000100 },
	{ config_id = 263003, monster_id = 20010801, pos = { x = 2237.186, y = 245.395, z = -1589.606 }, rot = { x = 0.000, y = 177.114, z = 0.000 }, level = 1, drop_id = 1000100 },
	{ config_id = 263004, monster_id = 20010801, pos = { x = 2235.302, y = 245.395, z = -1590.224 }, rot = { x = 0.000, y = 158.330, z = 0.000 }, level = 1, drop_id = 1000100 },
	{ config_id = 263005, monster_id = 20011001, pos = { x = 2233.488, y = 245.395, z = -1592.205 }, rot = { x = 0.000, y = 109.368, z = 0.000 }, level = 1, drop_id = 1000100 },
	{ config_id = 263006, monster_id = 20011001, pos = { x = 2233.333, y = 245.395, z = -1595.173 }, rot = { x = 0.000, y = 79.526, z = 0.000 }, level = 1, drop_id = 1000100 },
	{ config_id = 263007, monster_id = 20011201, pos = { x = 2234.583, y = 245.395, z = -1597.000 }, rot = { x = 0.000, y = 29.911, z = 0.000 }, level = 1, drop_id = 1000100 },
	{ config_id = 263008, monster_id = 20011201, pos = { x = 2237.058, y = 245.395, z = -1597.533 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 1000100 },
	{ config_id = 263009, monster_id = 20010301, pos = { x = 2239.040, y = 245.395, z = -1597.130 }, rot = { x = 0.000, y = 329.752, z = 0.000 }, level = 1, drop_id = 1000100 },
	{ config_id = 263010, monster_id = 20010301, pos = { x = 2241.017, y = 245.395, z = -1594.850 }, rot = { x = 0.000, y = 285.900, z = 0.000 }, level = 1, drop_id = 1000100 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	-- 挑战完成后解锁A区域最终宝箱
	{ config_id = 263011, gadget_id = 70211011, pos = { x = 2237.254, y = 243.758, z = -1595.575 }, rot = { x = 0.000, y = 275.545, z = 0.000 }, level = 11, drop_tag = "战斗中级蒙德", isOneoff = true, persistent = true },
	{ config_id = 263012, gadget_id = 70350082, pos = { x = 2237.311, y = 243.714, z = -1593.595 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, persistent = true },
	{ config_id = 263013, gadget_id = 70360001, pos = { x = 2237.245, y = 245.251, z = -1593.650 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, persistent = true }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	-- 用·操作台挂交互
	{ config_id = 1263014, name = "GADGET_CREATE_263014", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_263014", action = "action_EVENT_GADGET_CREATE_263014", trigger_count = 0 },
	-- 让操作台开始挑战
	{ config_id = 1263015, name = "SELECT_OPTION_263015", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_263015", action = "action_EVENT_SELECT_OPTION_263015", trigger_count = 0 },
	-- 挑战成功的trigger
	{ config_id = 1263016, name = "CHALLENGE_SUCCESS_263016", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "1", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_263016", trigger_count = 0 },
	-- 挑战失败的trigger
	{ config_id = 1263017, name = "CHALLENGE_FAIL_263017", event = EventType.EVENT_CHALLENGE_FAIL, source = "1", condition = "", action = "action_EVENT_CHALLENGE_FAIL_263017", trigger_count = 0 },
	-- 解锁区域D的一号方碑
	{ config_id = 1263018, name = "GADGET_STATE_CHANGE_263018", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_263018", action = "action_EVENT_GADGET_STATE_CHANGE_263018" }
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
		gadgets = { 263012, 263013 },
		regions = { },
		triggers = { "GADGET_CREATE_263014", "SELECT_OPTION_263015", "CHALLENGE_SUCCESS_263016", "CHALLENGE_FAIL_263017", "GADGET_STATE_CHANGE_263018" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 263001, 263002, 263003, 263004, 263005, 263006, 263007, 263008, 263009, 263010 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 263011 },
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
function condition_EVENT_GADGET_CREATE_263014(context, evt)
	if 263013 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_263014(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 111101263, 263013, {177}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_263015(context, evt)
	-- 判断是gadgetid 263013 option_id 177
	if 263013 ~= evt.param1 then
		return false	
	end
	
	if 177 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_263015(context, evt)
	-- 创建编号为1（该挑战的识别id),挑战内容为180的区域挑战，具体参数填写方式，见DungeonChallengeData表中的注释，所有填写的值都必须是int类型
	if 0 ~= ScriptLib.ActiveChallenge(context, 1, 180, 120, 111101263, 10, 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_challenge")
		return -1
	end
	
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 111101263, 2)
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 263013 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	-- 将configid为 263012 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 263012, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_SUCCESS_263016(context, evt)
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 111101263, 3)
	
	-- 将configid为 263012 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 263012, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_FAIL_263017(context, evt)
	-- 将configid为 263012 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 263012, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 创建id为263013的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 263013 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 111101263, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_263018(context, evt)
	if 263011 ~= evt.param2 or GadgetState.ChestOpened ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_263018(context, evt)
	-- 改变指定group组111101275中， configid为275001的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 111101275, 275001, GadgetState.Default) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	return 0
end