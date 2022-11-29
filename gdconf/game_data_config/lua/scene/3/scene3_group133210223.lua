-- 基础信息
local base_info = {
	group_id = 133210223
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
	{ config_id = 223001, gadget_id = 70360001, pos = { x = -3578.055, y = 182.888, z = -737.007 }, rot = { x = 0.000, y = 334.812, z = 0.000 }, level = 30, isOneoff = true, persistent = true, area_id = 17 },
	{ config_id = 223002, gadget_id = 70211101, pos = { x = -3578.123, y = 182.909, z = -736.819 }, rot = { x = 0.000, y = 239.712, z = 0.000 }, level = 26, drop_tag = "解谜低级稻妻", showcutscene = true, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 17 }
}

-- 区域
regions = {
	{ config_id = 223005, shape = RegionShape.SPHERE, radius = 8, pos = { x = -3576.332, y = 183.293, z = -735.876 }, area_id = 17 },
	{ config_id = 223007, shape = RegionShape.SPHERE, radius = 8, pos = { x = -3576.332, y = 183.293, z = -735.876 }, area_id = 17 }
}

-- 触发器
triggers = {
	{ config_id = 1223003, name = "GADGET_CREATE_223003", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_223003", action = "action_EVENT_GADGET_CREATE_223003", trigger_count = 0 },
	{ config_id = 1223004, name = "SELECT_OPTION_223004", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_223004", action = "action_EVENT_SELECT_OPTION_223004" },
	{ config_id = 1223005, name = "ENTER_REGION_223005", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_223005", action = "action_EVENT_ENTER_REGION_223005" },
	{ config_id = 1223006, name = "QUEST_START_223006", event = EventType.EVENT_QUEST_START, source = "7215202", condition = "", action = "action_EVENT_QUEST_START_223006", trigger_count = 0 },
	{ config_id = 1223007, name = "ENTER_REGION_223007", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_223007", action = "action_EVENT_ENTER_REGION_223007" },
	{ config_id = 1223008, name = "GADGET_STATE_CHANGE_223008", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_223008", action = "action_EVENT_GADGET_STATE_CHANGE_223008" }
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
		regions = { 223007 },
		triggers = { "QUEST_START_223006", "ENTER_REGION_223007" },
		npcs = { },
		variables = {
		}
	},
	[2] = {
		gadgets = {
			{ config_id = 223001, state = 0 }
		},
		monsters = {
		},
		regions = { 223005 },
		triggers = { "GADGET_CREATE_223003", "SELECT_OPTION_223004", "ENTER_REGION_223005" },
		npcs = { },
		variables = {
		}
	},
	[3] = {
		gadgets = {
			{ config_id = 223002, state = 0 }
		},
		monsters = {
		},
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_223008" },
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
function condition_EVENT_GADGET_CREATE_223003(context, evt)
	-- 判断是gadgetid 223001
	if 223001 ~= evt.param1 then
			return false
		end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_223003(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptions(context, {169}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_work_options")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_223004(context, evt)
	if 223001 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_223004(context, evt)
	-- 删除指定group： 133210223 ；指定config：223001；物件身上指定option：169；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 133210223, 223001, 169) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 2011, 3, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
		-- 将指定flowGroup的进度和要素属性都改为目标suite（缺的创建，多的移除）
	  ScriptLib.GoToFlowSuite(context, 133210223, 3)
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_223005(context, evt)
	if evt.param1 ~= 223005 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_223005(context, evt)
	-- 调用提示id为 32100146 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 32100146) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_QUEST_START_223006(context, evt)
		-- 将指定flowGroup的进度和要素属性都改为目标suite（缺的创建，多的移除）
	  ScriptLib.GoToFlowSuite(context, 133210223, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_223007(context, evt)
	if evt.param1 ~= 223007 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_223007(context, evt)
	-- 调用提示id为 32100150 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 32100150) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_223008(context, evt)
	if 223002 ~= evt.param2 or GadgetState.ChestOpened ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_223008(context, evt)
	-- 针对当前group内变量名为 "FindCount" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValueByGroup(context, "FindCount", 1, 133210482) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable_by_group")
	  return -1
	end
	
	return 0
end