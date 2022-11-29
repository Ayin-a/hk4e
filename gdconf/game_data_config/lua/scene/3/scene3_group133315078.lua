-- 基础信息
local base_info = {
	group_id = 133315078
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
	{ config_id = 78001, gadget_id = 70310198, pos = { x = 236.251, y = 312.575, z = 2113.879 }, rot = { x = 0.000, y = 345.268, z = 0.000 }, level = 27, area_id = 20 },
	{ config_id = 78002, gadget_id = 70310198, pos = { x = 143.039, y = 300.441, z = 2083.028 }, rot = { x = 0.000, y = 268.107, z = 0.000 }, level = 27, area_id = 20 },
	{ config_id = 78003, gadget_id = 70310200, pos = { x = 161.000, y = 325.297, z = 2086.698 }, rot = { x = 0.000, y = 45.223, z = 0.000 }, level = 27, area_id = 20 },
	{ config_id = 78004, gadget_id = 70310200, pos = { x = 200.202, y = 321.868, z = 2081.314 }, rot = { x = 0.000, y = 321.202, z = 0.000 }, level = 27, area_id = 20 },
	{ config_id = 78005, gadget_id = 70310200, pos = { x = 229.012, y = 326.321, z = 2095.745 }, rot = { x = 0.000, y = 19.262, z = 0.000 }, level = 27, area_id = 20 },
	{ config_id = 78007, gadget_id = 70211101, pos = { x = 199.978, y = 314.860, z = 2082.255 }, rot = { x = 347.305, y = 42.452, z = 359.602 }, level = 26, drop_tag = "解谜低级须弥", isOneoff = true, persistent = true, explore = { name = "chest", exp = 10 }, area_id = 20 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1078006, name = "GADGET_STATE_CHANGE_78006", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_78006", action = "action_EVENT_GADGET_STATE_CHANGE_78006" }
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
			{ config_id = 78001, state = 0 },
			{ config_id = 78002, state = 0 },
			{ config_id = 78003, state = 0 },
			{ config_id = 78004, state = 0 },
			{ config_id = 78005, state = 0 }
		},
		monsters = {
		},
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_78006" },
		npcs = { },
		variables = {
		}
	},
	[2] = {
		gadgets = {
			{ config_id = 78001, state = 0 },
			{ config_id = 78002, state = 0 },
			{ config_id = 78005, state = 201 },
			{ config_id = 78007, state = 0 }
		},
		monsters = {
		},
		regions = { },
		triggers = { },
		npcs = { },
		variables = {
		}
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_78006(context, evt)
	if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 133315078, 78003) then
		return false
	end
	
	if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 133315078, 78004) then
		return false
	end
	
	if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 133315078, 78005) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_78006(context, evt)
		-- 将指定flowGroup的进度和要素属性都改为目标suite（缺的创建，多的移除）
	  ScriptLib.GoToFlowSuite(context, 133315078, 2)
	
	return 0
end