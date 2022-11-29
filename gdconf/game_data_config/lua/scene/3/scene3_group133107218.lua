-- 基础信息
local base_info = {
	group_id = 133107218
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 218009, monster_id = 28030401, pos = { x = -791.875, y = 211.057, z = 734.737 }, rot = { x = 0.000, y = 337.341, z = 0.000 }, level = 32, drop_tag = "鸟类", disableWander = true, pose_id = 2, area_id = 8 },
	{ config_id = 218010, monster_id = 28030401, pos = { x = -791.967, y = 211.445, z = 735.045 }, rot = { x = 0.000, y = 201.311, z = 0.000 }, level = 32, drop_tag = "鸟类", disableWander = true, pose_id = 2, area_id = 8 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 218001, gadget_id = 70290003, pos = { x = -782.154, y = 207.854, z = 739.381 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 8 },
	{ config_id = 218002, gadget_id = 70500000, pos = { x = -782.154, y = 207.957, z = 739.290 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, point_type = 3003, owner = 218001, area_id = 8 },
	{ config_id = 218004, gadget_id = 70500000, pos = { x = -782.154, y = 207.957, z = 739.482 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, point_type = 3003, owner = 218001, area_id = 8 },
	{ config_id = 218008, gadget_id = 70290003, pos = { x = -792.448, y = 211.356, z = 735.194 }, rot = { x = 355.347, y = 22.023, z = 6.386 }, level = 32, area_id = 8 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1218007, name = "QUEST_FINISH_218007", event = EventType.EVENT_QUEST_FINISH, source = "7183101", condition = "", action = "action_EVENT_QUEST_FINISH_218007" }
}

-- 变量
variables = {
}

-- 废弃数据
garbages = {
	gadgets = {
		{ config_id = 218003, gadget_id = 70290003, pos = { x = -787.066, y = 211.044, z = 738.085 }, rot = { x = 14.961, y = 31.489, z = 10.155 }, level = 32, area_id = 8 },
		{ config_id = 218005, gadget_id = 70500000, pos = { x = -787.066, y = 211.146, z = 737.994 }, rot = { x = 14.959, y = 31.489, z = 10.154 }, level = 32, point_type = 3003, owner = 218003, area_id = 8 },
		{ config_id = 218006, gadget_id = 70500000, pos = { x = -787.066, y = 211.146, z = 738.186 }, rot = { x = 14.959, y = 31.489, z = 10.154 }, level = 32, point_type = 3003, owner = 218003, area_id = 8 }
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
		gadgets = { 218001, 218002, 218004 },
		regions = { },
		triggers = { "QUEST_FINISH_218007" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 218009, 218010 },
		gadgets = { 218008 },
		regions = { },
		triggers = { },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发操作
function action_EVENT_QUEST_FINISH_218007(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133107218, suite = 2 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end