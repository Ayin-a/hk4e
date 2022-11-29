-- 基础信息
local base_info = {
	group_id = 133302052
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 52007, monster_id = 25070101, pos = { x = -610.542, y = 311.440, z = 2171.602 }, rot = { x = 0.000, y = 67.800, z = 0.000 }, level = 27, drop_tag = "盗宝团", isElite = true, area_id = 24 },
	{ config_id = 52008, monster_id = 25020201, pos = { x = -615.157, y = 310.294, z = 2171.826 }, rot = { x = 0.000, y = 67.076, z = 0.000 }, level = 27, drop_tag = "盗宝团", area_id = 24 },
	{ config_id = 52009, monster_id = 25010201, pos = { x = -607.051, y = 311.920, z = 2167.715 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, drop_tag = "盗宝团", area_id = 24 },
	{ config_id = 52010, monster_id = 25010201, pos = { x = -606.122, y = 311.205, z = 2175.592 }, rot = { x = 0.000, y = 136.006, z = 0.000 }, level = 27, drop_tag = "盗宝团", area_id = 24 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 52001, gadget_id = 70360001, pos = { x = -601.448, y = 311.821, z = 2171.958 }, rot = { x = 0.000, y = 278.025, z = 0.000 }, level = 27, isOneoff = true, persistent = true, area_id = 24 },
	{ config_id = 52002, gadget_id = 70211101, pos = { x = -601.385, y = 311.595, z = 2171.981 }, rot = { x = 319.442, y = 292.853, z = 355.302 }, level = 26, drop_tag = "解谜低级须弥", showcutscene = true, isOneoff = true, persistent = true, explore = { name = "chest", exp = 10 }, area_id = 24 },
	{ config_id = 52011, gadget_id = 70710038, pos = { x = -601.385, y = 311.458, z = 2171.917 }, rot = { x = 10.806, y = 359.492, z = 357.325 }, level = 27, area_id = 24 }
}

-- 区域
regions = {
	{ config_id = 52006, shape = RegionShape.SPHERE, radius = 5, pos = { x = -605.829, y = 311.954, z = 2171.757 }, area_id = 24 }
}

-- 触发器
triggers = {
	{ config_id = 1052003, name = "GADGET_CREATE_52003", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_52003", action = "action_EVENT_GADGET_CREATE_52003", trigger_count = 0 },
	{ config_id = 1052004, name = "SELECT_OPTION_52004", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_52004", action = "action_EVENT_SELECT_OPTION_52004" },
	{ config_id = 1052005, name = "GADGET_STATE_CHANGE_52005", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_52005", action = "action_EVENT_GADGET_STATE_CHANGE_52005", trigger_count = 0 },
	{ config_id = 1052006, name = "ENTER_REGION_52006", event = EventType.EVENT_ENTER_REGION, source = "", condition = "", action = "action_EVENT_ENTER_REGION_52006" },
	{ config_id = 1052012, name = "MONSTER_BATTLE_52012", event = EventType.EVENT_MONSTER_BATTLE, source = "", condition = "", action = "action_EVENT_MONSTER_BATTLE_52012" }
}

-- 变量
variables = {
}

-- 废弃数据
garbages = {
	gadgets = {
		{ config_id = 52013, gadget_id = 70500000, pos = { x = -601.534, y = 311.663, z = 2172.599 }, rot = { x = 0.003, y = 256.981, z = 297.926 }, level = 27, point_type = 2028, area_id = 24 },
		{ config_id = 52014, gadget_id = 70500000, pos = { x = -601.856, y = 311.804, z = 2172.197 }, rot = { x = 291.023, y = 28.795, z = 0.008 }, level = 27, point_type = 2028, area_id = 24 }
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
	end_suite = 2,
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
		gadgets = { 52011 },
		regions = { 52006 },
		triggers = { "ENTER_REGION_52006" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 52002, 52011 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_52005" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { 52007, 52008, 52009, 52010 },
		gadgets = { 52001, 52011 },
		regions = { },
		triggers = { "GADGET_CREATE_52003", "SELECT_OPTION_52004", "MONSTER_BATTLE_52012" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_CREATE_52003(context, evt)
	-- 判断是gadgetid 52001
	if 52001 ~= evt.param1 then
			return false
		end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_52003(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptions(context, {169}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_work_options")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_52004(context, evt)
	if 52001 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_52004(context, evt)
	-- 删除指定group： 133302052 ；指定config：52001；物件身上指定option：169；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 133302052, 52001, 169) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 2011, 3, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133302052, suite = 2 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_52005(context, evt)
	if 52002 ~= evt.param2 or GadgetState.ChestOpened ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_52005(context, evt)
	-- 销毁group存档，不影响当前场景，但卸载后group就永别了
	if 0 ~= ScriptLib.SetGroupDead(context, 0) then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_group_die")
		return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_ENTER_REGION_52006(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133302052, suite = 3 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

-- 触发操作
function action_EVENT_MONSTER_BATTLE_52012(context, evt)
	-- 调用提示id为 33020100 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 33020100) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end