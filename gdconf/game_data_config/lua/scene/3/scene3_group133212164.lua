-- 基础信息
local base_info = {
	group_id = 133212164
}

-- Trigger变量
local defs = {
	gadget_id = 0
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 164001, monster_id = 23020101, pos = { x = -3906.735, y = 211.708, z = -2072.250 }, rot = { x = 0.000, y = 6.168, z = 0.000 }, level = 1, drop_tag = "债务处理人", area_id = 13 },
	{ config_id = 164002, monster_id = 23010401, pos = { x = -3906.603, y = 211.389, z = -2067.740 }, rot = { x = 0.000, y = 106.347, z = 0.000 }, level = 1, drop_tag = "先遣队", pose_id = 9012, area_id = 13 },
	{ config_id = 164003, monster_id = 23010301, pos = { x = -3887.305, y = 208.456, z = -2070.233 }, rot = { x = 0.000, y = 235.370, z = 0.000 }, level = 1, drop_tag = "先遣队", area_id = 13 },
	{ config_id = 164004, monster_id = 23010501, pos = { x = -3905.793, y = 213.847, z = -2090.678 }, rot = { x = 0.000, y = 32.436, z = 0.000 }, level = 1, drop_tag = "先遣队", area_id = 13 },
	{ config_id = 164007, monster_id = 23010601, pos = { x = -3891.992, y = 208.978, z = -2068.295 }, rot = { x = 0.000, y = 185.836, z = 0.000 }, level = 1, drop_tag = "先遣队", area_id = 13 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 164005, gadget_id = 70360063, pos = { x = -3905.525, y = 211.499, z = -2070.426 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, persistent = true, area_id = 13 },
	{ config_id = 164008, gadget_id = 70310009, pos = { x = -3910.042, y = 212.310, z = -2076.994 }, rot = { x = 0.000, y = 46.190, z = 0.000 }, level = 27, area_id = 13 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1164006, name = "ANY_MONSTER_DIE_164006", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_164006", action = "action_EVENT_ANY_MONSTER_DIE_164006" }
}

-- 变量
variables = {
	{ config_id = 1, name = "isFinished", value = 0, no_refresh = false }
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
		monsters = { 164001, 164002, 164007 },
		gadgets = { 164005, 164008 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_164006" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 164003, 164004 },
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
function condition_EVENT_ANY_MONSTER_DIE_164006(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_164006(context, evt)
	-- play_type含义：1·代表开始播放； 2·代表停止播放
	-- 在指定位置播放或停止音效资源
		local pos = {x=0, y=0, z=0}
	    if 0 ~= ScriptLib.ScenePlaySound(context, {play_pos = pos, sound_name = "LevelHornSound001", play_type= 1, is_broadcast = false }) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_soundplay")
					return -1
		end 
	
	-- 在指定位置对应半径范围播放reminder
	local pos = {x=-3905.525,y=211.4993,z=-2070.426}
	if 0 ~= ScriptLib.ShowReminderRadius(context, 400004, pos, 50) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui_bypos")
		return -1
	end
	
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133212164, 2)
	
	return 0
end