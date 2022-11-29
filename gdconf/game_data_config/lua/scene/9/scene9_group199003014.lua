-- 基础信息
local base_info = {
	group_id = 199003014
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
	{ config_id = 14002, npc_id = 20627, pos = { x = -741.081, y = 307.609, z = -26.751 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, area_id = 403 },
	{ config_id = 14005, npc_id = 20855, pos = { x = -741.081, y = 307.609, z = -26.751 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, area_id = 403 }
}

-- 装置
gadgets = {
	{ config_id = 14001, gadget_id = 70230100, pos = { x = -741.220, y = 307.919, z = -26.282 }, rot = { x = 0.000, y = 89.706, z = 0.000 }, level = 1, state = GadgetState.GearStart, persistent = true, area_id = 403 },
	{ config_id = 14004, gadget_id = 70710103, pos = { x = -739.048, y = 305.723, z = -26.238 }, rot = { x = 0.000, y = 92.631, z = 0.000 }, level = 20, persistent = true, area_id = 403 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1014003, name = "QUEST_START_14003", event = EventType.EVENT_QUEST_START, source = "7901331", condition = "", action = "action_EVENT_QUEST_START_14003", trigger_count = 0 }
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
	end_suite = 0,
	rand_suite = false,
	father_quest = 79013,
	quest_config = {
		[7901319] = {
			{
				state = 2,
				suite = 1
			},
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
		triggers = { "QUEST_START_14003" },
		npcs = { 14002, 14005 },
		variables = {
		}
	},
	[2] = {
		gadgets = {
			{ config_id = 14001, state = 201 },
			{ config_id = 14004, state = 0 }
		},
		monsters = {
		},
		regions = { },
		triggers = { "QUEST_START_14003" },
		npcs = { 14002, 14005 },
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
function action_EVENT_QUEST_START_14003(context, evt)
	-- 创建id为14004的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 14004 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 创建id为14001的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 14001 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end