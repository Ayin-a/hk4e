-- 基础信息
local base_info = {
	group_id = 133008042
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 42001, monster_id = 21030501, pos = { x = 1086.921, y = 252.865, z = -360.016 }, rot = { x = 0.000, y = 220.686, z = 0.000 }, level = 30, drop_tag = "丘丘萨满", disableWander = true, pose_id = 9012, climate_area_id = 1, area_id = 10 },
	{ config_id = 42004, monster_id = 21010901, pos = { x = 1091.565, y = 253.933, z = -359.025 }, rot = { x = 0.000, y = 201.232, z = 0.000 }, level = 30, drop_tag = "远程丘丘人", climate_area_id = 1, area_id = 10 },
	{ config_id = 42006, monster_id = 21010901, pos = { x = 1082.717, y = 252.806, z = -355.793 }, rot = { x = 0.000, y = 155.747, z = 0.000 }, level = 30, drop_tag = "远程丘丘人", climate_area_id = 1, area_id = 10 },
	{ config_id = 42007, monster_id = 21011401, pos = { x = 1089.244, y = 255.428, z = -371.819 }, rot = { x = 0.000, y = 126.713, z = 0.000 }, level = 30, drop_tag = "丘丘人", disableWander = true, pose_id = 9010, climate_area_id = 1, area_id = 10 },
	{ config_id = 42008, monster_id = 21020601, pos = { x = 1081.915, y = 252.659, z = -361.799 }, rot = { x = 0.000, y = 106.641, z = 0.000 }, level = 30, drop_tag = "丘丘暴徒", disableWander = true, climate_area_id = 1, area_id = 10 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 42002, gadget_id = 70211146, pos = { x = 1079.147, y = 252.833, z = -352.519 }, rot = { x = 0.000, y = 143.263, z = 0.000 }, level = 26, drop_tag = "雪山玉髓高级蒙德", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 4 }, area_id = 10 },
	{ config_id = 42009, gadget_id = 70360099, pos = { x = 1085.903, y = 252.775, z = -360.768 }, rot = { x = 3.566, y = 0.139, z = 4.467 }, level = 30, area_id = 10 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1042003, name = "ANY_MONSTER_DIE_42003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_42003", action = "action_EVENT_ANY_MONSTER_DIE_42003" },
	{ config_id = 1042005, name = "MONSTER_BATTLE_42005", event = EventType.EVENT_MONSTER_BATTLE, source = "", condition = "condition_EVENT_MONSTER_BATTLE_42005", action = "action_EVENT_MONSTER_BATTLE_42005" }
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
		monsters = { 42001, 42007, 42008 },
		gadgets = { 42002, 42009 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_42003", "MONSTER_BATTLE_42005" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_42003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_42003(context, evt)
	-- 将configid为 42002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 42002, GadgetState.Default) then
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
function condition_EVENT_MONSTER_BATTLE_42005(context, evt)
	if 42008 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_MONSTER_BATTLE_42005(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 42004, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 42006, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end