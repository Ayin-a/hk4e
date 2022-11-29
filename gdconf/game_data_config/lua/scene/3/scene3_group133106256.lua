-- 基础信息
local base_info = {
	group_id = 133106256
}

-- Trigger变量
local defs = {
	duration = 60,
	kill_sum = 4,
	group_id = 133106256,
	gadget_controller_id = 256003
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 256001, monster_id = 20011101, pos = { x = -172.386, y = 163.083, z = 998.585 }, rot = { x = 0.000, y = 177.886, z = 0.000 }, level = 32, drop_id = 1000100, area_id = 8 },
	{ config_id = 256008, monster_id = 20011101, pos = { x = -169.666, y = 163.083, z = 996.160 }, rot = { x = 0.000, y = 267.742, z = 0.000 }, level = 32, drop_id = 1000100, area_id = 8 },
	{ config_id = 256009, monster_id = 20011101, pos = { x = -175.235, y = 163.176, z = 996.171 }, rot = { x = 0.000, y = 100.433, z = 0.000 }, level = 32, drop_id = 1000100, area_id = 8 },
	{ config_id = 256010, monster_id = 20011101, pos = { x = -172.327, y = 163.113, z = 993.888 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, drop_id = 1000100, area_id = 8 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 256002, gadget_id = 70350082, pos = { x = -172.399, y = 163.083, z = 996.071 }, rot = { x = 0.000, y = 177.886, z = 0.000 }, level = 32, persistent = true, area_id = 8 },
	{ config_id = 256003, gadget_id = 70360001, pos = { x = -172.463, y = 163.089, z = 996.006 }, rot = { x = 0.000, y = 177.886, z = 0.000 }, level = 32, persistent = true, area_id = 8 },
	{ config_id = 256012, gadget_id = 70211011, pos = { x = -172.358, y = 163.021, z = 1000.553 }, rot = { x = 3.298, y = 181.559, z = 3.516 }, level = 26, drop_tag = "战斗中级璃月", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 8 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1256004, name = "CHALLENGE_SUCCESS_256004", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "180", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_256004" },
	{ config_id = 1256005, name = "CHALLENGE_FAIL_256005", event = EventType.EVENT_CHALLENGE_FAIL, source = "180", condition = "", action = "action_EVENT_CHALLENGE_FAIL_256005", trigger_count = 0 },
	{ config_id = 1256006, name = "GADGET_CREATE_256006", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_256006", action = "action_EVENT_GADGET_CREATE_256006", trigger_count = 0 },
	{ config_id = 1256007, name = "SELECT_OPTION_256007", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_256007", action = "action_EVENT_SELECT_OPTION_256007", trigger_count = 0 }
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
		-- description = suite_1,
		monsters = { },
		gadgets = { 256002, 256003 },
		regions = { },
		triggers = { "CHALLENGE_SUCCESS_256004", "CHALLENGE_FAIL_256005", "GADGET_CREATE_256006", "SELECT_OPTION_256007" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { 256001, 256008, 256009, 256010 },
		gadgets = { },
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
function action_EVENT_CHALLENGE_SUCCESS_256004(context, evt)
	-- 将configid为 256002 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 256002, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 创建id为256012的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 256012 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 3001, 3, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	-- 针对当前group内变量名为 "finish" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValueByGroup(context, "finish", 1, 133106251) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable_by_group")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_FAIL_256005(context, evt)
	-- 将configid为 256002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 256002, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 创建id为256003的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 256003 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133106256, 2)
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 3001, 4, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_256006(context, evt)
	if 256003 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_256006(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133106256, 256003, {177}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_256007(context, evt)
	-- 判断是gadgetid 256003 option_id 177
	if 256003 ~= evt.param1 then
		return false	
	end
	
	if 177 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_256007(context, evt)
	-- 180号挑战,duration内击杀kill_sum的怪物
	if 0 ~= ScriptLib.ActiveChallenge(context, 180, 180, defs.duration, defs.group_id, defs.kill_sum, 0) then
	return -1
	end
	
	-- 添加suite2的新内容
	ScriptLib.AddExtraGroupSuite(context, defs.group_id, 2)
	
		--永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
	if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = defs.gadget_controller_id }) then
	return -1
	end
		
	
	-- 将configid为 2002 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 256002, GadgetState.GearStart) then
	return -1
	end 
	
	
	
	-- 运营数据埋点，匹配LD定义的规则使用
	if 0 ~= ScriptLib.MarkPlayerAction(context, 3001, 1, 1) then
	return -1
	end
	
	return 0
	
end