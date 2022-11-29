-- 基础信息
local base_info = {
	group_id = 133301204
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 204001, monster_id = 25310201, pos = { x = -479.389, y = 195.197, z = 3498.287 }, rot = { x = 0.000, y = 67.465, z = 0.000 }, level = 1, drop_tag = "中级镀金旅团", disableWander = true, isElite = true, pose_id = 9001, area_id = 22 },
	{ config_id = 204002, monster_id = 25210201, pos = { x = -478.416, y = 194.339, z = 3500.905 }, rot = { x = 0.000, y = 151.595, z = 0.000 }, level = 1, drop_tag = "镀金旅团", disableWander = true, pose_id = 9506, area_id = 22 },
	{ config_id = 204003, monster_id = 25210501, pos = { x = -477.068, y = 193.936, z = 3502.987 }, rot = { x = 0.000, y = 327.532, z = 0.000 }, level = 1, drop_tag = "镀金旅团", disableWander = true, pose_id = 9001, area_id = 22 },
	{ config_id = 204004, monster_id = 25210501, pos = { x = -477.153, y = 198.563, z = 3489.163 }, rot = { x = 0.000, y = 181.529, z = 0.000 }, level = 1, drop_tag = "镀金旅团", disableWander = true, pose_id = 9001, area_id = 22 },
	{ config_id = 204005, monster_id = 25310301, pos = { x = -488.714, y = 201.883, z = 3478.977 }, rot = { x = 0.000, y = 19.190, z = 0.000 }, level = 1, drop_tag = "中级镀金旅团", isElite = true, area_id = 22 },
	{ config_id = 204006, monster_id = 25210401, pos = { x = -490.685, y = 201.994, z = 3477.837 }, rot = { x = 0.000, y = 22.616, z = 0.000 }, level = 1, drop_tag = "镀金旅团", area_id = 22 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 204007, gadget_id = 70300105, pos = { x = -470.998, y = 199.412, z = 3494.064 }, rot = { x = 354.975, y = 210.068, z = 327.971 }, level = 33, area_id = 22 },
	{ config_id = 204008, gadget_id = 70300094, pos = { x = -472.485, y = 196.943, z = 3498.242 }, rot = { x = 17.341, y = 0.000, z = 26.020 }, level = 33, area_id = 22 },
	{ config_id = 204009, gadget_id = 70300094, pos = { x = -471.504, y = 197.723, z = 3497.263 }, rot = { x = 17.341, y = 0.000, z = 26.020 }, level = 33, area_id = 22 },
	{ config_id = 204010, gadget_id = 70300093, pos = { x = -480.826, y = 192.723, z = 3505.199 }, rot = { x = 18.681, y = 321.252, z = 348.566 }, level = 33, area_id = 22 },
	{ config_id = 204011, gadget_id = 70310006, pos = { x = -476.546, y = 195.353, z = 3498.893 }, rot = { x = 15.946, y = 0.249, z = 7.112 }, level = 33, area_id = 22 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1204012, name = "ANY_MONSTER_DIE_204012", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_204012", action = "action_EVENT_ANY_MONSTER_DIE_204012" }
}

-- 变量
variables = {
}

-- 废弃数据
garbages = {
	triggers = {
		{ config_id = 1204013, name = "ANY_MONSTER_LIVE_204013", event = EventType.EVENT_ANY_MONSTER_LIVE, source = "", condition = "condition_EVENT_ANY_MONSTER_LIVE_204013", action = "action_EVENT_ANY_MONSTER_LIVE_204013" }
	}
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
		monsters = { 204001, 204002, 204003, 204004 },
		gadgets = { 204007, 204008, 204009, 204010, 204011 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_204012" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_204012(context, evt)
	-- 判断剩余怪物数量是否是1
	if ScriptLib.GetGroupMonsterCount(context) ~= 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_204012(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 204005, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 204006, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	-- play_type含义：1·代表开始播放； 2·代表停止播放
	-- 在指定位置播放或停止音效资源
		local pos = {x=-478, y=195, z=3500}
	    if 0 ~= ScriptLib.ScenePlaySound(context, {play_pos = pos, sound_name = "LevelHornSound001", play_type= 1, is_broadcast = false }) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_soundplay")
					return -1
		end 
	
	-- 在指定位置对应半径范围播放reminder
	local pos = {x=-478,y=195,z=3500}
	if 0 ~= ScriptLib.ShowReminderRadius(context, 400004, pos, 50) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui_bypos")
		return -1
	end
	
	return 0
end