-- 基础信息
local base_info = {
	group_id = 133220070
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 70006, monster_id = 25080101, pos = { x = -1869.674, y = 200.156, z = -4286.487 }, rot = { x = 0.000, y = 98.751, z = 0.000 }, level = 1, drop_tag = "浪人武士", disableWander = true, pose_id = 1004, area_id = 11 },
	{ config_id = 70011, monster_id = 25080101, pos = { x = -1852.564, y = 200.053, z = -4292.604 }, rot = { x = 0.000, y = 117.325, z = 0.000 }, level = 1, drop_tag = "浪人武士", pose_id = 1, area_id = 11 },
	{ config_id = 70012, monster_id = 25080201, pos = { x = -1864.216, y = 200.000, z = -4293.739 }, rot = { x = 0.000, y = 358.889, z = 0.000 }, level = 1, drop_tag = "浪人武士", pose_id = 1, area_id = 11 },
	{ config_id = 70013, monster_id = 25080301, pos = { x = -1856.681, y = 200.000, z = -4279.622 }, rot = { x = 0.000, y = 195.976, z = 0.000 }, level = 1, drop_tag = "浪人武士", pose_id = 1, area_id = 11 },
	{ config_id = 70015, monster_id = 25080201, pos = { x = -1872.528, y = 200.009, z = -4293.084 }, rot = { x = 0.000, y = 105.796, z = 0.000 }, level = 1, drop_tag = "浪人武士", pose_id = 1, area_id = 11 },
	{ config_id = 70016, monster_id = 25080101, pos = { x = -1885.762, y = 200.121, z = -4266.282 }, rot = { x = 0.000, y = 124.882, z = 0.000 }, level = 1, drop_tag = "浪人武士", pose_id = 1, area_id = 11 },
	{ config_id = 70017, monster_id = 25080301, pos = { x = -1855.438, y = 200.071, z = -4289.779 }, rot = { x = 0.000, y = 300.972, z = 0.000 }, level = 1, drop_tag = "浪人武士", pose_id = 1, area_id = 11 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 70001, gadget_id = 70220048, pos = { x = -1881.553, y = 200.448, z = -4292.110 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 11 },
	{ config_id = 70002, gadget_id = 70220050, pos = { x = -1873.766, y = 200.142, z = -4291.073 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 11 },
	{ config_id = 70003, gadget_id = 70220051, pos = { x = -1874.666, y = 200.204, z = -4290.425 }, rot = { x = 290.732, y = 0.000, z = 0.000 }, level = 27, area_id = 11 },
	{ config_id = 70004, gadget_id = 70220052, pos = { x = -1874.082, y = 200.178, z = -4290.515 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 11 },
	{ config_id = 70005, gadget_id = 70220048, pos = { x = -1881.283, y = 200.555, z = -4290.093 }, rot = { x = 0.000, y = 328.122, z = 0.000 }, level = 27, area_id = 11 },
	{ config_id = 70007, gadget_id = 70220051, pos = { x = -1876.478, y = 200.368, z = -4282.250 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 11 },
	{ config_id = 70008, gadget_id = 70220051, pos = { x = -1875.730, y = 200.311, z = -4282.190 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 11 },
	{ config_id = 70009, gadget_id = 70220051, pos = { x = -1875.943, y = 200.321, z = -4281.701 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 11 },
	{ config_id = 70010, gadget_id = 70220048, pos = { x = -1874.454, y = 200.249, z = -4283.326 }, rot = { x = 0.000, y = 328.122, z = 0.000 }, level = 27, area_id = 11 },
	{ config_id = 70019, gadget_id = 70300105, pos = { x = -1878.568, y = 200.227, z = -4287.396 }, rot = { x = 0.000, y = 11.989, z = 0.000 }, level = 27, area_id = 11 },
	{ config_id = 70020, gadget_id = 70310009, pos = { x = -1867.371, y = 200.107, z = -4286.664 }, rot = { x = 0.000, y = 278.003, z = 0.000 }, level = 27, area_id = 11 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1070014, name = "MONSTER_BATTLE_70014", event = EventType.EVENT_MONSTER_BATTLE, source = "", condition = "condition_EVENT_MONSTER_BATTLE_70014", action = "action_EVENT_MONSTER_BATTLE_70014" },
	{ config_id = 1070018, name = "ANY_MONSTER_DIE_70018", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_70018", action = "action_EVENT_ANY_MONSTER_DIE_70018" },
	{ config_id = 1070021, name = "ANY_MONSTER_DIE_70021", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_70021", action = "action_EVENT_ANY_MONSTER_DIE_70021" }
}

-- 变量
variables = {
	{ config_id = 1, name = "isSpawn", value = 0, no_refresh = false }
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
		monsters = { 70006, 70011 },
		gadgets = { 70001, 70002, 70003, 70004, 70005, 70007, 70008, 70009, 70010, 70019, 70020 },
		regions = { },
		triggers = { "MONSTER_BATTLE_70014", "ANY_MONSTER_DIE_70018", "ANY_MONSTER_DIE_70021" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 70012, 70013 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { 70015, 70016, 70017 },
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
function condition_EVENT_MONSTER_BATTLE_70014(context, evt)
	-- 判断变量"isSpawn"为0
	if ScriptLib.GetGroupVariableValue(context, "isSpawn") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_MONSTER_BATTLE_70014(context, evt)
	-- 将本组内变量名为 "isSpawn" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "isSpawn", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133220070, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_70018(context, evt)
	-- 判断剩余怪物数量是否是1
	if ScriptLib.GetGroupMonsterCount(context) ~= 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_70018(context, evt)
	-- play_type含义：1·代表开始播放； 2·代表停止播放
	-- 在指定位置播放或停止音效资源
		local pos = {x=0, y=0, z=0}
	    if 0 ~= ScriptLib.ScenePlaySound(context, {play_pos = pos, sound_name = "LevelHornSound001", play_type= 1, is_broadcast = false }) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_soundplay")
					return -1
		end 
	
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133220070, 3)
	
	-- 在指定位置对应半径范围播放reminder
	local pos = {x=-1869.674,y=200.1558,z=-4286.487}
	if 0 ~= ScriptLib.ShowReminderRadius(context, 400004, pos, 50) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui_bypos")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_70021(context, evt)
	-- 判断变量"isSpawn"为0
	if ScriptLib.GetGroupVariableValue(context, "isSpawn") ~= 0 then
			return false
	end
	
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_70021(context, evt)
	-- 将本组内变量名为 "isSpawn" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "isSpawn", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133220070, 2)
	
	return 0
end