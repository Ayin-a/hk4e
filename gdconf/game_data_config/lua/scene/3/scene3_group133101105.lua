-- 基础信息
local base_info = {
	group_id = 133101105
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 105001, monster_id = 21011001, pos = { x = 1320.235, y = 229.591, z = 1267.700 }, rot = { x = 0.818, y = 110.570, z = 4.716 }, level = 1, drop_tag = "远程丘丘人", disableWander = true, pose_id = 32, area_id = 6 },
	{ config_id = 105002, monster_id = 21011001, pos = { x = 1320.666, y = 229.609, z = 1262.749 }, rot = { x = 4.622, y = 45.471, z = 1.245 }, level = 1, drop_tag = "远程丘丘人", disableWander = true, pose_id = 32, area_id = 6 },
	{ config_id = 105003, monster_id = 21030101, pos = { x = 1323.198, y = 228.477, z = 1265.957 }, rot = { x = 3.345, y = 76.118, z = 3.426 }, level = 1, drop_tag = "丘丘萨满", disableWander = true, pose_id = 9012, area_id = 6 },
	{ config_id = 105004, monster_id = 21010301, pos = { x = 1328.273, y = 227.556, z = 1261.387 }, rot = { x = 4.698, y = 41.426, z = 0.916 }, level = 1, drop_tag = "丘丘人", disableWander = true, pose_id = 9011, area_id = 6 },
	{ config_id = 105005, monster_id = 21010301, pos = { x = 1328.079, y = 227.859, z = 1270.542 }, rot = { x = 0.358, y = 304.661, z = 355.227 }, level = 1, drop_tag = "丘丘人", disableWander = true, pose_id = 9011, area_id = 6 },
	{ config_id = 105006, monster_id = 21010601, pos = { x = 1334.925, y = 227.343, z = 1267.725 }, rot = { x = 358.622, y = 283.680, z = 355.416 }, level = 1, drop_tag = "丘丘人", area_id = 6 },
	{ config_id = 105007, monster_id = 21010601, pos = { x = 1335.359, y = 227.338, z = 1264.614 }, rot = { x = 359.748, y = 297.369, z = 355.220 }, level = 1, drop_tag = "丘丘人", area_id = 6 },
	{ config_id = 105008, monster_id = 21020201, pos = { x = 1335.697, y = 227.355, z = 1266.155 }, rot = { x = 358.501, y = 282.176, z = 355.454 }, level = 1, drop_tag = "丘丘暴徒", area_id = 6 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 105009, gadget_id = 70300084, pos = { x = 1319.275, y = 229.314, z = 1259.822 }, rot = { x = 7.547, y = 131.115, z = 8.853 }, level = 1, area_id = 6 },
	{ config_id = 105010, gadget_id = 70220013, pos = { x = 1319.798, y = 228.396, z = 1273.492 }, rot = { x = 343.694, y = 237.145, z = 357.799 }, level = 1, area_id = 6 },
	{ config_id = 105011, gadget_id = 70220013, pos = { x = 1324.045, y = 228.968, z = 1257.359 }, rot = { x = 341.695, y = 253.149, z = 359.234 }, level = 1, area_id = 6 },
	{ config_id = 105012, gadget_id = 70300100, pos = { x = 1327.856, y = 227.301, z = 1263.025 }, rot = { x = 8.341, y = 7.301, z = 338.087 }, level = 1, area_id = 6 },
	{ config_id = 105013, gadget_id = 70300100, pos = { x = 1326.461, y = 227.676, z = 1271.568 }, rot = { x = 14.250, y = 31.534, z = 3.559 }, level = 1, area_id = 6 },
	{ config_id = 105014, gadget_id = 70300088, pos = { x = 1320.200, y = 228.880, z = 1271.399 }, rot = { x = 12.159, y = 3.914, z = 350.390 }, level = 1, area_id = 6 },
	{ config_id = 105015, gadget_id = 70300088, pos = { x = 1317.406, y = 229.789, z = 1264.662 }, rot = { x = 12.750, y = 347.284, z = 344.113 }, level = 1, area_id = 6 },
	{ config_id = 105016, gadget_id = 70300088, pos = { x = 1326.532, y = 228.426, z = 1254.748 }, rot = { x = 1.978, y = 324.740, z = 355.641 }, level = 1, area_id = 6 },
	{ config_id = 105019, gadget_id = 70300084, pos = { x = 1327.156, y = 227.734, z = 1250.717 }, rot = { x = 12.535, y = 80.128, z = 347.554 }, level = 1, area_id = 6 },
	{ config_id = 105020, gadget_id = 70300084, pos = { x = 1317.143, y = 229.582, z = 1267.161 }, rot = { x = 355.583, y = 188.615, z = 359.332 }, level = 1, area_id = 6 },
	{ config_id = 105021, gadget_id = 70220014, pos = { x = 1318.697, y = 229.047, z = 1272.109 }, rot = { x = 341.455, y = 212.427, z = 6.496 }, level = 1, area_id = 6 },
	{ config_id = 105022, gadget_id = 70310001, pos = { x = 1323.921, y = 228.042, z = 1263.605 }, rot = { x = 3.392, y = 359.705, z = 356.825 }, level = 1, area_id = 6 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1105017, name = "ANY_MONSTER_DIE_105017", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_105017", action = "action_EVENT_ANY_MONSTER_DIE_105017" }
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
		monsters = { 105001, 105002, 105003, 105004, 105005 },
		gadgets = { 105009, 105010, 105011, 105012, 105013, 105014, 105015, 105016, 105019, 105020, 105021, 105022 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_105017" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_105017(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_105017(context, evt)
	-- play_type含义：1·代表开始播放； 2·代表停止播放
	-- 在指定位置播放或停止音效资源
		local pos = {x=1325, y=230, z=1262}
	    if 0 ~= ScriptLib.ScenePlaySound(context, {play_pos = pos, sound_name = "LevelHornSound001", play_type= 1, is_broadcast = false }) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_soundplay")
					return -1
		end 
	
	-- 在指定位置对应半径范围播放reminder
	local pos = {x=1325,y=230,z=1262}
	if 0 ~= ScriptLib.ShowReminderRadius(context, 400004, pos, 50) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui_bypos")
		return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 105007, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 105008, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 105006, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end