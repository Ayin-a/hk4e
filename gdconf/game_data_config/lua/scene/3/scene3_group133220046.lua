-- 基础信息
local base_info = {
	group_id = 133220046
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 46005, monster_id = 23010601, pos = { x = -2447.251, y = 258.079, z = -4262.774 }, rot = { x = 0.000, y = 31.387, z = 0.000 }, level = 27, drop_tag = "先遣队", area_id = 11 },
	{ config_id = 46006, monster_id = 23010301, pos = { x = -2458.680, y = 256.645, z = -4255.172 }, rot = { x = 0.000, y = 329.753, z = 0.000 }, level = 27, drop_tag = "先遣队", pose_id = 9011, area_id = 11 },
	{ config_id = 46007, monster_id = 23010601, pos = { x = -2460.240, y = 255.396, z = -4250.814 }, rot = { x = 0.000, y = 303.217, z = 0.000 }, level = 27, drop_tag = "先遣队", area_id = 11 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 46001, gadget_id = 70310006, pos = { x = -2463.642, y = 257.231, z = -4256.400 }, rot = { x = 5.342, y = 58.016, z = 2.268 }, level = 27, state = GadgetState.GearStart, area_id = 11 },
	{ config_id = 46002, gadget_id = 70211002, pos = { x = -2459.812, y = 258.212, z = -4259.995 }, rot = { x = 0.000, y = 352.788, z = 0.000 }, level = 26, drop_tag = "战斗低级稻妻", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 11 },
	{ config_id = 46004, gadget_id = 70220048, pos = { x = -2453.524, y = 258.388, z = -4261.800 }, rot = { x = 0.000, y = 345.892, z = 0.000 }, level = 27, area_id = 11 },
	{ config_id = 46008, gadget_id = 70220048, pos = { x = -2455.669, y = 258.200, z = -4262.076 }, rot = { x = 0.000, y = 45.414, z = 0.000 }, level = 27, area_id = 11 },
	{ config_id = 46009, gadget_id = 70220048, pos = { x = -2467.197, y = 257.600, z = -4259.354 }, rot = { x = 2.429, y = 42.213, z = 0.000 }, level = 27, area_id = 11 },
	{ config_id = 46010, gadget_id = 70220052, pos = { x = -2462.124, y = 256.841, z = -4256.541 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 11 },
	{ config_id = 46011, gadget_id = 70220052, pos = { x = -2457.505, y = 261.676, z = -4258.643 }, rot = { x = 0.000, y = 279.059, z = 135.455 }, level = 27, area_id = 11 },
	{ config_id = 46012, gadget_id = 70220051, pos = { x = -2462.633, y = 257.030, z = -4256.963 }, rot = { x = 349.483, y = 58.148, z = 354.655 }, level = 27, area_id = 11 },
	{ config_id = 46014, gadget_id = 70220050, pos = { x = -2458.062, y = 258.436, z = -4261.252 }, rot = { x = 0.000, y = 111.390, z = 0.000 }, level = 27, area_id = 11 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1046003, name = "ANY_MONSTER_DIE_46003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_46003", action = "action_EVENT_ANY_MONSTER_DIE_46003" },
	{ config_id = 1046013, name = "MONSTER_BATTLE_46013", event = EventType.EVENT_MONSTER_BATTLE, source = "", condition = "condition_EVENT_MONSTER_BATTLE_46013", action = "action_EVENT_MONSTER_BATTLE_46013" }
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
		monsters = { 46005, 46006 },
		gadgets = { 46001, 46002, 46004, 46008, 46009, 46010, 46011, 46012, 46014 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_46003", "MONSTER_BATTLE_46013" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_46003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_46003(context, evt)
	-- 将configid为 46002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 46002, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 4001, 3, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end

-- 触发条件
function condition_EVENT_MONSTER_BATTLE_46013(context, evt)
	if 46006 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_MONSTER_BATTLE_46013(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 46007, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end