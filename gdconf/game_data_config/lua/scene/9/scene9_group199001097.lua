-- 基础信息
local base_info = {
	group_id = 199001097
}

-- DEFS_MISCS
local	defs = {

		--左右旋转的SelectOptionID
		selectID_horizon = 54,

		--上下俯仰的SelectOptionID
		selectID_vertical = 55,

		--定义左右旋转的步长,key为传音花configID，value为旋转角对应的GadgetState
--GadgetState不可重复
		horizon_steps = {
			[97001] = {0, 102, 103, 104},
			[97003] = {0, 102, 103, 104},
[97004] = {0, 102, 103, 104},
[97006] = {0, 102, 103, 104},
		},

		--定义上下俯仰的步长,key为传音花configID，value为旋转角对应的GadgetState
--GadgetState不可重复
		vertical_steps = {
	[97002] = {303,0, 308},
			[97007] = {303,0, 308},
			[97009] = {303,0, 308},
			
		}
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
	-- 小花-水平转动
	[97001] = { config_id = 97001, gadget_id = 70310167, pos = { x = 1000.256, y = 119.968, z = 897.354 }, rot = { x = 353.755, y = 68.204, z = 0.000 }, level = 20, state = GadgetState.ChestOpened, worktop_config = { init_options = { 54 } }, area_id = 402 },
	-- 小花-固定
	[97002] = { config_id = 97002, gadget_id = 70310167, pos = { x = 1007.351, y = 130.163, z = 897.221 }, rot = { x = 320.964, y = 116.647, z = 35.791 }, level = 20, area_id = 402 },
	-- 水平
	[97003] = { config_id = 97003, gadget_id = 70310167, pos = { x = 1010.582, y = 120.143, z = 886.252 }, rot = { x = 9.457, y = 0.000, z = 0.000 }, level = 20, state = GadgetState.ChestTrap, worktop_config = { init_options = { 54 } }, area_id = 402 },
	-- 水平
	[97004] = { config_id = 97004, gadget_id = 70310167, pos = { x = 1011.754, y = 133.874, z = 895.342 }, rot = { x = 2.133, y = 138.308, z = 357.907 }, level = 20, area_id = 402 },
	[97005] = { config_id = 97005, gadget_id = 70310171, pos = { x = 997.787, y = 120.000, z = 893.768 }, rot = { x = 0.000, y = 312.820, z = 0.000 }, level = 20, persistent = true, interact_id = 64, area_id = 402 },
	-- 水平转动
	[97006] = { config_id = 97006, gadget_id = 70310167, pos = { x = 1016.546, y = 130.686, z = 891.043 }, rot = { x = 60.807, y = 225.347, z = 344.525 }, level = 20, state = GadgetState.ChestTrap, worktop_config = { init_options = { 54 } }, area_id = 402 },
	-- 仰角转动0,35,75
	[97007] = { config_id = 97007, gadget_id = 70310167, pos = { x = 1018.709, y = 133.691, z = 886.083 }, rot = { x = 40.880, y = 333.576, z = 1.481 }, level = 20, worktop_config = { init_options = { 55 } }, area_id = 402 },
	-- 仰角转动0,45
	[97009] = { config_id = 97009, gadget_id = 70310167, pos = { x = 1004.390, y = 119.833, z = 900.019 }, rot = { x = 0.000, y = 114.049, z = 0.000 }, level = 20, worktop_config = { init_options = { 55 } }, area_id = 402 },
	[97010] = { config_id = 97010, gadget_id = 70211164, pos = { x = 1010.602, y = 120.078, z = 889.482 }, rot = { x = 0.000, y = 291.163, z = 0.000 }, level = 16, chest_drop_id = 1050186, drop_count = 1, state = GadgetState.ChestLocked, isOneoff = true, persistent = true, autopick = true, explore = { name = "chest", exp = 1 }, area_id = 402 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1097008, name = "QUEST_FINISH_97008", event = EventType.EVENT_QUEST_FINISH, source = "7902802", condition = "", action = "action_EVENT_QUEST_FINISH_97008" }
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
		gadgets = { 97001, 97002, 97003, 97004, 97005, 97006, 97007, 97009, 97010 },
		regions = { },
		triggers = { "QUEST_FINISH_97008" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发操作
function action_EVENT_QUEST_FINISH_97008(context, evt)
	-- 调用提示id为 1111236 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 1111236) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

require "V2_8/TransferFlower"