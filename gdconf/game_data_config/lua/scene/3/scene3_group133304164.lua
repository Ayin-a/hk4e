-- 基础信息
local base_info = {
	group_id = 133304164
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 164001, monster_id = 25310201, pos = { x = -1735.902, y = 397.228, z = 2203.920 }, rot = { x = 0.000, y = 212.937, z = 0.000 }, level = 1, drop_tag = "中级镀金旅团", pose_id = 1, area_id = 21 },
	{ config_id = 164002, monster_id = 25210401, pos = { x = -1732.972, y = 398.934, z = 2207.445 }, rot = { x = 0.000, y = 180.405, z = 0.000 }, level = 1, drop_tag = "镀金旅团", area_id = 21 },
	{ config_id = 164003, monster_id = 25210401, pos = { x = -1737.883, y = 396.402, z = 2207.342 }, rot = { x = 0.000, y = 144.863, z = 0.000 }, level = 1, drop_tag = "镀金旅团", area_id = 21 },
	{ config_id = 164005, monster_id = 25210401, pos = { x = -1730.575, y = 399.559, z = 2189.339 }, rot = { x = 0.000, y = 31.150, z = 0.000 }, level = 1, drop_tag = "镀金旅团", pose_id = 9001, area_id = 21 },
	{ config_id = 164006, monster_id = 25210203, pos = { x = -1731.806, y = 398.954, z = 2195.494 }, rot = { x = 0.000, y = 214.369, z = 0.000 }, level = 1, drop_tag = "镀金旅团", pose_id = 9006, area_id = 21 },
	{ config_id = 164007, monster_id = 25210203, pos = { x = -1727.530, y = 400.788, z = 2189.559 }, rot = { x = 0.000, y = 308.789, z = 0.000 }, level = 1, drop_tag = "镀金旅团", pose_id = 9001, area_id = 21 },
	{ config_id = 164008, monster_id = 25210501, pos = { x = -1726.452, y = 401.354, z = 2191.000 }, rot = { x = 0.000, y = 257.493, z = 0.000 }, level = 1, drop_tag = "镀金旅团", pose_id = 9002, area_id = 21 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 164009, gadget_id = 70300104, pos = { x = -1734.533, y = 399.232, z = 2180.538 }, rot = { x = 338.780, y = 101.953, z = 9.230 }, level = 1, area_id = 21 },
	{ config_id = 164010, gadget_id = 70310006, pos = { x = -1729.030, y = 400.165, z = 2193.457 }, rot = { x = 0.000, y = 0.000, z = 28.448 }, level = 1, state = GadgetState.GearStart, area_id = 21 },
	{ config_id = 164011, gadget_id = 70220048, pos = { x = -1742.156, y = 395.047, z = 2188.115 }, rot = { x = 356.362, y = 8.616, z = 14.703 }, level = 1, area_id = 21 },
	{ config_id = 164012, gadget_id = 70220048, pos = { x = -1740.901, y = 396.059, z = 2185.518 }, rot = { x = 6.984, y = 358.921, z = 13.373 }, level = 1, area_id = 21 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1164004, name = "ANY_MONSTER_DIE_164004", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_164004", action = "action_EVENT_ANY_MONSTER_DIE_164004" }
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
		monsters = { 164005, 164006, 164007, 164008 },
		gadgets = { 164009, 164010, 164011, 164012 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_164004" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 164001, 164002, 164003 },
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
function condition_EVENT_ANY_MONSTER_DIE_164004(context, evt)
	-- 判断剩余怪物数量是否是1
	if ScriptLib.GetGroupMonsterCount(context) ~= 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_164004(context, evt)
	-- play_type含义：1·代表开始播放； 2·代表停止播放
	-- 在指定位置播放或停止音效资源
		local pos = {x=-1730, y=399, z=2190}
	    if 0 ~= ScriptLib.ScenePlaySound(context, {play_pos = pos, sound_name = "LevelHornSound001", play_type= 1, is_broadcast = false }) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_soundplay")
					return -1
		end 
	
	-- 在指定位置对应半径范围播放reminder
	local pos = {x=-1730.826,y=399.3956,z=2190.379}
	if 0 ~= ScriptLib.ShowReminderRadius(context, 400004, pos, 50) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui_bypos")
		return -1
	end
	
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133304164, 2)
	
	return 0
end