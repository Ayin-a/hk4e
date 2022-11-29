-- 基础信息
local base_info = {
	group_id = 133302266
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
	{ config_id = 266001, gadget_id = 70210105, pos = { x = -372.141, y = 308.100, z = 2892.115 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, chest_drop_id = 1050220, drop_count = 1, isOneoff = true, persistent = true, explore = { name = "chest", exp = 4 }, area_id = 24 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1266002, name = "GADGET_STATE_CHANGE_266002", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "266001", condition = "condition_EVENT_GADGET_STATE_CHANGE_266002", action = "action_EVENT_GADGET_STATE_CHANGE_266002", trigger_count = 0 }
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
	secure_suite_index = 1,
	suite = 1,
	end_suite = 2,
	rand_suite = false,
	father_quest = 73502,
	quest_config = {
		[7350205] = {
			{
				state = 3,
				suite = 2
			}
		}
	}
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
		regions = { },
		triggers = { },
		npcs = { },
		variables = {
		}
	},
	[2] = {
		gadgets = {
			{ config_id = 266001, state = 0 }
		},
		monsters = {
		},
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_266002" },
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
function condition_EVENT_GADGET_STATE_CHANGE_266002(context, evt)
	if 266001 ~= evt.param2 or GadgetState.ChestOpened ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_266002(context, evt)
	-- 调用提示id为 400178 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 400178) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end