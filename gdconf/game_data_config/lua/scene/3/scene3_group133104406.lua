-- 基础信息
local base_info = {
	group_id = 133104406
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 406001, monster_id = 21010501, pos = { x = 663.447, y = 201.014, z = 461.900 }, rot = { x = 357.481, y = 63.996, z = 0.939 }, level = 1, drop_tag = "远程丘丘人", disableWander = true, pose_id = 9013, area_id = 9 },
	{ config_id = 406002, monster_id = 21010501, pos = { x = 659.337, y = 201.233, z = 466.538 }, rot = { x = 355.776, y = 34.773, z = 358.867 }, level = 1, drop_tag = "远程丘丘人", disableWander = true, pose_id = 9013, area_id = 9 },
	{ config_id = 406003, monster_id = 21010501, pos = { x = 662.279, y = 204.029, z = 480.268 }, rot = { x = 356.920, y = 289.571, z = 0.956 }, level = 1, drop_tag = "远程丘丘人", disableWander = true, pose_id = 9013, area_id = 9 },
	{ config_id = 406004, monster_id = 21010301, pos = { x = 654.681, y = 201.664, z = 455.966 }, rot = { x = 358.282, y = 143.163, z = 356.738 }, level = 1, drop_tag = "丘丘人", disableWander = true, pose_id = 9013, area_id = 9 },
	{ config_id = 406005, monster_id = 21010301, pos = { x = 659.834, y = 201.361, z = 457.559 }, rot = { x = 356.882, y = 147.851, z = 358.033 }, level = 1, drop_tag = "丘丘人", disableWander = true, pose_id = 9013, area_id = 9 },
	{ config_id = 406006, monster_id = 21010601, pos = { x = 687.721, y = 200.926, z = 458.060 }, rot = { x = 10.692, y = 294.215, z = 359.958 }, level = 1, drop_tag = "丘丘人", area_id = 9 },
	{ config_id = 406007, monster_id = 21010601, pos = { x = 687.115, y = 201.033, z = 462.662 }, rot = { x = 2.375, y = 242.199, z = 358.749 }, level = 1, drop_tag = "丘丘人", area_id = 9 },
	{ config_id = 406008, monster_id = 21020101, pos = { x = 683.141, y = 200.642, z = 459.924 }, rot = { x = 353.530, y = 268.413, z = 357.949 }, level = 1, drop_tag = "丘丘暴徒", area_id = 9 },
	{ config_id = 406019, monster_id = 21011001, pos = { x = 673.438, y = 210.704, z = 481.794 }, rot = { x = 6.103, y = 207.853, z = 1.230 }, level = 1, drop_tag = "远程丘丘人", disableWander = true, pose_id = 9013, area_id = 9 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 406009, gadget_id = 70300077, pos = { x = 652.265, y = 205.001, z = 478.463 }, rot = { x = 6.227, y = 72.414, z = 358.971 }, level = 1, area_id = 9 },
	{ config_id = 406010, gadget_id = 70220013, pos = { x = 652.406, y = 204.976, z = 478.773 }, rot = { x = 357.460, y = 328.169, z = 354.221 }, level = 1, area_id = 9 },
	{ config_id = 406011, gadget_id = 70220013, pos = { x = 653.308, y = 201.533, z = 468.449 }, rot = { x = 354.508, y = 343.095, z = 354.235 }, level = 1, area_id = 9 },
	{ config_id = 406012, gadget_id = 70300089, pos = { x = 656.482, y = 201.943, z = 453.724 }, rot = { x = 1.491, y = 99.791, z = 356.628 }, level = 1, area_id = 9 },
	{ config_id = 406013, gadget_id = 70300089, pos = { x = 660.969, y = 201.490, z = 455.277 }, rot = { x = 2.691, y = 122.806, z = 357.480 }, level = 1, area_id = 9 },
	{ config_id = 406014, gadget_id = 70300088, pos = { x = 667.005, y = 201.241, z = 464.623 }, rot = { x = 0.327, y = 153.788, z = 357.252 }, level = 1, area_id = 9 },
	{ config_id = 406015, gadget_id = 70300088, pos = { x = 661.635, y = 201.237, z = 469.724 }, rot = { x = 3.050, y = 125.228, z = 355.293 }, level = 1, area_id = 9 },
	{ config_id = 406016, gadget_id = 70300088, pos = { x = 658.663, y = 204.228, z = 480.838 }, rot = { x = 353.370, y = 9.535, z = 356.060 }, level = 1, area_id = 9 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1406017, name = "ANY_MONSTER_DIE_406017", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_406017", action = "action_EVENT_ANY_MONSTER_DIE_406017" },
	{ config_id = 1406018, name = "ANY_MONSTER_LIVE_406018", event = EventType.EVENT_ANY_MONSTER_LIVE, source = "", condition = "condition_EVENT_ANY_MONSTER_LIVE_406018", action = "action_EVENT_ANY_MONSTER_LIVE_406018" }
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
		monsters = { 406001, 406002, 406003, 406004, 406005, 406019 },
		gadgets = { 406009, 406010, 406011, 406012, 406013, 406014, 406015, 406016 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_406017", "ANY_MONSTER_LIVE_406018" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_406017(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_406017(context, evt)
	-- play_type含义：1·代表开始播放； 2·代表停止播放
	-- 在指定位置播放或停止音效资源
		local pos = {x=660, y=201, z=465}
	    if 0 ~= ScriptLib.ScenePlaySound(context, {play_pos = pos, sound_name = "LevelHornSound001", play_type= 1, is_broadcast = false }) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_soundplay")
					return -1
		end 
	
	-- 在指定位置对应半径范围播放reminder
	local pos = {x=660,y=201,z=465}
	if 0 ~= ScriptLib.ShowReminderRadius(context, 400004, pos, 50) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui_bypos")
		return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 406007, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 406008, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 406006, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_LIVE_406018(context, evt)
	if 406001 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_LIVE_406018(context, evt)
	-- 通知groupid为133104406中,configid为：406008的怪物入战或者脱战，set为1是入战，为0是脱战
	if 0 ~= ScriptLib.SetMonsterBattleByGroup(context, 406008, 133104406) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_monster_battle_by_group")
	  return -1
	end
	
	-- 通知groupid为133104406中,configid为：406006的怪物入战或者脱战，set为1是入战，为0是脱战
	if 0 ~= ScriptLib.SetMonsterBattleByGroup(context, 406006, 133104406) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_monster_battle_by_group")
	  return -1
	end
	
	-- 通知groupid为133104406中,configid为：406007的怪物入战或者脱战，set为1是入战，为0是脱战
	if 0 ~= ScriptLib.SetMonsterBattleByGroup(context, 406007, 133104406) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_monster_battle_by_group")
	  return -1
	end
	
	return 0
end