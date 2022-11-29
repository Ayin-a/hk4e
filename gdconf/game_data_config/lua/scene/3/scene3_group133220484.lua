-- 基础信息
local base_info = {
	group_id = 133220484
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
	{ config_id = 484002, gadget_id = 70900387, pos = { x = -2332.059, y = 188.136, z = -4211.162 }, rot = { x = 0.000, y = 18.840, z = 0.000 }, level = 19, isOneoff = true, persistent = true, area_id = 11 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1484003, name = "ANY_GADGET_DIE_484003", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_484003", action = "action_EVENT_ANY_GADGET_DIE_484003" }
}

-- 变量
variables = {
}

-- 废弃数据
garbages = {
	gadgets = {
		{ config_id = 484001, gadget_id = 70211101, pos = { x = -2331.939, y = 190.760, z = -4211.615 }, rot = { x = 0.000, y = 243.950, z = 0.000 }, level = 26, drop_tag = "解谜低级稻妻", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 11 }
	},
	triggers = {
		{ config_id = 1484004, name = "GADGET_STATE_CHANGE_484004", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_484004", action = "action_EVENT_GADGET_STATE_CHANGE_484004", trigger_count = 0 }
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
		gadgets = { 484002 },
		regions = { },
		triggers = { "ANY_GADGET_DIE_484003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_484003(context, evt)
	if 484002 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_484003(context, evt)
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 2012, 3, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end