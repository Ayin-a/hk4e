-- 基础信息
local base_info = {
	group_id = 133103299
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 299001, monster_id = 25010301, pos = { x = 761.514, y = 294.268, z = 1428.424 }, rot = { x = 0.000, y = 305.003, z = 0.000 }, level = 1, drop_tag = "盗宝团", pose_id = 9003, area_id = 6 },
	{ config_id = 299002, monster_id = 25020201, pos = { x = 761.230, y = 294.370, z = 1424.399 }, rot = { x = 0.000, y = 177.834, z = 0.000 }, level = 1, drop_tag = "盗宝团", disableWander = true, area_id = 6 },
	{ config_id = 299003, monster_id = 25010701, pos = { x = 763.536, y = 293.625, z = 1420.781 }, rot = { x = 0.000, y = 253.213, z = 0.000 }, level = 1, drop_tag = "盗宝团", pose_id = 9006, area_id = 6 },
	{ config_id = 299004, monster_id = 25010201, pos = { x = 759.129, y = 293.010, z = 1411.632 }, rot = { x = 0.000, y = 263.523, z = 0.000 }, level = 1, drop_tag = "盗宝团", pose_id = 9003, area_id = 6 },
	{ config_id = 299005, monster_id = 25070101, pos = { x = 761.484, y = 293.353, z = 1420.496 }, rot = { x = 0.000, y = 84.136, z = 0.000 }, level = 1, drop_tag = "盗宝团", pose_id = 3, area_id = 6 },
	{ config_id = 299006, monster_id = 25030201, pos = { x = 779.652, y = 297.295, z = 1408.497 }, rot = { x = 0.000, y = 280.585, z = 0.000 }, level = 1, drop_tag = "盗宝团", area_id = 6 },
	{ config_id = 299007, monster_id = 25010501, pos = { x = 778.647, y = 297.332, z = 1406.211 }, rot = { x = 0.000, y = 305.888, z = 0.000 }, level = 1, drop_tag = "盗宝团", area_id = 6 },
	{ config_id = 299008, monster_id = 25060101, pos = { x = 780.241, y = 296.809, z = 1411.162 }, rot = { x = 0.000, y = 263.494, z = 0.000 }, level = 1, drop_tag = "盗宝团", area_id = 6 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1299009, name = "ANY_MONSTER_DIE_299009", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_299009", action = "action_EVENT_ANY_MONSTER_DIE_299009" },
	{ config_id = 1299010, name = "ANY_MONSTER_LIVE_299010", event = EventType.EVENT_ANY_MONSTER_LIVE, source = "", condition = "condition_EVENT_ANY_MONSTER_LIVE_299010", action = "action_EVENT_ANY_MONSTER_LIVE_299010" }
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
		monsters = { 299001, 299002, 299003, 299004, 299005 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_299009", "ANY_MONSTER_LIVE_299010" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_299009(context, evt)
	-- 判断剩余怪物数量是否是2
	if ScriptLib.GetGroupMonsterCount(context) > 2 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_299009(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 299006, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 299007, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 299008, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	-- play_type含义：1·代表开始播放； 2·代表停止播放
	-- 在指定位置播放或停止音效资源
		local pos = {x=761, y=293, z=1415}
	    if 0 ~= ScriptLib.ScenePlaySound(context, {play_pos = pos, sound_name = "LevelHornSound001", play_type= 1, is_broadcast = false }) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_soundplay")
					return -1
		end 
	
	-- 在指定位置对应半径范围播放reminder
	local pos = {x=761,y=293,z=1415}
	if 0 ~= ScriptLib.ShowReminderRadius(context, 400004, pos, 50) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui_bypos")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_LIVE_299010(context, evt)
	if 299006 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_LIVE_299010(context, evt)
	-- 通知groupid为133103299中,configid为：299006的怪物入战或者脱战，set为1是入战，为0是脱战
	if 0 ~= ScriptLib.SetMonsterBattleByGroup(context, 299006, 133103299) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_monster_battle_by_group")
	  return -1
	end
	
	-- 通知groupid为133103299中,configid为：299007的怪物入战或者脱战，set为1是入战，为0是脱战
	if 0 ~= ScriptLib.SetMonsterBattleByGroup(context, 299007, 133103299) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_monster_battle_by_group")
	  return -1
	end
	
	-- 通知groupid为133103299中,configid为：299008的怪物入战或者脱战，set为1是入战，为0是脱战
	if 0 ~= ScriptLib.SetMonsterBattleByGroup(context, 299008, 133103299) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_monster_battle_by_group")
	  return -1
	end
	
	return 0
end