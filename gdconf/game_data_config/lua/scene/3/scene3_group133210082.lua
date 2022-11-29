-- 基础信息
local base_info = {
	group_id = 133210082
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
	{ config_id = 82001, gadget_id = 70350004, pos = { x = -3544.861, y = 182.433, z = -1145.010 }, rot = { x = 0.000, y = 312.156, z = 90.000 }, level = 30, persistent = true, area_id = 17 },
	{ config_id = 82002, gadget_id = 70350004, pos = { x = -3544.861, y = 176.835, z = -1145.010 }, rot = { x = 0.000, y = 312.156, z = 90.000 }, level = 30, persistent = true, area_id = 17 },
	{ config_id = 82003, gadget_id = 70350004, pos = { x = -3548.222, y = 176.835, z = -1155.476 }, rot = { x = 0.000, y = 222.156, z = 90.000 }, level = 30, persistent = true, area_id = 17 },
	{ config_id = 82004, gadget_id = 70350004, pos = { x = -3548.222, y = 182.433, z = -1155.476 }, rot = { x = 0.000, y = 222.156, z = 90.000 }, level = 30, persistent = true, area_id = 17 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1082005, name = "GROUP_LOAD_82005", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_82005", action = "action_EVENT_GROUP_LOAD_82005", trigger_count = 0 }
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
			{ config_id = 82001, state = 0 },
			{ config_id = 82002, state = 0 },
			{ config_id = 82003, state = 0 },
			{ config_id = 82004, state = 0 }
		},
		monsters = {
		},
		regions = { },
		triggers = { "GROUP_LOAD_82005" },
		npcs = { },
		variables = {
		}
	},
	[2] = {
		gadgets = {
			{ config_id = 82001, state = 201 },
			{ config_id = 82002, state = 201 },
			{ config_id = 82003, state = 201 },
			{ config_id = 82004, state = 201 }
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
function condition_EVENT_GROUP_LOAD_82005(context, evt)
	-- 判断变量"successed"为1
	if ScriptLib.GetGroupVariableValueByGroup(context, "successed", 133210126) ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_82005(context, evt)
		-- 将指定flowGroup的进度和要素属性都改为目标suite（缺的创建，多的移除）
	  ScriptLib.GoToFlowSuite(context, 133210082, 2)
	
	return 0
end