-- 基础信息
local base_info = {
	group_id = 133220285
}

-- Trigger变量
local defs = {
	duration = 40,
	group_id = 133220285
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
	{ config_id = 285001, gadget_id = 70211101, pos = { x = -2695.322, y = 230.246, z = -4440.824 }, rot = { x = 0.000, y = 50.696, z = 0.000 }, level = 26, drop_tag = "解谜低级稻妻", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 11 },
	{ config_id = 285002, gadget_id = 70350093, pos = { x = -2697.248, y = 230.108, z = -4442.431 }, rot = { x = 0.000, y = 11.593, z = 0.000 }, level = 30, persistent = true, area_id = 11 },
	{ config_id = 285003, gadget_id = 70360001, pos = { x = -2697.248, y = 231.073, z = -4442.437 }, rot = { x = 0.000, y = 11.593, z = 0.000 }, level = 30, persistent = true, area_id = 11 },
	{ config_id = 285004, gadget_id = 70290150, pos = { x = -2689.695, y = 231.370, z = -4432.739 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 11 },
	{ config_id = 285005, gadget_id = 70290150, pos = { x = -2689.695, y = 257.175, z = -4432.739 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 11 },
	{ config_id = 285006, gadget_id = 70290150, pos = { x = -2682.027, y = 253.418, z = -4426.956 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 11 },
	{ config_id = 285007, gadget_id = 70290150, pos = { x = -2673.566, y = 248.129, z = -4421.027 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 11 },
	{ config_id = 285008, gadget_id = 70290150, pos = { x = -2646.425, y = 254.275, z = -4404.139 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 11 },
	{ config_id = 285009, gadget_id = 70290150, pos = { x = -2654.199, y = 247.220, z = -4412.741 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 11 },
	{ config_id = 285010, gadget_id = 70290150, pos = { x = -2676.708, y = 264.731, z = -4428.512 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 11 },
	{ config_id = 285011, gadget_id = 70290150, pos = { x = -2670.217, y = 257.183, z = -4422.590 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 11 },
	{ config_id = 285018, gadget_id = 70900380, pos = { x = -2685.969, y = 236.100, z = -4429.319 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 11 },
	{ config_id = 285019, gadget_id = 70900380, pos = { x = -2689.695, y = 251.098, z = -4432.739 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 11 },
	{ config_id = 285020, gadget_id = 70900380, pos = { x = -2665.124, y = 247.220, z = -4410.723 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 11 },
	{ config_id = 285021, gadget_id = 70900380, pos = { x = -2661.991, y = 247.220, z = -4415.617 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 11 },
	{ config_id = 285022, gadget_id = 70900380, pos = { x = -2646.388, y = 246.661, z = -4404.102 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 11 },
	{ config_id = 285023, gadget_id = 70900380, pos = { x = -2643.255, y = 246.661, z = -4408.996 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 11 },
	{ config_id = 285024, gadget_id = 70900380, pos = { x = -2643.255, y = 261.501, z = -4408.996 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 11 },
	{ config_id = 285025, gadget_id = 70900380, pos = { x = -2646.388, y = 261.501, z = -4404.102 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 11 },
	{ config_id = 285026, gadget_id = 70900380, pos = { x = -2664.788, y = 257.183, z = -4411.100 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 11 },
	{ config_id = 285027, gadget_id = 70900380, pos = { x = -2661.655, y = 257.183, z = -4415.994 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 11 },
	{ config_id = 285028, gadget_id = 70900380, pos = { x = -2679.841, y = 256.889, z = -4423.618 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 11 },
	{ config_id = 285029, gadget_id = 70900380, pos = { x = -2676.708, y = 256.889, z = -4428.512 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 11 },
	{ config_id = 285030, gadget_id = 70900380, pos = { x = -2676.708, y = 271.739, z = -4428.512 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 11 },
	{ config_id = 285031, gadget_id = 70900380, pos = { x = -2679.841, y = 271.739, z = -4423.618 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 11 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1285012, name = "CHALLENGE_SUCCESS_285012", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "666", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_285012", trigger_count = 0 },
	{ config_id = 1285013, name = "CHALLENGE_FAIL_285013", event = EventType.EVENT_CHALLENGE_FAIL, source = "666", condition = "", action = "action_EVENT_CHALLENGE_FAIL_285013", trigger_count = 0 },
	{ config_id = 1285014, name = "GADGET_STATE_CHANGE_285014", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_285014", action = "action_EVENT_GADGET_STATE_CHANGE_285014", trigger_count = 0 },
	{ config_id = 1285015, name = "ANY_GADGET_DIE_285015", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "", action = "", trigger_count = 0, tag = "218" },
	{ config_id = 1285016, name = "GADGET_CREATE_285016", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_285016", action = "action_EVENT_GADGET_CREATE_285016", trigger_count = 0 },
	{ config_id = 1285017, name = "SELECT_OPTION_285017", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_285017", action = "action_EVENT_SELECT_OPTION_285017", trigger_count = 0 },
	-- 2.0rel加的保底，如果group在挑战中间被卸载了，需要在加载时加个保底置回初始状态
	{ config_id = 1285032, name = "GROUP_LOAD_285032", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_285032", trigger_count = 0 }
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
		gadgets = { 285002, 285003 },
		regions = { },
		triggers = { "CHALLENGE_SUCCESS_285012", "CHALLENGE_FAIL_285013", "GADGET_STATE_CHANGE_285014", "ANY_GADGET_DIE_285015", "GADGET_CREATE_285016", "SELECT_OPTION_285017", "GROUP_LOAD_285032" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { },
		gadgets = { 285004, 285005, 285006, 285007, 285008, 285009, 285010, 285011, 285018, 285019, 285020, 285021, 285022, 285023, 285024, 285025, 285026, 285027, 285028, 285029, 285030, 285031 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 285002 },
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
function action_EVENT_CHALLENGE_SUCCESS_285012(context, evt)
	-- 将configid为 285002 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 285002, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	    -- 杀死指定group内的gadget和monster,移除其它东西
	    ScriptLib.KillExtraGroupSuite(context, 133220285, 2)
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 3002, 3, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	-- group调整group进度,只对非randSuite有效
	if 0 ~= ScriptLib.GoToGroupSuite(context, 133220285, 3) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : goto_groupSuite")
		return -1
	end
	
	-- 创建id为285001的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 285001 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_FAIL_285013(context, evt)
	-- 将configid为 285002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 285002, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 创建id为285003的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 285003 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133220285, 2)
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 3002, 4, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_285014(context, evt)
	if 285002 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_285014(context, evt)
	-- 202号挑战,duration内开启宝箱
	if 0 ~= ScriptLib.ActiveChallenge(context, 666, 247, defs.duration, 2, 218, 8) then
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
function condition_EVENT_GADGET_CREATE_285016(context, evt)
	if 285003 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_285016(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133220285, 285003, {177}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_285017(context, evt)
	-- 判断是gadgetid 285003 option_id 177
	if 285003 ~= evt.param1 then
		return false	
	end
	
	if 177 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_285017(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 285003 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	-- 将configid为 285002 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 285002, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发操作
function action_EVENT_GROUP_LOAD_285032(context, evt)
	-- 将configid为 285002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 285002, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 创建id为285003的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 285003 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133220285, 2)
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 3002, 4, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end

require "V2_0/ElectricCore"