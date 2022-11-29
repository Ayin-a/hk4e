-- 基础信息
local base_info = {
	group_id = 133210394
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 394002, monster_id = 21020801, pos = { x = -3683.241, y = 119.700, z = -686.475 }, rot = { x = 0.000, y = 155.061, z = 0.000 }, level = 30, drop_tag = "丘丘岩盔王", disableWander = true, isOneoff = true, area_id = 17 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1394001, name = "VARIABLE_CHANGE_394001", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_394001", action = "action_EVENT_VARIABLE_CHANGE_394001" },
	{ config_id = 1394003, name = "ANY_MONSTER_DIE_394003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_394003", action = "action_EVENT_ANY_MONSTER_DIE_394003" }
}

-- 变量
variables = {
	{ config_id = 1, name = "Monster", value = 0, no_refresh = true }
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
		},
		monsters = {
		},
		regions = { },
		triggers = { "VARIABLE_CHANGE_394001" },
		npcs = { },
		variables = {
			{ config_id = 1, name = "Monster", value = 0, no_refresh = true }
		}
	},
	[2] = {
		gadgets = {
		},
		monsters = {
			{ config_id = 394002 }
		},
		regions = { },
		triggers = { "ANY_MONSTER_DIE_394003" },
		npcs = { },
		variables = {
			{ config_id = 1, name = "Monster", value = 0, no_refresh = true }
		}
	},
	[3] = {
		gadgets = {
		},
		monsters = {
		},
		regions = { },
		triggers = { },
		npcs = { },
		variables = {
			{ config_id = 1, name = "Monster", value = 0, no_refresh = true }
		}
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_394001(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"Monster"为1
	if ScriptLib.GetGroupVariableValue(context, "Monster") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_394001(context, evt)
		-- 将指定flowGroup的进度和要素属性都改为目标suite（缺的创建，多的移除）
	  ScriptLib.GoToFlowSuite(context, 133210394, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_394003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_394003(context, evt)
	-- 改变指定group组133210222中， configid为222002的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 133210222, 222002, GadgetState.GearStart) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
		-- 将指定flowGroup的进度和要素属性都改为目标suite（缺的创建，多的移除）
	  ScriptLib.GoToFlowSuite(context, 133210394, 3)
	
	return 0
end