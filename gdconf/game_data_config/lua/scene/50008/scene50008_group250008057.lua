-- 基础信息
local base_info = {
	group_id = 250008057
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 21, monster_id = 21010501, pos = { x = 224.654, y = 4.000, z = -32.713 }, rot = { x = 0.000, y = 338.200, z = 0.000 }, level = 1, disableWander = true, pose_id = 9013 },
	{ config_id = 22, monster_id = 21010501, pos = { x = 220.976, y = 4.000, z = -31.908 }, rot = { x = 0.000, y = 20.800, z = 0.000 }, level = 1, disableWander = true, pose_id = 9013 },
	{ config_id = 23, monster_id = 21010501, pos = { x = 217.765, y = 4.000, z = -31.399 }, rot = { x = 0.000, y = 16.000, z = 0.000 }, level = 1, disableWander = true, pose_id = 9013 },
	{ config_id = 24, monster_id = 21010301, pos = { x = 216.075, y = 4.000, z = -35.996 }, rot = { x = 0.000, y = 48.200, z = 0.000 }, level = 1, disableWander = true, pose_id = 9003 },
	{ config_id = 25, monster_id = 21010301, pos = { x = 223.190, y = 4.000, z = -37.783 }, rot = { x = 0.000, y = 18.200, z = 0.000 }, level = 1, disableWander = true, pose_id = 9003 },
	{ config_id = 26, monster_id = 21010601, pos = { x = 234.608, y = 4.000, z = -45.308 }, rot = { x = 0.000, y = 32.300, z = 0.000 }, level = 1 },
	{ config_id = 27, monster_id = 21010601, pos = { x = 224.994, y = 4.000, z = -46.339 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 28, monster_id = 21020101, pos = { x = 229.132, y = 4.000, z = -45.093 }, rot = { x = 0.000, y = 46.139, z = 0.000 }, level = 1 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 198, gadget_id = 70300077, pos = { x = 225.625, y = 4.000, z = -24.623 }, rot = { x = 0.000, y = 72.700, z = 0.000 }, level = 1 },
	{ config_id = 199, gadget_id = 70220013, pos = { x = 225.766, y = 3.500, z = -24.313 }, rot = { x = 0.000, y = 328.271, z = 0.000 }, level = 1 },
	{ config_id = 200, gadget_id = 70220013, pos = { x = 215.765, y = 4.000, z = -24.299 }, rot = { x = 0.000, y = 342.881, z = 0.000 }, level = 1 },
	{ config_id = 202, gadget_id = 70300089, pos = { x = 216.298, y = 4.000, z = -34.522 }, rot = { x = 0.000, y = 99.863, z = 0.000 }, level = 1 },
	{ config_id = 203, gadget_id = 70300089, pos = { x = 223.295, y = 4.000, z = -36.104 }, rot = { x = 0.000, y = 122.893, z = 0.000 }, level = 1 },
	{ config_id = 225, gadget_id = 70300088, pos = { x = 223.308, y = 4.000, z = -24.584 }, rot = { x = 359.488, y = 97.150, z = 0.000 }, level = 1 },
	{ config_id = 226, gadget_id = 70300088, pos = { x = 218.975, y = 4.000, z = -25.133 }, rot = { x = 0.000, y = 100.578, z = 0.000 }, level = 1 },
	{ config_id = 227, gadget_id = 70300088, pos = { x = 213.410, y = 4.000, z = -24.992 }, rot = { x = 0.000, y = 61.702, z = 0.000 }, level = 1 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1000130, name = "ANY_MONSTER_DIE_130", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_130", action = "action_EVENT_ANY_MONSTER_DIE_130" },
	{ config_id = 1000131, name = "ANY_MONSTER_LIVE_131", event = EventType.EVENT_ANY_MONSTER_LIVE, source = "", condition = "condition_EVENT_ANY_MONSTER_LIVE_131", action = "action_EVENT_ANY_MONSTER_LIVE_131" }
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
		-- description = ,
		monsters = { 21, 22, 23, 24, 25 },
		gadgets = { 198, 199, 200, 202, 203, 225, 226, 227 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_130", "ANY_MONSTER_LIVE_131" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_130(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_130(context, evt)
	-- 延迟3秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 27, delay_time = 3 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	-- 延迟3秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 28, delay_time = 3 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	-- 延迟3秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 26, delay_time = 3 }) then
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
function condition_EVENT_ANY_MONSTER_LIVE_131(context, evt)
	if 1644 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_LIVE_131(context, evt)
	-- 通知groupid为57中,configid为：28的怪物入战或者脱战，set为1是入战，为0是脱战
	if 0 ~= ScriptLib.SetMonsterBattleByGroup(context, 28, 57) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_monster_battle_by_group")
	  return -1
	end
	
	-- 通知groupid为57中,configid为：26的怪物入战或者脱战，set为1是入战，为0是脱战
	if 0 ~= ScriptLib.SetMonsterBattleByGroup(context, 26, 57) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_monster_battle_by_group")
	  return -1
	end
	
	-- 通知groupid为57中,configid为：27的怪物入战或者脱战，set为1是入战，为0是脱战
	if 0 ~= ScriptLib.SetMonsterBattleByGroup(context, 27, 57) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_monster_battle_by_group")
	  return -1
	end
	
	return 0
end