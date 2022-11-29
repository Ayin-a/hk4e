-- 基础信息
local base_info = {
	group_id = 133003477
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 1659, monster_id = 21010901, pos = { x = 2213.865, y = 223.965, z = -1188.322 }, rot = { x = 0.000, y = 135.962, z = 0.000 }, level = 1, drop_tag = "远程丘丘人", disableWander = true, pose_id = 9003, area_id = 1 },
	{ config_id = 1660, monster_id = 21010401, pos = { x = 2215.385, y = 227.185, z = -1190.683 }, rot = { x = 0.000, y = 94.654, z = 0.000 }, level = 1, drop_tag = "远程丘丘人", disableWander = true, pose_id = 9003, area_id = 1 },
	{ config_id = 1661, monster_id = 21020101, pos = { x = 2218.248, y = 224.095, z = -1184.446 }, rot = { x = 0.000, y = 116.924, z = 0.000 }, level = 1, drop_tag = "丘丘暴徒", disableWander = true, pose_id = 401, area_id = 1 },
	{ config_id = 1662, monster_id = 21010201, pos = { x = 2223.648, y = 224.659, z = -1188.579 }, rot = { x = 0.000, y = 108.401, z = 0.000 }, level = 1, drop_tag = "丘丘人", area_id = 1 },
	{ config_id = 1663, monster_id = 21010201, pos = { x = 2220.484, y = 224.485, z = -1189.274 }, rot = { x = 0.000, y = 211.222, z = 0.000 }, level = 1, drop_tag = "丘丘人", area_id = 1 },
	{ config_id = 1664, monster_id = 21010601, pos = { x = 2244.587, y = 226.065, z = -1183.350 }, rot = { x = 0.000, y = 278.403, z = 0.000 }, level = 1, drop_tag = "丘丘人", area_id = 1 },
	{ config_id = 1665, monster_id = 21010601, pos = { x = 2243.451, y = 226.016, z = -1187.698 }, rot = { x = 0.000, y = 301.767, z = 0.000 }, level = 1, drop_tag = "丘丘人", area_id = 1 },
	{ config_id = 1666, monster_id = 21020201, pos = { x = 2244.607, y = 226.143, z = -1185.327 }, rot = { x = 0.000, y = 284.331, z = 0.000 }, level = 1, drop_tag = "丘丘暴徒", area_id = 1 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 4280, gadget_id = 70220013, pos = { x = 2223.332, y = 225.906, z = -1174.548 }, rot = { x = 0.000, y = 328.300, z = 0.000 }, level = 1, area_id = 1 },
	{ config_id = 4281, gadget_id = 70220013, pos = { x = 2217.570, y = 224.289, z = -1190.266 }, rot = { x = 0.000, y = 342.900, z = 0.000 }, level = 1, area_id = 1 },
	{ config_id = 4282, gadget_id = 70300100, pos = { x = 2220.425, y = 224.498, z = -1190.868 }, rot = { x = 6.401, y = 196.668, z = 7.929 }, level = 1, area_id = 1 },
	{ config_id = 4284, gadget_id = 70300100, pos = { x = 2224.665, y = 224.670, z = -1190.347 }, rot = { x = 0.000, y = 122.900, z = 0.000 }, level = 1, area_id = 1 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1000575, name = "ANY_MONSTER_DIE_575", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_575", action = "action_EVENT_ANY_MONSTER_DIE_575" },
	{ config_id = 1000576, name = "ANY_MONSTER_LIVE_576", event = EventType.EVENT_ANY_MONSTER_LIVE, source = "", condition = "condition_EVENT_ANY_MONSTER_LIVE_576", action = "action_EVENT_ANY_MONSTER_LIVE_576" }
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
		monsters = { 1659, 1660, 1661, 1662, 1663 },
		gadgets = { 4280, 4281, 4282, 4284 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_575", "ANY_MONSTER_LIVE_576" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_575(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_575(context, evt)
	-- play_type含义：1·代表开始播放； 2·代表停止播放
	-- 在指定位置播放或停止音效资源
		local pos = {x=2214, y=223, z=-1181}
	    if 0 ~= ScriptLib.ScenePlaySound(context, {play_pos = pos, sound_name = "LevelHornSound001", play_type= 1, is_broadcast = false }) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_soundplay")
					return -1
		end 
	
	-- 在指定位置对应半径范围播放reminder
	local pos = {x=2214,y=223,z=-1181}
	if 0 ~= ScriptLib.ShowReminderRadius(context, 400004, pos, 50) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui_bypos")
		return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 1664, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 1665, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 1666, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_LIVE_576(context, evt)
	if 1644 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_LIVE_576(context, evt)
	-- 通知groupid为133003477中,configid为：1666的怪物入战或者脱战，set为1是入战，为0是脱战
	if 0 ~= ScriptLib.SetMonsterBattleByGroup(context, 1666, 133003477) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_monster_battle_by_group")
	  return -1
	end
	
	-- 通知groupid为133003477中,configid为：1664的怪物入战或者脱战，set为1是入战，为0是脱战
	if 0 ~= ScriptLib.SetMonsterBattleByGroup(context, 1664, 133003477) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_monster_battle_by_group")
	  return -1
	end
	
	-- 通知groupid为133003477中,configid为：1665的怪物入战或者脱战，set为1是入战，为0是脱战
	if 0 ~= ScriptLib.SetMonsterBattleByGroup(context, 1665, 133003477) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_monster_battle_by_group")
	  return -1
	end
	
	-- 通知groupid为133003477中,configid为：1660的怪物入战或者脱战，set为1是入战，为0是脱战
	if 0 ~= ScriptLib.SetMonsterBattleByGroup(context, 1660, 133003477) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_monster_battle_by_group")
	  return -1
	end
	
	return 0
end