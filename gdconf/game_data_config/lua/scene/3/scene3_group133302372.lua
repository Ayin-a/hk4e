-- 基础信息
local base_info = {
	group_id = 133302372
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 372001, monster_id = 25210303, pos = { x = -761.323, y = 212.958, z = 2792.312 }, rot = { x = 0.000, y = 103.240, z = 0.000 }, level = 27, drop_tag = "镀金旅团", pose_id = 9001, area_id = 24 },
	{ config_id = 372002, monster_id = 25210101, pos = { x = -758.299, y = 213.405, z = 2792.991 }, rot = { x = 0.000, y = 214.833, z = 0.000 }, level = 27, drop_tag = "镀金旅团", pose_id = 9003, area_id = 24 },
	{ config_id = 372010, monster_id = 25210403, pos = { x = -760.209, y = 213.112, z = 2794.188 }, rot = { x = 0.000, y = 66.252, z = 0.000 }, level = 27, drop_tag = "镀金旅团", pose_id = 9502, area_id = 24 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 372003, gadget_id = 71700432, pos = { x = -759.068, y = 213.060, z = 2794.554 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 24 },
	{ config_id = 372008, gadget_id = 70211002, pos = { x = -757.972, y = 214.048, z = 2789.402 }, rot = { x = 6.580, y = 316.621, z = 349.882 }, level = 26, drop_tag = "战斗低级须弥", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 10 }, area_id = 24 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1372004, name = "MONSTER_BATTLE_372004", event = EventType.EVENT_MONSTER_BATTLE, source = "", condition = "", action = "action_EVENT_MONSTER_BATTLE_372004" },
	{ config_id = 1372009, name = "ANY_MONSTER_DIE_372009", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_372009", action = "action_EVENT_ANY_MONSTER_DIE_372009" }
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
		monsters = { 372001, 372010 },
		gadgets = { 372003, 372008 },
		regions = { },
		triggers = { "MONSTER_BATTLE_372004", "ANY_MONSTER_DIE_372009" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发操作
function action_EVENT_MONSTER_BATTLE_372004(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 372002, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_372009(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_372009(context, evt)
	-- 将configid为 372008 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 372008, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end