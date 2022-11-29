-- 基础信息
local base_info = {
	group_id = 243007005
}

-- DEFS_MISCS
local defs = {

                --galleryID
                gallery_id = 7035,

                --galley限时秒数
                --迷城战线v2的限时用Gallery控制（excel表）此处用于保证FatherChallenge的时长不要小于Gallery
                time_limit = 300,

                --父挑战ChallengeId
                challenge_id = 228,

                --父挑战大RegionID,这个region用于地城中断线重连接续挑战
                region_id = 5027,

                --激活古代符文ChallengeId
                key_challenge = 229,
                --启动遗迹控制台ChallengeId
                worktop_challenge = 230,
                --最终挑战ChallengeId
                final_challenge = 231,

                --激活古代符文目标数量
                key_target = 3,

	--当前groupId
                group_1 = 243007005,

                --父机关接收器
                gadget_switch = 5013,

                --光桥地板
                gadget_floor = 5016,

                --父挑战识别ID
                challenge_father = 999,

	--随机球GroupID
	buff_group = 243007012,
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
	{ config_id = 5004, gadget_id = 70360159, pos = { x = 32.272, y = 69.000, z = -45.694 }, rot = { x = 0.000, y = 142.231, z = 0.000 }, level = 1, mark_flag = 2 },
	{ config_id = 5008, gadget_id = 70900201, pos = { x = 32.091, y = 41.714, z = -45.585 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 5009, gadget_id = 70900201, pos = { x = 31.059, y = -18.796, z = -52.312 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 5013, gadget_id = 70360164, pos = { x = 32.272, y = 40.100, z = -45.694 }, rot = { x = 0.000, y = 31.000, z = 0.000 }, level = 1, mark_flag = 4 },
	{ config_id = 5016, gadget_id = 70350244, pos = { x = 31.800, y = 39.380, z = -54.210 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.GearStart },
	{ config_id = 5017, gadget_id = 70360161, pos = { x = 76.200, y = 40.001, z = -28.200 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 5018, gadget_id = 70360160, pos = { x = -3.900, y = 40.000, z = -80.600 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 5019, gadget_id = 70360162, pos = { x = -36.300, y = 40.000, z = -28.300 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 }
}

-- 区域
regions = {
	{ config_id = 5005, shape = RegionShape.SPHERE, radius = 5, pos = { x = 19.288, y = 39.992, z = -6.088 } },
	-- 切换天气区域
	{ config_id = 5010, shape = RegionShape.CUBIC, size = { x = 40.000, y = 1.000, z = 40.000 }, pos = { x = 32.594, y = 33.695, z = -52.932 } },
	-- 全局启动trigger
	{ config_id = 5014, shape = RegionShape.CUBIC, size = { x = 40.000, y = 20.000, z = 2.000 }, pos = { x = 17.218, y = 47.230, z = 11.808 } },
	-- 断线重连保护大region
	{ config_id = 5027, shape = RegionShape.CUBIC, size = { x = 300.000, y = 200.000, z = 300.000 }, pos = { x = 40.438, y = -13.000, z = -20.173 } }
}

-- 触发器
triggers = {
	-- 全灭后重置
	{ config_id = 1005001, name = "DUNGEON_ALL_AVATAR_DIE_5001", event = EventType.EVENT_DUNGEON_ALL_AVATAR_DIE, source = "", condition = "", action = "action_EVENT_DUNGEON_ALL_AVATAR_DIE_5001" },
	-- 用于刷新随机球
	{ config_id = 1005002, name = "TIME_AXIS_PASS_5002", event = EventType.EVENT_TIME_AXIS_PASS, source = "randball", condition = "", action = "action_EVENT_TIME_AXIS_PASS_5002", trigger_count = 0 },
	-- 三个符文全亮之后，子挑战更新
	{ config_id = 1005003, name = "VARIABLE_CHANGE_5003", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_5003", action = "action_EVENT_VARIABLE_CHANGE_5003", trigger_count = 0 },
	{ config_id = 1005005, name = "ENTER_REGION_5005", event = EventType.EVENT_ENTER_REGION, source = "", condition = "", action = "" },
	-- 符文没亮时开机关
	{ config_id = 1005006, name = "SELECT_OPTION_5006", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_5006", action = "action_EVENT_SELECT_OPTION_5006", trigger_count = 0 },
	-- 注目镜头延迟后，删掉光桥地板
	{ config_id = 1005007, name = "TIMER_EVENT_5007", event = EventType.EVENT_TIMER_EVENT, source = "floor", condition = "", action = "action_EVENT_TIMER_EVENT_5007" },
	-- 切换天气区域
	{ config_id = 1005010, name = "ENTER_REGION_5010", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_5010", action = "action_EVENT_ENTER_REGION_5010" },
	-- 用于刷新场上随机球
	{ config_id = 1005011, name = "GADGET_CREATE_5011", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_5011", action = "action_EVENT_GADGET_CREATE_5011" },
	-- 符文全亮后开机关
	{ config_id = 1005012, name = "SELECT_OPTION_5012", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_5012", action = "action_EVENT_SELECT_OPTION_5012", trigger_count = 0 },
	-- 全局启动trigger
	{ config_id = 1005014, name = "ENTER_REGION_5014", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_5014", action = "action_EVENT_ENTER_REGION_5014" },
	-- 判断符文点亮 调试用
	{ config_id = 1005015, name = "VARIABLE_CHANGE_5015", event = EventType.EVENT_VARIABLE_CHANGE, source = "runes", condition = "", action = "action_EVENT_VARIABLE_CHANGE_5015", trigger_count = 0, tag = "901" },
	-- 地城结算时把gallery停掉
	{ config_id = 1005020, name = "DUNGEON_SETTLE_5020", event = EventType.EVENT_DUNGEON_SETTLE, source = "", condition = "", action = "action_EVENT_DUNGEON_SETTLE_5020" },
	-- 符文激活1
	{ config_id = 1005021, name = "VARIABLE_CHANGE_5021", event = EventType.EVENT_VARIABLE_CHANGE, source = "runes", condition = "condition_EVENT_VARIABLE_CHANGE_5021", action = "action_EVENT_VARIABLE_CHANGE_5021" },
	-- 符文激活3
	{ config_id = 1005022, name = "VARIABLE_CHANGE_5022", event = EventType.EVENT_VARIABLE_CHANGE, source = "runes", condition = "condition_EVENT_VARIABLE_CHANGE_5022", action = "action_EVENT_VARIABLE_CHANGE_5022" },
	-- 符文激活2
	{ config_id = 1005023, name = "VARIABLE_CHANGE_5023", event = EventType.EVENT_VARIABLE_CHANGE, source = "runes", condition = "condition_EVENT_VARIABLE_CHANGE_5023", action = "action_EVENT_VARIABLE_CHANGE_5023" },
	-- 用于判断打开地板的子挑战是否完成
	{ config_id = 1005024, name = "GADGET_STATE_CHANGE_5024", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_5024", action = "action_EVENT_GADGET_STATE_CHANGE_5024", trigger_count = 0, tag = "902" },
	-- BOSS挑战完成 地城结算
	{ config_id = 1005025, name = "VARIABLE_CHANGE_5025", event = EventType.EVENT_VARIABLE_CHANGE, source = "success", condition = "condition_EVENT_VARIABLE_CHANGE_5025", action = "action_EVENT_VARIABLE_CHANGE_5025", tag = "903" }
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
		{ config_id = 1005026, name = "DUNGEON_ALL_AVATAR_DIE_5026", event = EventType.EVENT_DUNGEON_ALL_AVATAR_DIE, source = "", condition = "", action = "action_EVENT_DUNGEON_ALL_AVATAR_DIE_5026" }
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
		gadgets = { 5004, 5013, 5016, 5017, 5018, 5019 },
		regions = { 5010, 5014, 5027 },
		triggers = { "DUNGEON_ALL_AVATAR_DIE_5001", "TIME_AXIS_PASS_5002", "VARIABLE_CHANGE_5003", "SELECT_OPTION_5006", "TIMER_EVENT_5007", "ENTER_REGION_5010", "GADGET_CREATE_5011", "SELECT_OPTION_5012", "ENTER_REGION_5014", "VARIABLE_CHANGE_5015", "DUNGEON_SETTLE_5020", "VARIABLE_CHANGE_5021", "VARIABLE_CHANGE_5022", "VARIABLE_CHANGE_5023", "GADGET_STATE_CHANGE_5024", "VARIABLE_CHANGE_5025" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 5013, 5016 },
		regions = { },
		triggers = { "SELECT_OPTION_5012" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发操作
function action_EVENT_DUNGEON_ALL_AVATAR_DIE_5001(context, evt)
	-- 重新生成指定group，指定suite
	if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 243007004, suite = 1 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
		return -1
	end
	
	-- 重新生成指定group，指定suite
	if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 243007001, suite = 1 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
		return -1
	end
	
	-- 重新生成指定group，指定suite
	if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 243007008, suite = 1 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
		return -1
	end
	
	-- 重新生成指定group，指定suite
	if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 243007009, suite = 1 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
		return -1
	end
	
	-- 重新生成指定group，指定suite
	if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 243007010, suite = 1 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
		return -1
	end
	
	-- 重新生成指定group，指定suite
	if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 243007011, suite = 1 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
		return -1
	end
	
	-- 重新生成指定group，指定suite
	if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 243007016, suite = 1 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
		return -1
	end
	
	
	-- 重新生成指定group，指定suite
	if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 243007017, suite = 1 }) then
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
function action_EVENT_TIME_AXIS_PASS_5002(context, evt)
	-- 重新生成指定group，默认为独立随机
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 243007012 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_randall")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_5003(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"runes"为3
	if ScriptLib.GetGroupVariableValue(context, "runes") ~= 3 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_5003(context, evt)
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
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 5008 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	--子挑战 打开地板
	ScriptLib.AttachChildChallenge(context, 999, 902, 230, {7,902,1,1},{},{success=1,fail=1})
	
	ScriptLib.PrintContextLog(context, "操作台子挑战挂载!!!!!!!!")
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_5006(context, evt)
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
function action_EVENT_SELECT_OPTION_5006(context, evt)
	-- 调用提示id为 31040202 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 43001001) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_TIMER_EVENT_5007(context, evt)
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 243007005, EntityType.GADGET, 5016 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_5010(context, evt)
	if evt.param1 ~= 5010 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_5010(context, evt)
	
	--修改天气为boss区域
	--ScriptLib.SetWeatherAreaState(context, 10017 ,1)
	
	--ScriptLib.PrintContextLog(context, "修改天气成功!!!!!!!!")
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_5011(context, evt)
	if defs.gadget_switch ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_5011(context, evt)
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
function condition_EVENT_SELECT_OPTION_5012(context, evt)
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
function action_EVENT_SELECT_OPTION_5012(context, evt)
	-- 将configid为 5016 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 5016, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 5008 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	-- 创建id为5009的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 5009 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 延迟2秒后,向groupId为：243007005的对象,请求一次调用,并将string参数："floor" 传递过去
	if 0 ~= ScriptLib.CreateGroupTimerEvent(context, 243007005, "floor", 2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_timerevent_by_group")
	  return -1
	end
	
	-- 删除指定group： 243007005 ；指定config：5013；物件身上指定option：7；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 243007005, 5013, 59) then
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
function condition_EVENT_ENTER_REGION_5014(context, evt)
	if evt.param1 ~= 5014 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_5014(context, evt)
	ScriptLib.CreateFatherChallenge(context, 999, 228, 1800, {success = 99999, fail = 99999, fail_on_wipe=true}) 
	
	ScriptLib.AttachChildChallenge(context, 999, 901, 229, {3,901,3,1},{},{success=0,fail=0})
	
	ScriptLib.PrintContextLog(context, "挂载符文子挑战!!!!!!!!")
	
	ScriptLib.StartFatherChallenge(context, 999)
	
	ScriptLib.PrintContextLog(context, "父挑战开始!!!!!!!!")
	
	ScriptLib.StartGallery(context, 7035)
	
	ScriptLib.PrintContextLog(context, "游廊启动!!!!!!!!")
	
	return 0
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_5015(context, evt)
	if evt.param1 == evt.param2 then return -1 end
	
	ScriptLib.PrintContextLog(context, "符文计数改变了!!!!!!!!!!!!")
	
	return 0
end

-- 触发操作
function action_EVENT_DUNGEON_SETTLE_5020(context, evt)
	-- 重新生成指定group，指定suite
	if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 243007004, suite = 1 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
		return -1
	end
	
	-- 重新生成指定group，指定suite
	if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 243007001, suite = 1 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
		return -1
	end
	
	-- 重新生成指定group，指定suite
	if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 243007008, suite = 1 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
		return -1
	end
	
	-- 重新生成指定group，指定suite
	if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 243007009, suite = 1 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
		return -1
	end
	
	-- 重新生成指定group，指定suite
	if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 243007010, suite = 1 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
		return -1
	end
	
	-- 重新生成指定group，指定suite
	if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 243007011, suite = 1 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
		return -1
	end
	
	-- 重新生成指定group，指定suite
	if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 243007016, suite = 1 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
		return -1
	end
	
	
	-- 重新生成指定group，指定suite
	if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 243007017, suite = 1 }) then
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

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_5021(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"runes"为1
	if ScriptLib.GetGroupVariableValue(context, "runes") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_5021(context, evt)
	-- 调用提示id为 43001002 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 43001002) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_5022(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"runes"为3
	if ScriptLib.GetGroupVariableValue(context, "runes") ~= 3 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_5022(context, evt)
	-- 调用提示id为 43001004 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 43001004) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_5023(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"runes"为2
	if ScriptLib.GetGroupVariableValue(context, "runes") ~= 2 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_5023(context, evt)
	-- 调用提示id为 43001003 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 43001003) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_5024(context, evt)
	if 5016 ~= evt.param2 or GadgetState.Default ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_5024(context, evt)
	ScriptLib.PrintContextLog(context, "地板状态改变了!!!!!!!!")
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_5025(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"success"为1
	if ScriptLib.GetGroupVariableValue(context, "success") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_5025(context, evt)
	ScriptLib.PrintContextLog(context, "BOSS挑战完成!!!!!!!!")
	
	
	return 0
end

require "V2_3/MistTrialV2"