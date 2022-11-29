-- 基础信息
local base_info = {
	group_id = 133213033
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 33001, monster_id = 23050101, pos = { x = -3661.214, y = 231.475, z = -3080.579 }, rot = { x = 0.000, y = 183.074, z = 0.000 }, level = 29, drop_tag = "藏镜侍女", disableWander = true, climate_area_id = 2, area_id = 12 },
	{ config_id = 33004, monster_id = 23010501, pos = { x = -3656.966, y = 231.262, z = -3080.240 }, rot = { x = 0.000, y = 240.226, z = 0.000 }, level = 27, drop_tag = "先遣队", disableWander = true, climate_area_id = 2, area_id = 12 },
	{ config_id = 33005, monster_id = 23040101, pos = { x = -3659.917, y = 230.147, z = -3086.347 }, rot = { x = 0.000, y = 215.053, z = 0.000 }, level = 29, drop_tag = "召唤师", disableWander = true, climate_area_id = 2, area_id = 12 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 33002, gadget_id = 70211002, pos = { x = -3660.010, y = 229.898, z = -3090.095 }, rot = { x = 353.062, y = 0.203, z = 356.650 }, level = 26, drop_tag = "战斗低级稻妻", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 12 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1033003, name = "ANY_MONSTER_DIE_33003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_33003", action = "action_EVENT_ANY_MONSTER_DIE_33003" },
	{ config_id = 1033006, name = "MONSTER_BATTLE_33006", event = EventType.EVENT_MONSTER_BATTLE, source = "", condition = "condition_EVENT_MONSTER_BATTLE_33006", action = "action_EVENT_MONSTER_BATTLE_33006" }
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
		monsters = { 33005 },
		gadgets = { 33002 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_33003", "MONSTER_BATTLE_33006" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_33003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_33003(context, evt)
	-- 将configid为 33002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 33002, GadgetState.Default) then
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
function condition_EVENT_MONSTER_BATTLE_33006(context, evt)
	if 33005 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_MONSTER_BATTLE_33006(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 33004, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 33001, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end