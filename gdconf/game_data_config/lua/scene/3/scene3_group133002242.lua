-- 基础信息
local base_info = {
	group_id = 133002242
}

-- Trigger变量
local defs = {
	monster_id_1 = 806,
	monster_id_2 = 807
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 803, monster_id = 21010301, pos = { x = 2039.625, y = 209.576, z = -1010.756 }, rot = { x = 0.000, y = 169.328, z = 0.000 }, level = 14, drop_tag = "丘丘人", area_id = 3 },
	{ config_id = 804, monster_id = 21010201, pos = { x = 2035.313, y = 210.692, z = -1011.322 }, rot = { x = 0.000, y = 138.302, z = 0.000 }, level = 4, drop_tag = "丘丘人", disableWander = true, area_id = 3 },
	{ config_id = 806, monster_id = 21010701, pos = { x = 2044.018, y = 207.825, z = -992.659 }, rot = { x = 0.000, y = 169.328, z = 0.000 }, level = 11, drop_tag = "丘丘人", area_id = 3 },
	{ config_id = 807, monster_id = 21010701, pos = { x = 2037.593, y = 208.161, z = -994.242 }, rot = { x = 0.000, y = 170.990, z = 0.000 }, level = 1, drop_tag = "丘丘人", area_id = 3 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 2104, gadget_id = 70211012, pos = { x = 2035.947, y = 210.456, z = -1013.016 }, rot = { x = 4.520, y = 21.417, z = 346.799 }, level = 1, drop_tag = "战斗中级蒙德", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 3 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1000288, name = "MONSTER_BATTLE_288", event = EventType.EVENT_MONSTER_BATTLE, source = "", condition = "condition_EVENT_MONSTER_BATTLE_288", action = "action_EVENT_MONSTER_BATTLE_288" },
	{ config_id = 1000289, name = "ANY_MONSTER_DIE_289", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_289", action = "action_EVENT_ANY_MONSTER_DIE_289" }
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
		monsters = { 803, 804 },
		gadgets = { 2104 },
		regions = { },
		triggers = { "MONSTER_BATTLE_288", "ANY_MONSTER_DIE_289" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100,
		ban_refresh = true
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_MONSTER_BATTLE_288(context, evt)
	if 803 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_MONSTER_BATTLE_288(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = defs.monster_id_1, delay_time = 0 }) then
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = defs.monster_id_2, delay_time = 0 }) then
	  return -1
	end
	
	-- play_type含义：1·代表开始播放； 2·代表停止播放
	-- 在指定位置播放或停止音效资源
		local pos = {x=2038, y=210, z=-997}
	    if 0 ~= ScriptLib.ScenePlaySound(context, {play_pos = pos, sound_name = "LevelHornSound001", play_type= 1, is_broadcast = false }) then
					return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_289(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_289(context, evt)
	-- 解锁目标2104
	if 0 ~= ScriptLib.ChangeGroupGadget(context, { config_id = 2104, state = GadgetState.Default }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : unlock_gadget")
		return -1
	end
	
	return 0
end