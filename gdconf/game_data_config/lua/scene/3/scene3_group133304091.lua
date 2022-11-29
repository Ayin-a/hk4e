-- 基础信息
local base_info = {
	group_id = 133304091
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 91001, monster_id = 23010501, pos = { x = -1334.678, y = 279.030, z = 2763.029 }, rot = { x = 0.000, y = 314.257, z = 0.000 }, level = 1, drop_tag = "先遣队", pose_id = 9011, area_id = 21 },
	{ config_id = 91002, monster_id = 23010401, pos = { x = -1340.128, y = 278.896, z = 2773.147 }, rot = { x = 0.000, y = 129.199, z = 0.000 }, level = 1, drop_tag = "先遣队", disableWander = true, area_id = 21 },
	{ config_id = 91005, monster_id = 23010301, pos = { x = -1339.537, y = 278.350, z = 2762.299 }, rot = { x = 0.000, y = 26.909, z = 0.000 }, level = 1, drop_tag = "先遣队", area_id = 21 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 91006, gadget_id = 70950135, pos = { x = -1336.553, y = 278.397, z = 2757.576 }, rot = { x = 356.148, y = 349.833, z = 8.225 }, level = 1, area_id = 21 },
	{ config_id = 91007, gadget_id = 71700434, pos = { x = -1346.420, y = 277.649, z = 2768.000 }, rot = { x = 0.000, y = 0.000, z = 13.110 }, level = 1, area_id = 21 },
	{ config_id = 91008, gadget_id = 71700434, pos = { x = -1345.412, y = 277.993, z = 2769.697 }, rot = { x = 0.000, y = 0.000, z = 14.321 }, level = 1, area_id = 21 },
	{ config_id = 91009, gadget_id = 70310009, pos = { x = -1337.129, y = 279.037, z = 2768.889 }, rot = { x = 4.248, y = 358.145, z = 7.039 }, level = 1, state = GadgetState.GearStart, area_id = 21 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1091004, name = "ANY_MONSTER_DIE_91004", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_91004", action = "action_EVENT_ANY_MONSTER_DIE_91004" }
}

-- 变量
variables = {
}

-- 废弃数据
garbages = {
	monsters = {
		{ config_id = 91003, monster_id = 23010101, pos = { x = -1345.093, y = 277.170, z = 2761.153 }, rot = { x = 0.000, y = 42.295, z = 0.000 }, level = 1, drop_tag = "先遣队", pose_id = 9001, area_id = 21 }
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
		monsters = { 91001, 91005 },
		gadgets = { 91006, 91007, 91008, 91009 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_91004" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 91002 },
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
function condition_EVENT_ANY_MONSTER_DIE_91004(context, evt)
	-- 判断剩余怪物数量是否是1
	if ScriptLib.GetGroupMonsterCount(context) ~= 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_91004(context, evt)
	-- play_type含义：1·代表开始播放； 2·代表停止播放
	-- 在指定位置播放或停止音效资源
		local pos = {x=-1335, y=279, z=2772}
	    if 0 ~= ScriptLib.ScenePlaySound(context, {play_pos = pos, sound_name = "LevelHornSound001", play_type= 1, is_broadcast = false }) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_soundplay")
					return -1
		end 
	
	-- 在指定位置对应半径范围播放reminder
	local pos = {x=-1335.289,y=279.4788,z=2772.18}
	if 0 ~= ScriptLib.ShowReminderRadius(context, 400004, pos, 50) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui_bypos")
		return -1
	end
	
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133304091, 2)
	
	return 0
end