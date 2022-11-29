-- 基础信息
local base_info = {
	group_id = 133315015
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
	{ config_id = 15001, gadget_id = 70360001, pos = { x = -120.840, y = 201.237, z = 2881.475 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, persistent = true, area_id = 20 },
	{ config_id = 15003, gadget_id = 70310215, pos = { x = -131.637, y = 203.024, z = 2876.952 }, rot = { x = 0.000, y = 25.718, z = 0.000 }, level = 27, persistent = true, area_id = 20 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1015007, name = "ANY_GADGET_DIE_15007", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_15007", action = "action_EVENT_ANY_GADGET_DIE_15007" }
}

-- 变量
variables = {
}

-- 废弃数据
garbages = {
	monsters = {
		{ config_id = 15004, monster_id = 26090901, pos = { x = -128.509, y = 203.228, z = 2878.420 }, rot = { x = 0.000, y = 307.779, z = 0.000 }, level = 27, drop_id = 1000100, disableWander = true, isOneoff = true, pose_id = 101, area_id = 20 },
		{ config_id = 15005, monster_id = 26090901, pos = { x = -130.035, y = 203.611, z = 2879.837 }, rot = { x = 0.000, y = 222.878, z = 0.000 }, level = 27, drop_id = 1000100, disableWander = true, isOneoff = true, pose_id = 101, area_id = 20 },
		{ config_id = 15006, monster_id = 26090901, pos = { x = -129.333, y = 203.739, z = 2879.020 }, rot = { x = 0.000, y = 46.433, z = 0.000 }, level = 27, drop_id = 1000100, disableWander = true, isOneoff = true, pose_id = 101, area_id = 20 }
	},
	triggers = {
		{ config_id = 1015002, name = "MONSTER_BATTLE_15002", event = EventType.EVENT_MONSTER_BATTLE, source = "", condition = "condition_EVENT_MONSTER_BATTLE_15002", action = "action_EVENT_MONSTER_BATTLE_15002" },
		{ config_id = 1015008, name = "ANY_MONSTER_DIE_15008", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_15008", action = "action_EVENT_ANY_MONSTER_DIE_15008", trigger_count = 0 }
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
		gadgets = { 15001, 15003 },
		regions = { },
		triggers = { "ANY_GADGET_DIE_15007" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_15007(context, evt)
	if 15003 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_15007(context, evt)
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 6085, 3, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	-- 将configid为 15001 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 15001, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end