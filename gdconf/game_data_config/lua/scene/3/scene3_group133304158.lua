-- 基础信息
local base_info = {
	group_id = 133304158
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 158001, monster_id = 21020201, pos = { x = -1675.878, y = 222.530, z = 2942.254 }, rot = { x = 0.000, y = 317.762, z = 0.000 }, level = 1, drop_tag = "丘丘暴徒", disableWander = true, pose_id = 401, area_id = 21 },
	{ config_id = 158002, monster_id = 21010301, pos = { x = -1676.224, y = 222.355, z = 2948.132 }, rot = { x = 0.000, y = 256.380, z = 0.000 }, level = 1, drop_tag = "丘丘人", pose_id = 9012, area_id = 21 },
	{ config_id = 158003, monster_id = 21010301, pos = { x = -1682.128, y = 224.207, z = 2943.952 }, rot = { x = 0.000, y = 43.568, z = 0.000 }, level = 1, drop_tag = "丘丘人", pose_id = 9012, area_id = 21 },
	{ config_id = 158004, monster_id = 21020101, pos = { x = -1691.124, y = 226.818, z = 2942.750 }, rot = { x = 0.000, y = 56.900, z = 0.000 }, level = 1, drop_tag = "丘丘暴徒", disableWander = true, area_id = 21 },
	{ config_id = 158005, monster_id = 21010501, pos = { x = -1680.808, y = 227.028, z = 2955.062 }, rot = { x = 0.000, y = 193.186, z = 0.000 }, level = 1, drop_tag = "远程丘丘人", pose_id = 32, area_id = 21 },
	{ config_id = 158006, monster_id = 21010701, pos = { x = -1688.652, y = 226.668, z = 2938.458 }, rot = { x = 0.000, y = 10.064, z = 0.000 }, level = 1, drop_tag = "丘丘人", disableWander = true, area_id = 21 },
	{ config_id = 158018, monster_id = 21010701, pos = { x = -1692.101, y = 226.612, z = 2945.948 }, rot = { x = 0.000, y = 71.496, z = 0.000 }, level = 1, drop_tag = "丘丘人", disableWander = true, area_id = 21 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 158007, gadget_id = 70300078, pos = { x = -1672.086, y = 221.568, z = 2946.723 }, rot = { x = 0.000, y = 0.000, z = 346.046 }, level = 30, area_id = 21 },
	{ config_id = 158008, gadget_id = 70300090, pos = { x = -1681.386, y = 221.569, z = 2954.944 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 21 },
	{ config_id = 158009, gadget_id = 70300101, pos = { x = -1685.330, y = 225.179, z = 2935.445 }, rot = { x = 0.815, y = 359.037, z = 354.267 }, level = 30, area_id = 21 },
	{ config_id = 158010, gadget_id = 70300101, pos = { x = -1670.158, y = 220.228, z = 2951.557 }, rot = { x = 7.803, y = 359.725, z = 354.617 }, level = 30, area_id = 21 },
	{ config_id = 158011, gadget_id = 70300086, pos = { x = -1681.685, y = 224.789, z = 2935.715 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 21 },
	{ config_id = 158012, gadget_id = 70300086, pos = { x = -1679.280, y = 221.523, z = 2954.963 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 21 },
	{ config_id = 158013, gadget_id = 70300084, pos = { x = -1673.260, y = 222.036, z = 2936.628 }, rot = { x = 10.620, y = 51.588, z = 0.000 }, level = 30, area_id = 21 },
	{ config_id = 158014, gadget_id = 70300084, pos = { x = -1691.355, y = 225.430, z = 2951.961 }, rot = { x = 353.505, y = 211.709, z = 0.000 }, level = 30, area_id = 21 },
	{ config_id = 158015, gadget_id = 70300084, pos = { x = -1668.004, y = 219.101, z = 2956.566 }, rot = { x = 0.000, y = 320.592, z = 0.000 }, level = 30, area_id = 21 },
	{ config_id = 158019, gadget_id = 70310001, pos = { x = -1678.885, y = 223.203, z = 2945.214 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.GearStart, area_id = 21 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1158016, name = "SPECIFIC_GADGET_HP_CHANGE_158016", event = EventType.EVENT_SPECIFIC_GADGET_HP_CHANGE, source = "158010", condition = "condition_EVENT_SPECIFIC_GADGET_HP_CHANGE_158016", action = "action_EVENT_SPECIFIC_GADGET_HP_CHANGE_158016" },
	{ config_id = 1158017, name = "SPECIFIC_GADGET_HP_CHANGE_158017", event = EventType.EVENT_SPECIFIC_GADGET_HP_CHANGE, source = "158009", condition = "condition_EVENT_SPECIFIC_GADGET_HP_CHANGE_158017", action = "action_EVENT_SPECIFIC_GADGET_HP_CHANGE_158017" }
}

-- 变量
variables = {
	{ config_id = 1, name = "ison", value = 0, no_refresh = false }
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
		monsters = { 158001, 158002, 158003, 158005 },
		gadgets = { 158007, 158008, 158009, 158010, 158011, 158012, 158013, 158014, 158015, 158019 },
		regions = { },
		triggers = { "SPECIFIC_GADGET_HP_CHANGE_158016", "SPECIFIC_GADGET_HP_CHANGE_158017" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_SPECIFIC_GADGET_HP_CHANGE_158016(context, evt)
	--[[判断指定configid的gadget的血量小于%50时触发指定后续操作]]--
	if evt.type ~= EventType.EVENT_SPECIFIC_GADGET_HP_CHANGE or evt.param3 > 50 then
		return false
	end
	
	-- 判断剩余怪物数量是否是2
	if ScriptLib.GetGroupMonsterCount(context) > 2 then
		return false
	end
	
	-- 判断变量"ison"为1
	if ScriptLib.GetGroupVariableValue(context, "ison") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_SPECIFIC_GADGET_HP_CHANGE_158016(context, evt)
	-- play_type含义：1·代表开始播放； 2·代表停止播放
	-- 在指定位置播放或停止音效资源
		local pos = {x=-1680, y=223, z=2947}
	    if 0 ~= ScriptLib.ScenePlaySound(context, {play_pos = pos, sound_name = "LevelHornSound001", play_type= 1, is_broadcast = false }) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_soundplay")
					return -1
		end 
	
	-- 在指定位置对应半径范围播放reminder
	local pos = {x=-1680,y=223,z=2947}
	if 0 ~= ScriptLib.ShowReminderRadius(context, 400004, pos, 50) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui_bypos")
		return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 158004, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 158006, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 158018, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	-- 将本组内变量名为 "ison" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "ison", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SPECIFIC_GADGET_HP_CHANGE_158017(context, evt)
	--[[判断指定configid的gadget的血量小于%50时触发指定后续操作]]--
	if evt.type ~= EventType.EVENT_SPECIFIC_GADGET_HP_CHANGE or evt.param3 > 50 then
		return false
	end
	
	-- 判断剩余怪物数量是否是2
	if ScriptLib.GetGroupMonsterCount(context) > 2 then
		return false
	end
	
	-- 判断变量"ison"为1
	if ScriptLib.GetGroupVariableValue(context, "ison") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_SPECIFIC_GADGET_HP_CHANGE_158017(context, evt)
	-- play_type含义：1·代表开始播放； 2·代表停止播放
	-- 在指定位置播放或停止音效资源
		local pos = {x=-1680, y=223, z=2947}
	    if 0 ~= ScriptLib.ScenePlaySound(context, {play_pos = pos, sound_name = "LevelHornSound001", play_type= 1, is_broadcast = false }) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_soundplay")
					return -1
		end 
	
	-- 在指定位置对应半径范围播放reminder
	local pos = {x=-1680,y=223,z=2947}
	if 0 ~= ScriptLib.ShowReminderRadius(context, 400004, pos, 50) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui_bypos")
		return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 158004, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 158006, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 158018, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	-- 将本组内变量名为 "ison" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "ison", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end