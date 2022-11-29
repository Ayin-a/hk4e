-- 基础信息
local base_info = {
	group_id = 220133043
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
			[43006] = {0, 102},

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
	-- 小花-水平转动
	[43001] = { config_id = 43001, gadget_id = 70310170, pos = { x = 43.048, y = 186.336, z = 635.914 }, rot = { x = 14.844, y = 287.227, z = 356.680 }, level = 1, persistent = true },
	[43002] = { config_id = 43002, gadget_id = 70950157, pos = { x = 23.371, y = 188.992, z = 631.222 }, rot = { x = 18.304, y = 355.632, z = 269.957 }, level = 1, persistent = true },
	-- 小花-仰角转动0,35,75
	[43003] = { config_id = 43003, gadget_id = 70310170, pos = { x = 70.723, y = 192.526, z = 637.758 }, rot = { x = 23.773, y = 321.787, z = 5.490 }, level = 1, persistent = true },
	[43004] = { config_id = 43004, gadget_id = 70310186, pos = { x = 24.280, y = 183.544, z = 636.730 }, rot = { x = 0.000, y = 271.591, z = 0.000 }, level = 1, state = GadgetState.GearStop },
	[43005] = { config_id = 43005, gadget_id = 70310171, pos = { x = 73.875, y = 193.603, z = 637.028 }, rot = { x = 2.168, y = 358.393, z = 2.402 }, level = 1, persistent = true, interact_id = 64 },
	-- 小花-仰角转动0,102
	[43006] = { config_id = 43006, gadget_id = 70310167, pos = { x = 32.926, y = 184.027, z = 638.404 }, rot = { x = 354.181, y = 170.043, z = 7.505 }, level = 1, persistent = true, worktop_config = { init_options = { 54 } } },
	[43007] = { config_id = 43007, gadget_id = 70950157, pos = { x = 23.371, y = 190.604, z = 641.937 }, rot = { x = 343.264, y = 4.705, z = 260.427 }, level = 1, persistent = true },
	-- 小花-水平转动
	[43011] = { config_id = 43011, gadget_id = 70310170, pos = { x = 46.986, y = 186.907, z = 643.768 }, rot = { x = 7.028, y = 206.696, z = 357.612 }, level = 1, persistent = true },
	-- 小花-水平转动
	[43013] = { config_id = 43013, gadget_id = 70310170, pos = { x = 55.954, y = 187.821, z = 640.404 }, rot = { x = 7.177, y = 294.521, z = 1.682 }, level = 1, persistent = true },
	-- 小花-水平转动
	[43015] = { config_id = 43015, gadget_id = 70310170, pos = { x = 64.948, y = 188.757, z = 645.432 }, rot = { x = 3.515, y = 241.251, z = 357.808 }, level = 1, persistent = true }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1043008, name = "ANY_GADGET_DIE_43008", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_43008", action = "action_EVENT_ANY_GADGET_DIE_43008", trigger_count = 0 }
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
		gadgets = { 43001, 43002, 43003, 43004, 43005, 43006, 43007, 43011, 43013, 43015 },
		regions = { },
		triggers = { "ANY_GADGET_DIE_43008" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_43008(context, evt)
	if 43004 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_43008(context, evt)
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 220133043, EntityType.GADGET, 43002 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 220133043, EntityType.GADGET, 43007 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
	return 0
end

require "V2_8/TransferFlower"