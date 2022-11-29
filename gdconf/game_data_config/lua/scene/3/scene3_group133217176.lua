-- 基础信息
local base_info = {
	group_id = 133217176
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
	{ config_id = 176001, gadget_id = 70800034, pos = { x = -4442.283, y = 199.456, z = -3782.240 }, rot = { x = 273.047, y = 87.271, z = 176.466 }, level = 30, persistent = true, area_id = 14 },
	{ config_id = 176002, gadget_id = 70800045, pos = { x = -4416.222, y = 185.225, z = -3786.270 }, rot = { x = 0.000, y = 281.387, z = 0.000 }, level = 30, persistent = true, area_id = 14 },
	{ config_id = 176003, gadget_id = 70800034, pos = { x = -4425.557, y = 191.957, z = -3739.581 }, rot = { x = 0.000, y = 10.018, z = 0.000 }, level = 30, persistent = true, area_id = 14 },
	{ config_id = 176004, gadget_id = 70800034, pos = { x = -4428.160, y = 191.957, z = -3741.182 }, rot = { x = 0.000, y = 10.018, z = 0.000 }, level = 30, persistent = true, area_id = 14 },
	{ config_id = 176005, gadget_id = 70800034, pos = { x = -4429.061, y = 192.534, z = -3741.003 }, rot = { x = 0.000, y = 94.286, z = 0.000 }, level = 30, persistent = true, area_id = 14 },
	{ config_id = 176006, gadget_id = 70800034, pos = { x = -4426.585, y = 192.534, z = -3740.574 }, rot = { x = 0.000, y = 61.946, z = 0.000 }, level = 30, persistent = true, area_id = 14 },
	{ config_id = 176007, gadget_id = 70800034, pos = { x = -4423.690, y = 192.534, z = -3740.242 }, rot = { x = 0.000, y = 308.685, z = 0.000 }, level = 30, persistent = true, area_id = 14 },
	{ config_id = 176008, gadget_id = 70800034, pos = { x = -4431.951, y = 192.247, z = -3744.162 }, rot = { x = 353.757, y = 94.286, z = 356.928 }, level = 30, persistent = true, area_id = 14 },
	{ config_id = 176009, gadget_id = 70800045, pos = { x = -4420.078, y = 185.101, z = -3790.238 }, rot = { x = 341.679, y = 344.723, z = 353.381 }, level = 30, persistent = true, area_id = 14 },
	{ config_id = 176010, gadget_id = 70800034, pos = { x = -4416.839, y = 183.470, z = -3785.884 }, rot = { x = 296.035, y = 3.468, z = 281.920 }, level = 30, persistent = true, area_id = 14 },
	{ config_id = 176011, gadget_id = 70800034, pos = { x = -4421.973, y = 183.856, z = -3790.148 }, rot = { x = 275.338, y = 191.349, z = 169.196 }, level = 30, persistent = true, area_id = 14 },
	{ config_id = 176012, gadget_id = 70800034, pos = { x = -4419.297, y = 184.439, z = -3790.372 }, rot = { x = 275.338, y = 179.940, z = 169.196 }, level = 30, persistent = true, area_id = 14 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1176013, name = "ANY_GADGET_DIE_176013", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_176013", action = "action_EVENT_ANY_GADGET_DIE_176013", trigger_count = 0 },
	{ config_id = 1176014, name = "ANY_GADGET_DIE_176014", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_176014", action = "action_EVENT_ANY_GADGET_DIE_176014", trigger_count = 0 },
	{ config_id = 1176015, name = "ANY_GADGET_DIE_176015", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_176015", action = "action_EVENT_ANY_GADGET_DIE_176015", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "Door", value = 0, no_refresh = true }
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
		gadgets = { 176001, 176002, 176003, 176004, 176005, 176006, 176007, 176008, 176009, 176010, 176011, 176012 },
		regions = { },
		triggers = { "ANY_GADGET_DIE_176013", "ANY_GADGET_DIE_176014", "ANY_GADGET_DIE_176015" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_176013(context, evt)
	if 176001 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_176013(context, evt)
	-- 将本组内变量名为 "FloorPlayStart" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "FloorPlayStart", 1, 133217106) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_176014(context, evt)
	if 176005 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_176014(context, evt)
	-- 将本组内变量名为 "FloorPlayStart" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "FloorPlayStart", 1, 133217177) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_176015(context, evt)
	if 176010 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_176015(context, evt)
	-- 将本组内变量名为 "Door" 的变量设置为 3
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "Door", 3) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end