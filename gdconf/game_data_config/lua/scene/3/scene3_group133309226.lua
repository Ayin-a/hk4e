-- 基础信息
local base_info = {
	group_id = 133309226
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
	{ config_id = 226002, gadget_id = 70330225, pos = { x = -2268.554, y = 3.608, z = 5620.299 }, rot = { x = 0.000, y = 31.730, z = 0.000 }, level = 32, persistent = true, area_id = 27 },
	{ config_id = 226003, gadget_id = 70330225, pos = { x = -2195.451, y = 6.024, z = 5599.693 }, rot = { x = 0.000, y = 256.857, z = 0.000 }, level = 32, persistent = true, area_id = 27 },
	{ config_id = 226004, gadget_id = 70330225, pos = { x = -2226.910, y = -8.888, z = 5587.835 }, rot = { x = 0.000, y = 256.857, z = 0.000 }, level = 32, state = GadgetState.GearStop, persistent = true, area_id = 27 },
	{ config_id = 226005, gadget_id = 70330429, pos = { x = -2226.640, y = -9.612, z = 5588.967 }, rot = { x = 317.522, y = 133.400, z = 71.175 }, level = 32, persistent = true, area_id = 27 },
	{ config_id = 226006, gadget_id = 70330427, pos = { x = -2226.925, y = -9.708, z = 5587.811 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, persistent = true, area_id = 27 },
	{ config_id = 226008, gadget_id = 70330427, pos = { x = -2227.130, y = -10.438, z = 5588.522 }, rot = { x = 32.970, y = 353.086, z = 42.072 }, level = 32, area_id = 27 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1226007, name = "ANY_GADGET_DIE_226007", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_226007", action = "action_EVENT_ANY_GADGET_DIE_226007" }
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
		gadgets = { 226002, 226003, 226004, 226005, 226006, 226008 },
		regions = { },
		triggers = { "ANY_GADGET_DIE_226007" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_226007(context, evt)
	if 226006 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_226007(context, evt)
	-- 将configid为 226004 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 226004, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

require "V3_1/Engineer_Mark"