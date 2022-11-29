-- 基础信息
local base_info = {
	group_id = 133302483
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 483009, monster_id = 20011001, pos = { x = -650.367, y = 132.000, z = 2665.106 }, rot = { x = 0.000, y = 273.774, z = 0.000 }, level = 27, drop_tag = "史莱姆", area_id = 24 },
	{ config_id = 483010, monster_id = 20011101, pos = { x = -653.403, y = 132.000, z = 2668.648 }, rot = { x = 0.000, y = 273.774, z = 0.000 }, level = 27, drop_tag = "大史莱姆", area_id = 24 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 483001, gadget_id = 70900050, pos = { x = -649.010, y = 131.134, z = 2669.988 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, persistent = true, area_id = 24 },
	{ config_id = 483002, gadget_id = 70310198, pos = { x = -673.058, y = 135.244, z = 2664.517 }, rot = { x = 6.644, y = 88.924, z = 5.335 }, level = 27, area_id = 24 },
	{ config_id = 483004, gadget_id = 70211102, pos = { x = -656.060, y = 131.408, z = 2660.064 }, rot = { x = 0.000, y = 213.224, z = 0.000 }, level = 26, drop_tag = "解谜低级须弥", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, vision_level = VisionLevelType.VISION_LEVEL_NORMAL, explore = { name = "chest", exp = 10 }, area_id = 24 },
	{ config_id = 483006, gadget_id = 70330219, pos = { x = -649.139, y = 131.661, z = 2670.403 }, rot = { x = 354.242, y = 204.763, z = 6.361 }, level = 27, persistent = true, area_id = 24 },
	{ config_id = 483007, gadget_id = 70310198, pos = { x = -639.400, y = 132.110, z = 2650.081 }, rot = { x = 354.120, y = 276.539, z = 353.833 }, level = 27, area_id = 24 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1483005, name = "GADGET_STATE_CHANGE_483005", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_483005", action = "action_EVENT_GADGET_STATE_CHANGE_483005" },
	{ config_id = 1483008, name = "ANY_GADGET_DIE_483008", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_483008", action = "action_EVENT_ANY_GADGET_DIE_483008" }
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
		gadgets = { 483002, 483004, 483006, 483007 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_483005", "ANY_GADGET_DIE_483008" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 483009, 483010 },
		gadgets = { },
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
function condition_EVENT_GADGET_STATE_CHANGE_483005(context, evt)
	if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 133302483, 483001) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_483005(context, evt)
	-- 将configid为 483004 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 483004, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_483008(context, evt)
	if 483006 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_483008(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133302483, 2)
	
	-- 创建id为483001的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 483001 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end