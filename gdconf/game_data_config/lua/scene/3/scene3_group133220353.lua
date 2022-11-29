-- 基础信息
local base_info = {
	group_id = 133220353
}

-- DEFS_MISCS
function ShogunChallengeBeHit(context)
	local beHitTime = ScriptLib.GetGroupVariableValue(context,"beHitTimes")
	ScriptLib.ChangeGroupVariableValue(context, "beHitTimes", 1)
	ScriptLib.PrintContextLog(context, "ShogunChallengeFailed BeHitTime = " .. beHitTime)
	return 0
end

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	[353012] = { config_id = 353012, monster_id = 20011201, pos = { x = -2681.971, y = 219.425, z = -4245.632 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 1000100, area_id = 11 },
	[353013] = { config_id = 353013, monster_id = 20011201, pos = { x = -2689.932, y = 218.500, z = -4242.408 }, rot = { x = 0.000, y = 42.160, z = 0.000 }, level = 1, drop_id = 1000100, area_id = 11 },
	[353014] = { config_id = 353014, monster_id = 20011301, pos = { x = -2686.947, y = 219.713, z = -4246.658 }, rot = { x = 0.000, y = 25.490, z = 0.000 }, level = 1, drop_id = 1000100, area_id = 11 },
	[353015] = { config_id = 353015, monster_id = 26010201, pos = { x = -2679.615, y = 220.004, z = -4248.776 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 1000100, area_id = 11 },
	[353016] = { config_id = 353016, monster_id = 26010201, pos = { x = -2693.499, y = 218.780, z = -4242.837 }, rot = { x = 0.000, y = 44.380, z = 0.000 }, level = 1, drop_id = 1000100, area_id = 11 },
	[353017] = { config_id = 353017, monster_id = 21010601, pos = { x = -2683.589, y = 218.483, z = -4228.196 }, rot = { x = 0.000, y = 182.700, z = 0.000 }, level = 1, drop_id = 1000100, area_id = 11 },
	[353018] = { config_id = 353018, monster_id = 21010601, pos = { x = -2673.735, y = 217.728, z = -4233.906 }, rot = { x = 0.000, y = 236.270, z = 0.000 }, level = 1, drop_id = 1000100, area_id = 11 },
	[353019] = { config_id = 353019, monster_id = 21020101, pos = { x = -2684.257, y = 218.532, z = -4231.516 }, rot = { x = 0.000, y = 179.860, z = 0.000 }, level = 1, drop_id = 1000100, area_id = 11 },
	[353020] = { config_id = 353020, monster_id = 21020101, pos = { x = -2677.260, y = 218.385, z = -4236.219 }, rot = { x = 0.000, y = 241.790, z = 0.000 }, level = 1, drop_id = 1000100, area_id = 11 },
	[353021] = { config_id = 353021, monster_id = 21010901, pos = { x = -2693.912, y = 217.387, z = -4231.552 }, rot = { x = 0.000, y = 117.290, z = 0.000 }, level = 1, drop_id = 1000100, area_id = 11 },
	[353022] = { config_id = 353022, monster_id = 21010901, pos = { x = -2691.132, y = 217.293, z = -4228.633 }, rot = { x = 0.000, y = 138.770, z = 0.000 }, level = 1, drop_id = 1000100, area_id = 11 },
	[353023] = { config_id = 353023, monster_id = 21020201, pos = { x = -2687.629, y = 217.995, z = -4232.786 }, rot = { x = 0.000, y = 133.910, z = 0.000 }, level = 1, drop_id = 1000100, area_id = 11 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	-- 将军机关gadget
	[353001] = { config_id = 353001, gadget_id = 70310085, pos = { x = -2683.233, y = 218.496, z = -4238.446 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 11 },
	-- 交互按钮隐形操作台
	[353002] = { config_id = 353002, gadget_id = 70360001, pos = { x = -2683.224, y = 220.047, z = -4238.590 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 11 },
	[353008] = { config_id = 353008, gadget_id = 70710535, pos = { x = -2683.338, y = 216.127, z = -4238.437 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 11 }
}

-- 区域
regions = {
	[353030] = { config_id = 353030, shape = RegionShape.SPHERE, radius = 5, pos = { x = -2685.325, y = 218.947, z = -4244.067 }, area_id = 11 }
}

-- 触发器
triggers = {
	-- 开启挑战(简单)，务必要将beHitTimes置为0
	{ config_id = 1353003, name = "SELECT_OPTION_353003", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_353003", action = "action_EVENT_SELECT_OPTION_353003", trigger_count = 0 },
	-- 机关AI流程（简单）
	{ config_id = 1353004, name = "TIME_AXIS_PASS_353004", event = EventType.EVENT_TIME_AXIS_PASS, source = "FirstChallenge", condition = "", action = "action_EVENT_TIME_AXIS_PASS_353004", trigger_count = 0 },
	-- 给隐形操作台加上挑战按钮
	{ config_id = 1353005, name = "GADGET_CREATE_353005", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_353005", action = "action_EVENT_GADGET_CREATE_353005", trigger_count = 0 },
	-- 给隐形操作台加上挑战按钮
	{ config_id = 1353006, name = "GADGET_CREATE_353006", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_353006", action = "action_EVENT_GADGET_CREATE_353006", trigger_count = 0 },
	-- 挑战计数器1
	{ config_id = 1353007, name = "VARIABLE_CHANGE_353007", event = EventType.EVENT_VARIABLE_CHANGE, source = "beHitTimes", condition = "condition_EVENT_VARIABLE_CHANGE_353007", action = "", trigger_count = 0, tag = "666" },
	-- 挑战成功给任务发通知
	{ config_id = 1353009, name = "CHALLENGE_SUCCESS_353009", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "20010010", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_353009", trigger_count = 0 },
	-- 挑战失败重置挑战
	{ config_id = 1353010, name = "CHALLENGE_FAIL_353010", event = EventType.EVENT_CHALLENGE_FAIL, source = "20010010", condition = "", action = "action_EVENT_CHALLENGE_FAIL_353010", trigger_count = 0 },
	-- 开始挑战
	{ config_id = 1353011, name = "SELECT_OPTION_353011", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_353011", action = "action_EVENT_SELECT_OPTION_353011", trigger_count = 0 },
	{ config_id = 1353024, name = "ANY_MONSTER_DIE_353024", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_353024", action = "action_EVENT_ANY_MONSTER_DIE_353024" },
	{ config_id = 1353025, name = "ANY_MONSTER_DIE_353025", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_353025", action = "action_EVENT_ANY_MONSTER_DIE_353025" },
	-- 挑战失败逻辑 重置挑战
	{ config_id = 1353026, name = "CHALLENGE_FAIL_353026", event = EventType.EVENT_CHALLENGE_FAIL, source = "1111820", condition = "", action = "action_EVENT_CHALLENGE_FAIL_353026", trigger_count = 0 },
	-- 挑战成功逻辑 通知任务
	{ config_id = 1353027, name = "CHALLENGE_SUCCESS_353027", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "1111820", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_353027", trigger_count = 0 },
	-- 机关AI流程
	{ config_id = 1353028, name = "TIME_AXIS_PASS_353028", event = EventType.EVENT_TIME_AXIS_PASS, source = "SecondChallenge", condition = "", action = "action_EVENT_TIME_AXIS_PASS_353028", trigger_count = 0 },
	-- 挑战计数器2
	{ config_id = 1353029, name = "VARIABLE_CHANGE_353029", event = EventType.EVENT_VARIABLE_CHANGE, source = "beHitTimes", condition = "condition_EVENT_VARIABLE_CHANGE_353029", action = "", trigger_count = 0, tag = "777" },
	{ config_id = 1353030, name = "ENTER_REGION_353030", event = EventType.EVENT_ENTER_REGION, source = "", condition = "", action = "action_EVENT_ENTER_REGION_353030" },
	-- 开启挑战(困难)，务必要将beHitTimes置为0
	{ config_id = 1353031, name = "SELECT_OPTION_353031", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_353031", action = "action_EVENT_SELECT_OPTION_353031", trigger_count = 0 },
	-- 机关AI流程（困难）
	{ config_id = 1353032, name = "TIME_AXIS_PASS_353032", event = EventType.EVENT_TIME_AXIS_PASS, source = "FirstChallengeHard", condition = "", action = "action_EVENT_TIME_AXIS_PASS_353032", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "beHitTimes", value = 0, no_refresh = false }
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
		-- description = 平时状态,
		monsters = { },
		gadgets = { 353001 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = 第一次挑战,
		monsters = { },
		gadgets = { 353001, 353002 },
		regions = { },
		triggers = { "SELECT_OPTION_353003", "TIME_AXIS_PASS_353004", "GADGET_CREATE_353006", "VARIABLE_CHANGE_353007", "CHALLENGE_SUCCESS_353009", "CHALLENGE_FAIL_353010", "SELECT_OPTION_353031", "TIME_AXIS_PASS_353032" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = 第二次挑战,
		monsters = { },
		gadgets = { 353001, 353002 },
		regions = { },
		triggers = { "GADGET_CREATE_353005", "SELECT_OPTION_353011", "CHALLENGE_FAIL_353026", "CHALLENGE_SUCCESS_353027", "TIME_AXIS_PASS_353028" },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = 第一波怪物,
		monsters = { 353012, 353013, 353014 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_353024" },
		rand_weight = 100
	},
	{
		-- suite_id = 5,
		-- description = 第二波怪物,
		monsters = { 353021, 353022, 353023 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_353025" },
		rand_weight = 100
	},
	{
		-- suite_id = 6,
		-- description = 第三波怪物,
		monsters = { 353017, 353018, 353019, 353020 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 7,
		-- description = ,
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { "VARIABLE_CHANGE_353029" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_SELECT_OPTION_353003(context, evt)
	-- 判断是gadgetid 353002 option_id 175
	if 353002 ~= evt.param1 then
		return false	
	end
	
	if 175 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_353003(context, evt)
	-- 创建标识为"FirstChallenge"，时间节点为{3,8,13,18,23,25,27,32,37,39,41,46,47,51,58}的时间轴，false用于控制该时间轴是否循环
	ScriptLib.InitTimeAxis(context, "FirstChallenge", {3,8,13,18,23,25,27,32,37,39,41,46,47,51,60}, false)
	-- 1 2 3 4 5  6  7  8  9  10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26
	
	
	-- 删除指定group： 133220353 ；指定config：353002；物件身上指定option：175；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 133220353, 353002, 175) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	-- 删除指定group： 133220353 ；指定config：353002；物件身上指定option：59；
	ScriptLib.DelWorktopOptionByGroupId(context, 133220353, 353002, 59)
	
	-- 将受击次数设为0
	ScriptLib.SetGroupVariableValue(context, "beHitTimes", 0)
	-- 创建父挑战 20010010
	ScriptLib.CreateFatherChallenge(context, 20010010, 2001001, 70, {success = 1, fail = 1, fail_on_wipe=true})
	
	-- 在父挑战2010010上创建编号为20010030的子挑战。 120秒，EVENT_VARIABLE_CHANGE,Tag = 777, 触发次数为 1
	ScriptLib.AttachChildChallenge(context, 20010010, 20010030, 2001003,{3, 777, 1, 0, 0},{},{success=1,fail=1})
	
	-- 在父挑战2010010上创建编号为2010020的子挑战。 120秒，EVENT_VARIABLE_CHANGE,Tag = 666, 触发次数为 10
	ScriptLib.AttachChildChallenge(context, 20010010, 20010020, 2001002,{3, 666, 10, 0, 0},{},{success=0,fail=1})
	
	ScriptLib.StartFatherChallenge(context, 20010010)
	
	--创建空气墙
	ScriptLib.CreateGadget(context, { config_id = 353008 })
	ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	
	return 0
end

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_353004(context, evt)
	--GadgetState.GearStart    --技能1  刀波
	--GadgetState.GearStop     --技能2  次元斩
	--GadgetState.GearAction1  --技能3  AOE
	--GadgetState.GearAction2  --技能4  大招
	
	
	-- 时间轴 FirstChallenge 到 X 阶段时
	-- 353001 这个gadget切到 Y状态 得以释放技能
	if evt.source_name == "FirstChallenge" and evt.param1 == 1 then
		ScriptLib.SetGadgetStateByConfigId(context, 353001, GadgetState.GearAction1)
	elseif evt.source_name == "FirstChallenge" and evt.param1 == 2 then
		ScriptLib.SetGadgetStateByConfigId(context, 353001, GadgetState.GearStop)
	elseif evt.source_name == "FirstChallenge" and evt.param1 == 3 then
		ScriptLib.SetGadgetStateByConfigId(context, 353001, GadgetState.GearAction1)
	elseif evt.source_name == "FirstChallenge" and evt.param1 == 4 then
		ScriptLib.SetGadgetStateByConfigId(context, 353001, GadgetState.GearStart)
	elseif evt.source_name == "FirstChallenge" and evt.param1 == 5 then
		ScriptLib.SetGadgetStateByConfigId(context, 353001, GadgetState.GearStop)
	elseif evt.source_name == "FirstChallenge" and evt.param1 == 6 then
		ScriptLib.SetGadgetStateByConfigId(context, 353001, GadgetState.GearStop)
	elseif evt.source_name == "FirstChallenge" and evt.param1 == 7 then
		ScriptLib.SetGadgetStateByConfigId(context, 353001, GadgetState.GearStop)
	elseif evt.source_name == "FirstChallenge" and evt.param1 == 8 then
		ScriptLib.SetGadgetStateByConfigId(context, 353001, GadgetState.GearAction1)
	elseif evt.source_name == "FirstChallenge" and evt.param1 == 9 then
		ScriptLib.SetGadgetStateByConfigId(context, 353001, GadgetState.GearStart)
	elseif evt.source_name == "FirstChallenge" and evt.param1 == 10 then
		ScriptLib.SetGadgetStateByConfigId(context, 353001, GadgetState.GearStart)
	elseif evt.source_name == "FirstChallenge" and evt.param1 == 11 then
		ScriptLib.SetGadgetStateByConfigId(context, 353001, GadgetState.GearStart)
	elseif evt.source_name == "FirstChallenge" and evt.param1 == 12 then
		ScriptLib.SetGadgetStateByConfigId(context, 353001, GadgetState.GearAction1)
	elseif evt.source_name == "FirstChallenge" and evt.param1 == 13 then
		-- 终止20010020这一挑战
		ScriptLib.StopChallenge(context, 20010020, 1)
	-- 添加suite7的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133220353, 7)
	
	elseif evt.source_name == "FirstChallenge" and evt.param1 == 14 then
		ScriptLib.SetGadgetStateByConfigId(context, 353001, GadgetState.GearAction2)
	elseif evt.source_name == "FirstChallenge" and evt.param1 == 15 then
				-- 终止20010030这一挑战并判定为成功
		ScriptLib.StopChallenge(context, 20010030, 1)
		
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_353005(context, evt)
	if 353002 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_353005(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133220353, 353002, {175}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_353006(context, evt)
	if 353002 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_353006(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133220353, 353002, {175,59}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	-- 停止标识为"FirstChallenge"的时间轴
	ScriptLib.EndTimeAxis(context, "FirstChallenge")
	
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_353007(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	
	-- 判断变量"beHitTimes"不为0
	if ScriptLib.GetGroupVariableValue(context, "beHitTimes") ~= 0 then
			return true
	end
	
	return false
end

-- 触发操作
function action_EVENT_CHALLENGE_SUCCESS_353009(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "1332203531suc") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133220353, EntityType.GADGET, 353008 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133220353, 353002, {175,59}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	-- 删除suite7的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133220353, 7)
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_FAIL_353010(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133220353, 353002, {175,59}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133220353, EntityType.GADGET, 353008 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
	-- 停止标识为"FirstChallenge"的时间轴
	ScriptLib.EndTimeAxis(context, "FirstChallenge")
	
	
	-- 删除suite7的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133220353, 7)
	
	-- 停止标识为"FirstChallengeHard"的时间轴
	ScriptLib.EndTimeAxis(context, "FirstChallengeHard")
	
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_353011(context, evt)
	-- 判断是gadgetid 353002 option_id 175
	if 353002 ~= evt.param1 then
		return false	
	end
	
	if 175 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_353011(context, evt)
	-- 删除指定group： 133220353 ；指定config：353002；物件身上指定option：175；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 133220353, 353002, 175) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	-- 添加suite4的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133220353, 4)
	
	-- 创建编号为1111820（该挑战的识别id),挑战内容为111182的区域挑战，具体参数填写方式，见DungeonChallengeData表中的注释，所有填写的值都必须是int类型
	if 0 ~= ScriptLib.ActiveChallenge(context, 1111820, 111182, 133220353, 10, 0, 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_challenge")
		return -1
	end
	
	-- 创建id为353008的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 353008 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 创建标识为"SecondChallenge"，时间节点为{1,8,19,30,35,45,50}的时间轴，true用于控制该时间轴是否循环
	ScriptLib.InitTimeAxis(context, "SecondChallenge", {1,8,19,30,35,45,50}, true)
	
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_353024(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_353024(context, evt)
	-- 添加suite5的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133220353, 5)
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_353025(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_353025(context, evt)
	-- 添加suite6的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133220353, 6)
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_FAIL_353026(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133220353, suite = 3 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	-- 停止标识为"SecondChallenge"的时间轴
	ScriptLib.EndTimeAxis(context, "SecondChallenge")
	
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_SUCCESS_353027(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133220353, suite = 3 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "1332203532suc") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	-- 停止标识为"SecondChallenge"的时间轴
	ScriptLib.EndTimeAxis(context, "SecondChallenge")
	
	
	return 0
end

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_353028(context, evt)
	--GadgetState.GearStart    --技能1  刀波
	--GadgetState.GearStop     --技能2  次元斩
	--GadgetState.GearAction1  --技能3  AOE
	--GadgetState.GearAction2  --技能4  大招
	
	
	-- 时间轴 FirstChallenge 到 X 阶段时
	-- 353001 这个gadget切到 Y状态 得以释放技能
	if evt.source_name == "SecondChallenge" and evt.param1 == 1 then
		ScriptLib.SetGadgetStateByConfigId(context, 353001, GadgetState.GearAction1)
	elseif evt.source_name == "SecondChallenge" and evt.param1 == 2 then
		ScriptLib.SetGadgetStateByConfigId(context, 353001, GadgetState.GearStop)
	elseif evt.source_name == "SecondChallenge" and evt.param1 == 3 then
		ScriptLib.SetGadgetStateByConfigId(context, 353001, GadgetState.GearStop)
	elseif evt.source_name == "SecondChallenge" and evt.param1 == 4 then
		ScriptLib.SetGadgetStateByConfigId(context, 353001, GadgetState.GearAction1)
	elseif evt.source_name == "SecondChallenge" and evt.param1 == 5 then
		ScriptLib.SetGadgetStateByConfigId(context, 353001, GadgetState.GearStop)
	elseif evt.source_name == "SecondChallenge" and evt.param1 == 6 then
		ScriptLib.SetGadgetStateByConfigId(context, 353001, GadgetState.GearStop)
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_353029(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	
	-- 判断变量"beHitTimes"不为0
	if ScriptLib.GetGroupVariableValue(context, "beHitTimes") ~= 0 then
			return true
	end
	
	return false
end

-- 触发操作
function action_EVENT_ENTER_REGION_353030(context, evt)
	-- 删除suite7的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133220353, 7)
	
	-- 添加suite7的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133220353, 7)
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_353031(context, evt)
	-- 判断是gadgetid 353002 option_id 59
	if 353002 ~= evt.param1 then
		return false	
	end
	
	if 59 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_353031(context, evt)
	-- 创建标识为"FirstChallengeHard"，时间节点为{1,5,7,11,13,15,19,23,25,27,32,34,36,40,42,44,47,49,53,56,58,60,63,65,70,74,76,81}的时间轴，false用于控制该时间轴是否循环
	ScriptLib.InitTimeAxis(context, "FirstChallengeHard", {1,5,7,11,13,15,19,23,25,27,32,34,36,40,42,44,47,49,53,56,58,60,63,65,70,74,76,77,79,88}, false)
	-- 1 2 3 4 5  6  7  8  9  10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26
	
	
	-- 删除指定group： 133220353 ；指定config：353002；物件身上指定option：175；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 133220353, 353002, 175) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	-- 删除指定group： 133220353 ；指定config：353002；物件身上指定option：59；
	ScriptLib.DelWorktopOptionByGroupId(context, 133220353, 353002, 59)
	
	-- 将受击次数设为0
	ScriptLib.SetGroupVariableValue(context, "beHitTimes", 0)
	-- 创建父挑战 20010010
	ScriptLib.CreateFatherChallenge(context, 20010010, 2001001, 95, {success = 1, fail = 1, fail_on_wipe = true})
	
	-- 在父挑战2010010上创建编号为20010030的子挑战。 120秒，EVENT_VARIABLE_CHANGE,Tag = 777, 触发次数为 1
	ScriptLib.AttachChildChallenge(context, 20010010, 20010030, 2001003,{3, 777, 1, 0, 0},{},{success=1, fail=1})
	
	-- 在父挑战2010010上创建编号为2010020的子挑战。 120秒，EVENT_VARIABLE_CHANGE,Tag = 666, 触发次数为 3
	ScriptLib.AttachChildChallenge(context, 20010010, 20010020, 2001002,{3, 666, 3, 0, 0},{},{success=0,fail=1})
	
	ScriptLib.StartFatherChallenge(context, 20010010)
	
	--创建空气墙
	ScriptLib.CreateGadget(context, { config_id = 353008 })
	
	return 0
end

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_353032(context, evt)
	--GadgetState.GearStart    --技能1  刀波
	--GadgetState.GearStop     --技能2  次元斩
	--GadgetState.GearAction1  --技能3  AOE
	--GadgetState.GearAction2  --技能4  大招
	
	
	-- 时间轴 FirstChallengeHard 到 X 阶段时
	-- 353001 这个gadget切到 Y状态 得以释放技能
	if evt.source_name == "FirstChallengeHard" and evt.param1 == 1 then
		ScriptLib.SetGadgetStateByConfigId(context, 353001, GadgetState.GearAction1)
	elseif evt.source_name == "FirstChallengeHard" and evt.param1 == 2 then
		ScriptLib.SetGadgetStateByConfigId(context, 353001, GadgetState.GearStop)
	elseif evt.source_name == "FirstChallengeHard" and evt.param1 == 3 then
		ScriptLib.SetGadgetStateByConfigId(context, 353001, GadgetState.GearStop)
	elseif evt.source_name == "FirstChallengeHard" and evt.param1 == 4 then
		ScriptLib.SetGadgetStateByConfigId(context, 353001, GadgetState.GearStart)
	elseif evt.source_name == "FirstChallengeHard" and evt.param1 == 5 then
		ScriptLib.SetGadgetStateByConfigId(context, 353001, GadgetState.GearStart)
	elseif evt.source_name == "FirstChallengeHard" and evt.param1 == 6 then
		ScriptLib.SetGadgetStateByConfigId(context, 353001, GadgetState.GearStart)
	elseif evt.source_name == "FirstChallengeHard" and evt.param1 == 7 then
		ScriptLib.SetGadgetStateByConfigId(context, 353001, GadgetState.GearAction1)
	elseif evt.source_name == "FirstChallengeHard" and evt.param1 == 8 then
		ScriptLib.SetGadgetStateByConfigId(context, 353001, GadgetState.GearStop)
	elseif evt.source_name == "FirstChallengeHard" and evt.param1 == 9 then
		ScriptLib.SetGadgetStateByConfigId(context, 353001, GadgetState.GearStop)
	elseif evt.source_name == "FirstChallengeHard" and evt.param1 == 10 then
		ScriptLib.SetGadgetStateByConfigId(context, 353001, GadgetState.GearStop)
	elseif evt.source_name == "FirstChallengeHard" and evt.param1 == 11 then
		ScriptLib.SetGadgetStateByConfigId(context, 353001, GadgetState.GearAction1)
	elseif evt.source_name == "FirstChallengeHard" and evt.param1 == 12 then
		ScriptLib.SetGadgetStateByConfigId(context, 353001, GadgetState.GearStart)
	elseif evt.source_name == "FirstChallengeHard" and evt.param1 == 13 then
		ScriptLib.SetGadgetStateByConfigId(context, 353001, GadgetState.GearStart)
	elseif evt.source_name == "FirstChallengeHard" and evt.param1 == 14 then
		ScriptLib.SetGadgetStateByConfigId(context, 353001, GadgetState.GearStop)
	elseif evt.source_name == "FirstChallengeHard" and evt.param1 == 15 then
		ScriptLib.SetGadgetStateByConfigId(context, 353001, GadgetState.GearStop)
	elseif evt.source_name == "FirstChallengeHard" and evt.param1 == 16 then
		ScriptLib.SetGadgetStateByConfigId(context, 353001, GadgetState.GearStop)
	elseif evt.source_name == "FirstChallengeHard" and evt.param1 == 17 then
		ScriptLib.SetGadgetStateByConfigId(context, 353001, GadgetState.GearStart)
	elseif evt.source_name == "FirstChallengeHard" and evt.param1 == 18 then
		ScriptLib.SetGadgetStateByConfigId(context, 353001, GadgetState.GearStart)
	elseif evt.source_name == "FirstChallengeHard" and evt.param1 == 19 then
		ScriptLib.SetGadgetStateByConfigId(context, 353001, GadgetState.GearAction1)
	elseif evt.source_name == "FirstChallengeHard" and evt.param1 == 20 then
		ScriptLib.SetGadgetStateByConfigId(context, 353001, GadgetState.GearStart)
	elseif evt.source_name == "FirstChallengeHard" and evt.param1 == 21 then
		ScriptLib.SetGadgetStateByConfigId(context, 353001, GadgetState.GearStart)
	elseif evt.source_name == "FirstChallengeHard" and evt.param1 == 22 then
		ScriptLib.SetGadgetStateByConfigId(context, 353001, GadgetState.GearStart)
	elseif evt.source_name == "FirstChallengeHard" and evt.param1 == 23 then
		ScriptLib.SetGadgetStateByConfigId(context, 353001, GadgetState.GearStop)
	elseif evt.source_name == "FirstChallengeHard" and evt.param1 == 24 then
		ScriptLib.SetGadgetStateByConfigId(context, 353001, GadgetState.GearStop)
	elseif evt.source_name == "FirstChallengeHard" and evt.param1 == 25 then
		ScriptLib.SetGadgetStateByConfigId(context, 353001, GadgetState.GearAction1)
	elseif evt.source_name == "FirstChallengeHard" and evt.param1 == 26 then
		ScriptLib.SetGadgetStateByConfigId(context, 353001, GadgetState.GearStart)
	elseif evt.source_name == "FirstChallengeHard" and evt.param1 == 27 then
		ScriptLib.SetGadgetStateByConfigId(context, 353001, GadgetState.GearStart)
	elseif evt.source_name == "FirstChallengeHard" and evt.param1 == 28 then
		-- 终止20010020这一挑战
		ScriptLib.StopChallenge(context, 20010020, 1)
	-- 添加suite7的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133220353, 7)
	
	elseif evt.source_name == "FirstChallengeHard" and evt.param1 == 29 then
		ScriptLib.SetGadgetStateByConfigId(context, 353001, GadgetState.GearAction2)
	elseif evt.source_name == "FirstChallengeHard" and evt.param1 == 30 then
				-- 终止20010030这一挑战并判定为成功
		ScriptLib.StopChallenge(context, 20010030, 1)
		
		end
	
	return 0
end