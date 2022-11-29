-- 基础信息
local base_info = {
	group_id = 133008242
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 242001, monster_id = 21011301, pos = { x = 929.193, y = 298.929, z = -443.697 }, rot = { x = 0.000, y = 188.744, z = 0.000 }, level = 30, drop_tag = "丘丘人", disableWander = true, pose_id = 9003, climate_area_id = 1, area_id = 10 },
	{ config_id = 242004, monster_id = 21011401, pos = { x = 927.478, y = 298.269, z = -440.704 }, rot = { x = 0.000, y = 302.133, z = 0.000 }, level = 30, drop_tag = "丘丘人", disableWander = true, pose_id = 9012, climate_area_id = 1, area_id = 10 },
	{ config_id = 242005, monster_id = 21011401, pos = { x = 926.230, y = 298.497, z = -438.895 }, rot = { x = 0.000, y = 104.944, z = 0.000 }, level = 30, drop_tag = "丘丘人", disableWander = true, pose_id = 9012, climate_area_id = 1, area_id = 10 },
	{ config_id = 242006, monster_id = 21030501, pos = { x = 924.711, y = 299.448, z = -445.884 }, rot = { x = 0.000, y = 6.327, z = 0.000 }, level = 30, drop_tag = "丘丘萨满", disableWander = true, climate_area_id = 1, area_id = 10 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 242002, gadget_id = 70211012, pos = { x = 928.936, y = 299.063, z = -445.222 }, rot = { x = 2.684, y = -0.001, z = 357.319 }, level = 26, drop_tag = "雪山战斗中级蒙德", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 10 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1242003, name = "ANY_MONSTER_DIE_242003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_242003", action = "action_EVENT_ANY_MONSTER_DIE_242003" },
	{ config_id = 1242007, name = "MONSTER_BATTLE_242007", event = EventType.EVENT_MONSTER_BATTLE, source = "", condition = "condition_EVENT_MONSTER_BATTLE_242007", action = "action_EVENT_MONSTER_BATTLE_242007" }
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
		monsters = { 242001, 242006 },
		gadgets = { 242002 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_242003", "MONSTER_BATTLE_242007" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_242003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_242003(context, evt)
	-- 将configid为 242002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 242002, GadgetState.Default) then
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
function condition_EVENT_MONSTER_BATTLE_242007(context, evt)
	if 242001 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_MONSTER_BATTLE_242007(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 242004, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 242005, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end