-- 基础信息
local base_info = {
	group_id = 133103298
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 298001, monster_id = 25020201, pos = { x = 714.264, y = 184.356, z = 1088.164 }, rot = { x = 0.000, y = 323.852, z = 0.000 }, level = 1, drop_tag = "盗宝团", disableWander = true, area_id = 6 },
	{ config_id = 298002, monster_id = 25010301, pos = { x = 700.421, y = 185.784, z = 1082.339 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "盗宝团", pose_id = 9006, area_id = 6 },
	{ config_id = 298003, monster_id = 25010701, pos = { x = 700.468, y = 185.406, z = 1083.938 }, rot = { x = 0.000, y = 168.581, z = 0.000 }, level = 1, drop_tag = "盗宝团", pose_id = 9006, area_id = 6 },
	{ config_id = 298004, monster_id = 25010201, pos = { x = 709.226, y = 184.202, z = 1089.303 }, rot = { x = 0.000, y = 290.627, z = 0.000 }, level = 1, drop_tag = "盗宝团", pose_id = 9004, area_id = 6 },
	{ config_id = 298005, monster_id = 25030201, pos = { x = 704.743, y = 184.986, z = 1085.086 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "盗宝团", pose_id = 4, area_id = 6 },
	{ config_id = 298006, monster_id = 25070101, pos = { x = 723.130, y = 184.503, z = 1095.008 }, rot = { x = 0.000, y = 259.300, z = 0.000 }, level = 1, drop_tag = "盗宝团", area_id = 6 },
	{ config_id = 298007, monster_id = 25010501, pos = { x = 726.425, y = 185.038, z = 1096.848 }, rot = { x = 0.000, y = 259.300, z = 0.000 }, level = 1, drop_tag = "盗宝团", area_id = 6 },
	{ config_id = 298008, monster_id = 25030201, pos = { x = 724.623, y = 185.232, z = 1090.725 }, rot = { x = 0.000, y = 259.300, z = 0.000 }, level = 1, drop_tag = "盗宝团", area_id = 6 }
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
	{ config_id = 1298014, name = "ANY_MONSTER_DIE_298014", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_298014", action = "action_EVENT_ANY_MONSTER_DIE_298014" }
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
		monsters = { 298001, 298002, 298003, 298004, 298005 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_298014" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_298014(context, evt)
	-- 判断剩余怪物数量是否是2
	if ScriptLib.GetGroupMonsterCount(context) > 2 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_298014(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 298006, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 298007, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 298008, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	-- play_type含义：1·代表开始播放； 2·代表停止播放
	-- 在指定位置播放或停止音效资源
		local pos = {x=705, y=184, z=1088}
	    if 0 ~= ScriptLib.ScenePlaySound(context, {play_pos = pos, sound_name = "LevelHornSound001", play_type= 1, is_broadcast = false }) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_soundplay")
					return -1
		end 
	
	-- 在指定位置对应半径范围播放reminder
	local pos = {x=705,y=184,z=1088}
	if 0 ~= ScriptLib.ShowReminderRadius(context, 400004, pos, 50) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui_bypos")
		return -1
	end
	
	return 0
end