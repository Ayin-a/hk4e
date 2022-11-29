-- 基础信息
local base_info = {
	group_id = 133213034
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 34001, monster_id = 23050101, pos = { x = -3666.949, y = 205.868, z = -3188.785 }, rot = { x = 0.000, y = 0.208, z = 0.000 }, level = 27, drop_tag = "藏镜侍女", disableWander = true, climate_area_id = 2, area_id = 12 },
	{ config_id = 34005, monster_id = 23010101, pos = { x = -3670.617, y = 205.845, z = -3185.026 }, rot = { x = 0.000, y = 74.728, z = 0.000 }, level = 29, drop_tag = "先遣队", disableWander = true, climate_area_id = 2, area_id = 12 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 34002, gadget_id = 70211002, pos = { x = -3664.142, y = 206.860, z = -3182.444 }, rot = { x = 0.000, y = 227.135, z = 0.000 }, level = 26, drop_tag = "战斗低级稻妻", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 12 },
	{ config_id = 34006, gadget_id = 70310004, pos = { x = -3671.212, y = 205.821, z = -3193.636 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 12 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1034003, name = "ANY_MONSTER_DIE_34003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_34003", action = "action_EVENT_ANY_MONSTER_DIE_34003" },
	{ config_id = 1034004, name = "MONSTER_BATTLE_34004", event = EventType.EVENT_MONSTER_BATTLE, source = "", condition = "condition_EVENT_MONSTER_BATTLE_34004", action = "action_EVENT_MONSTER_BATTLE_34004" }
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
		monsters = { 34001 },
		gadgets = { 34002, 34006 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_34003", "MONSTER_BATTLE_34004" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_34003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_34003(context, evt)
	-- 将configid为 34002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 34002, GadgetState.Default) then
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
function condition_EVENT_MONSTER_BATTLE_34004(context, evt)
	if 34001 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_MONSTER_BATTLE_34004(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 34005, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end