-- 基础信息
local base_info = {
	group_id = 220125001
}

-- DEFS_MISCS
function SLC_SetTransfromState( context)

	ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : 设置雷军二阶段SGV")

	ScriptLib.SetEntityServerGlobalValueByEntityId(context, context.target_entity_id, "SGV_MONSTER_SHOUGUN_MITAKENARUKAMI_TRANSFORM", 1)

	return 0
end

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 1001, monster_id = 29060203, pos = { x = 0.000, y = 0.000, z = 0.000 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 1 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 1004, gadget_id = 70360001, pos = { x = 0.216, y = 0.000, z = 6.413 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1005, gadget_id = 70210106, pos = { x = 0.208, y = 0.000, z = 6.408 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "雷电将军", persistent = true, boss_chest = { monster_config_id=1001, resin=60, life_time = 1800, take_num = 1} }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1001002, name = "ANY_MONSTER_DIE_1002", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_1002", action = "action_EVENT_ANY_MONSTER_DIE_1002" },
	{ config_id = 1001003, name = "GADGET_STATE_CHANGE_1003", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_1003", action = "action_EVENT_GADGET_STATE_CHANGE_1003" }
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
		monsters = { 1001 },
		gadgets = { 1004 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_1002", "GADGET_STATE_CHANGE_1003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_1002(context, evt)
	--判断死亡怪物的configid是否为 1001
	if evt.param1 ~= 1001 then
	    return false
	 end
	  
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_1002(context, evt)
	-- 将configid为 1004 的物件更改为状态 GadgetState.Action01
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 1004, GadgetState.Action01) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_1003(context, evt)
	if 1004 ~= evt.param2 or GadgetState.Action01 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_1003(context, evt)
	-- 创建id为1005的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 1005 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end