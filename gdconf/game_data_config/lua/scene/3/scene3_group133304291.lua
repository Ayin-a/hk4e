-- 基础信息
local base_info = {
	group_id = 133304291
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
	{ config_id = 291001, gadget_id = 70230112, pos = { x = -1065.442, y = 216.944, z = 2230.494 }, rot = { x = 349.551, y = 56.109, z = 344.892 }, level = 27, area_id = 24 },
	{ config_id = 291002, gadget_id = 70230112, pos = { x = -1065.205, y = 215.858, z = 2230.096 }, rot = { x = 314.703, y = 10.341, z = 76.342 }, level = 27, area_id = 24 },
	{ config_id = 291003, gadget_id = 70230112, pos = { x = -1064.542, y = 215.894, z = 2230.418 }, rot = { x = 320.421, y = 359.282, z = 80.447 }, level = 27, area_id = 24 },
	{ config_id = 291004, gadget_id = 70230112, pos = { x = -1064.757, y = 217.271, z = 2230.906 }, rot = { x = 312.781, y = 265.696, z = 181.086 }, level = 27, area_id = 24 },
	{ config_id = 291006, gadget_id = 70310200, pos = { x = -1065.104, y = 217.394, z = 2229.707 }, rot = { x = 0.000, y = 170.912, z = 0.000 }, level = 27, area_id = 24 },
	{ config_id = 291007, gadget_id = 70211101, pos = { x = -1065.237, y = 215.086, z = 2226.271 }, rot = { x = 347.738, y = 95.686, z = 4.922 }, level = 26, drop_tag = "解谜低级须弥", isOneoff = true, persistent = true, explore = { name = "chest", exp = 10 }, area_id = 24 },
	{ config_id = 291009, gadget_id = 70330255, pos = { x = -1056.915, y = 220.355, z = 2221.601 }, rot = { x = 10.920, y = 317.546, z = 354.822 }, level = 27, area_id = 24 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1291005, name = "VARIABLE_CHANGE_291005", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_291005", action = "action_EVENT_VARIABLE_CHANGE_291005", trigger_count = 0 },
	{ config_id = 1291008, name = "GADGET_STATE_CHANGE_291008", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_291008", action = "action_EVENT_GADGET_STATE_CHANGE_291008", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "allowActive", value = 0, no_refresh = false }
}

--================================================================
-- 
-- 初始化配置
-- 
--================================================================

-- 初始化时创建
init_config = {
	io_type = 1,
	suite = 1,
	end_suite = 0,
	rand_suite = false
}

--================================================================
-- 
-- 小组配置
-- 
--================================================================

suite_disk = {
	[1] = {
		gadgets = {
			{ config_id = 291001, state = 0 },
			{ config_id = 291002, state = 0 },
			{ config_id = 291003, state = 0 },
			{ config_id = 291004, state = 0 }
		},
		monsters = {
		},
		regions = { },
		triggers = { "VARIABLE_CHANGE_291005" },
		npcs = { },
		variables = {
			{ config_id = 1, name = "allowActive", value = 0, no_refresh = false }
		}
	},
	[2] = {
		gadgets = {
			{ config_id = 291001, state = 0 },
			{ config_id = 291002, state = 0 },
			{ config_id = 291003, state = 0 },
			{ config_id = 291004, state = 0 },
			{ config_id = 291006, state = 0 },
			{ config_id = 291009, state = 0 }
		},
		monsters = {
		},
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_291008" },
		npcs = { },
		variables = {
			{ config_id = 1, name = "allowActive", value = 0, no_refresh = false }
		}
	},
	[3] = {
		gadgets = {
			{ config_id = 291001, state = 201 },
			{ config_id = 291002, state = 201 },
			{ config_id = 291003, state = 201 },
			{ config_id = 291004, state = 201 },
			{ config_id = 291006, state = 201 },
			{ config_id = 291007, state = 0 }
		},
		monsters = {
		},
		regions = { },
		triggers = { },
		npcs = { },
		variables = {
			{ config_id = 1, name = "allowActive", value = 0, no_refresh = false }
		}
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_291005(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"allowActive"为1
	if ScriptLib.GetGroupVariableValue(context, "allowActive") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_291005(context, evt)
		-- 将指定flowGroup的进度和要素属性都改为目标suite（缺的创建，多的移除）
	  ScriptLib.GoToFlowSuite(context, 133304291, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_291008(context, evt)
	if 291006 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_291008(context, evt)
		-- 将指定flowGroup的进度和要素属性都改为目标suite（缺的创建，多的移除）
	  ScriptLib.GoToFlowSuite(context, 133304291, 3)
	
	return 0
end