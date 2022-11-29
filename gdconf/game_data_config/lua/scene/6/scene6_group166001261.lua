-- 基础信息
local base_info = {
	group_id = 166001261
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
	{ config_id = 261001, gadget_id = 70290219, pos = { x = 1117.914, y = 960.043, z = 525.949 }, rot = { x = 0.000, y = 24.105, z = 0.000 }, level = 32, area_id = 300 },
	{ config_id = 261002, gadget_id = 70290219, pos = { x = 1115.338, y = 959.974, z = 524.708 }, rot = { x = 0.000, y = 106.002, z = 0.000 }, level = 32, area_id = 300 },
	{ config_id = 261003, gadget_id = 70290219, pos = { x = 1119.615, y = 961.227, z = 523.301 }, rot = { x = 0.000, y = 332.163, z = 0.000 }, level = 32, area_id = 300 },
	{ config_id = 261004, gadget_id = 70211002, pos = { x = 1116.987, y = 961.234, z = 521.974 }, rot = { x = 9.174, y = 0.371, z = 12.429 }, level = 26, drop_tag = "战斗低级璃月", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 300 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1261005, name = "GADGET_STATE_CHANGE_261005", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_261005", action = "action_EVENT_GADGET_STATE_CHANGE_261005" }
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
		gadgets = { 261001, 261002, 261003, 261004 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_261005" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_261005(context, evt)
	if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 166001261, 261001) then
		return false
	end
	
	if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 166001261, 261002) then
		return false
	end
	
	if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 166001261, 261003) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_261005(context, evt)
	-- 将configid为 261004 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 261004, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end