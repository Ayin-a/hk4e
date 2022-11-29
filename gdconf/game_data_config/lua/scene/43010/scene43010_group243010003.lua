-- 基础信息
local base_info = {
	group_id = 243010003
}

-- DEFS_MISCS
local defs = {

                --galleryID
                gallery_id = 7038,

                --galley限时秒数
                --迷城战线v2的限时用Gallery控制（excel表）此处用于保证FatherChallenge的时长不要小于Gallery
                time_limit = 300,

                --父挑战ChallengeId
                challenge_id = 228,

                --父挑战大RegionID,这个region用于地城中断线重连接续挑战
                region_id = 3025,

                --激活古代符文ChallengeId
                key_challenge = 229,
                --启动遗迹控制台ChallengeId
                worktop_challenge = 230,
                --最终挑战ChallengeId
                final_challenge = 231,

                --激活古代符文目标数量
                key_target = 3,

	--当前groupId
                group_1 = 243010003,

                --父机关接收器
                gadget_switch = 3001,

                --光桥地板
                gadget_floor = 3002,

                --父挑战识别ID
                challenge_father = 999,

	--随机球GroupID
	buff_group = 243010009,
        }

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 3001, gadget_id = 70360164, pos = { x = 32.274, y = 40.189, z = -45.714 }, rot = { x = 0.000, y = 31.000, z = 0.000 }, level = 1, mark_flag = 4 },
	{ config_id = 3002, gadget_id = 70350244, pos = { x = 31.632, y = 39.931, z = -54.047 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.GearStart },
	{ config_id = 3003, gadget_id = 70360161, pos = { x = 71.817, y = 40.000, z = -29.632 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 3004, gadget_id = 70360160, pos = { x = -4.041, y = 40.000, z = -76.397 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 3005, gadget_id = 70360162, pos = { x = -34.654, y = 40.000, z = -27.939 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 3006, gadget_id = 70360159, pos = { x = 32.274, y = 69.551, z = -45.714 }, rot = { x = 0.000, y = 142.231, z = 0.000 }, level = 1, mark_flag = 2 },
	{ config_id = 3007, gadget_id = 70900201, pos = { x = 32.065, y = 41.668, z = -45.457 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 3008, gadget_id = 70900201, pos = { x = 30.916, y = -19.092, z = -52.206 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 }
}

-- 区域
regions = {
	{ config_id = 3012, shape = RegionShape.SPHERE, radius = 5, pos = { x = 19.120, y = 40.542, z = -5.925 } },
	-- 切换天气区域
	{ config_id = 3015, shape = RegionShape.CUBIC, size = { x = 40.000, y = 1.000, z = 40.000 }, pos = { x = 32.426, y = 34.245, z = -52.768 } },
	-- 全局启动trigger
	{ config_id = 3018, shape = RegionShape.CUBIC, size = { x = 40.000, y = 20.000, z = 2.000 }, pos = { x = 17.050, y = 47.780, z = 11.972 } },
	-- 断线重连保护大region
	{ config_id = 3025, shape = RegionShape.CUBIC, size = { x = 300.000, y = 200.000, z = 300.000 }, pos = { x = 40.270, y = -13.000, z = -20.009 } }
}

-- 触发器
triggers = {
	-- 全灭后重置
	{ config_id = 1003009, name = "DUNGEON_ALL_AVATAR_DIE_3009", event = EventType.EVENT_DUNGEON_ALL_AVATAR_DIE, source = "", condition = "", action = "action_EVENT_DUNGEON_ALL_AVATAR_DIE_3009" },
	-- 用于刷新随机球
	{ config_id = 1003010, name = "TIME_AXIS_PASS_3010", event = EventType.EVENT_TIME_AXIS_PASS, source = "randball", condition = "", action = "action_EVENT_TIME_AXIS_PASS_3010", trigger_count = 0 },
	-- 三个符文全亮之后，子挑战更新
	{ config_id = 1003011, name = "VARIABLE_CHANGE_3011", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_3011", action = "action_EVENT_VARIABLE_CHANGE_3011", trigger_count = 0 },
	{ config_id = 1003012, name = "ENTER_REGION_3012", event = EventType.EVENT_ENTER_REGION, source = "", condition = "", action = "" },
	-- 符文没亮时开机关
	{ config_id = 1003013, name = "SELECT_OPTION_3013", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_3013", action = "action_EVENT_SELECT_OPTION_3013", trigger_count = 0 },
	-- 注目镜头延迟后，删掉光桥地板
	{ config_id = 1003014, name = "TIMER_EVENT_3014", event = EventType.EVENT_TIMER_EVENT, source = "floor", condition = "", action = "action_EVENT_TIMER_EVENT_3014" },
	-- 切换天气区域
	{ config_id = 1003015, name = "ENTER_REGION_3015", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_3015", action = "action_EVENT_ENTER_REGION_3015" },
	-- 用于刷新场上随机球
	{ config_id = 1003016, name = "GADGET_CREATE_3016", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_3016", action = "action_EVENT_GADGET_CREATE_3016" },
	-- 符文全亮后开机关
	{ config_id = 1003017, name = "SELECT_OPTION_3017", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_3017", action = "action_EVENT_SELECT_OPTION_3017", trigger_count = 0 },
	-- 全局启动trigger
	{ config_id = 1003018, name = "ENTER_REGION_3018", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_3018", action = "action_EVENT_ENTER_REGION_3018" },
	-- 判断符文点亮 调试用
	{ config_id = 1003019, name = "VARIABLE_CHANGE_3019", event = EventType.EVENT_VARIABLE_CHANGE, source = "runes", condition = "", action = "action_EVENT_VARIABLE_CHANGE_3019", trigger_count = 0, tag = "901" },
	-- 符文激活1
	{ config_id = 1003020, name = "VARIABLE_CHANGE_3020", event = EventType.EVENT_VARIABLE_CHANGE, source = "runes", condition = "condition_EVENT_VARIABLE_CHANGE_3020", action = "action_EVENT_VARIABLE_CHANGE_3020" },
	-- 符文激活3
	{ config_id = 1003021, name = "VARIABLE_CHANGE_3021", event = EventType.EVENT_VARIABLE_CHANGE, source = "runes", condition = "condition_EVENT_VARIABLE_CHANGE_3021", action = "action_EVENT_VARIABLE_CHANGE_3021" },
	-- 符文激活2
	{ config_id = 1003022, name = "VARIABLE_CHANGE_3022", event = EventType.EVENT_VARIABLE_CHANGE, source = "runes", condition = "condition_EVENT_VARIABLE_CHANGE_3022", action = "action_EVENT_VARIABLE_CHANGE_3022" },
	-- 用于判断打开地板的子挑战是否完成
	{ config_id = 1003023, name = "GADGET_STATE_CHANGE_3023", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_3023", action = "", tag = "902" },
	-- BOSS挑战完成 地城结算
	{ config_id = 1003024, name = "VARIABLE_CHANGE_3024", event = EventType.EVENT_VARIABLE_CHANGE, source = "success", condition = "condition_EVENT_VARIABLE_CHANGE_3024", action = "action_EVENT_VARIABLE_CHANGE_3024", tag = "903" },
	{ config_id = 1003026, name = "DUNGEON_SETTLE_3026", event = EventType.EVENT_DUNGEON_SETTLE, source = "", condition = "", action = "action_EVENT_DUNGEON_SETTLE_3026" }
}

-- 变量
variables = {
	{ config_id = 1, name = "runes", value = 0, no_refresh = false },
	{ config_id = 2, name = "AddTime", value = 0, no_refresh = false },
	{ config_id = 3, name = "success", value = 0, no_refresh = false }
}

-- 废弃数据
garbages = {
	triggers = {
		{ config_id = 1003027, name = "DUNGEON_ALL_AVATAR_DIE_3027", event = EventType.EVENT_DUNGEON_ALL_AVATAR_DIE, source = "", condition = "", action = "action_EVENT_DUNGEON_ALL_AVATAR_DIE_3027" }
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
		monsters = { },
		gadgets = { 3001, 3002, 3003, 3004, 3005, 3006 },
		regions = { 3015, 3018, 3025 },
		triggers = { "DUNGEON_ALL_AVATAR_DIE_3009", "TIME_AXIS_PASS_3010", "VARIABLE_CHANGE_3011", "SELECT_OPTION_3013", "TIMER_EVENT_3014", "ENTER_REGION_3015", "GADGET_CREATE_3016", "SELECT_OPTION_3017", "ENTER_REGION_3018", "VARIABLE_CHANGE_3019", "VARIABLE_CHANGE_3020", "VARIABLE_CHANGE_3021", "VARIABLE_CHANGE_3022", "GADGET_STATE_CHANGE_3023", "VARIABLE_CHANGE_3024", "DUNGEON_SETTLE_3026" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 3001, 3002 },
		regions = { },
		triggers = { "SELECT_OPTION_3017" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发操作
function action_EVENT_DUNGEON_ALL_AVATAR_DIE_3009(context, evt)
	-- 重新生成指定group，指定suite
	if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 243010001, suite = 1 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
		return -1
	end
	
	-- 重新生成指定group，指定suite
	if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 243010002, suite = 1 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
		return -1
	end
	
	-- 重新生成指定group，指定suite
	if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 243010005, suite = 1 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
		return -1
	end
	
	-- 重新生成指定group，指定suite
	if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 243010006, suite = 1 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
		return -1
	end
	
	-- 重新生成指定group，指定suite
	if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 243010007, suite = 1 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
		return -1
	end
	
	-- 重新生成指定group，指定suite
	if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 243010008, suite = 1 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
		return -1
	end
	
	-- 重新生成指定group，指定suite
	if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 243010011, suite = 1 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
		return -1
	end
	
	
	-- 重新生成指定group，指定suite
	if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 243010012, suite = 1 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
		return -1
	end
	
	-- 挑战失败触发结算
	if 0 ~= ScriptLib.FailMistTrialDungeonChallenge(context, 999) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : 结束挑战失败！！！！")
		return -1
	end
	
	-- 地城失败结算
	if 0 ~= ScriptLib.CauseDungeonFail(context) then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : cause_dungeonfail")
		return -1
	end
	
	
	return 0
end

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_3010(context, evt)
	-- 重新生成指定group，默认为独立随机
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 243010009 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_randall")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_3011(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"runes"为3
	if ScriptLib.GetGroupVariableValue(context, "runes") ~= 3 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_3011(context, evt)
	-- 删除指定group： 243007005 ；指定config：5013；物件身上指定option：30；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, defs.group_1, defs.gadget_switch, 58) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	-- 将本组内变量名为 "runes" 的变量设置为 99
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "runes", 99) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, defs.group_1, defs.gadget_switch, {59}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	-- 创建id为5008的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 3007 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	--子挑战 打开地板
	ScriptLib.AttachChildChallenge(context, 999, 902, 230, {7,902,1,1},{},{success=1,fail=1})
	
	ScriptLib.PrintContextLog(context, "操作台子挑战挂载!!!!!!!!")
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_3013(context, evt)
	-- 判断是gadgetid 5013 option_id 30
	if defs.gadget_switch ~= evt.param1 then
		return false	
	end
	
	if 58 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_3013(context, evt)
	-- 调用提示id为 31040202 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 43001001) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_TIMER_EVENT_3014(context, evt)
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 243010003, EntityType.GADGET, 3002 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_3015(context, evt)
	if evt.param1 ~= 3015 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_3015(context, evt)
	
	--修改天气为boss区域
	--ScriptLib.SetWeatherAreaState(context, 10017 ,1)
	
	--ScriptLib.PrintContextLog(context, "修改天气成功!!!!!!!!")
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_3016(context, evt)
	if defs.gadget_switch ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_3016(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, defs.group_1, defs.gadget_switch, {58}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	 ScriptLib.PrintContextLog(context, "操作台选项!!!!!!!!")
	
	-- 创建标识为"randball"，时间节点为{30}的时间轴，true用于控制该时间轴是否循环
	ScriptLib.InitTimeAxis(context, "randball", {30}, true)
	
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_3017(context, evt)
	-- 判断是gadgetid 5013 option_id 7
	if defs.gadget_switch ~= evt.param1 then
		return false	
	end
	
	if 59 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_3017(context, evt)
	-- 将光桥的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 3002, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
		-- 永久关闭第一个目标点物件，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 3007 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	-- 创建第二个目标点物件的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 3008 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 延迟2秒后,向groupId为：243007005的对象,请求一次调用,并将string参数："floor" 传递过去
	if 0 ~= ScriptLib.CreateGroupTimerEvent(context, 243010003, "floor", 2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_timerevent_by_group")
	  return -1
	end
	
	-- 删除中控台group的地上操作台物件；物件身上指定option：7；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 243010003, 3001, 59) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	--子挑战 完成最终试练
	ScriptLib.AttachChildChallenge(context, 999, 903, 231, {3,903,1,1},{},{success=99999,fail=1})
	
	ScriptLib.PrintContextLog(context, "操作台子挑战挂载!!!!!!!!")
	
	-- 调用提示id为 43001011 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 43001011) then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_3018(context, evt)
	if evt.param1 ~= 3018 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_3018(context, evt)
	ScriptLib.CreateFatherChallenge(context, 999, 228, 1800, {success = 99999, fail = 99999, fail_on_wipe=true}) 
	
	ScriptLib.AttachChildChallenge(context, 999, 901, 229, {3,901,3,1},{},{success=0,fail=0})
	
	ScriptLib.PrintContextLog(context, "挂载符文子挑战!!!!!!!!")
	
	ScriptLib.StartFatherChallenge(context, 999)
	
	ScriptLib.PrintContextLog(context, "父挑战开始!!!!!!!!")
	
	ScriptLib.StartGallery(context, 7038)
	
	ScriptLib.PrintContextLog(context, "游廊启动!!!!!!!!")
	
	return 0
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_3019(context, evt)
	if evt.param1 == evt.param2 then return -1 end
	
	ScriptLib.PrintContextLog(context, "符文计数改变了!!!!!!!!!!!!")
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_3020(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"runes"为1
	if ScriptLib.GetGroupVariableValue(context, "runes") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_3020(context, evt)
	-- 调用提示id为 43001002 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 43001002) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_3021(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"runes"为3
	if ScriptLib.GetGroupVariableValue(context, "runes") ~= 3 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_3021(context, evt)
	-- 调用提示id为 43001004 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 43001004) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_3022(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"runes"为2
	if ScriptLib.GetGroupVariableValue(context, "runes") ~= 2 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_3022(context, evt)
	-- 调用提示id为 43001003 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 43001003) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_3023(context, evt)
	if 3002 ~= evt.param2 or GadgetState.Default ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_3024(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"success"为1
	if ScriptLib.GetGroupVariableValue(context, "success") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_3024(context, evt)
	ScriptLib.PrintContextLog(context, "BOSS挑战完成!!!!!!!!")
	
	
	return 0
end

-- 触发操作
function action_EVENT_DUNGEON_SETTLE_3026(context, evt)
	-- 重新生成指定group，指定suite
	if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 243010001, suite = 1 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
		return -1
	end
	
	-- 重新生成指定group，指定suite
	if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 243010002, suite = 1 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
		return -1
	end
	
	-- 重新生成指定group，指定suite
	if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 243010005, suite = 1 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
		return -1
	end
	
	-- 重新生成指定group，指定suite
	if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 243010006, suite = 1 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
		return -1
	end
	
	-- 重新生成指定group，指定suite
	if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 243010007, suite = 1 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
		return -1
	end
	
	-- 重新生成指定group，指定suite
	if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 243010008, suite = 1 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
		return -1
	end
	
	-- 重新生成指定group，指定suite
	if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 243010011, suite = 1 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
		return -1
	end
	
	
	-- 重新生成指定group，指定suite
	if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 243010012, suite = 1 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
		return -1
	end
	
	-- 挑战失败触发结算
	if 0 ~= ScriptLib.FailMistTrialDungeonChallenge(context, 999) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : 结束挑战失败！！！！")
		return -1
	end
	
	--判断gallery状态
	if 1 ~= evt.param1 then
	
		ScriptLib.StopGallery(context, defs.gallery_id, true)
		ScriptLib.PrintContextLog(context, "gallery失败结算!!!!!!!!")
	
		
	
	else
	
		ScriptLib.StopGallery(context, defs.gallery_id, false)
		ScriptLib.PrintContextLog(context, "galllery胜利结算!!!!!!!!")
	
	
	
	end
	
	return 0
end

require "V2_3/MistTrialV2"