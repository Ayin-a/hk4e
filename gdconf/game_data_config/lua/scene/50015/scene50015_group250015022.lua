-- 基础信息
local base_info = {
	group_id = 250015022
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 22001, monster_id = 21011201, pos = { x = -56.202, y = 0.500, z = 29.974 }, rot = { x = 0.000, y = 238.025, z = 0.000 }, level = 1, disableWander = true },
	{ config_id = 22002, monster_id = 21011201, pos = { x = -56.415, y = 0.500, z = 25.236 }, rot = { x = 0.000, y = 331.530, z = 0.000 }, level = 1, disableWander = true },
	{ config_id = 22003, monster_id = 21011201, pos = { x = -61.447, y = 0.500, z = 26.535 }, rot = { x = 0.000, y = 16.000, z = 0.000 }, level = 1, disableWander = true },
	{ config_id = 22004, monster_id = 21011201, pos = { x = -62.223, y = 0.500, z = 29.833 }, rot = { x = 0.000, y = 85.824, z = 0.000 }, level = 1, disableWander = true },
	{ config_id = 22005, monster_id = 20010601, pos = { x = -58.533, y = 0.500, z = 27.708 }, rot = { x = 0.000, y = 18.200, z = 0.000 }, level = 10, disableWander = true },
	{ config_id = 22006, monster_id = 20011401, pos = { x = -64.469, y = 0.500, z = 24.185 }, rot = { x = 0.000, y = 32.300, z = 0.000 }, level = 1 },
	{ config_id = 22007, monster_id = 20011401, pos = { x = -65.426, y = 0.500, z = 29.109 }, rot = { x = 0.000, y = 113.656, z = 0.000 }, level = 1 },
	{ config_id = 22008, monster_id = 21020301, pos = { x = -64.418, y = 0.500, z = 27.024 }, rot = { x = 0.000, y = 78.276, z = 0.000 }, level = 1 },
	{ config_id = 22019, monster_id = 20011301, pos = { x = -52.067, y = 0.500, z = 22.669 }, rot = { x = 0.000, y = 18.200, z = 0.000 }, level = 10, disableWander = true }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 22009, gadget_id = 70300077, pos = { x = -53.647, y = 0.500, z = 33.335 }, rot = { x = 0.000, y = 72.700, z = 0.000 }, level = 1 },
	{ config_id = 22010, gadget_id = 70220013, pos = { x = -53.447, y = 0.500, z = 33.635 }, rot = { x = 0.000, y = 328.300, z = 0.000 }, level = 1 },
	{ config_id = 22011, gadget_id = 70220013, pos = { x = -63.447, y = 0.500, z = 33.635 }, rot = { x = 0.000, y = 342.900, z = 0.000 }, level = 1 },
	{ config_id = 22012, gadget_id = 70300089, pos = { x = -62.947, y = 0.500, z = 23.435 }, rot = { x = 0.000, y = 99.900, z = 0.000 }, level = 1 },
	{ config_id = 22013, gadget_id = 70300089, pos = { x = -55.947, y = 0.500, z = 21.835 }, rot = { x = 0.000, y = 122.900, z = 0.000 }, level = 1 },
	{ config_id = 22014, gadget_id = 70300088, pos = { x = -55.947, y = 0.500, z = 33.335 }, rot = { x = 359.500, y = 97.200, z = 0.000 }, level = 1 },
	{ config_id = 22015, gadget_id = 70300088, pos = { x = -60.247, y = 0.500, z = 32.835 }, rot = { x = 0.000, y = 100.600, z = 0.000 }, level = 1 },
	{ config_id = 22016, gadget_id = 70300088, pos = { x = -65.847, y = 0.500, z = 32.935 }, rot = { x = 0.000, y = 61.700, z = 0.000 }, level = 1 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1022017, name = "ANY_MONSTER_DIE_22017", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_22017", action = "action_EVENT_ANY_MONSTER_DIE_22017" },
	{ config_id = 1022018, name = "ANY_MONSTER_LIVE_22018", event = EventType.EVENT_ANY_MONSTER_LIVE, source = "", condition = "condition_EVENT_ANY_MONSTER_LIVE_22018", action = "action_EVENT_ANY_MONSTER_LIVE_22018" }
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
	rand_suite = true
}

--================================================================
-- 
-- 小组配置
-- 
--================================================================

suites = {
	{
		-- suite_id = 1,
		-- description = suite_1,
		monsters = { 22001, 22002, 22003, 22004, 22005, 22019 },
		gadgets = { 22009, 22010, 22011, 22012, 22013, 22014, 22015, 22016 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_22017", "ANY_MONSTER_LIVE_22018" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_22017(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_22017(context, evt)
	-- 延迟3秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 22007, delay_time = 3 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	-- 延迟3秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 22008, delay_time = 3 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	-- 延迟3秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 22006, delay_time = 3 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	-- play_type含义：1·代表开始播放； 2·代表停止播放
	-- 在指定位置播放或停止音效资源
		local pos = {x=2510, y=194, z=-1141}
	    if 0 ~= ScriptLib.ScenePlaySound(context, {play_pos = pos, sound_name = "LevelHornSound001", play_type= 1, is_broadcast = false }) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_soundplay")
					return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_LIVE_22018(context, evt)
	if 1644 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_LIVE_22018(context, evt)
	-- 通知groupid为250015022中,configid为：22008的怪物入战或者脱战，set为1是入战，为0是脱战
	if 0 ~= ScriptLib.SetMonsterBattleByGroup(context, 22008, 250015022) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_monster_battle_by_group")
	  return -1
	end
	
	-- 通知groupid为250015022中,configid为：22006的怪物入战或者脱战，set为1是入战，为0是脱战
	if 0 ~= ScriptLib.SetMonsterBattleByGroup(context, 22006, 250015022) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_monster_battle_by_group")
	  return -1
	end
	
	-- 通知groupid为250015022中,configid为：22007的怪物入战或者脱战，set为1是入战，为0是脱战
	if 0 ~= ScriptLib.SetMonsterBattleByGroup(context, 22007, 250015022) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_monster_battle_by_group")
	  return -1
	end
	
	return 0
end