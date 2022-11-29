-- 基础信息
local base_info = {
	group_id = 133213153
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 153001, monster_id = 21020701, pos = { x = -3963.987, y = 200.419, z = -2907.052 }, rot = { x = 0.000, y = 140.996, z = 0.000 }, level = 1, drop_tag = "丘丘暴徒", pose_id = 401, area_id = 12 },
	{ config_id = 153002, monster_id = 21030601, pos = { x = -3960.488, y = 200.419, z = -2911.794 }, rot = { x = 348.997, y = 343.299, z = 18.514 }, level = 1, drop_tag = "丘丘萨满", disableWander = true, pose_id = 9012, area_id = 12 },
	{ config_id = 153006, monster_id = 21010601, pos = { x = -3938.473, y = 203.654, z = -2895.930 }, rot = { x = 0.000, y = 245.970, z = 0.000 }, level = 1, drop_tag = "丘丘人", area_id = 12 },
	{ config_id = 153007, monster_id = 21011601, pos = { x = -3940.535, y = 201.790, z = -2886.921 }, rot = { x = 0.000, y = 243.559, z = 0.000 }, level = 1, drop_tag = "丘丘人", area_id = 12 },
	{ config_id = 153008, monster_id = 21020701, pos = { x = -3931.126, y = 202.239, z = -2920.739 }, rot = { x = 0.000, y = 273.435, z = 0.000 }, level = 1, drop_tag = "丘丘暴徒", area_id = 12 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 153003, gadget_id = 70310009, pos = { x = -3967.715, y = 200.419, z = -2891.955 }, rot = { x = 0.000, y = 214.745, z = 0.000 }, level = 1, area_id = 12 },
	{ config_id = 153009, gadget_id = 70300077, pos = { x = -3972.363, y = 200.504, z = -2898.997 }, rot = { x = 0.000, y = 37.148, z = 0.000 }, level = 1, area_id = 12 },
	{ config_id = 153010, gadget_id = 70220013, pos = { x = -3974.905, y = 201.124, z = -2901.565 }, rot = { x = 0.000, y = 304.254, z = 0.000 }, level = 1, area_id = 12 },
	{ config_id = 153011, gadget_id = 70220013, pos = { x = -3976.551, y = 201.542, z = -2903.653 }, rot = { x = 0.000, y = 342.881, z = 0.000 }, level = 1, area_id = 12 },
	{ config_id = 153012, gadget_id = 70300089, pos = { x = -3959.255, y = 200.419, z = -2903.426 }, rot = { x = 0.000, y = 99.863, z = 0.000 }, level = 1, area_id = 12 },
	{ config_id = 153013, gadget_id = 70300089, pos = { x = -3970.010, y = 200.419, z = -2910.420 }, rot = { x = 0.000, y = 122.893, z = 0.000 }, level = 1, area_id = 12 },
	{ config_id = 153014, gadget_id = 70360063, pos = { x = -3962.153, y = 200.419, z = -2909.301 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, persistent = true, area_id = 12 },
	{ config_id = 153015, gadget_id = 70300089, pos = { x = -3957.911, y = 200.419, z = -2915.221 }, rot = { x = 0.000, y = 99.863, z = 0.000 }, level = 1, area_id = 12 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1153017, name = "ANY_MONSTER_DIE_153017", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_153017", action = "action_EVENT_ANY_MONSTER_DIE_153017" }
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
		monsters = { 153001, 153002 },
		gadgets = { 153003, 153009, 153010, 153011, 153012, 153013, 153014, 153015 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_153017" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 153006, 153007, 153008 },
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
function condition_EVENT_ANY_MONSTER_DIE_153017(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_153017(context, evt)
	-- play_type含义：1·代表开始播放； 2·代表停止播放
	-- 在指定位置播放或停止音效资源
		local pos = {x=0, y=0, z=0}
	    if 0 ~= ScriptLib.ScenePlaySound(context, {play_pos = pos, sound_name = "LevelHornSound001", play_type= 1, is_broadcast = false }) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_soundplay")
					return -1
		end 
	
	-- 在指定位置对应半径范围播放reminder
	local pos = {x=-3962.153,y=200.3455,z=-2909.301}
	if 0 ~= ScriptLib.ShowReminderRadius(context, 400004, pos, 50) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui_bypos")
		return -1
	end
	
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133213153, 2)
	
	return 0
end