-- 基础信息
local base_info = {
	group_id = 133008499
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 499001, monster_id = 21011401, pos = { x = 959.354, y = 336.018, z = -869.698 }, rot = { x = 0.000, y = 186.765, z = 0.000 }, level = 30, drop_tag = "丘丘人", disableWander = true, climate_area_id = 1, area_id = 10 },
	{ config_id = 499004, monster_id = 21011401, pos = { x = 963.203, y = 335.934, z = -873.706 }, rot = { x = 0.000, y = 300.105, z = 0.000 }, level = 30, drop_tag = "丘丘人", disableWander = true, climate_area_id = 1, area_id = 10 },
	{ config_id = 499006, monster_id = 21011301, pos = { x = 955.907, y = 336.571, z = -873.324 }, rot = { x = 0.000, y = 64.098, z = 0.000 }, level = 30, drop_tag = "丘丘人", disableWander = true, pose_id = 9013, climate_area_id = 1, area_id = 10 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 499002, gadget_id = 70211012, pos = { x = 946.646, y = 340.593, z = -876.326 }, rot = { x = 0.000, y = 72.949, z = 0.000 }, level = 26, drop_tag = "雪山战斗中级蒙德", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 10 },
	{ config_id = 499007, gadget_id = 70310022, pos = { x = 958.467, y = 336.249, z = -873.080 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 10 },
	{ config_id = 499008, gadget_id = 70220059, pos = { x = 956.589, y = 336.431, z = -878.423 }, rot = { x = 0.000, y = 327.920, z = 309.178 }, level = 30, area_id = 10 },
	{ config_id = 499009, gadget_id = 70220059, pos = { x = 955.488, y = 336.818, z = -876.403 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 10 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1499003, name = "ANY_MONSTER_DIE_499003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_499003", action = "action_EVENT_ANY_MONSTER_DIE_499003" },
	{ config_id = 1499005, name = "MONSTER_BATTLE_499005", event = EventType.EVENT_MONSTER_BATTLE, source = "", condition = "condition_EVENT_MONSTER_BATTLE_499005", action = "action_EVENT_MONSTER_BATTLE_499005" }
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
		monsters = { 499006 },
		gadgets = { 499002, 499007, 499008, 499009 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_499003", "MONSTER_BATTLE_499005" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_499003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_499003(context, evt)
	-- 将configid为 499002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 499002, GadgetState.Default) then
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
function condition_EVENT_MONSTER_BATTLE_499005(context, evt)
	if 499006 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_MONSTER_BATTLE_499005(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 499001, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 499004, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end