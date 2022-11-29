-- 基础信息
local base_info = {
	group_id = 133001307
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 1319, monster_id = 21010501, pos = { x = 1757.554, y = 195.543, z = -1520.821 }, rot = { x = 0.000, y = 199.330, z = 0.000 }, level = 1, drop_tag = "远程丘丘人", area_id = 2 },
	{ config_id = 1320, monster_id = 21010501, pos = { x = 1753.854, y = 195.514, z = -1520.021 }, rot = { x = 0.000, y = 203.745, z = 0.000 }, level = 1, drop_tag = "远程丘丘人", area_id = 2 },
	{ config_id = 1322, monster_id = 21010301, pos = { x = 1762.916, y = 195.368, z = -1516.782 }, rot = { x = 0.000, y = 47.925, z = 0.000 }, level = 1, drop_tag = "丘丘人", area_id = 2 },
	{ config_id = 1323, monster_id = 21010301, pos = { x = 1761.827, y = 195.395, z = -1519.006 }, rot = { x = 0.000, y = 49.828, z = 0.000 }, level = 1, drop_tag = "丘丘人", area_id = 2 },
	{ config_id = 1324, monster_id = 21010601, pos = { x = 1773.068, y = 194.950, z = -1493.681 }, rot = { x = 0.000, y = 203.603, z = 0.000 }, level = 1, drop_tag = "丘丘人", area_id = 2 },
	{ config_id = 1325, monster_id = 21010601, pos = { x = 1763.465, y = 194.834, z = -1494.682 }, rot = { x = 0.000, y = 187.180, z = 0.000 }, level = 1, drop_tag = "丘丘人", area_id = 2 },
	{ config_id = 1326, monster_id = 21020101, pos = { x = 1767.566, y = 194.974, z = -1493.485 }, rot = { x = 0.000, y = 178.477, z = 0.000 }, level = 1, drop_tag = "丘丘暴徒", area_id = 2 },
	{ config_id = 1327, monster_id = 21020201, pos = { x = 1748.179, y = 195.316, z = -1523.357 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "丘丘暴徒", area_id = 2 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 3244, gadget_id = 70220013, pos = { x = 1762.879, y = 195.315, z = -1514.258 }, rot = { x = 0.000, y = 328.300, z = 0.000 }, level = 1, area_id = 2 },
	{ config_id = 3245, gadget_id = 70300098, pos = { x = 1762.594, y = 195.378, z = -1517.914 }, rot = { x = 0.000, y = 342.900, z = 0.000 }, level = 1, area_id = 2 },
	{ config_id = 3278, gadget_id = 70300106, pos = { x = 1752.510, y = 195.337, z = -1525.539 }, rot = { x = 0.000, y = 301.116, z = 0.000 }, level = 1, area_id = 2 },
	{ config_id = 3349, gadget_id = 70300106, pos = { x = 1755.860, y = 194.767, z = -1527.334 }, rot = { x = 0.000, y = 289.122, z = 0.000 }, level = 1, area_id = 2 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1000469, name = "ANY_MONSTER_DIE_469", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_469", action = "action_EVENT_ANY_MONSTER_DIE_469" },
	{ config_id = 1000470, name = "ANY_MONSTER_LIVE_470", event = EventType.EVENT_ANY_MONSTER_LIVE, source = "", condition = "condition_EVENT_ANY_MONSTER_LIVE_470", action = "action_EVENT_ANY_MONSTER_LIVE_470" }
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
		monsters = { 1319, 1320, 1322, 1323, 1327 },
		gadgets = { 3244, 3245, 3278, 3349 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_469", "ANY_MONSTER_LIVE_470" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_469(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_469(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 1325, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 1326, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 1324, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	-- play_type含义：1·代表开始播放； 2·代表停止播放
	-- 在指定位置播放或停止音效资源
		local pos = {x=1757, y=195, z=-1506}
	    if 0 ~= ScriptLib.ScenePlaySound(context, {play_pos = pos, sound_name = "LevelHornSound001", play_type= 1, is_broadcast = false }) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_soundplay")
					return -1
		end 
	
	-- 在指定位置对应半径范围播放reminder
	local pos = {x=1757,y=195,z=-1506}
	if 0 ~= ScriptLib.ShowReminderRadius(context, 400004, pos, 50) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui_bypos")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_LIVE_470(context, evt)
	if 1644 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_LIVE_470(context, evt)
	-- 通知groupid为133001307中,configid为：1326的怪物入战或者脱战，set为1是入战，为0是脱战
	if 0 ~= ScriptLib.SetMonsterBattleByGroup(context, 1326, 133001307) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_monster_battle_by_group")
	  return -1
	end
	
	-- 通知groupid为133001307中,configid为：1324的怪物入战或者脱战，set为1是入战，为0是脱战
	if 0 ~= ScriptLib.SetMonsterBattleByGroup(context, 1324, 133001307) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_monster_battle_by_group")
	  return -1
	end
	
	-- 通知groupid为133001307中,configid为：1325的怪物入战或者脱战，set为1是入战，为0是脱战
	if 0 ~= ScriptLib.SetMonsterBattleByGroup(context, 1325, 133001307) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_monster_battle_by_group")
	  return -1
	end
	
	return 0
end