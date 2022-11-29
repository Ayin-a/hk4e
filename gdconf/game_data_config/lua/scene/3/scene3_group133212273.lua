-- 基础信息
local base_info = {
	group_id = 133212273
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
	{ config_id = 273001, gadget_id = 70900394, pos = { x = -3728.040, y = 242.015, z = -2119.021 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 13 },
	{ config_id = 273002, gadget_id = 70900394, pos = { x = -3726.664, y = 241.813, z = -2119.197 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 13 },
	{ config_id = 273003, gadget_id = 70900394, pos = { x = -3725.367, y = 241.253, z = -2117.287 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 13 },
	{ config_id = 273005, gadget_id = 70900394, pos = { x = -3729.121, y = 241.800, z = -2117.354 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 13 },
	{ config_id = 273006, gadget_id = 70900394, pos = { x = -3728.091, y = 241.266, z = -2115.460 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 13 },
	{ config_id = 273007, gadget_id = 70211002, pos = { x = -3727.123, y = 241.533, z = -2117.375 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "战斗低级稻妻", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 13 }
}

-- 区域
regions = {
	{ config_id = 273004, shape = RegionShape.SPHERE, radius = 4, pos = { x = -3726.422, y = 241.014, z = -2115.434 }, area_id = 13 }
}

-- 触发器
triggers = {
	{ config_id = 1273004, name = "ENTER_REGION_273004", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_273004", action = "action_EVENT_ENTER_REGION_273004", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "sword_01", value = 0, no_refresh = true }
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
		gadgets = { 273001, 273002, 273003, 273005, 273006, 273007 },
		regions = { 273004 },
		triggers = { "ENTER_REGION_273004" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_273004(context, evt)
	if evt.param1 ~= 273004 then return false end
	
	-- 判断变量"sword_01"为1
	if ScriptLib.GetGroupVariableValue(context, "sword_01") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_273004(context, evt)
	-- 将configid为 273007 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 273007, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end