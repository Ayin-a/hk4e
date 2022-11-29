-- 基础信息
local base_info = {
	group_id = 133315009
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 9004, monster_id = 20010301, pos = { x = 353.761, y = 182.500, z = 2303.092 }, rot = { x = 0.000, y = 195.273, z = 0.000 }, level = 27, drop_id = 1000100, area_id = 20 },
	{ config_id = 9007, monster_id = 20010301, pos = { x = 360.851, y = 182.500, z = 2300.052 }, rot = { x = 0.000, y = 214.286, z = 0.000 }, level = 27, drop_id = 1000100, area_id = 20 },
	{ config_id = 9009, monster_id = 20010301, pos = { x = 356.124, y = 182.500, z = 2302.246 }, rot = { x = 0.000, y = 194.233, z = 0.000 }, level = 27, drop_id = 1000100, area_id = 20 },
	{ config_id = 9016, monster_id = 20010301, pos = { x = 358.386, y = 182.500, z = 2301.269 }, rot = { x = 0.000, y = 200.970, z = 0.000 }, level = 27, drop_id = 1000100, area_id = 20 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 9001, gadget_id = 70310198, pos = { x = 347.626, y = 183.572, z = 2289.281 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 20 },
	{ config_id = 9002, gadget_id = 70310200, pos = { x = 358.291, y = 198.168, z = 2303.783 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 20 },
	{ config_id = 9003, gadget_id = 70290531, pos = { x = 358.291, y = 198.168, z = 2303.783 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, route_id = 331500085, area_id = 20 },
	{ config_id = 9012, gadget_id = 70310200, pos = { x = 359.648, y = 182.907, z = 2302.152 }, rot = { x = 0.000, y = 33.529, z = 0.000 }, level = 27, area_id = 20 },
	{ config_id = 9013, gadget_id = 70310200, pos = { x = 356.041, y = 182.907, z = 2303.588 }, rot = { x = 0.000, y = 17.623, z = 0.000 }, level = 27, area_id = 20 },
	{ config_id = 9017, gadget_id = 70211101, pos = { x = 356.391, y = 181.941, z = 2300.156 }, rot = { x = 0.000, y = 25.471, z = 0.000 }, level = 26, drop_tag = "解谜低级须弥", isOneoff = true, persistent = true, explore = { name = "chest", exp = 10 }, area_id = 20 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1009005, name = "GADGET_STATE_CHANGE_9005", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_9005", action = "action_EVENT_GADGET_STATE_CHANGE_9005", trigger_count = 0 },
	-- 玩法开始
	{ config_id = 1009006, name = "GADGET_STATE_CHANGE_9006", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_9006", action = "action_EVENT_GADGET_STATE_CHANGE_9006", trigger_count = 0 },
	{ config_id = 1009008, name = "GADGET_STATE_CHANGE_9008", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_9008", action = "action_EVENT_GADGET_STATE_CHANGE_9008" },
	-- 玩法完成
	{ config_id = 1009010, name = "ANY_MONSTER_DIE_9010", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_9010", action = "action_EVENT_ANY_MONSTER_DIE_9010" },
	{ config_id = 1009014, name = "PLATFORM_ARRIVAL_9014", event = EventType.EVENT_PLATFORM_ARRIVAL, source = "", condition = "condition_EVENT_PLATFORM_ARRIVAL_9014", action = "action_EVENT_PLATFORM_ARRIVAL_9014" }
}

-- 变量
variables = {
}

-- 废弃数据
garbages = {
	triggers = {
		{ config_id = 1009011, name = "PLATFORM_REACH_POINT_9011", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_9011", action = "action_EVENT_PLATFORM_REACH_POINT_9011" }
	}
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
	end_suite = 3,
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
			{ config_id = 9001, state = 0 },
			{ config_id = 9002, state = 0 }
		},
		monsters = {
		},
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_9006" },
		npcs = { },
		variables = {
		}
	},
	[2] = {
		gadgets = {
			{ config_id = 9001, state = 0 },
			{ config_id = 9002, state = 0 },
			{ config_id = 9003, state = 0, platform_info = { point_id = 0, move_type = 1, route_id = 0, route_index = 0, is_started = false } }
		},
		monsters = {
		},
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_9008", "PLATFORM_ARRIVAL_9014" },
		npcs = { },
		variables = {
		}
	},
	[3] = {
		gadgets = {
			{ config_id = 9001, state = 0 },
			{ config_id = 9002, state = 201 },
			{ config_id = 9012, state = 0 },
			{ config_id = 9013, state = 0 }
		},
		monsters = {
		},
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_9005" },
		npcs = { },
		variables = {
		}
	},
	[4] = {
		gadgets = {
			{ config_id = 9001, state = 0 },
			{ config_id = 9002, state = 201 }
		},
		monsters = {
			{ config_id = 9004 },
			{ config_id = 9007 },
			{ config_id = 9009 },
			{ config_id = 9016 }
		},
		regions = { },
		triggers = { "ANY_MONSTER_DIE_9010" },
		npcs = { },
		variables = {
		}
	},
	[5] = {
		gadgets = {
			{ config_id = 9001, state = 0 },
			{ config_id = 9002, state = 201 },
			{ config_id = 9017, state = 0 }
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
function condition_EVENT_GADGET_STATE_CHANGE_9005(context, evt)
	if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 133315009, 9012) then
		return false
	end
	
	if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 133315009, 9013) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_9005(context, evt)
		-- 将指定flowGroup的进度和要素属性都改为目标suite（缺的创建，多的移除）
	  ScriptLib.GoToFlowSuite(context, 133315009, 4)
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_9006(context, evt)
	if 9002 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_9006(context, evt)
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 30005, 1, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
		-- 将指定flowGroup的进度和要素属性都改为目标suite（缺的创建，多的移除）
	  ScriptLib.GoToFlowSuite(context, 133315009, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_9008(context, evt)
	if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 133315009, 9003) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_9008(context, evt)
		-- 将指定flowGroup的进度和要素属性都改为目标suite（缺的创建，多的移除）
	  ScriptLib.GoToFlowSuite(context, 133315009, 3)
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_9010(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_9010(context, evt)
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 30005, 3, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
		-- 将指定flowGroup的进度和要素属性都改为目标suite（缺的创建，多的移除）
	  ScriptLib.GoToFlowSuite(context, 133315009, 5)
	
	return 0
end

-- 触发条件
function condition_EVENT_PLATFORM_ARRIVAL_9014(context, evt)
	-- 判断是gadgetid 为 9003的移动平台，是否到达了331500085 的路线中的 1 点
	
	if 9003 ~= evt.param1 then
	  return false
	end
	
	if 331500085 ~= evt.param2 then
	  return false
	end
	
	if 1 ~= evt.param3 then
	  return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_PLATFORM_ARRIVAL_9014(context, evt)
		-- 将指定flowGroup的进度和要素属性都改为目标suite（缺的创建，多的移除）
	  ScriptLib.GoToFlowSuite(context, 133315009, 3)
	
	return 0
end