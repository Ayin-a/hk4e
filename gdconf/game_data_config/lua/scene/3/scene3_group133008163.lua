-- 基础信息
local base_info = {
	group_id = 133008163
}

-- Trigger变量
local defs = {
	gadget_list_1 = {163009,163013,163017,163018},
	gadget_list_2 = {163010,163014,163015,163016},
	reflect_table = {{gear=163008,result=163009},{gear=163003,result=163013},{gear=163002,result=163017},{gear=163005,result=163018},{gear=163007,result=163010},{gear=163001,result=163014},{gear=163004,result=163015},{gear=163006,result=163016}}
}

-- DEFS_MISCS
function LF_Reset(context)
	ScriptLib.SetGroupVariableValue(context, "value_1", 0)
	ScriptLib.SetGroupVariableValue(context, "value_2", 0)
	for i,v in ipairs(defs.reflect_table) do
		ScriptLib.SetGroupGadgetStateByConfigId(context, 133008163, v.result, 0)
	end
end

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
	{ config_id = 163001, gadget_id = 70360005, pos = { x = 1239.720, y = 249.157, z = -361.151 }, rot = { x = 358.804, y = 291.756, z = 357.175 }, level = 30, area_id = 10 },
	{ config_id = 163002, gadget_id = 70360005, pos = { x = 1239.478, y = 249.006, z = -371.170 }, rot = { x = 357.640, y = 203.813, z = 0.914 }, level = 30, area_id = 10 },
	{ config_id = 163003, gadget_id = 70360005, pos = { x = 1244.000, y = 248.809, z = -367.187 }, rot = { x = 358.448, y = 257.400, z = 1.264 }, level = 30, area_id = 10 },
	{ config_id = 163004, gadget_id = 70360005, pos = { x = 1235.143, y = 249.615, z = -374.292 }, rot = { x = 355.338, y = 289.016, z = 346.387 }, level = 30, area_id = 10 },
	{ config_id = 163005, gadget_id = 70360005, pos = { x = 1233.288, y = 249.247, z = -367.714 }, rot = { x = 358.110, y = 211.875, z = 3.037 }, level = 30, area_id = 10 },
	{ config_id = 163006, gadget_id = 70360005, pos = { x = 1238.807, y = 248.999, z = -365.547 }, rot = { x = 0.698, y = 55.588, z = 356.272 }, level = 30, area_id = 10 },
	{ config_id = 163007, gadget_id = 70360005, pos = { x = 1246.464, y = 248.969, z = -373.175 }, rot = { x = 0.016, y = 288.759, z = 357.171 }, level = 30, area_id = 10 },
	{ config_id = 163008, gadget_id = 70360005, pos = { x = 1250.298, y = 248.876, z = -371.684 }, rot = { x = 1.750, y = 55.584, z = 0.971 }, level = 30, area_id = 10 },
	{ config_id = 163009, gadget_id = 70230002, pos = { x = 1243.456, y = 253.699, z = -380.463 }, rot = { x = 351.909, y = 11.572, z = 8.470 }, level = 30, persistent = true, area_id = 10 },
	{ config_id = 163010, gadget_id = 70230001, pos = { x = 1242.248, y = 252.196, z = -379.844 }, rot = { x = 356.657, y = 19.613, z = 358.755 }, level = 30, persistent = true, area_id = 10 },
	{ config_id = 163011, gadget_id = 70211147, pos = { x = 1240.203, y = 249.337, z = -374.926 }, rot = { x = 8.839, y = 16.804, z = 4.498 }, level = 26, drop_tag = "雪山玉髓超级蒙德", isOneoff = true, persistent = true, explore = { name = "chest", exp = 4 }, area_id = 10 },
	{ config_id = 163012, gadget_id = 70220046, pos = { x = 1234.606, y = 249.938, z = -374.995 }, rot = { x = 304.765, y = 0.000, z = 0.000 }, level = 30, area_id = 10 },
	{ config_id = 163013, gadget_id = 70230002, pos = { x = 1240.302, y = 254.248, z = -380.086 }, rot = { x = 349.689, y = 19.135, z = 357.258 }, level = 30, persistent = true, area_id = 10 },
	{ config_id = 163014, gadget_id = 70230001, pos = { x = 1236.244, y = 257.808, z = -379.370 }, rot = { x = 357.701, y = 19.590, z = 358.756 }, level = 30, persistent = true, area_id = 10 },
	{ config_id = 163015, gadget_id = 70230001, pos = { x = 1236.092, y = 251.469, z = -378.909 }, rot = { x = 357.701, y = 19.590, z = 358.756 }, level = 30, persistent = true, area_id = 10 },
	{ config_id = 163016, gadget_id = 70230001, pos = { x = 1237.148, y = 254.546, z = -379.082 }, rot = { x = 357.745, y = 21.565, z = 356.056 }, level = 30, persistent = true, area_id = 10 },
	{ config_id = 163017, gadget_id = 70230002, pos = { x = 1237.938, y = 252.440, z = -379.270 }, rot = { x = 357.701, y = 19.590, z = 358.756 }, level = 30, persistent = true, area_id = 10 },
	{ config_id = 163018, gadget_id = 70230002, pos = { x = 1234.794, y = 253.426, z = -378.637 }, rot = { x = 357.701, y = 19.590, z = 358.756 }, level = 30, persistent = true, area_id = 10 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1163019, name = "GADGET_STATE_CHANGE_163019", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "", action = "action_EVENT_GADGET_STATE_CHANGE_163019", trigger_count = 0 },
	{ config_id = 1163020, name = "GADGET_CREATE_163020", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_163020", action = "action_EVENT_GADGET_CREATE_163020", trigger_count = 0 },
	{ config_id = 1163027, name = "VARIABLE_CHANGE_163027", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "", action = "action_EVENT_VARIABLE_CHANGE_163027", trigger_count = 0 },
	{ config_id = 1163035, name = "VARIABLE_CHANGE_163035", event = EventType.EVENT_VARIABLE_CHANGE, source = "play_done", condition = "condition_EVENT_VARIABLE_CHANGE_163035", action = "action_EVENT_VARIABLE_CHANGE_163035", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "value_1", value = 0, no_refresh = true },
	{ config_id = 2, name = "value_2", value = 0, no_refresh = true },
	{ config_id = 3, name = "play_done", value = 0, no_refresh = true }
}

--================================================================
-- 
-- 初始化配置
-- 
--================================================================

-- 初始化时创建
init_config = {
	suite = 1,
	end_suite = 2,
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
		gadgets = { 163001, 163002, 163003, 163004, 163005, 163006, 163007, 163008, 163009, 163010, 163012, 163013, 163014, 163015, 163016, 163017, 163018 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_163019", "VARIABLE_CHANGE_163027", "VARIABLE_CHANGE_163035" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 163001, 163002, 163003, 163004, 163005, 163006, 163007, 163008, 163009, 163010, 163011, 163013, 163014, 163015, 163016, 163017, 163018 },
		regions = { },
		triggers = { "GADGET_CREATE_163020" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_163019(context, evt)
	if ScriptLib.GetGroupVariableValue(context, "play_done") == 1 then
				return -1
			end
			for i,v in ipairs(defs.reflect_table) do
				if v.gear == evt.param2 then
					if evt.param1 == 201 then
						ScriptLib.SetGroupGadgetStateByConfigId(context, 0, v.result, 201)
						return 0
					else return -1
					end
				end 
			end
			for i,v in ipairs(defs.gadget_list_1) do
				if evt.param2 == v then
					if evt.param1 == 201 then
						local value_1 = ScriptLib.GetGroupVariableValue(context, "value_1")
						if value_1 % math.pow(10,i) // math.pow(10,i-1) ~= 1 then
							value_1 = value_1 + math.pow(10,i-1)
						end
						ScriptLib.SetGroupVariableValue(context, "value_1", value_1)
						return 0
					else return -1
					end
				end
			end
			for i,v in ipairs(defs.gadget_list_2) do
				if evt.param2 == v then
					if evt.param1 == 201 then
						local value_2 = ScriptLib.GetGroupVariableValue(context, "value_2")
						if value_2 % math.pow(10,i) // math.pow(10,i-1) ~= 1 then
							value_2 = value_2 + math.pow(10,i-1)
						end
						ScriptLib.SetGroupVariableValue(context, "value_2", value_2)
						return 0
					else return -1
					end
				end
			end
			return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_163020(context, evt)
	if 163001 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_163020(context, evt)
	-- 将configid为 163010 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 163010, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 163014 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 163014, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 163015 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 163015, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 163016 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 163016, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 163009 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 163009, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 163013 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 163013, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 163017 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 163017, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 163018 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 163018, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_163027(context, evt)
	if evt.param1 == evt.param2 then return -1 end
	
	if evt.source_name == "value_1" then
				if evt.param1 == 0 then
					return -1
				end
				local value_2 = ScriptLib.GetGroupVariableValue(context, "value_2")
				if value_2 == 1111 then
					if evt.param1 == 1111 then
						ScriptLib.SetGroupVariableValue(context, "play_done", 1)
						return 0
					end
				elseif value_2 ~= 0 then
					LF_Reset(context)
					return 0
				end
			elseif evt.source_name == "value_2" then
				if evt.param1 == 0 then
					return -1
				end
				local value_1 = ScriptLib.GetGroupVariableValue(context, "value_1")
				if value_1 == 1111 then
					if evt.param1 == 1111 then
						ScriptLib.SetGroupVariableValue(context, "play_done", 1)
						return 0
					end
				elseif value_1 ~= 0 then
					LF_Reset(context)
					return 0
				end
			end
			return -1
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_163035(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	if evt.param1 == 1 and evt.param3 == 0 then
	return true
	end
	return false
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_163035(context, evt)
	-- group调整group进度,只对非randSuite有效
	if 0 ~= ScriptLib.GoToGroupSuite(context, 133008163, 2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : goto_groupSuite")
		return -1
	end
	
	return 0
end