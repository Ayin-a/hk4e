-- 基础信息
local base_info = {
	group_id = 133210224
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
	{ config_id = 224001, gadget_id = 70360001, pos = { x = -3677.075, y = 172.242, z = -597.912 }, rot = { x = 353.807, y = 325.301, z = 15.885 }, level = 30, isOneoff = true, persistent = true, area_id = 17 },
	{ config_id = 224002, gadget_id = 70211101, pos = { x = -3677.891, y = 172.242, z = -597.345 }, rot = { x = 3.116, y = 138.335, z = 347.232 }, level = 26, drop_tag = "解谜低级稻妻", showcutscene = true, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 17 }
}

-- 区域
regions = {
	{ config_id = 224005, shape = RegionShape.SPHERE, radius = 10, pos = { x = -3676.506, y = 173.818, z = -596.238 }, area_id = 17 },
	{ config_id = 224007, shape = RegionShape.SPHERE, radius = 10, pos = { x = -3676.506, y = 173.818, z = -596.238 }, area_id = 17 }
}

-- 触发器
triggers = {
	{ config_id = 1224003, name = "GADGET_CREATE_224003", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_224003", action = "action_EVENT_GADGET_CREATE_224003", trigger_count = 0 },
	{ config_id = 1224004, name = "SELECT_OPTION_224004", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_224004", action = "action_EVENT_SELECT_OPTION_224004" },
	{ config_id = 1224005, name = "ENTER_REGION_224005", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_224005", action = "action_EVENT_ENTER_REGION_224005" },
	{ config_id = 1224006, name = "QUEST_START_224006", event = EventType.EVENT_QUEST_START, source = "7215202", condition = "", action = "action_EVENT_QUEST_START_224006", trigger_count = 0 },
	{ config_id = 1224007, name = "ENTER_REGION_224007", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_224007", action = "action_EVENT_ENTER_REGION_224007" },
	{ config_id = 1224008, name = "GADGET_STATE_CHANGE_224008", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_224008", action = "action_EVENT_GADGET_STATE_CHANGE_224008" }
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
		regions = { 224007 },
		triggers = { "QUEST_START_224006", "ENTER_REGION_224007" },
		npcs = { },
		variables = {
		}
	},
	[2] = {
		gadgets = {
			{ config_id = 224001, state = 0 }
		},
		monsters = {
		},
		regions = { 224005 },
		triggers = { "GADGET_CREATE_224003", "SELECT_OPTION_224004", "ENTER_REGION_224005" },
		npcs = { },
		variables = {
		}
	},
	[3] = {
		gadgets = {
			{ config_id = 224002, state = 0 }
		},
		monsters = {
		},
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_224008" },
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
function condition_EVENT_GADGET_CREATE_224003(context, evt)
	-- 判断是gadgetid 224001
	if 224001 ~= evt.param1 then
			return false
		end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_224003(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptions(context, {169}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_work_options")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_224004(context, evt)
	if 224001 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_224004(context, evt)
	-- 删除指定group： 133210224 ；指定config：224001；物件身上指定option：169；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 133210224, 224001, 169) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 2011, 3, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
		-- 将指定flowGroup的进度和要素属性都改为目标suite（缺的创建，多的移除）
	  ScriptLib.GoToFlowSuite(context, 133210224, 3)
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_224005(context, evt)
	if evt.param1 ~= 224005 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_224005(context, evt)
	-- 调用提示id为 32100147 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 32100147) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_QUEST_START_224006(context, evt)
		-- 将指定flowGroup的进度和要素属性都改为目标suite（缺的创建，多的移除）
	  ScriptLib.GoToFlowSuite(context, 133210224, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_224007(context, evt)
	if evt.param1 ~= 224007 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_224007(context, evt)
	-- 调用提示id为 32100150 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 32100150) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_224008(context, evt)
	if 224002 ~= evt.param2 or GadgetState.ChestOpened ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_224008(context, evt)
	-- 针对当前group内变量名为 "FindCount" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValueByGroup(context, "FindCount", 1, 133210482) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable_by_group")
	  return -1
	end
	
	return 0
end