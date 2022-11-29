-- 基础信息
local base_info = {
	group_id = 133001304
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 1292, monster_id = 21010101, pos = { x = 1738.761, y = 215.094, z = -1364.166 }, rot = { x = 0.000, y = 96.648, z = 0.000 }, level = 1, drop_tag = "丘丘人", area_id = 2 },
	{ config_id = 1294, monster_id = 21010101, pos = { x = 1721.299, y = 214.341, z = -1382.396 }, rot = { x = 0.000, y = 137.983, z = 0.000 }, level = 1, drop_tag = "丘丘人", area_id = 2 },
	{ config_id = 1296, monster_id = 21020201, pos = { x = 1743.893, y = 214.948, z = -1372.260 }, rot = { x = 0.000, y = 270.266, z = 0.000 }, level = 1, drop_tag = "丘丘暴徒", pose_id = 401, area_id = 2 },
	{ config_id = 1297, monster_id = 21030101, pos = { x = 1724.880, y = 213.907, z = -1381.233 }, rot = { x = 0.000, y = 240.765, z = 0.000 }, level = 1, drop_tag = "丘丘萨满", pose_id = 9012, area_id = 2 },
	{ config_id = 1300, monster_id = 20011201, pos = { x = 1733.965, y = 214.918, z = -1362.560 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "史莱姆", disableWander = true, area_id = 2 },
	{ config_id = 1302, monster_id = 20011201, pos = { x = 1722.342, y = 214.635, z = -1383.545 }, rot = { x = 0.000, y = 292.908, z = 0.000 }, level = 1, drop_tag = "史莱姆", disableWander = true, area_id = 2 },
	{ config_id = 1303, monster_id = 21020101, pos = { x = 1718.269, y = 214.008, z = -1399.113 }, rot = { x = 0.000, y = 20.436, z = 0.000 }, level = 1, drop_tag = "丘丘暴徒", area_id = 2 },
	{ config_id = 1304, monster_id = 21010601, pos = { x = 1714.764, y = 213.724, z = -1402.977 }, rot = { x = 0.000, y = 14.893, z = 0.000 }, level = 1, drop_tag = "丘丘人", area_id = 2 },
	{ config_id = 1305, monster_id = 21010601, pos = { x = 1716.190, y = 213.517, z = -1405.778 }, rot = { x = 0.000, y = 14.893, z = 0.000 }, level = 1, drop_tag = "丘丘人", area_id = 2 },
	{ config_id = 1306, monster_id = 21010601, pos = { x = 1711.854, y = 213.184, z = -1403.962 }, rot = { x = 0.000, y = 45.603, z = 0.000 }, level = 1, drop_tag = "丘丘人", area_id = 2 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 3204, gadget_id = 70300102, pos = { x = 1739.517, y = 214.634, z = -1364.496 }, rot = { x = 358.965, y = 0.000, z = 0.000 }, level = 1, area_id = 2 },
	{ config_id = 3206, gadget_id = 70300102, pos = { x = 1721.583, y = 213.867, z = -1383.365 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 2 },
	{ config_id = 3207, gadget_id = 70300087, pos = { x = 1734.012, y = 214.491, z = -1362.508 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 2 },
	{ config_id = 3209, gadget_id = 70220005, pos = { x = 1742.065, y = 214.802, z = -1363.499 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 2 },
	{ config_id = 3211, gadget_id = 70220005, pos = { x = 1739.921, y = 215.093, z = -1364.228 }, rot = { x = 0.000, y = 118.021, z = 0.000 }, level = 1, area_id = 2 },
	{ config_id = 3221, gadget_id = 70300084, pos = { x = 1743.562, y = 214.853, z = -1361.026 }, rot = { x = 2.647, y = 320.911, z = 7.126 }, level = 1, area_id = 2 },
	{ config_id = 3227, gadget_id = 70300087, pos = { x = 1722.443, y = 214.337, z = -1383.545 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 2 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1000460, name = "ANY_MONSTER_DIE_460", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_460", action = "action_EVENT_ANY_MONSTER_DIE_460" }
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
		monsters = { 1292, 1294, 1296, 1297, 1300, 1302 },
		gadgets = { 3204, 3206, 3207, 3209, 3211, 3221, 3227 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_460" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_460(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_460(context, evt)
	-- play_type含义：1·代表开始播放； 2·代表停止播放
	-- 在指定位置播放或停止音效资源
		local pos = {x=1738, y=214, z=-1372}
	    if 0 ~= ScriptLib.ScenePlaySound(context, {play_pos = pos, sound_name = "LevelHornSound001", play_type= 1, is_broadcast = false }) then
					return -1
		end 
	
	-- 延迟3秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 1303, delay_time = 0 }) then
	  return -1
	end
	
	-- 延迟3秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 1304, delay_time = 0 }) then
	  return -1
	end
	
	-- 在指定位置对应半径范围播放reminder
	local pos = {x=1738,y=214,z=-1372}
	if 0 ~= ScriptLib.ShowReminderRadius(context, 400004, pos, 50) then
		return -1
	end
	
	-- 延迟3秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 1305, delay_time = 0 }) then
	  return -1
	end
	
	-- 延迟3秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 1306, delay_time = 0 }) then
	  return -1
	end
	
	return 0
end