-- 基础信息
local base_info = {
	group_id = 133301197
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 197001, monster_id = 23010301, pos = { x = -474.816, y = 195.747, z = 3499.173 }, rot = { x = 0.000, y = 314.257, z = 0.000 }, level = 1, drop_tag = "先遣队", disableWander = true, area_id = 22 },
	{ config_id = 197002, monster_id = 23010401, pos = { x = -477.176, y = 194.413, z = 3501.326 }, rot = { x = 0.000, y = 129.199, z = 0.000 }, level = 1, drop_tag = "先遣队", disableWander = true, pose_id = 9011, area_id = 22 },
	{ config_id = 197003, monster_id = 23010501, pos = { x = -484.675, y = 197.636, z = 3489.760 }, rot = { x = 0.000, y = 42.295, z = 0.000 }, level = 1, drop_tag = "先遣队", area_id = 22 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 197005, gadget_id = 70300104, pos = { x = -480.207, y = 195.969, z = 3496.248 }, rot = { x = 0.000, y = 258.070, z = 338.992 }, level = 1, area_id = 22 },
	{ config_id = 197006, gadget_id = 70310006, pos = { x = -478.432, y = 194.900, z = 3499.213 }, rot = { x = 20.070, y = 0.000, z = 2.665 }, level = 1, area_id = 22 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1197004, name = "ANY_MONSTER_DIE_197004", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_197004", action = "action_EVENT_ANY_MONSTER_DIE_197004" }
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
		monsters = { 197001, 197002 },
		gadgets = { 197005, 197006 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_197004" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 197003 },
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
function condition_EVENT_ANY_MONSTER_DIE_197004(context, evt)
	-- 判断剩余怪物数量是否是1
	if ScriptLib.GetGroupMonsterCount(context) ~= 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_197004(context, evt)
	-- play_type含义：1·代表开始播放； 2·代表停止播放
	-- 在指定位置播放或停止音效资源
		local pos = {x=-476, y=195, z=3499}
	    if 0 ~= ScriptLib.ScenePlaySound(context, {play_pos = pos, sound_name = "LevelHornSound001", play_type= 1, is_broadcast = false }) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_soundplay")
					return -1
		end 
	
	-- 在指定位置对应半径范围播放reminder
	local pos = {x=-476,y=195,z=3499}
	if 0 ~= ScriptLib.ShowReminderRadius(context, 400004, pos, 50) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui_bypos")
		return -1
	end
	
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133301197, 2)
	
	return 0
end