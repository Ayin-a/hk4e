-- 基础信息
local base_info = {
	group_id = 133313270
}

-- DEFS_MISCS
local JamshidRocks = 
{
    270001,
    270002,
    270003,
    270004
}

local CorrectAnswer = 
{
    4,2,2,1
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
	[270001] = { config_id = 270001, gadget_id = 70290637, pos = { x = -977.556, y = -212.664, z = 5768.806 }, rot = { x = 9.811, y = 299.806, z = -0.001 }, level = 32, state = GadgetState.GearStart, persistent = true, area_id = 32 },
	[270002] = { config_id = 270002, gadget_id = 70290636, pos = { x = -980.314, y = -212.413, z = 5763.926 }, rot = { x = 8.281, y = 293.564, z = 0.000 }, level = 32, persistent = true, area_id = 32 },
	[270003] = { config_id = 270003, gadget_id = 70290636, pos = { x = -1004.158, y = -219.629, z = 5819.613 }, rot = { x = 11.892, y = 110.867, z = 7.740 }, level = 32, state = GadgetState.GearAction1, persistent = true, area_id = 32 },
	[270004] = { config_id = 270004, gadget_id = 70211111, pos = { x = -984.021, y = -220.135, z = 5793.423 }, rot = { x = 347.272, y = 173.350, z = 354.036 }, level = 26, drop_tag = "解谜中级须弥", isOneoff = true, persistent = true, explore = { name = "chest", exp = 10 }, area_id = 32 },
	[270007] = { config_id = 270007, gadget_id = 70290635, pos = { x = -1004.098, y = -219.754, z = 5823.182 }, rot = { x = 11.492, y = 78.465, z = 0.000 }, level = 32, state = GadgetState.GearStop, area_id = 32 },
	[270008] = { config_id = 270008, gadget_id = 70290691, pos = { x = -962.312, y = -191.217, z = 5761.753 }, rot = { x = 0.000, y = 299.672, z = 0.000 }, level = 32, area_id = 32 },
	[270009] = { config_id = 270009, gadget_id = 70290688, pos = { x = -961.540, y = -191.197, z = 5760.058 }, rot = { x = 0.000, y = 255.982, z = 0.000 }, level = 32, area_id = 32 },
	[270010] = { config_id = 270010, gadget_id = 70290687, pos = { x = -976.441, y = -217.229, z = 5851.579 }, rot = { x = 1.394, y = 238.769, z = 11.348 }, level = 32, area_id = 32 },
	[270011] = { config_id = 270011, gadget_id = 70290683, pos = { x = -975.879, y = -217.443, z = 5849.944 }, rot = { x = 0.000, y = 307.353, z = 0.000 }, level = 32, area_id = 32 },
	[270012] = { config_id = 270012, gadget_id = 70330430, pos = { x = -976.247, y = -217.143, z = 5851.074 }, rot = { x = 347.401, y = 80.776, z = 351.911 }, level = 32, area_id = 32 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1270005, name = "VARIABLE_CHANGE_270005", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_270005", action = "action_EVENT_VARIABLE_CHANGE_270005" },
	{ config_id = 1270006, name = "GROUP_LOAD_270006", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_270006", action = "action_EVENT_GROUP_LOAD_270006", trigger_count = 0 }
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
		gadgets = { 270001, 270002, 270003, 270007, 270008, 270009, 270010, 270011, 270012 },
		regions = { },
		triggers = { "VARIABLE_CHANGE_270005", "GROUP_LOAD_270006" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_270005(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"is_success"为1
	if ScriptLib.GetGroupVariableValue(context, "is_success") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_270005(context, evt)
	-- 创建id为270004的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 270004 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 将configid为 270001 的物件更改为状态 GadgetState.Action01
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 270001, GadgetState.Action01) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 270002 的物件更改为状态 GadgetState.Action01
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 270002, GadgetState.Action01) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 270003 的物件更改为状态 GadgetState.Action01
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 270003, GadgetState.Action01) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_270006(context, evt)
	-- 判断变量"is_success"为1
	if ScriptLib.GetGroupVariableValue(context, "is_success") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_270006(context, evt)
	-- 创建id为270004的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 270004 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 将configid为 270001 的物件更改为状态 GadgetState.Action01
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 270001, GadgetState.Action01) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 270002 的物件更改为状态 GadgetState.Action01
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 270002, GadgetState.Action01) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 270003 的物件更改为状态 GadgetState.Action01
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 270003, GadgetState.Action01) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

require "V3_4/JamshidRock"