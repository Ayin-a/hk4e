-- 基础信息
local base_info = {
	group_id = 199003040
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
	{ config_id = 40004, npc_id = 20637, pos = { x = -737.043, y = 99.741, z = 430.703 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, area_id = 403 }
}

-- 装置
gadgets = {
	{ config_id = 40001, gadget_id = 70710136, pos = { x = -737.043, y = 99.757, z = 430.688 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, area_id = 403, is_enable_interact = false }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	-- 判断7901315完成
	{ config_id = 1040002, name = "GROUP_LOAD_40002", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_40002", trigger_count = 0 },
	{ config_id = 1040006, name = "QUEST_START_40006", event = EventType.EVENT_QUEST_START, source = "7901317", condition = "", action = "action_EVENT_QUEST_START_40006", trigger_count = 0 }
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
	rand_suite = false,
	father_quest = 79013,
	quest_config = {
		[7901301] = {
			{
				state = 2,
				suite = 1
			}
		},
		[7901316] = {
			{
				state = 2,
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
		triggers = { "GROUP_LOAD_40002", "QUEST_START_40006" },
		npcs = { 40004 },
		variables = {
		}
	},
	[2] = {
		gadgets = {
			{ config_id = 40001, state = 0 }
		},
		monsters = {
		},
		regions = { },
		triggers = { },
		npcs = { 40004 },
		variables = {
		}
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发操作
function action_EVENT_GROUP_LOAD_40002(context, evt)
	    if ScriptLib.GetHostQuestState(context,7901315)==3 then
	        ScriptLib.GoToFlowSuite(context, 199003040, 2)
	       end
	      
	      return 0
end

-- 触发操作
function action_EVENT_QUEST_START_40006(context, evt)
		-- 将指定flowGroup的进度和要素属性都改为目标suite（缺的创建，多的移除）
	  ScriptLib.GoToFlowSuite(context, 199003040, 2)
	
	return 0
end