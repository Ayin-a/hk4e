-- 基础信息
local base_info = {
	group_id = 133104511
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 511001, monster_id = 21030401, pos = { x = 371.726, y = 207.450, z = 628.946 }, rot = { x = 0.000, y = 147.645, z = 0.000 }, level = 1, drop_tag = "丘丘萨满", pose_id = 9012, area_id = 6 },
	{ config_id = 511002, monster_id = 21011201, pos = { x = 370.885, y = 207.450, z = 624.041 }, rot = { x = 0.000, y = 354.432, z = 0.000 }, level = 1, drop_tag = "丘丘人", disableWander = true, pose_id = 9012, area_id = 6 },
	{ config_id = 511003, monster_id = 21011201, pos = { x = 374.845, y = 207.450, z = 626.977 }, rot = { x = 0.000, y = 293.965, z = 0.000 }, level = 1, drop_tag = "丘丘人", disableWander = true, pose_id = 9012, area_id = 6 },
	{ config_id = 511004, monster_id = 21011001, pos = { x = 367.209, y = 212.828, z = 612.196 }, rot = { x = 0.000, y = 38.029, z = 0.000 }, level = 1, drop_tag = "远程丘丘人", area_id = 6 },
	{ config_id = 511005, monster_id = 20011301, pos = { x = 377.634, y = 207.896, z = 633.240 }, rot = { x = 356.270, y = 174.821, z = 358.476 }, level = 1, drop_tag = "大史莱姆", disableWander = true, area_id = 6 },
	{ config_id = 511006, monster_id = 21020301, pos = { x = 369.871, y = 207.450, z = 620.768 }, rot = { x = 0.000, y = 58.540, z = 0.000 }, level = 1, drop_tag = "丘丘暴徒", area_id = 6 },
	{ config_id = 511007, monster_id = 21020301, pos = { x = 344.710, y = 205.121, z = 612.444 }, rot = { x = 2.926, y = 58.575, z = 1.356 }, level = 1, drop_tag = "丘丘暴徒", area_id = 6 },
	{ config_id = 511008, monster_id = 21011201, pos = { x = 345.019, y = 205.445, z = 613.887 }, rot = { x = 3.213, y = 38.680, z = 0.280 }, level = 1, drop_tag = "丘丘人", area_id = 6 },
	{ config_id = 511009, monster_id = 21011201, pos = { x = 346.089, y = 205.292, z = 611.838 }, rot = { x = 3.171, y = 44.202, z = 0.588 }, level = 1, drop_tag = "丘丘人", area_id = 6 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 511012, gadget_id = 70300102, pos = { x = 377.346, y = 207.373, z = 633.408 }, rot = { x = 0.000, y = 0.028, z = 0.000 }, level = 1, area_id = 6 },
	{ config_id = 511014, gadget_id = 70300089, pos = { x = 379.213, y = 207.263, z = 626.703 }, rot = { x = 1.397, y = 72.284, z = 1.433 }, level = 1, area_id = 6 },
	{ config_id = 511017, gadget_id = 70300088, pos = { x = 362.936, y = 207.450, z = 616.927 }, rot = { x = 0.000, y = 35.830, z = 0.000 }, level = 1, area_id = 6 },
	{ config_id = 511018, gadget_id = 70220005, pos = { x = 377.565, y = 207.279, z = 621.706 }, rot = { x = 359.795, y = 0.000, z = 359.886 }, level = 1, area_id = 6 },
	{ config_id = 511019, gadget_id = 70220005, pos = { x = 352.291, y = 207.450, z = 622.422 }, rot = { x = 352.904, y = 0.275, z = 353.772 }, level = 1, area_id = 6 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1511020, name = "ANY_MONSTER_DIE_511020", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_511020", action = "action_EVENT_ANY_MONSTER_DIE_511020" }
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
		-- description = suite_1,
		monsters = { 511001, 511002, 511003, 511004, 511005, 511006 },
		gadgets = { 511012, 511014, 511017, 511018, 511019 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_511020" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { 511007, 511008, 511009 },
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
function condition_EVENT_ANY_MONSTER_DIE_511020(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_511020(context, evt)
	-- play_type含义：1·代表开始播放； 2·代表停止播放
	-- 在指定位置播放或停止音效资源
		local pos = {x=382, y=205, z=617}
	    if 0 ~= ScriptLib.ScenePlaySound(context, {play_pos = pos, sound_name = "LevelHornSound001", play_type= 1, is_broadcast = false }) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_soundplay")
					return -1
		end 
	
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133104511, 2)
	
	-- 在指定位置对应半径范围播放reminder
	local pos = {x=382,y=205,z=617}
	if 0 ~= ScriptLib.ShowReminderRadius(context, 400004, pos, 50) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui_bypos")
		return -1
	end
	
	return 0
end