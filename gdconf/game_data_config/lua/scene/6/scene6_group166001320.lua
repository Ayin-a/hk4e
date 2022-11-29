-- 基础信息
local base_info = {
	group_id = 166001320
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
	{ config_id = 320001, gadget_id = 70290219, pos = { x = 992.964, y = 1014.669, z = 867.946 }, rot = { x = 354.731, y = 81.466, z = 359.920 }, level = 36, area_id = 300 },
	{ config_id = 320003, gadget_id = 70290219, pos = { x = 993.802, y = 1014.524, z = 870.488 }, rot = { x = 0.000, y = 24.359, z = 353.305 }, level = 36, area_id = 300 },
	{ config_id = 320004, gadget_id = 70211002, pos = { x = 995.325, y = 1015.132, z = 868.338 }, rot = { x = 9.312, y = 321.735, z = 357.522 }, level = 26, drop_tag = "战斗低级璃月", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 300 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1320005, name = "GADGET_STATE_CHANGE_320005", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_320005", action = "action_EVENT_GADGET_STATE_CHANGE_320005" }
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
		gadgets = { 320001, 320003, 320004 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_320005" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_320005(context, evt)
	if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 166001320, 320001) then
		return false
	end
	
	if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 166001320, 320003) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_320005(context, evt)
	-- 将configid为 320004 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 320004, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end