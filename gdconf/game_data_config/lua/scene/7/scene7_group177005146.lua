-- 基础信息
local base_info = {
	group_id = 177005146
}

-- Trigger变量
local defs = {
	active_step = 201,
	inactive_step = 0,
	gadget_array = {146002,146004,146003,146005,146001},
	reset_gear_list = {146002,146004,146003,146005,146001}
}

-- DEFS_MISCS
local v = 0
local v_error = 0
local max_bit = #defs.gadget_array

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 146012, monster_id = 21010301, pos = { x = 631.582, y = 245.040, z = 771.777 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, drop_id = 1000100, affix = { 6111 }, area_id = 210 },
	{ config_id = 146013, monster_id = 21010301, pos = { x = 639.693, y = 245.436, z = 773.292 }, rot = { x = 0.000, y = 305.401, z = 0.000 }, level = 36, drop_id = 1000100, affix = { 6111 }, area_id = 210 },
	{ config_id = 146014, monster_id = 21030201, pos = { x = 646.817, y = 247.080, z = 780.648 }, rot = { x = 0.000, y = 232.881, z = 0.000 }, level = 36, drop_id = 1000100, affix = { 6111 }, area_id = 210 },
	{ config_id = 146015, monster_id = 21020501, pos = { x = 633.415, y = 245.101, z = 779.552 }, rot = { x = 0.000, y = 157.023, z = 0.000 }, level = 36, drop_id = 1000100, affix = { 5135, 6110 }, area_id = 210 },
	{ config_id = 146016, monster_id = 22010101, pos = { x = 630.696, y = 245.141, z = 776.257 }, rot = { x = 0.000, y = 130.606, z = 0.000 }, level = 36, drop_id = 1000100, area_id = 210 },
	{ config_id = 146017, monster_id = 22010401, pos = { x = 638.549, y = 245.403, z = 777.958 }, rot = { x = 0.000, y = 204.843, z = 0.000 }, level = 36, drop_id = 1000100, area_id = 210 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 146001, gadget_id = 70900056, pos = { x = 622.332, y = 245.293, z = 780.093 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, persistent = true, area_id = 210 },
	{ config_id = 146002, gadget_id = 70900056, pos = { x = 649.910, y = 250.061, z = 784.706 }, rot = { x = 14.825, y = 4.318, z = 6.244 }, level = 1, persistent = true, area_id = 210 },
	{ config_id = 146003, gadget_id = 70900056, pos = { x = 635.810, y = 248.800, z = 792.468 }, rot = { x = 9.346, y = 2.128, z = 5.317 }, level = 1, persistent = true, area_id = 210 },
	{ config_id = 146004, gadget_id = 70900056, pos = { x = 628.410, y = 245.343, z = 764.979 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, persistent = true, area_id = 210 },
	{ config_id = 146005, gadget_id = 70900056, pos = { x = 644.100, y = 246.392, z = 768.257 }, rot = { x = 4.494, y = 352.843, z = 8.694 }, level = 1, persistent = true, area_id = 210 },
	{ config_id = 146006, gadget_id = 70211159, pos = { x = 635.082, y = 245.023, z = 775.676 }, rot = { x = 0.000, y = 337.272, z = 0.000 }, level = 16, drop_tag = "渊下宫活动超级稻妻", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, area_id = 210 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1146007, name = "GADGET_STATE_CHANGE_146007", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_146007", action = "action_EVENT_GADGET_STATE_CHANGE_146007", trigger_count = 0 },
	{ config_id = 1146008, name = "VARIABLE_CHANGE_146008", event = EventType.EVENT_VARIABLE_CHANGE, source = "gear_reset", condition = "", action = "action_EVENT_VARIABLE_CHANGE_146008", trigger_count = 0 },
	{ config_id = 1146009, name = "VARIABLE_CHANGE_146009", event = EventType.EVENT_VARIABLE_CHANGE, source = "trigger_output", condition = "condition_EVENT_VARIABLE_CHANGE_146009", action = "", trigger_count = 0 },
	{ config_id = 1146010, name = "VARIABLE_CHANGE_146010", event = EventType.EVENT_VARIABLE_CHANGE, source = "trigger_output", condition = "condition_EVENT_VARIABLE_CHANGE_146010", action = "action_EVENT_VARIABLE_CHANGE_146010" },
	{ config_id = 1146018, name = "ANY_MONSTER_DIE_146018", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_146018", action = "action_EVENT_ANY_MONSTER_DIE_146018" },
	{ config_id = 1146019, name = "ANY_MONSTER_DIE_146019", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_146019", action = "action_EVENT_ANY_MONSTER_DIE_146019" }
}

-- 变量
variables = {
	{ config_id = 1, name = "sort", value = 0, no_refresh = true },
	{ config_id = 2, name = "gear_reset", value = 0, no_refresh = true },
	{ config_id = 3, name = "v_error", value = 0, no_refresh = true },
	{ config_id = 4, name = "trigger_output", value = 0, no_refresh = true },
	{ config_id = 5, name = "flag", value = 0, no_refresh = true }
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
		gadgets = { 146001, 146002, 146003, 146004, 146005, 146006 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_146007", "VARIABLE_CHANGE_146008", "VARIABLE_CHANGE_146009", "VARIABLE_CHANGE_146010" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 146016, 146017 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_146018" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { 146012, 146013, 146014, 146015 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_146019" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_146007(context, evt)
	for i=1,#defs.gadget_array do
		if defs.gadget_array[i] == evt.param2 then
			return true
		end
	end
	return false
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_146007(context, evt)
	if max_bit > 9 or max_bit <= 1 then
	    return -1
	end
	if evt.param1 == defs.active_step then
	        --操作顺序入栈
	        for i = 1,max_bit do
	                if defs.gadget_array[i] == evt.param2 then
	                        v = ScriptLib.GetGroupVariableValue(context, "sort")
	                        v = 10*v + i
	                        ScriptLib.SetGroupVariableValue(context, "sort", v)
	                        break 
	                end
	                if i == max_bit and defs.gadget_array[i] ~= evt.param2 then
	                        ScriptLib.SetGroupVariableValue(context, "v_error", 1)
	                        v = 10*v
	                end
	        end
	end
	--v的位数足够时进行出栈检测
	if v > 10^(max_bit-1) then
	        v_error = ScriptLib.GetGroupVariableValue(context, "v_error")
	        --v_error有问题时直接清空栈并重置
	        if 0 == v_error then
	                for i=max_bit,1,-1 do
	                        if v%10 ~= i then
	                                v_error = 1
	                                break
	                        end
	                        v = math.floor(v/10)
	                end
	        end
	        v = 0
	        if v_error ~= 1 then
	                v_error = -1
	        end
	        ScriptLib.SetGroupVariableValue(context, "sort", v) 
	        ScriptLib.SetGroupVariableValue(context, "gear_reset", v_error)
	        ScriptLib.SetGroupVariableValue(context, "v_error", 0)
	end
	return 0
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_146008(context, evt)
	if evt.param1 == evt.param2 then return -1 end
	
	if evt.param1 == 1 then
		if #defs.reset_gear_list == 0 then
	                        defs.reset_gear_list = suites[1].gadgets
		end
		for i=1,#defs.reset_gear_list do
			ScriptLib.SetGroupGadgetStateByConfigId(context, 0, defs.reset_gear_list[i], defs.inactive_step)
		end
		ScriptLib.SetGroupVariableValue(context, "trigger_output", -1)
	       	elseif -1 == evt.param1 then
		--外接标记
	 		ScriptLib.SetGroupVariableValue(context, "trigger_output", 1)
	        	end
	        --还原标记
	        ScriptLib.SetGroupVariableValue(context, "gear_reset", 0)
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_146009(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	
	if evt.param1 == -1 then
		return true
	end
	return false
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_146010(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	if evt.param1 > 0 then
		return true
	end
	return false
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_146010(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 177005146, 2)
	
		-- 杀死Group内所有gadget
		if 0 ~= ScriptLib.KillGroupEntity(context, { group_id = 177005148, kill_policy = GroupKillPolicy.GROUP_KILL_GADGET }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_gadget_by_group")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_146018(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_146018(context, evt)
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 177005146, 3)
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_146019(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_146019(context, evt)
	-- 将configid为 146006 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 146006, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end