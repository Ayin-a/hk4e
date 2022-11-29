-- 基础信息
local base_info = {
	group_id = 199001126
}

-- DEFS_MISCS
local	defs = {

		--左右旋转的SelectOptionID
		selectID_horizon = 54,

		--上下俯仰的SelectOptionID
		selectID_vertical = 55,

		--定义左右旋转的步长,key为传音花configID，value为旋转角对应的GadgetState
--GadgetState不可重复
		horizon_steps = {
			[126001] = {0, 103},
			[126010] = {0, 103},

		},

		--定义上下俯仰的步长,key为传音花configID，value为旋转角对应的GadgetState
--GadgetState不可重复
		vertical_steps = {
			

		}
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
	-- 0,103
	[126001] = { config_id = 126001, gadget_id = 70310167, pos = { x = 171.101, y = 200.860, z = 333.896 }, rot = { x = 7.261, y = 225.049, z = 355.530 }, level = 20, worktop_config = { init_options = { 54 } }, area_id = 402 },
	[126002] = { config_id = 126002, gadget_id = 70211164, pos = { x = 184.017, y = 201.986, z = 348.681 }, rot = { x = 26.668, y = 323.745, z = 6.452 }, level = 16, drop_tag = "解谜低级群岛", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, autopick = true, explore = { name = "chest", exp = 1 }, area_id = 402 },
	-- 小花-
	[126003] = { config_id = 126003, gadget_id = 70310170, pos = { x = 175.453, y = 200.283, z = 343.261 }, rot = { x = 3.041, y = 26.346, z = 8.778 }, level = 20, area_id = 402 },
	-- 小花-
	[126004] = { config_id = 126004, gadget_id = 70310170, pos = { x = 180.763, y = 199.205, z = 353.359 }, rot = { x = 340.646, y = 147.131, z = 2.424 }, level = 20, area_id = 402 },
	[126005] = { config_id = 126005, gadget_id = 70211165, pos = { x = 160.544, y = 200.839, z = 307.804 }, rot = { x = 0.462, y = 158.647, z = 359.492 }, level = 16, drop_tag = "解谜中级群岛", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, autopick = true, explore = { name = "chest", exp = 1 }, area_id = 402 },
	[126006] = { config_id = 126006, gadget_id = 70360005, pos = { x = 158.918, y = 200.723, z = 309.161 }, rot = { x = 358.317, y = 339.476, z = 5.188 }, level = 20, area_id = 402 },
	-- 小花-
	[126007] = { config_id = 126007, gadget_id = 70310170, pos = { x = 163.522, y = 200.230, z = 326.703 }, rot = { x = 356.830, y = 220.443, z = 354.821 }, level = 20, area_id = 402 },
	[126009] = { config_id = 126009, gadget_id = 70620002, pos = { x = 159.303, y = 201.939, z = 309.526 }, rot = { x = 0.000, y = 339.629, z = 0.000 }, level = 20, area_id = 402 },
	-- 0,103
	[126010] = { config_id = 126010, gadget_id = 70310167, pos = { x = 176.134, y = 201.172, z = 337.960 }, rot = { x = 355.034, y = 177.038, z = 353.026 }, level = 20, worktop_config = { init_options = { 54 } }, area_id = 402 },
	-- 小花-
	[126012] = { config_id = 126012, gadget_id = 70310170, pos = { x = 157.950, y = 200.445, z = 319.917 }, rot = { x = 359.608, y = 168.081, z = 357.352 }, level = 20, area_id = 402 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1126008, name = "GADGET_STATE_CHANGE_126008", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_126008", action = "action_EVENT_GADGET_STATE_CHANGE_126008", trigger_count = 0 },
	{ config_id = 1126011, name = "GADGET_STATE_CHANGE_126011", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_126011", action = "action_EVENT_GADGET_STATE_CHANGE_126011", trigger_count = 0 }
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
		gadgets = { 126001, 126002, 126003, 126004, 126005, 126006, 126007, 126009, 126010, 126012 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_126008", "GADGET_STATE_CHANGE_126011" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_126008(context, evt)
	if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 199001126, 126006) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_126008(context, evt)
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 199001126, EntityType.GADGET, 126009 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_126011(context, evt)
	if GadgetState.Default ~= ScriptLib.GetGadgetStateByConfigId(context, 199001126, 126006) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_126011(context, evt)
	-- 创建id为126009的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 126009 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

require "V2_8/TransferFlower"