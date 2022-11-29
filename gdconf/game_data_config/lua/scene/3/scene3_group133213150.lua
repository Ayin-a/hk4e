-- 基础信息
local base_info = {
	group_id = 133213150
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 150032, monster_id = 28010104, pos = { x = -3489.027, y = 199.488, z = -3003.865 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, drop_tag = "采集动物", area_id = 12 },
	{ config_id = 150034, monster_id = 20011101, pos = { x = -3454.940, y = 200.000, z = -3007.180 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, drop_tag = "大史莱姆", disableWander = true, area_id = 12 },
	{ config_id = 150036, monster_id = 28050104, pos = { x = -3437.852, y = 200.000, z = -3038.361 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, drop_tag = "魔法生物", disableWander = true, area_id = 12 },
	{ config_id = 150038, monster_id = 26060201, pos = { x = -3473.599, y = 200.000, z = -2997.320 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, drop_tag = "雷萤", disableWander = true, area_id = 12 },
	{ config_id = 150040, monster_id = 28050104, pos = { x = -3439.036, y = 200.068, z = -3041.277 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, drop_tag = "魔法生物", area_id = 12 },
	{ config_id = 150042, monster_id = 22010301, pos = { x = -3549.939, y = 200.000, z = -2962.260 }, rot = { x = 0.000, y = 106.504, z = 0.000 }, level = 27, drop_tag = "深渊法师", disableWander = true, area_id = 12 },
	{ config_id = 150046, monster_id = 28010104, pos = { x = -3489.097, y = 199.317, z = -2955.853 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, drop_tag = "采集动物", area_id = 12 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	-- 真掉落
	{ config_id = 150001, gadget_id = 70210101, pos = { x = -3471.454, y = 199.598, z = -3027.509 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, chest_drop_id = 1050131, drop_count = 1, area_id = 12 },
	-- 真掉落
	{ config_id = 150002, gadget_id = 70210101, pos = { x = -3470.707, y = 199.273, z = -3009.950 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, chest_drop_id = 1050131, drop_count = 1, area_id = 12 },
	-- 真掉落
	{ config_id = 150003, gadget_id = 70210101, pos = { x = -3514.073, y = 199.214, z = -3034.707 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, chest_drop_id = 1050131, drop_count = 1, area_id = 12 },
	-- 真掉落
	{ config_id = 150004, gadget_id = 70210101, pos = { x = -3516.786, y = 199.401, z = -3018.161 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, chest_drop_id = 1050131, drop_count = 1, area_id = 12 },
	{ config_id = 150005, gadget_id = 70210101, pos = { x = -3472.852, y = 199.475, z = -2993.861 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜果蔬稻妻", area_id = 12 },
	-- 对应T31
	{ config_id = 150006, gadget_id = 70210101, pos = { x = -3489.247, y = 199.279, z = -3003.715 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, chest_drop_id = 1000100, drop_count = 1, area_id = 12 },
	-- 对应T33
	{ config_id = 150007, gadget_id = 70210101, pos = { x = -3453.025, y = 199.340, z = -3006.351 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, chest_drop_id = 1000100, drop_count = 1, area_id = 12 },
	-- 对应T35
	{ config_id = 150008, gadget_id = 70210101, pos = { x = -3437.692, y = 199.576, z = -3038.299 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, chest_drop_id = 1000100, drop_count = 1, area_id = 12 },
	{ config_id = 150009, gadget_id = 70210101, pos = { x = -3513.924, y = 199.188, z = -3001.015 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜破损稻妻", area_id = 12 },
	{ config_id = 150010, gadget_id = 70210101, pos = { x = -3516.927, y = 199.491, z = -3050.769 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜通用稻妻", area_id = 12 },
	-- 真掉落
	{ config_id = 150011, gadget_id = 70210101, pos = { x = -3378.406, y = 199.336, z = -3017.761 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, chest_drop_id = 1050131, drop_count = 1, area_id = 12 },
	-- 真掉落
	{ config_id = 150012, gadget_id = 70210101, pos = { x = -3377.659, y = 199.452, z = -3000.202 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, chest_drop_id = 1050131, drop_count = 1, area_id = 12 },
	-- 真掉落
	{ config_id = 150013, gadget_id = 70210101, pos = { x = -3421.025, y = 199.425, z = -3024.959 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, chest_drop_id = 1050131, drop_count = 1, area_id = 12 },
	-- 真掉落
	{ config_id = 150014, gadget_id = 70210101, pos = { x = -3388.108, y = 199.393, z = -3026.784 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, chest_drop_id = 1050131, drop_count = 1, area_id = 12 },
	-- T37
	{ config_id = 150015, gadget_id = 70210101, pos = { x = -3473.643, y = 199.447, z = -2997.429 }, rot = { x = 0.000, y = 21.253, z = 0.000 }, level = 26, chest_drop_id = 1000100, drop_count = 1, area_id = 12 },
	{ config_id = 150016, gadget_id = 70210101, pos = { x = -3488.037, y = 199.209, z = -3002.614 }, rot = { x = 0.000, y = 21.253, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜果蔬稻妻", area_id = 12 },
	{ config_id = 150017, gadget_id = 70210101, pos = { x = -3451.551, y = 199.401, z = -3008.727 }, rot = { x = 0.000, y = 21.253, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜人文稻妻", area_id = 12 },
	-- T39
	{ config_id = 150018, gadget_id = 70210101, pos = { x = -3438.956, y = 199.696, z = -3041.196 }, rot = { x = 0.000, y = 21.253, z = 0.000 }, level = 26, chest_drop_id = 1000100, drop_count = 1, area_id = 12 },
	-- T47
	{ config_id = 150019, gadget_id = 70210101, pos = { x = -3523.862, y = 199.283, z = -3016.413 }, rot = { x = 0.000, y = 21.253, z = 0.000 }, level = 26, chest_drop_id = 1000100, drop_count = 1, area_id = 12 },
	{ config_id = 150020, gadget_id = 70210101, pos = { x = -3516.927, y = 199.480, z = -3050.769 }, rot = { x = 0.000, y = 21.253, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜通用稻妻", area_id = 12 },
	-- 真掉落
	{ config_id = 150021, gadget_id = 70210101, pos = { x = -3417.037, y = 199.154, z = -2980.138 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, chest_drop_id = 1050131, drop_count = 1, area_id = 12 },
	-- 真掉落
	{ config_id = 150022, gadget_id = 70210101, pos = { x = -3439.262, y = 199.374, z = -2959.505 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, chest_drop_id = 1050131, drop_count = 1, area_id = 12 },
	-- 真掉落
	{ config_id = 150023, gadget_id = 70210101, pos = { x = -3480.529, y = 199.680, z = -2984.160 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, chest_drop_id = 1050131, drop_count = 1, area_id = 12 },
	-- 真掉落
	{ config_id = 150024, gadget_id = 70210101, pos = { x = -3481.057, y = 199.536, z = -3024.477 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, chest_drop_id = 1050131, drop_count = 1, area_id = 12 },
	{ config_id = 150025, gadget_id = 70210101, pos = { x = -3536.022, y = 198.658, z = -2955.629 }, rot = { x = 0.000, y = 21.253, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜遗物稻妻", area_id = 12 },
	-- T41
	{ config_id = 150026, gadget_id = 70210101, pos = { x = -3548.124, y = 198.906, z = -2963.720 }, rot = { x = 0.000, y = 21.253, z = 0.000 }, level = 26, chest_drop_id = 1000100, drop_count = 1, area_id = 12 },
	{ config_id = 150027, gadget_id = 70210101, pos = { x = -3513.464, y = 199.500, z = -2975.016 }, rot = { x = 0.000, y = 21.253, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜人文稻妻", area_id = 12 },
	{ config_id = 150028, gadget_id = 70210101, pos = { x = -3503.902, y = 199.341, z = -3010.003 }, rot = { x = 0.000, y = 21.253, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜通用稻妻", area_id = 12 },
	-- T43
	{ config_id = 150029, gadget_id = 70210101, pos = { x = -3497.476, y = 199.356, z = -2979.269 }, rot = { x = 0.000, y = 21.253, z = 0.000 }, level = 26, chest_drop_id = 1000100, drop_count = 1, area_id = 12 },
	-- T45
	{ config_id = 150030, gadget_id = 70210101, pos = { x = -3489.100, y = 199.153, z = -2955.785 }, rot = { x = 0.000, y = 21.253, z = 0.000 }, level = 26, chest_drop_id = 1000100, drop_count = 1, area_id = 12 },
	{ config_id = 150048, gadget_id = 70220052, pos = { x = -3523.794, y = 199.800, z = -3015.975 }, rot = { x = 0.000, y = 275.111, z = 80.661 }, level = 27, area_id = 12 },
	{ config_id = 150049, gadget_id = 70220043, pos = { x = -3497.508, y = 199.095, z = -2978.984 }, rot = { x = 308.262, y = 0.000, z = 0.000 }, level = 27, area_id = 12 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1150031, name = "GADGET_STATE_CHANGE_150031", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_150031", action = "action_EVENT_GADGET_STATE_CHANGE_150031" },
	{ config_id = 1150033, name = "GADGET_STATE_CHANGE_150033", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_150033", action = "action_EVENT_GADGET_STATE_CHANGE_150033" },
	{ config_id = 1150035, name = "GADGET_STATE_CHANGE_150035", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_150035", action = "action_EVENT_GADGET_STATE_CHANGE_150035" },
	{ config_id = 1150037, name = "GADGET_STATE_CHANGE_150037", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_150037", action = "action_EVENT_GADGET_STATE_CHANGE_150037" },
	{ config_id = 1150039, name = "GADGET_STATE_CHANGE_150039", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_150039", action = "action_EVENT_GADGET_STATE_CHANGE_150039" },
	{ config_id = 1150041, name = "GADGET_STATE_CHANGE_150041", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_150041", action = "action_EVENT_GADGET_STATE_CHANGE_150041" },
	{ config_id = 1150043, name = "GADGET_STATE_CHANGE_150043", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_150043", action = "action_EVENT_GADGET_STATE_CHANGE_150043" },
	{ config_id = 1150045, name = "GADGET_STATE_CHANGE_150045", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_150045", action = "action_EVENT_GADGET_STATE_CHANGE_150045" },
	{ config_id = 1150047, name = "GADGET_STATE_CHANGE_150047", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_150047", action = "action_EVENT_GADGET_STATE_CHANGE_150047" }
}

-- 变量
variables = {
}

-- 废弃数据
garbages = {
	monsters = {
		{ config_id = 150044, monster_id = 28040103, pos = { x = -3497.482, y = 199.449, z = -2979.377 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, drop_tag = "水族", area_id = 12 }
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
	rand_suite = true
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
		gadgets = { 150001, 150002, 150003, 150004, 150005, 150006, 150007, 150008, 150009, 150010 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_150031", "GADGET_STATE_CHANGE_150033", "GADGET_STATE_CHANGE_150035" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 150011, 150012, 150013, 150014, 150015, 150016, 150017, 150018, 150019, 150020 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_150037", "GADGET_STATE_CHANGE_150039", "GADGET_STATE_CHANGE_150047" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 150021, 150022, 150023, 150024, 150025, 150026, 150027, 150028, 150029, 150030 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_150041", "GADGET_STATE_CHANGE_150043", "GADGET_STATE_CHANGE_150045" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_150031(context, evt)
	if 150006 ~= evt.param2 or GadgetState.ChestOpened ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_150031(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 150032, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_150033(context, evt)
	if 150007 ~= evt.param2 or GadgetState.ChestOpened ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_150033(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 150034, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_150035(context, evt)
	if 150008 ~= evt.param2 or GadgetState.ChestOpened ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_150035(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 150036, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_150037(context, evt)
	if 150015 ~= evt.param2 or GadgetState.ChestOpened ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_150037(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 150038, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_150039(context, evt)
	if 150018 ~= evt.param2 or GadgetState.ChestOpened ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_150039(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 150040, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_150041(context, evt)
	if 150026 ~= evt.param2 or GadgetState.ChestOpened ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_150041(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 150042, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_150043(context, evt)
	if 150029 ~= evt.param2 or GadgetState.ChestOpened ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_150043(context, evt)
	-- 创建id为150049的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 150049 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_150045(context, evt)
	if 150030 ~= evt.param2 or GadgetState.ChestOpened ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_150045(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 150046, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_150047(context, evt)
	if 150019 ~= evt.param2 or GadgetState.ChestOpened ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_150047(context, evt)
	-- 创建id为150048的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 150048 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end