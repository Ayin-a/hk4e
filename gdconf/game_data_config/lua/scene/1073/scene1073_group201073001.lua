-- 基础信息
local base_info = {
	group_id = 201073001
}

-- DEFS_MISCS
local questLockInfo=
{
    [1]={------默认全关
        [2]={uplock=true,downlock=true }
    },
    [2]={---单独开启一楼
        [1]={uplock=false,downlock=true },
        [2]={uplock=true,downlock=false }
    },
    [3]={---单独开启三楼
        [2]={uplock=false,downlock=true },
        [3]={uplock=true,downlock=false }
    },
    [4]={---一楼三楼全开
        [1]={uplock=false,downlock=true },
        [2]={uplock=false,downlock=false },
        [3]={uplock=true,downlock=false }
    },
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
	{ config_id = 1001, gadget_id = 70350455, pos = { x = 0.002, y = 5.998, z = -0.012 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, start_route = false, room = 1, is_use_point_array = true },
	{ config_id = 1002, gadget_id = 70360001, pos = { x = 0.008, y = -34.538, z = -0.079 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, room = 1 },
	{ config_id = 1003, gadget_id = 70360001, pos = { x = 0.008, y = 5.902, z = -0.079 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, room = 1 },
	{ config_id = 1004, gadget_id = 70360001, pos = { x = 0.008, y = 105.506, z = -0.079 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, room = 1 },
	{ config_id = 1005, gadget_id = 70950145, pos = { x = 0.005, y = -34.538, z = 0.001 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, room = 1 },
	{ config_id = 1006, gadget_id = 70950145, pos = { x = 0.027, y = 5.902, z = -0.016 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, room = 1 },
	{ config_id = 1007, gadget_id = 70950145, pos = { x = 0.027, y = 105.506, z = -0.016 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, room = 1 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1001008, name = "QUEST_FINISH_1008", event = EventType.EVENT_QUEST_FINISH, source = "302812", condition = "", action = "action_EVENT_QUEST_FINISH_1008", trigger_count = 0 }
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
		-- description = 默认不能上下,
		monsters = { },
		gadgets = { 1001, 1002, 1003, 1004, 1005, 1006, 1007 },
		regions = { },
		triggers = { "QUEST_FINISH_1008" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发操作
function action_EVENT_QUEST_FINISH_1008(context, evt)
	-- 将本组内变量名为 "questUnlockProgress" 的变量设置为 4
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "questUnlockProgress", 4) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

require "V3_0/LibraryElevator"