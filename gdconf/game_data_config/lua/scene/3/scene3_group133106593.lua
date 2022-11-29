-- 基础信息
local base_info = {
	group_id = 133106593
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
	{ config_id = 593001, gadget_id = 70290199, pos = { x = -497.854, y = 267.872, z = 1876.646 }, rot = { x = 31.762, y = 228.370, z = 19.668 }, level = 36, persistent = true, area_id = 19 },
	{ config_id = 593002, gadget_id = 70290190, pos = { x = -478.079, y = 254.420, z = 1855.242 }, rot = { x = 351.213, y = 304.877, z = 37.053 }, level = 36, persistent = true, area_id = 19 },
	{ config_id = 593003, gadget_id = 70290191, pos = { x = -498.755, y = 265.022, z = 1872.967 }, rot = { x = 7.052, y = 114.056, z = 321.237 }, level = 36, state = GadgetState.GearStart, persistent = true, area_id = 19 },
	{ config_id = 593004, gadget_id = 70211101, pos = { x = -498.208, y = 267.836, z = 1876.331 }, rot = { x = 35.080, y = 227.062, z = 18.896 }, level = 26, drop_tag = "解谜低级璃月", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, autopick = true, explore = { name = "chest", exp = 1 }, area_id = 19 },
	{ config_id = 593005, gadget_id = 70330021, pos = { x = -474.628, y = 255.968, z = 1855.544 }, rot = { x = 324.098, y = 357.263, z = 15.456 }, level = 36, area_id = 19 },
	{ config_id = 593007, gadget_id = 70290191, pos = { x = -495.085, y = 265.629, z = 1872.811 }, rot = { x = 321.666, y = 356.479, z = 9.888 }, level = 36, state = GadgetState.GearStart, persistent = true, area_id = 19 },
	{ config_id = 593008, gadget_id = 70290191, pos = { x = -489.721, y = 258.490, z = 1864.699 }, rot = { x = 322.635, y = 354.292, z = 11.284 }, level = 36, persistent = true, area_id = 19 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1593006, name = "ANY_GADGET_DIE_593006", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_593006", action = "action_EVENT_ANY_GADGET_DIE_593006" }
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
		gadgets = { 593001, 593002, 593003, 593004, 593005, 593007, 593008 },
		regions = { },
		triggers = { "ANY_GADGET_DIE_593006" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_593006(context, evt)
	if 593001 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_593006(context, evt)
	-- 将configid为 593004 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 593004, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end