-- 基础信息
local base_info = {
	group_id = 133210225
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
	{ config_id = 225001, gadget_id = 70360001, pos = { x = -3808.835, y = 126.460, z = -615.265 }, rot = { x = 347.644, y = 298.396, z = 3.387 }, level = 30, isOneoff = true, persistent = true, area_id = 17 },
	{ config_id = 225002, gadget_id = 70211101, pos = { x = -3808.547, y = 126.526, z = -614.545 }, rot = { x = 5.094, y = 200.767, z = 11.764 }, level = 26, drop_tag = "解谜低级稻妻", showcutscene = true, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 17 }
}

-- 区域
regions = {
	{ config_id = 225005, shape = RegionShape.SPHERE, radius = 8, pos = { x = -3806.528, y = 126.285, z = -614.080 }, area_id = 17 },
	{ config_id = 225007, shape = RegionShape.SPHERE, radius = 8, pos = { x = -3806.528, y = 126.285, z = -614.080 }, area_id = 17 }
}

-- 触发器
triggers = {
	{ config_id = 1225003, name = "GADGET_CREATE_225003", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_225003", action = "action_EVENT_GADGET_CREATE_225003", trigger_count = 0 },
	{ config_id = 1225004, name = "SELECT_OPTION_225004", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_225004", action = "action_EVENT_SELECT_OPTION_225004" },
	{ config_id = 1225005, name = "ENTER_REGION_225005", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_225005", action = "action_EVENT_ENTER_REGION_225005" },
	{ config_id = 1225006, name = "QUEST_START_225006", event = EventType.EVENT_QUEST_START, source = "7215202", condition = "", action = "action_EVENT_QUEST_START_225006", trigger_count = 0 },
	{ config_id = 1225007, name = "ENTER_REGION_225007", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_225007", action = "action_EVENT_ENTER_REGION_225007" },
	{ config_id = 1225008, name = "GADGET_STATE_CHANGE_225008", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_225008", action = "action_EVENT_GADGET_STATE_CHANGE_225008" }
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
	io_type = 1,
	suite = 1,
	end_suite = 2,
	rand_suite = false
}

--================================================================
-- 
-- 小组配置
-- 
--================================================================

suite_disk = {
	[1] = {
		gadgets = {
		},
		monsters = {
		},
		regions = { 225007 },
		triggers = { "QUEST_START_225006", "ENTER_REGION_225007" },
		npcs = { },
		variables = {
		}
	},
	[2] = {
		gadgets = {
			{ config_id = 225001, state = 0 }
		},
		monsters = {
		},
		regions = { 225005 },
		triggers = { "GADGET_CREATE_225003", "SELECT_OPTION_225004", "ENTER_REGION_225005" },
		npcs = { },
		variables = {
		}
	},
	[3] = {
		gadgets = {
			{ config_id = 225002, state = 0 }
		},
		monsters = {
		},
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_225008" },
		npcs = { },
		variables = {
		}
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_CREATE_225003(context, evt)
	-- 判断是gadgetid 225001
	if 225001 ~= evt.param1 then
			return false
		end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_225003(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptions(context, {169}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_work_options")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_225004(context, evt)
	if 225001 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_225004(context, evt)
	-- 删除指定group： 133210225 ；指定config：225001；物件身上指定option：169；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 133210225, 225001, 169) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 2011, 3, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
		-- 将指定flowGroup的进度和要素属性都改为目标suite（缺的创建，多的移除）
	  ScriptLib.GoToFlowSuite(context, 133210225, 3)
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_225005(context, evt)
	if evt.param1 ~= 225005 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_225005(context, evt)
	-- 调用提示id为 32100151 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 32100151) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_QUEST_START_225006(context, evt)
		-- 将指定flowGroup的进度和要素属性都改为目标suite（缺的创建，多的移除）
	  ScriptLib.GoToFlowSuite(context, 133210225, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_225007(context, evt)
	if evt.param1 ~= 225007 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_225007(context, evt)
	-- 调用提示id为 32100150 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 32100150) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_225008(context, evt)
	if 225002 ~= evt.param2 or GadgetState.ChestOpened ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_225008(context, evt)
	-- 针对当前group内变量名为 "FindCount" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValueByGroup(context, "FindCount", 1, 133210482) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable_by_group")
	  return -1
	end
	
	return 0
end