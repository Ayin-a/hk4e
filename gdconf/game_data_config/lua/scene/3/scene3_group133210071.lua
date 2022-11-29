-- 基础信息
local base_info = {
	group_id = 133210071
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
	{ config_id = 71002, npc_id = 20336, pos = { x = -4035.902, y = 202.322, z = -682.875 }, rot = { x = 0.000, y = 234.467, z = 0.000 }, area_id = 17 }
}

-- 装置
gadgets = {
	{ config_id = 71001, gadget_id = 70360040, pos = { x = -4035.902, y = 202.322, z = -682.875 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 17 },
	{ config_id = 71007, gadget_id = 70360001, pos = { x = -4037.473, y = 201.189, z = -684.066 }, rot = { x = 0.000, y = 175.400, z = 0.000 }, level = 30, isOneoff = true, persistent = true, area_id = 17 },
	{ config_id = 71008, gadget_id = 70211121, pos = { x = -4037.096, y = 201.238, z = -683.883 }, rot = { x = 4.810, y = 235.358, z = 351.326 }, level = 26, drop_tag = "解谜高级稻妻", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 17 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1071003, name = "QUEST_START_71003", event = EventType.EVENT_QUEST_START, source = "7215203", condition = "", action = "action_EVENT_QUEST_START_71003", trigger_count = 0 },
	{ config_id = 1071005, name = "GADGET_CREATE_71005", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_71005", action = "action_EVENT_GADGET_CREATE_71005", trigger_count = 0 },
	{ config_id = 1071006, name = "SELECT_OPTION_71006", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_71006", action = "action_EVENT_SELECT_OPTION_71006" },
	{ config_id = 1071009, name = "GADGET_STATE_CHANGE_71009", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_71009", action = "action_EVENT_GADGET_STATE_CHANGE_71009" }
}

-- 变量
variables = {
	{ config_id = 1, name = "QuestState", value = 0, no_refresh = true }
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
	end_suite = 0,
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
			{ config_id = 71001, state = 0 }
		},
		monsters = {
		},
		regions = { },
		triggers = { "QUEST_START_71003" },
		npcs = { 71002 },
		variables = {
			{ config_id = 1, name = "QuestState", value = 0, no_refresh = true }
		}
	},
	[2] = {
		gadgets = {
			{ config_id = 71001, state = 0 },
			{ config_id = 71007, state = 0 }
		},
		monsters = {
		},
		regions = { },
		triggers = { "GADGET_CREATE_71005", "SELECT_OPTION_71006" },
		npcs = { 71002 },
		variables = {
			{ config_id = 1, name = "QuestState", value = 1, no_refresh = true }
		}
	},
	[3] = {
		gadgets = {
			{ config_id = 71008, state = 0 }
		},
		monsters = {
		},
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_71009" },
		npcs = { },
		variables = {
			{ config_id = 1, name = "QuestState", value = 2, no_refresh = true }
		}
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发操作
function action_EVENT_QUEST_START_71003(context, evt)
		-- 将指定flowGroup的进度和要素属性都改为目标suite（缺的创建，多的移除）
	  ScriptLib.GoToFlowSuite(context, 133210071, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_71005(context, evt)
	-- 判断是gadgetid 71007
	if 71007 ~= evt.param1 then
			return false
		end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_71005(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptions(context, {169}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_work_options")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_71006(context, evt)
	if 71007 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_71006(context, evt)
	-- 删除指定group： 133210071 ；指定config：71007；物件身上指定option：169；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 133210071, 71007, 169) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 2011, 3, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
		-- 将指定flowGroup的进度和要素属性都改为目标suite（缺的创建，多的移除）
	  ScriptLib.GoToFlowSuite(context, 133210071, 3)
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_71009(context, evt)
	if 71008 ~= evt.param2 or GadgetState.ChestOpened ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_71009(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "7215203") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end