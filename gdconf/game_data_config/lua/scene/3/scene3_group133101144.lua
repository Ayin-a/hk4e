-- 基础信息
local base_info = {
	group_id = 133101144
}

-- Trigger变量
local defs = {
	duration = 60,
	kill_sum = 5,
	group_id = 133101144,
	gadget_controller_id = 144003
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 144001, monster_id = 20010601, pos = { x = 1491.363, y = 204.118, z = 1059.703 }, rot = { x = 0.000, y = 62.060, z = 0.000 }, level = 23, drop_id = 1000100, area_id = 5 },
	{ config_id = 144008, monster_id = 20010401, pos = { x = 1507.833, y = 208.082, z = 1065.573 }, rot = { x = 0.000, y = 256.354, z = 0.000 }, level = 23, drop_id = 1000100, area_id = 5 },
	{ config_id = 144009, monster_id = 20011301, pos = { x = 1503.748, y = 206.648, z = 1072.317 }, rot = { x = 0.000, y = 200.719, z = 0.000 }, level = 23, drop_id = 1000100, area_id = 5 },
	{ config_id = 144010, monster_id = 20010901, pos = { x = 1494.627, y = 204.734, z = 1071.096 }, rot = { x = 0.000, y = 163.997, z = 0.000 }, level = 23, drop_id = 1000100, area_id = 5 },
	{ config_id = 144011, monster_id = 20011101, pos = { x = 1498.889, y = 203.064, z = 1054.676 }, rot = { x = 0.000, y = 4.894, z = 0.000 }, level = 23, drop_id = 1000100, area_id = 5 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 144002, gadget_id = 70350082, pos = { x = 1503.594, y = 207.175, z = 1063.226 }, rot = { x = 0.710, y = 0.079, z = 12.631 }, level = 19, persistent = true, area_id = 5 },
	{ config_id = 144003, gadget_id = 70360001, pos = { x = 1503.612, y = 207.158, z = 1063.257 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 5 },
	{ config_id = 144004, gadget_id = 70211011, pos = { x = 1503.737, y = 207.010, z = 1066.629 }, rot = { x = 3.334, y = 0.069, z = 2.358 }, level = 16, drop_tag = "战斗中级璃月", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 5 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1144005, name = "CHALLENGE_SUCCESS_144005", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "180", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_144005" },
	{ config_id = 1144006, name = "CHALLENGE_FAIL_144006", event = EventType.EVENT_CHALLENGE_FAIL, source = "180", condition = "", action = "action_EVENT_CHALLENGE_FAIL_144006", trigger_count = 0 },
	{ config_id = 1144012, name = "GADGET_CREATE_144012", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_144012", action = "action_EVENT_GADGET_CREATE_144012", trigger_count = 0 },
	{ config_id = 1144013, name = "SELECT_OPTION_144013", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_144013", action = "action_EVENT_SELECT_OPTION_144013", trigger_count = 0 }
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
		gadgets = { 144002, 144003 },
		regions = { },
		triggers = { "CHALLENGE_SUCCESS_144005", "CHALLENGE_FAIL_144006", "GADGET_CREATE_144012", "SELECT_OPTION_144013" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { 144001, 144008, 144009, 144010, 144011 },
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
function action_EVENT_CHALLENGE_SUCCESS_144005(context, evt)
	-- 将configid为 144002 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 144002, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 创建id为144004的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 144004 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 3001, 3, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_FAIL_144006(context, evt)
	-- 将configid为 144002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 144002, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 创建id为144003的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 144003 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133101144, 2)
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 3001, 4, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_144012(context, evt)
	if 144003 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_144012(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133101144, 144003, {177}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_144013(context, evt)
	-- 判断是gadgetid 144003 option_id 177
	if 144003 ~= evt.param1 then
		return false	
	end
	
	if 177 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_144013(context, evt)
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
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 144002, GadgetState.GearStart) then
	return -1
	end 
	
	
	
	-- 运营数据埋点，匹配LD定义的规则使用
	if 0 ~= ScriptLib.MarkPlayerAction(context, 3001, 1, 1) then
	return -1
	end
	
	return 0
	
end