-- 基础信息
local base_info = {
	group_id = 133222096
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
	{ config_id = 96001, gadget_id = 70290086, pos = { x = -4583.964, y = 414.878, z = -4176.513 }, rot = { x = 285.916, y = 212.727, z = 310.929 }, level = 30, area_id = 14 },
	{ config_id = 96002, gadget_id = 70330064, pos = { x = -4583.390, y = 418.056, z = -4175.123 }, rot = { x = 18.957, y = 353.968, z = 349.292 }, level = 30, state = GadgetState.GearStop, persistent = true, interact_id = 35, area_id = 14 },
	{ config_id = 96003, gadget_id = 70900380, pos = { x = -4592.883, y = 423.651, z = -4174.523 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 14 },
	{ config_id = 96004, gadget_id = 70900380, pos = { x = -4604.395, y = 433.163, z = -4175.387 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 14 },
	{ config_id = 96005, gadget_id = 70900380, pos = { x = -4617.798, y = 445.135, z = -4179.361 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 14 },
	{ config_id = 96006, gadget_id = 70290085, pos = { x = -4639.421, y = 434.667, z = -4188.542 }, rot = { x = 15.385, y = 276.480, z = 104.760 }, level = 30, area_id = 14 },
	{ config_id = 96007, gadget_id = 70330100, pos = { x = -4638.701, y = 438.494, z = -4202.933 }, rot = { x = 0.000, y = 29.519, z = 0.000 }, level = 30, area_id = 14 },
	{ config_id = 96008, gadget_id = 70330100, pos = { x = -4648.637, y = 438.494, z = -4186.720 }, rot = { x = 0.000, y = 53.599, z = 0.000 }, level = 30, area_id = 14 },
	{ config_id = 96009, gadget_id = 70330100, pos = { x = -4641.727, y = 438.494, z = -4174.517 }, rot = { x = 0.000, y = 85.992, z = 0.000 }, level = 30, area_id = 14 },
	{ config_id = 96010, gadget_id = 70330064, pos = { x = -4725.379, y = 502.361, z = -4190.710 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, interact_id = 35, area_id = 14 },
	{ config_id = 96011, gadget_id = 70330093, pos = { x = -4680.051, y = 470.641, z = -4193.904 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 14 },
	{ config_id = 96012, gadget_id = 70330093, pos = { x = -4685.614, y = 469.279, z = -4193.846 }, rot = { x = 0.000, y = 40.936, z = 0.000 }, level = 30, area_id = 14 },
	{ config_id = 96013, gadget_id = 70330100, pos = { x = -4691.485, y = 469.145, z = -4191.391 }, rot = { x = 0.000, y = 88.028, z = 0.000 }, level = 30, area_id = 14 },
	{ config_id = 96014, gadget_id = 70290086, pos = { x = -4699.965, y = 466.901, z = -4193.852 }, rot = { x = 294.429, y = 269.578, z = 292.395 }, level = 30, area_id = 14 },
	{ config_id = 96015, gadget_id = 70330100, pos = { x = -4724.448, y = 501.984, z = -4192.087 }, rot = { x = 0.000, y = 133.476, z = 0.000 }, level = 30, area_id = 14 },
	{ config_id = 96016, gadget_id = 70330100, pos = { x = -4726.837, y = 501.984, z = -4190.637 }, rot = { x = 0.000, y = 188.441, z = 0.000 }, level = 30, area_id = 14 },
	{ config_id = 96017, gadget_id = 70330100, pos = { x = -4724.912, y = 501.984, z = -4189.119 }, rot = { x = 0.000, y = 164.839, z = 0.000 }, level = 30, area_id = 14 },
	{ config_id = 96018, gadget_id = 70330100, pos = { x = -4726.699, y = 501.984, z = -4189.769 }, rot = { x = 0.000, y = 117.505, z = 0.000 }, level = 30, area_id = 14 },
	{ config_id = 96020, gadget_id = 70330093, pos = { x = -4732.021, y = 501.699, z = -4194.261 }, rot = { x = 0.000, y = 15.586, z = 0.000 }, level = 30, area_id = 14 },
	{ config_id = 96021, gadget_id = 70330093, pos = { x = -4736.466, y = 501.101, z = -4197.395 }, rot = { x = 0.000, y = 1.786, z = 0.000 }, level = 30, area_id = 14 },
	{ config_id = 96022, gadget_id = 70330093, pos = { x = -4740.154, y = 500.119, z = -4201.413 }, rot = { x = 0.000, y = 17.349, z = 0.000 }, level = 30, area_id = 14 },
	{ config_id = 96023, gadget_id = 70900380, pos = { x = -4757.649, y = 504.308, z = -4221.933 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 14 },
	{ config_id = 96024, gadget_id = 70330093, pos = { x = -4742.694, y = 498.767, z = -4205.929 }, rot = { x = 0.000, y = 359.004, z = 0.000 }, level = 30, area_id = 14 },
	{ config_id = 96025, gadget_id = 70330093, pos = { x = -4746.697, y = 497.520, z = -4209.731 }, rot = { x = 0.000, y = 1.786, z = 0.000 }, level = 30, area_id = 14 },
	{ config_id = 96026, gadget_id = 70330093, pos = { x = -4750.546, y = 496.986, z = -4214.664 }, rot = { x = 0.000, y = 17.349, z = 0.000 }, level = 30, area_id = 14 },
	{ config_id = 96027, gadget_id = 70900380, pos = { x = -4765.189, y = 509.010, z = -4232.418 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 14 },
	{ config_id = 96028, gadget_id = 70900380, pos = { x = -4771.694, y = 512.665, z = -4241.929 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 14 },
	{ config_id = 96029, gadget_id = 70900380, pos = { x = -4777.115, y = 516.231, z = -4248.206 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 14 },
	{ config_id = 96030, gadget_id = 70330100, pos = { x = -4666.588, y = 446.029, z = -4228.874 }, rot = { x = 0.000, y = 91.786, z = 0.000 }, level = 30, area_id = 14 },
	{ config_id = 96031, gadget_id = 70330100, pos = { x = -4687.868, y = 446.951, z = -4185.551 }, rot = { x = 0.000, y = 85.992, z = 0.000 }, level = 30, area_id = 14 },
	{ config_id = 96035, gadget_id = 70330100, pos = { x = -4706.906, y = 446.951, z = -4204.474 }, rot = { x = 0.000, y = 85.992, z = 0.000 }, level = 30, area_id = 14 },
	{ config_id = 96036, gadget_id = 70330100, pos = { x = -4690.333, y = 446.951, z = -4186.383 }, rot = { x = 0.000, y = 132.018, z = 0.000 }, level = 30, area_id = 14 },
	{ config_id = 96037, gadget_id = 70330100, pos = { x = -4671.346, y = 450.940, z = -4144.737 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 14 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1096032, name = "GADGET_STATE_CHANGE_96032", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_96032", action = "action_EVENT_GADGET_STATE_CHANGE_96032", trigger_count = 0 },
	{ config_id = 1096033, name = "GADGET_STATE_CHANGE_96033", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_96033", action = "action_EVENT_GADGET_STATE_CHANGE_96033", trigger_count = 0 },
	{ config_id = 1096034, name = "QUEST_START_96034", event = EventType.EVENT_QUEST_START, source = "7215808", condition = "", action = "action_EVENT_QUEST_START_96034", trigger_count = 0 }
}

-- 变量
variables = {
}

-- 废弃数据
garbages = {
	gadgets = {
		{ config_id = 96019, gadget_id = 70290100, pos = { x = -4728.686, y = 502.305, z = -4185.419 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, state = GadgetState.GearStart, area_id = 14 }
	}
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
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 96001, 96002, 96006, 96007, 96008, 96009, 96010, 96011, 96012, 96013, 96014, 96015, 96016, 96017, 96018, 96020, 96021, 96022, 96023, 96024, 96025, 96026, 96027, 96028, 96029, 96030, 96031, 96035, 96036, 96037 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_96032", "GADGET_STATE_CHANGE_96033", "QUEST_START_96034" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 96003, 96004, 96005 },
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
function condition_EVENT_GADGET_STATE_CHANGE_96032(context, evt)
	if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 133222096, 96002) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_96032(context, evt)
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133222096, 3)
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_96033(context, evt)
	if GadgetState.Default ~= ScriptLib.GetGadgetStateByConfigId(context, 133222096, 96002) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_96033(context, evt)
	-- 删除suite3的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133222096, 3)
	
	return 0
end

-- 触发操作
function action_EVENT_QUEST_START_96034(context, evt)
	-- 将configid为 96002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 96002, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

require "V2_0/ElectricCore"