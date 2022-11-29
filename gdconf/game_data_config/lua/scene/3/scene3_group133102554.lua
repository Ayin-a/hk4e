-- 基础信息
local base_info = {
	group_id = 133102554
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 554001, monster_id = 21010501, pos = { x = 1057.857, y = 200.762, z = 175.493 }, rot = { x = 0.000, y = 131.793, z = 0.000 }, level = 1, drop_tag = "远程丘丘人", disableWander = true, pose_id = 9013, area_id = 5 },
	{ config_id = 554002, monster_id = 21010501, pos = { x = 1052.622, y = 200.762, z = 168.886 }, rot = { x = 0.000, y = 131.793, z = 0.000 }, level = 1, drop_tag = "远程丘丘人", disableWander = true, pose_id = 9013, area_id = 5 },
	{ config_id = 554003, monster_id = 21011001, pos = { x = 1053.458, y = 206.134, z = 179.933 }, rot = { x = 0.000, y = 283.498, z = 0.000 }, level = 1, drop_tag = "远程丘丘人", disableWander = true, pose_id = 32, area_id = 5 },
	{ config_id = 554004, monster_id = 21010301, pos = { x = 1039.647, y = 200.762, z = 179.857 }, rot = { x = 0.000, y = 310.216, z = 0.000 }, level = 1, drop_tag = "丘丘人", disableWander = true, pose_id = 9003, area_id = 5 },
	{ config_id = 554005, monster_id = 21010301, pos = { x = 1043.906, y = 200.762, z = 180.225 }, rot = { x = 0.000, y = 359.979, z = 0.000 }, level = 1, drop_tag = "丘丘人", disableWander = true, pose_id = 9002, area_id = 5 },
	{ config_id = 554006, monster_id = 21010601, pos = { x = 1028.571, y = 200.000, z = 173.600 }, rot = { x = 0.000, y = 70.124, z = 0.000 }, level = 1, drop_tag = "丘丘人", area_id = 5 },
	{ config_id = 554007, monster_id = 21010601, pos = { x = 1030.748, y = 200.000, z = 179.227 }, rot = { x = 0.000, y = 85.587, z = 0.000 }, level = 1, drop_tag = "丘丘人", area_id = 5 },
	{ config_id = 554008, monster_id = 21020101, pos = { x = 1028.682, y = 200.000, z = 176.331 }, rot = { x = 0.000, y = 81.434, z = 0.000 }, level = 1, drop_tag = "丘丘暴徒", area_id = 5 },
	{ config_id = 554019, monster_id = 21010501, pos = { x = 1055.477, y = 200.762, z = 171.152 }, rot = { x = 0.000, y = 131.793, z = 0.000 }, level = 1, drop_tag = "远程丘丘人", disableWander = true, pose_id = 9013, area_id = 5 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 554009, gadget_id = 70300077, pos = { x = 1066.453, y = 200.720, z = 180.087 }, rot = { x = 0.000, y = 41.590, z = 0.000 }, level = 1, area_id = 5 },
	{ config_id = 554010, gadget_id = 70220013, pos = { x = 1066.484, y = 200.720, z = 180.283 }, rot = { x = 0.000, y = 310.881, z = 0.000 }, level = 1, area_id = 5 },
	{ config_id = 554011, gadget_id = 70220013, pos = { x = 1077.652, y = 200.938, z = 201.733 }, rot = { x = 0.090, y = 358.796, z = 359.706 }, level = 1, area_id = 5 },
	{ config_id = 554012, gadget_id = 70300089, pos = { x = 1036.879, y = 200.468, z = 181.237 }, rot = { x = 0.000, y = 115.778, z = 0.000 }, level = 1, area_id = 5 },
	{ config_id = 554013, gadget_id = 70300089, pos = { x = 1043.749, y = 200.720, z = 183.611 }, rot = { x = 0.000, y = 138.808, z = 0.000 }, level = 1, area_id = 5 },
	{ config_id = 554014, gadget_id = 70300088, pos = { x = 1062.279, y = 200.594, z = 171.587 }, rot = { x = 359.973, y = 225.406, z = 3.793 }, level = 1, area_id = 5 },
	{ config_id = 554015, gadget_id = 70300088, pos = { x = 1059.170, y = 200.627, z = 168.785 }, rot = { x = 358.321, y = 234.822, z = 2.277 }, level = 1, area_id = 5 },
	{ config_id = 554016, gadget_id = 70300088, pos = { x = 1056.391, y = 200.388, z = 166.394 }, rot = { x = 358.551, y = 234.026, z = 1.051 }, level = 1, area_id = 5 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1554017, name = "ANY_MONSTER_DIE_554017", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_554017", action = "action_EVENT_ANY_MONSTER_DIE_554017" },
	{ config_id = 1554018, name = "ANY_MONSTER_LIVE_554018", event = EventType.EVENT_ANY_MONSTER_LIVE, source = "", condition = "condition_EVENT_ANY_MONSTER_LIVE_554018", action = "action_EVENT_ANY_MONSTER_LIVE_554018" }
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
		monsters = { 554001, 554002, 554003, 554004, 554005, 554019 },
		gadgets = { 554009, 554010, 554011, 554012, 554013, 554014, 554015, 554016 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_554017", "ANY_MONSTER_LIVE_554018" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_554017(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_554017(context, evt)
	-- play_type含义：1·代表开始播放； 2·代表停止播放
	-- 在指定位置播放或停止音效资源
		local pos = {x=1043, y=200, z=180}
	    if 0 ~= ScriptLib.ScenePlaySound(context, {play_pos = pos, sound_name = "LevelHornSound001", play_type= 1, is_broadcast = false }) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_soundplay")
					return -1
		end 
	
	-- 在指定位置对应半径范围播放reminder
	local pos = {x=1041,y=200,z=178}
	if 0 ~= ScriptLib.ShowReminderRadius(context, 400004, pos, 50) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui_bypos")
		return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 554007, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 554008, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 554006, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_LIVE_554018(context, evt)
	--判断死亡怪物的configid是否为 554001
	if evt.param1 ~= 554001 then
	    return false
	 end
	  
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_LIVE_554018(context, evt)
	-- 通知groupid为133102554中,configid为：554008的怪物入战或者脱战，set为1是入战，为0是脱战
	if 0 ~= ScriptLib.SetMonsterBattleByGroup(context, 554008, 133102554) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_monster_battle_by_group")
	  return -1
	end
	
	-- 通知groupid为133102554中,configid为：554006的怪物入战或者脱战，set为1是入战，为0是脱战
	if 0 ~= ScriptLib.SetMonsterBattleByGroup(context, 554006, 133102554) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_monster_battle_by_group")
	  return -1
	end
	
	-- 通知groupid为133102554中,configid为：554007的怪物入战或者脱战，set为1是入战，为0是脱战
	if 0 ~= ScriptLib.SetMonsterBattleByGroup(context, 554007, 133102554) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_monster_battle_by_group")
	  return -1
	end
	
	return 0
end