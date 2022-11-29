-- 基础信息
local base_info = {
	group_id = 133307090
}

-- Trigger变量
local defs = {
	active_step = 201,
	inactive_step = 0,
	gadget_array = {90001,90002,90003,90004,90005},
	reset_gear_list = {}
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
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 90001, gadget_id = 70330441, pos = { x = -1854.967, y = 153.006, z = 5656.820 }, rot = { x = 352.006, y = 0.179, z = 356.433 }, level = 32, persistent = true, area_id = 27 },
	{ config_id = 90002, gadget_id = 70330441, pos = { x = -1802.258, y = 152.211, z = 5655.494 }, rot = { x = 358.379, y = 302.110, z = 4.258 }, level = 32, persistent = true, area_id = 27 },
	{ config_id = 90003, gadget_id = 70330441, pos = { x = -1836.170, y = 151.163, z = 5648.524 }, rot = { x = 352.878, y = 359.889, z = 1.790 }, level = 32, persistent = true, area_id = 27 },
	{ config_id = 90004, gadget_id = 70330441, pos = { x = -1842.322, y = 153.881, z = 5671.559 }, rot = { x = 356.458, y = 0.248, z = 351.995 }, level = 32, persistent = true, area_id = 27 },
	{ config_id = 90005, gadget_id = 70330441, pos = { x = -1806.719, y = 153.071, z = 5666.911 }, rot = { x = 354.660, y = 359.020, z = 0.983 }, level = 32, persistent = true, area_id = 27 },
	{ config_id = 90006, gadget_id = 70211111, pos = { x = -1817.873, y = 150.890, z = 5638.774 }, rot = { x = 355.377, y = 8.236, z = 4.634 }, level = 26, drop_tag = "解谜中级须弥", isOneoff = true, persistent = true, explore = { name = "chest", exp = 10 }, area_id = 27 },
	{ config_id = 90014, gadget_id = 70330392, pos = { x = -1841.865, y = 155.282, z = 5642.178 }, rot = { x = 0.000, y = 157.352, z = 0.000 }, level = 32, area_id = 27 },
	{ config_id = 90015, gadget_id = 70330392, pos = { x = -1839.824, y = 149.982, z = 5637.287 }, rot = { x = 90.000, y = 157.352, z = 0.000 }, level = 32, area_id = 27 },
	{ config_id = 90016, gadget_id = 70330392, pos = { x = -1846.756, y = 149.982, z = 5640.137 }, rot = { x = 90.000, y = 247.352, z = 0.000 }, level = 32, area_id = 27 },
	{ config_id = 90017, gadget_id = 70330392, pos = { x = -1809.265, y = 156.382, z = 5649.979 }, rot = { x = 0.000, y = 157.352, z = 0.000 }, level = 32, area_id = 27 },
	{ config_id = 90018, gadget_id = 70330392, pos = { x = -1836.942, y = 149.982, z = 5644.232 }, rot = { x = 90.000, y = 247.352, z = 0.000 }, level = 32, area_id = 27 },
	{ config_id = 90019, gadget_id = 70330392, pos = { x = -1807.224, y = 151.082, z = 5645.087 }, rot = { x = 90.000, y = 157.352, z = 0.000 }, level = 32, area_id = 27 },
	{ config_id = 90020, gadget_id = 70330392, pos = { x = -1814.156, y = 151.082, z = 5647.938 }, rot = { x = 90.000, y = 247.352, z = 0.000 }, level = 32, area_id = 27 },
	{ config_id = 90021, gadget_id = 70330392, pos = { x = -1804.342, y = 151.082, z = 5652.032 }, rot = { x = 90.000, y = 247.352, z = 0.000 }, level = 32, area_id = 27 },
	{ config_id = 90022, gadget_id = 70330392, pos = { x = -1811.306, y = 151.082, z = 5654.870 }, rot = { x = 90.000, y = 157.352, z = 0.000 }, level = 32, area_id = 27 },
	{ config_id = 90023, gadget_id = 70330392, pos = { x = -1816.906, y = 151.082, z = 5673.970 }, rot = { x = 90.000, y = 157.352, z = 0.000 }, level = 32, area_id = 27 },
	{ config_id = 90024, gadget_id = 70330392, pos = { x = -1809.942, y = 151.082, z = 5671.132 }, rot = { x = 90.000, y = 247.352, z = 0.000 }, level = 32, area_id = 27 },
	{ config_id = 90025, gadget_id = 70330392, pos = { x = -1819.756, y = 151.082, z = 5667.038 }, rot = { x = 90.000, y = 247.352, z = 0.000 }, level = 32, area_id = 27 },
	{ config_id = 90026, gadget_id = 70330392, pos = { x = -1812.824, y = 151.082, z = 5664.187 }, rot = { x = 90.000, y = 157.352, z = 0.000 }, level = 32, area_id = 27 },
	{ config_id = 90027, gadget_id = 70330392, pos = { x = -1814.865, y = 156.382, z = 5669.079 }, rot = { x = 0.000, y = 157.352, z = 0.000 }, level = 32, area_id = 27 },
	{ config_id = 90028, gadget_id = 70330392, pos = { x = -1834.924, y = 151.082, z = 5659.087 }, rot = { x = 90.000, y = 157.352, z = 0.000 }, level = 32, area_id = 27 },
	{ config_id = 90029, gadget_id = 70330392, pos = { x = -1836.965, y = 156.382, z = 5663.979 }, rot = { x = 0.000, y = 157.352, z = 0.000 }, level = 32, area_id = 27 },
	{ config_id = 90030, gadget_id = 70330392, pos = { x = -1841.856, y = 151.082, z = 5661.938 }, rot = { x = 90.000, y = 247.352, z = 0.000 }, level = 32, area_id = 27 },
	{ config_id = 90031, gadget_id = 70330392, pos = { x = -1832.042, y = 151.082, z = 5666.032 }, rot = { x = 90.000, y = 247.352, z = 0.000 }, level = 32, area_id = 27 },
	{ config_id = 90032, gadget_id = 70330392, pos = { x = -1839.006, y = 151.082, z = 5668.870 }, rot = { x = 90.000, y = 157.352, z = 0.000 }, level = 32, area_id = 27 },
	{ config_id = 90033, gadget_id = 70330392, pos = { x = -1843.906, y = 149.982, z = 5647.070 }, rot = { x = 90.000, y = 157.352, z = 0.000 }, level = 32, area_id = 27 }
}

-- 区域
regions = {
	-- 成就
	{ config_id = 90011, shape = RegionShape.SPHERE, radius = 40, pos = { x = -1830.061, y = 150.788, z = 5653.445 }, area_id = 27 }
}

-- 触发器
triggers = {
	{ config_id = 1090007, name = "GADGET_STATE_CHANGE_90007", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_90007", action = "action_EVENT_GADGET_STATE_CHANGE_90007", trigger_count = 0 },
	{ config_id = 1090008, name = "VARIABLE_CHANGE_90008", event = EventType.EVENT_VARIABLE_CHANGE, source = "gear_reset", condition = "", action = "action_EVENT_VARIABLE_CHANGE_90008", trigger_count = 0 },
	{ config_id = 1090010, name = "VARIABLE_CHANGE_90010", event = EventType.EVENT_VARIABLE_CHANGE, source = "trigger_output", condition = "condition_EVENT_VARIABLE_CHANGE_90010", action = "action_EVENT_VARIABLE_CHANGE_90010", trigger_count = 0 },
	-- 成就
	{ config_id = 1090011, name = "ENTER_REGION_90011", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_90011", action = "action_EVENT_ENTER_REGION_90011" },
	-- 保底解锁
	{ config_id = 1090012, name = "GROUP_LOAD_90012", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_90012", action = "action_EVENT_GROUP_LOAD_90012", trigger_count = 0 },
	-- 保底刷新
	{ config_id = 1090013, name = "GROUP_LOAD_90013", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_90013", action = "action_EVENT_GROUP_LOAD_90013", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "sort", value = 0, no_refresh = false },
	{ config_id = 2, name = "gear_reset", value = 0, no_refresh = false },
	{ config_id = 3, name = "v_error", value = 0, no_refresh = false },
	{ config_id = 4, name = "trigger_output", value = 0, no_refresh = false },
	{ config_id = 5, name = "guard", value = 0, no_refresh = true }
}

-- 废弃数据
garbages = {
	triggers = {
		{ config_id = 1090009, name = "VARIABLE_CHANGE_90009", event = EventType.EVENT_VARIABLE_CHANGE, source = "trigger_output", condition = "condition_EVENT_VARIABLE_CHANGE_90009", action = "", trigger_count = 0 }
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
		gadgets = { 90001, 90002, 90003, 90004, 90005 },
		regions = { 90011 },
		triggers = { "GADGET_STATE_CHANGE_90007", "VARIABLE_CHANGE_90008", "VARIABLE_CHANGE_90010", "ENTER_REGION_90011", "GROUP_LOAD_90012", "GROUP_LOAD_90013" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 90014, 90015, 90016, 90017, 90018, 90019, 90020, 90021, 90022, 90023, 90024, 90025, 90026, 90027, 90028, 90029, 90030, 90031, 90032, 90033 },
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
function condition_EVENT_GADGET_STATE_CHANGE_90007(context, evt)
	for i=1,#defs.gadget_array do
		if defs.gadget_array[i] == evt.param2 then
			return true
		end
	end
	return false
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_90007(context, evt)
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
function action_EVENT_VARIABLE_CHANGE_90008(context, evt)
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
function condition_EVENT_VARIABLE_CHANGE_90010(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	if evt.param1 > 0 then
		return true
	end
	return false
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_90010(context, evt)
	-- 将本组内变量名为 "guard" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "guard", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 创建id为90006的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 90006 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 解除当前场景中pointid 为%force_id%的地城入口的groupLimit状态
		ScriptLib.UnfreezeGroupLimit(context, 675)
	
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133307090, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_90011(context, evt)
	if evt.param1 ~= 90011 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_90011(context, evt)
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 6107, 3, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_90012(context, evt)
	-- 判断变量"guard"为1
	if ScriptLib.GetGroupVariableValue(context, "guard") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_90012(context, evt)
	-- 解除当前场景中pointid 为%force_id%的地城入口的groupLimit状态
		ScriptLib.UnfreezeGroupLimit(context, 675)
	
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133307090, 2)
	
	-- 创建id为90006的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 90006 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_90013(context, evt)
	-- 判断变量"guard"为0
	if ScriptLib.GetGroupVariableValue(context, "guard") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_90013(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133307090, suite = 1 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133307090, 2)
	
	return 0
end