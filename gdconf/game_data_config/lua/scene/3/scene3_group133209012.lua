-- 基础信息
local base_info = {
	group_id = 133209012
}

-- DEFS_MISCS
local defs = {
	RegionID =  12049,
	group_1 = 133209012
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	[12004] = { config_id = 12004, monster_id = 22020102, pos = { x = -2197.160, y = 200.418, z = -3473.595 }, rot = { x = 0.000, y = 126.256, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, pose_id = 101, area_id = 11 },
	[12005] = { config_id = 12005, monster_id = 22030102, pos = { x = -2180.133, y = 200.357, z = -3476.339 }, rot = { x = 0.000, y = 223.029, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, pose_id = 101, area_id = 11 },
	-- 挑战关专用
	[12006] = { config_id = 12006, monster_id = 22030102, pos = { x = -2180.133, y = 200.357, z = -3476.339 }, rot = { x = 0.000, y = 223.029, z = 0.000 }, level = 94, drop_id = 1000100, disableWander = true, affix = { 1033, 1009 }, pose_id = 101, area_id = 11 },
	-- 挑战关专用
	[12007] = { config_id = 12007, monster_id = 22020102, pos = { x = -2197.160, y = 200.418, z = -3473.595 }, rot = { x = 0.000, y = 126.256, z = 0.000 }, level = 94, drop_id = 1000100, disableWander = true, affix = { 1033, 1009 }, pose_id = 101, area_id = 11 },
	-- 难度3专用
	[12010] = { config_id = 12010, monster_id = 22020102, pos = { x = -2197.160, y = 200.418, z = -3473.595 }, rot = { x = 0.000, y = 126.256, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 1008 }, pose_id = 101, area_id = 11 },
	-- 难度3专用
	[12011] = { config_id = 12011, monster_id = 22030102, pos = { x = -2180.133, y = 200.357, z = -3476.339 }, rot = { x = 0.000, y = 223.029, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 1008 }, pose_id = 101, area_id = 11 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	[12009] = { config_id = 12009, gadget_id = 70330064, pos = { x = -2187.426, y = 200.459, z = -3485.450 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, interact_id = 35, area_id = 11 },
	[12037] = { config_id = 12037, gadget_id = 70950060, pos = { x = -2188.786, y = 200.425, z = -3482.243 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 15, area_id = 11 },
	[12039] = { config_id = 12039, gadget_id = 70710001, pos = { x = -2188.033, y = 200.309, z = -3477.687 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 11 }
}

-- 区域
regions = {
	[12008] = { config_id = 12008, shape = RegionShape.SPHERE, radius = 20, pos = { x = -2188.786, y = 200.425, z = -3482.243 }, area_id = 11 },
	[12049] = { config_id = 12049, shape = RegionShape.SPHERE, radius = 27, pos = { x = -2187.972, y = 200.425, z = -3479.096 }, area_id = 11 }
}

-- 触发器
triggers = {
	{ config_id = 1012001, name = "GADGET_CREATE_12001", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_12001", action = "action_EVENT_GADGET_CREATE_12001", tlog_tag = "4" },
	{ config_id = 1012002, name = "CHALLENGE_SUCCESS_12002", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "744", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_12002" },
	{ config_id = 1012003, name = "CHALLENGE_FAIL_12003", event = EventType.EVENT_CHALLENGE_FAIL, source = "744", condition = "", action = "action_EVENT_CHALLENGE_FAIL_12003" },
	{ config_id = 1012008, name = "LEAVE_REGION_12008", event = EventType.EVENT_LEAVE_REGION, source = "", condition = "", action = "", tag = "580" },
	{ config_id = 1012012, name = "ANY_MONSTER_DIE_12012", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_12012", action = "action_EVENT_ANY_MONSTER_DIE_12012" },
	{ config_id = 1012040, name = "GADGET_CREATE_12040", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_12040", action = "action_EVENT_GADGET_CREATE_12040", tlog_tag = "2" },
	{ config_id = 1012041, name = "CHALLENGE_SUCCESS_12041", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "722", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_12041" },
	{ config_id = 1012042, name = "CHALLENGE_FAIL_12042", event = EventType.EVENT_CHALLENGE_FAIL, source = "722", condition = "", action = "action_EVENT_CHALLENGE_FAIL_12042" },
	{ config_id = 1012043, name = "GADGET_CREATE_12043", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_12043", action = "action_EVENT_GADGET_CREATE_12043", tlog_tag = "3" },
	{ config_id = 1012044, name = "CHALLENGE_SUCCESS_12044", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "733", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_12044" },
	{ config_id = 1012045, name = "GADGET_CREATE_12045", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_12045", action = "action_EVENT_GADGET_CREATE_12045", tlog_tag = "1" },
	{ config_id = 1012046, name = "CHALLENGE_FAIL_12046", event = EventType.EVENT_CHALLENGE_FAIL, source = "733", condition = "", action = "action_EVENT_CHALLENGE_FAIL_12046" },
	{ config_id = 1012047, name = "CHALLENGE_SUCCESS_12047", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "711", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_12047" },
	{ config_id = 1012048, name = "CHALLENGE_FAIL_12048", event = EventType.EVENT_CHALLENGE_FAIL, source = "711", condition = "", action = "action_EVENT_CHALLENGE_FAIL_12048" }
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
		gadgets = { 12009 },
		regions = { 12049 },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 12037, 12039 },
		regions = { 12008 },
		triggers = { "LEAVE_REGION_12008", "GADGET_CREATE_12045", "CHALLENGE_SUCCESS_12047", "CHALLENGE_FAIL_12048" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 12037, 12039 },
		regions = { 12008 },
		triggers = { "LEAVE_REGION_12008", "GADGET_CREATE_12040", "CHALLENGE_SUCCESS_12041", "CHALLENGE_FAIL_12042" },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = ,
		monsters = { },
		gadgets = { 12037, 12039 },
		regions = { 12008 },
		triggers = { "LEAVE_REGION_12008", "ANY_MONSTER_DIE_12012", "GADGET_CREATE_12043", "CHALLENGE_SUCCESS_12044", "CHALLENGE_FAIL_12046" },
		rand_weight = 100
	},
	{
		-- suite_id = 5,
		-- description = ,
		monsters = { },
		gadgets = { 12037, 12039 },
		regions = { 12008 },
		triggers = { "GADGET_CREATE_12001", "CHALLENGE_SUCCESS_12002", "CHALLENGE_FAIL_12003", "LEAVE_REGION_12008" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_CREATE_12001(context, evt)
	if 12037 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_12001(context, evt)
	ScriptLib.CreateFatherChallenge(context, 744, 111151, 100, {success =1, fail = 1, fail_on_wipe=true})
	
	ScriptLib.AttachChildChallenge(context, 744, 701, 111152, {100,defs.group_1,2,0},{},{success=1,fail=1})
	
	--ScriptLib.AttachChildChallenge(context, 744, 702, 111153, --{100,5,580,1,0},{},{success=0,fail=1})
	
	ScriptLib.AttachChildChallenge(context, 744, 703, 111165, {100,0,0,0},{},{success=0,fail=1})
	
	ScriptLib.StartFatherChallenge(context, 744)
	
	-- 延迟1秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 12006, delay_time = 1 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 12007, delay_time = 1 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_SUCCESS_12002(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133209012, suite = 1 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_FAIL_12003(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133209012, suite = 1 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_12012(context, evt)
	if 12010 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_12012(context, evt)
	-- 延迟1秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 12011, delay_time = 1 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_12040(context, evt)
	if 12037 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_12040(context, evt)
	ScriptLib.CreateFatherChallenge(context, 722, 111151, 240, {success =1, fail = 1, fail_on_wipe=true})
	
	ScriptLib.AttachChildChallenge(context, 722, 701, 111152, {240,defs.group_1,1,0},{},{success=1,fail=1})
	
	--ScriptLib.AttachChildChallenge(context, 722, 702, 111153, --{240,5,580,1,0},{},{success=0,fail=1})
	
	ScriptLib.AttachChildChallenge(context, 722, 703, 111154, {240,1,0,0},{},{success=0,fail=1})
	
	ScriptLib.StartFatherChallenge(context, 722)
	
	-- 延迟1秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 12004, delay_time = 1 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_SUCCESS_12041(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133209012, suite = 1 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_FAIL_12042(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133209012, suite = 1 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_12043(context, evt)
	if 12037 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_12043(context, evt)
	ScriptLib.CreateFatherChallenge(context, 733, 111151, 180, {success =1, fail = 1, fail_on_wipe=true})
	
	ScriptLib.AttachChildChallenge(context, 733, 701, 111152, {180,defs.group_1,2,0},{},{success=1,fail=1})
	
	--ScriptLib.AttachChildChallenge(context, 733, 702, 111153, --{180,5,580,1,0},{},{success=0,fail=1})
	
	ScriptLib.AttachChildChallenge(context, 733, 703, 111165, {180,0,0,0},{},{success=0,fail=1})
	
	ScriptLib.StartFatherChallenge(context, 733)
	
	-- 延迟1秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 12010, delay_time = 1 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_SUCCESS_12044(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133209012, suite = 1 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_12045(context, evt)
	if 12037 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_12045(context, evt)
	ScriptLib.CreateFatherChallenge(context, 711, 111151, 300, {success =1, fail = 1, fail_on_wipe=true})
	
	ScriptLib.AttachChildChallenge(context, 711, 701, 111152, {300,defs.group_1,1,0},{},{success=1,fail=1})
	
	--ScriptLib.AttachChildChallenge(context, 711, 702, 111153, --{300,5,580,1,0},{},{success=0,fail=1})
	
	ScriptLib.AttachChildChallenge(context, 711, 703, 111154, {300,2,0,0},{},{success=0,fail=1})
	
	ScriptLib.StartFatherChallenge(context, 711)
	
	-- 延迟1秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 12004, delay_time = 1 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_FAIL_12046(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133209012, suite = 1 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_SUCCESS_12047(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133209012, suite = 1 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_FAIL_12048(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133209012, suite = 1 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end