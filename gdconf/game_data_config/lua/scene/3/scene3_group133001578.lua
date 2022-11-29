-- 基础信息
local base_info = {
	group_id = 133001578
}

-- DEFS_MISCS
local defs = {
	RegionID =  578033
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	[578001] = { config_id = 578001, monster_id = 24010101, pos = { x = 1565.850, y = 252.087, z = -1651.165 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, pose_id = 100, area_id = 2 },
	[578002] = { config_id = 578002, monster_id = 24010101, pos = { x = 1565.850, y = 252.087, z = -1651.165 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 1007 }, pose_id = 100, area_id = 2 },
	[578003] = { config_id = 578003, monster_id = 24010101, pos = { x = 1554.880, y = 252.084, z = -1641.654 }, rot = { x = 0.000, y = 75.000, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, pose_id = 100, area_id = 2 },
	[578004] = { config_id = 578004, monster_id = 24010101, pos = { x = 1554.880, y = 252.084, z = -1641.654 }, rot = { x = 0.000, y = 75.000, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 1007 }, pose_id = 100, area_id = 2 },
	[578005] = { config_id = 578005, monster_id = 24010101, pos = { x = 1570.799, y = 252.087, z = -1633.724 }, rot = { x = 0.000, y = 225.000, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, pose_id = 100, area_id = 2 },
	[578006] = { config_id = 578006, monster_id = 24010101, pos = { x = 1561.439, y = 252.092, z = -1632.586 }, rot = { x = 0.000, y = 165.000, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, pose_id = 100, area_id = 2 },
	[578007] = { config_id = 578007, monster_id = 24010101, pos = { x = 1573.513, y = 252.093, z = -1644.386 }, rot = { x = 0.000, y = 290.000, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, pose_id = 100, area_id = 2 },
	[578008] = { config_id = 578008, monster_id = 24010101, pos = { x = 1570.799, y = 252.087, z = -1633.724 }, rot = { x = 0.000, y = 225.000, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 1007 }, pose_id = 100, area_id = 2 },
	[578009] = { config_id = 578009, monster_id = 24010101, pos = { x = 1561.439, y = 252.092, z = -1632.586 }, rot = { x = 0.000, y = 165.000, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 1007 }, pose_id = 100, area_id = 2 },
	[578010] = { config_id = 578010, monster_id = 24010101, pos = { x = 1573.513, y = 252.093, z = -1644.386 }, rot = { x = 0.000, y = 290.000, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 1007 }, pose_id = 100, area_id = 2 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	[578012] = { config_id = 578012, gadget_id = 70710001, pos = { x = 1564.200, y = 252.080, z = -1640.400 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 2 },
	[578032] = { config_id = 578032, gadget_id = 70950041, pos = { x = 1563.954, y = 248.197, z = -1642.787 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 15, area_id = 2 }
}

-- 区域
regions = {
	[578011] = { config_id = 578011, shape = RegionShape.SPHERE, radius = 21, pos = { x = 1564.239, y = 255.733, z = -1642.011 }, area_id = 2 },
	[578033] = { config_id = 578033, shape = RegionShape.SPHERE, radius = 27, pos = { x = 1564.328, y = 252.197, z = -1641.672 }, area_id = 2 }
}

-- 触发器
triggers = {
	{ config_id = 1578011, name = "LEAVE_REGION_578011", event = EventType.EVENT_LEAVE_REGION, source = "", condition = "", action = "", tag = "578" },
	{ config_id = 1578023, name = "GADGET_CREATE_578023", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_578023", action = "action_EVENT_GADGET_CREATE_578023", tlog_tag = "2" },
	{ config_id = 1578024, name = "CHALLENGE_SUCCESS_578024", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "503", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_578024" },
	{ config_id = 1578025, name = "GADGET_CREATE_578025", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_578025", action = "action_EVENT_GADGET_CREATE_578025", tlog_tag = "1" },
	{ config_id = 1578026, name = "CHALLENGE_FAIL_578026", event = EventType.EVENT_CHALLENGE_FAIL, source = "503", condition = "", action = "action_EVENT_CHALLENGE_FAIL_578026" },
	{ config_id = 1578027, name = "CHALLENGE_SUCCESS_578027", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "501", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_578027" },
	{ config_id = 1578028, name = "CHALLENGE_FAIL_578028", event = EventType.EVENT_CHALLENGE_FAIL, source = "501", condition = "", action = "action_EVENT_CHALLENGE_FAIL_578028" },
	{ config_id = 1578029, name = "GADGET_CREATE_578029", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_578029", action = "action_EVENT_GADGET_CREATE_578029", tlog_tag = "3" },
	{ config_id = 1578030, name = "CHALLENGE_SUCCESS_578030", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "505", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_578030" },
	{ config_id = 1578031, name = "CHALLENGE_FAIL_578031", event = EventType.EVENT_CHALLENGE_FAIL, source = "505", condition = "", action = "action_EVENT_CHALLENGE_FAIL_578031" }
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
		monsters = { },
		gadgets = { },
		regions = { 578033 },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 578012, 578032 },
		regions = { 578011 },
		triggers = { "LEAVE_REGION_578011", "GADGET_CREATE_578025", "CHALLENGE_SUCCESS_578027", "CHALLENGE_FAIL_578028" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 578012, 578032 },
		regions = { 578011 },
		triggers = { "LEAVE_REGION_578011", "GADGET_CREATE_578023", "CHALLENGE_SUCCESS_578024", "CHALLENGE_FAIL_578026" },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = ,
		monsters = { },
		gadgets = { 578012, 578032 },
		regions = { 578011 },
		triggers = { "LEAVE_REGION_578011", "GADGET_CREATE_578029", "CHALLENGE_SUCCESS_578030", "CHALLENGE_FAIL_578031" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_CREATE_578023(context, evt)
	if 578032 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_578023(context, evt)
	ScriptLib.CreateFatherChallenge(context, 503, 110163, 240, {success = 1, fail = 1, fail_on_wipe=true})
	
	ScriptLib.AttachChildChallenge(context, 503, 110264, 110164, {240,133001578,3,0},{},{success=1,fail=1})
	
	ScriptLib.AttachChildChallenge(context, 503, 110266, 110166, {240,1,0,0},{},{success=0,fail=1})
	
	ScriptLib.AttachChildChallenge(context, 503, 110169, 110169, {240,5,578,1,0},{},{success=0,fail=1})
	
	ScriptLib.StartFatherChallenge(context, 503)
	
	-- 创建编号为502（该怪物潮的识别id)的怪物潮，创建怪物总数为99，场上怪物最少5只，最多5只
	if 0 ~= ScriptLib.AutoMonsterTide(context, 504, 133001578, {578001,578003,578006,578007}, 4, 2, 2) then
		return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_SUCCESS_578024(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133001578, suite = 1 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_578025(context, evt)
	if 578032 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_578025(context, evt)
	ScriptLib.CreateFatherChallenge(context, 501, 110163, 300, {success = 1, fail = 1, fail_on_wipe=true})
	
	ScriptLib.AttachChildChallenge(context, 501, 110164, 110164, {300,133001578,2,0},{},{success=1,fail=1})
	
	ScriptLib.AttachChildChallenge(context, 501, 110166, 110166, {300,2,0,0},{},{success=0,fail=1})
	
	ScriptLib.AttachChildChallenge(context, 501, 110169, 110169, {300,5,578,1,0},{},{success=0,fail=1})
	
	ScriptLib.StartFatherChallenge(context, 501)
	
	-- 创建编号为502（该怪物潮的识别id)的怪物潮，创建怪物总数为99，场上怪物最少5只，最多5只
	if 0 ~= ScriptLib.AutoMonsterTide(context, 502, 133001578, {578001,578003,578006,578007}, 2, 1, 1) then
		return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_FAIL_578026(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133001578, suite = 1 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_SUCCESS_578027(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133001578, suite = 1 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_FAIL_578028(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133001578, suite = 1 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_578029(context, evt)
	if 578032 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_578029(context, evt)
	ScriptLib.CreateFatherChallenge(context, 505, 110163, 135, {success = 1, fail = 1, fail_on_wipe=true})
	
	ScriptLib.AttachChildChallenge(context, 505, 110364, 110164, {135,133001578,5,0},{},{success=1,fail=1})
	
	ScriptLib.AttachChildChallenge(context, 505, 110366, 110179, {135,0,0,0},{},{success=0,fail=1})
	
	ScriptLib.AttachChildChallenge(context, 505, 110169, 110169, {135,5,578,1,0},{},{success=0,fail=1})
	
	ScriptLib.StartFatherChallenge(context, 505)
	
	-- 创建编号为502（该怪物潮的识别id)的怪物潮，创建怪物总数为99，场上怪物最少5只，最多5只
	if 0 ~= ScriptLib.AutoMonsterTide(context, 506, 133001578, {578002,578004,578008,578009,5780010}, 5, 2, 2) then
		return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_SUCCESS_578030(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133001578, suite = 1 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_FAIL_578031(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133001578, suite = 1 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

require "Activity_ArenaChallengeSub"