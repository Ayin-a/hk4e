-- 基础信息
local base_info = {
	group_id = 133303431
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 431001, monster_id = 25210101, pos = { x = -1410.984, y = 182.230, z = 3465.202 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, drop_tag = "镀金旅团", pose_id = 9002, area_id = 23 },
	{ config_id = 431002, monster_id = 25210201, pos = { x = -1411.078, y = 182.203, z = 3465.572 }, rot = { x = 0.000, y = 154.651, z = 0.000 }, level = 30, drop_tag = "镀金旅团", pose_id = 9005, area_id = 23 },
	{ config_id = 431003, monster_id = 25310101, pos = { x = -1400.242, y = 181.819, z = 3472.316 }, rot = { x = 0.000, y = 232.972, z = 0.000 }, level = 30, drop_tag = "中级镀金旅团", pose_id = 9004, area_id = 23 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 431007, gadget_id = 70211002, pos = { x = -1413.101, y = 182.040, z = 3464.537 }, rot = { x = 0.000, y = 68.779, z = 0.000 }, level = 26, drop_tag = "战斗低级须弥", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, vision_level = VisionLevelType.VISION_LEVEL_NORMAL, explore = { name = "chest", exp = 10 }, area_id = 23 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1431004, name = "ANY_MONSTER_LIVE_431004", event = EventType.EVENT_ANY_MONSTER_LIVE, source = "", condition = "condition_EVENT_ANY_MONSTER_LIVE_431004", action = "action_EVENT_ANY_MONSTER_LIVE_431004" },
	{ config_id = 1431005, name = "MONSTER_BATTLE_431005", event = EventType.EVENT_MONSTER_BATTLE, source = "", condition = "condition_EVENT_MONSTER_BATTLE_431005", action = "action_EVENT_MONSTER_BATTLE_431005" },
	{ config_id = 1431006, name = "ANY_MONSTER_DIE_431006", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_431006", action = "action_EVENT_ANY_MONSTER_DIE_431006" }
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
		monsters = { 431001, 431002, 431003 },
		gadgets = { 431007 },
		regions = { },
		triggers = { "ANY_MONSTER_LIVE_431004", "MONSTER_BATTLE_431005", "ANY_MONSTER_DIE_431006" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_LIVE_431004(context, evt)
	if 431003 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_LIVE_431004(context, evt)
	-- 将group 133303431 中config id为 431003 的怪物血量设为 51 %（血量百分比不能填0，如果掉血，则走通用的掉血流程，如果加血，直接设置新的血量）。
	if 0 ~= ScriptLib.SetMonsterHp(context, 133303431, 431003, 51) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_monster_hp_by_group")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_MONSTER_BATTLE_431005(context, evt)
	if 431002 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_MONSTER_BATTLE_431005(context, evt)
	-- 通知groupid为133303431中,configid为：431003的怪物入战或者脱战，set为1是入战，为0是脱战
	if 0 ~= ScriptLib.SetMonsterBattleByGroup(context, 431003, 133303431) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_monster_battle_by_group")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_431006(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_431006(context, evt)
	-- 将configid为 431007 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 431007, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end