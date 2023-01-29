-- 基础信息
local base_info = {
	group_id = 133307358
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 358001, monster_id = 24040201, pos = { x = -1734.790, y = 9.850, z = 5560.834 }, rot = { x = 0.000, y = 250.868, z = 0.000 }, level = 32, drop_tag = "元能构装体", disableWander = true, pose_id = 1004, area_id = 32 },
	{ config_id = 358004, monster_id = 24040101, pos = { x = -1736.324, y = 9.954, z = 5555.207 }, rot = { x = 0.000, y = 315.993, z = 0.000 }, level = 32, drop_tag = "元能构装体", disableWander = true, pose_id = 1004, area_id = 32 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 358002, gadget_id = 70211012, pos = { x = -1735.839, y = 9.850, z = 5558.103 }, rot = { x = 359.575, y = 284.716, z = 0.328 }, level = 26, drop_tag = "战斗中级须弥", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 10 }, area_id = 32 },
	{ config_id = 358005, gadget_id = 70330396, pos = { x = -1734.915, y = 9.850, z = 5564.089 }, rot = { x = 0.000, y = 284.702, z = 0.000 }, level = 32, area_id = 32 },
	{ config_id = 358006, gadget_id = 70330396, pos = { x = -1738.016, y = 9.850, z = 5552.697 }, rot = { x = 0.000, y = 286.821, z = 0.000 }, level = 32, area_id = 32 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1358003, name = "ANY_MONSTER_DIE_358003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_358003", action = "action_EVENT_ANY_MONSTER_DIE_358003" },
	{ config_id = 1358007, name = "MONSTER_BATTLE_358007", event = EventType.EVENT_MONSTER_BATTLE, source = "", condition = "condition_EVENT_MONSTER_BATTLE_358007", action = "action_EVENT_MONSTER_BATTLE_358007", trigger_count = 0 }
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
		monsters = { 358001, 358004 },
		gadgets = { 358002, 358005, 358006 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_358003", "MONSTER_BATTLE_358007" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_358003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_358003(context, evt)
	-- 将configid为 358002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 358002, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 4000, 3, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end

-- 触发条件
function condition_EVENT_MONSTER_BATTLE_358007(context, evt)
	if 358001 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_MONSTER_BATTLE_358007(context, evt)
	-- 将configid为 358005 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 358005, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 358006 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 358006, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end