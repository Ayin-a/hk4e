-- 基础信息
local base_info = {
	group_id = 133212512
}

-- Trigger变量
local defs = {
	group_ID = 133212512,
	gadget_thunderThelfID = 512001,
	pointarray_ID = 321200020,
	maxPointCount = 9,
	gadget_Reward_1 = 512002,
	pointInfo = {2,3,5,7,9} 
}

-- DEFS_MISCS
function GetNextPath(context)
	local path = {}
	local index = ScriptLib.GetGroupVariableValue(context,"nextRouteIndex")
	local stoppoint = defs.pointInfo[index]
	ScriptLib.PrintLog("stop point : "..stoppoint)
	local currentNodeIndex = ScriptLib.GetGroupVariableValue(context,"currentPathNodeIndex")
	for i=currentNodeIndex + 1,stoppoint do
		table.insert(path,i)
	end
	return path
end


function MovePlatform(context)
	ScriptLib.PrintLog("platform to move")
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "isMoving", 1) then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
		return -1
	end


	ScriptLib.SetPlatformPointArray(context, defs.gadget_thunderThelfID, defs.pointarray_ID, GetNextPath(context), { route_type = 0 })
	ScriptLib.PrintLog("platform to move : start platform")
	return 0
end

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
}

-- 区域
regions = {
}

-- 触发器
triggers = {
}

-- 变量
variables = {
	{ config_id = 1, name = "isFinished", value = 0, no_refresh = true },
	{ config_id = 2, name = "isMoving", value = 0, no_refresh = false },
	{ config_id = 3, name = "currentRouteIndex", value = 0, no_refresh = false },
	{ config_id = 4, name = "nextRouteIndex", value = 1, no_refresh = false },
	{ config_id = 5, name = "isstart", value = 0, no_refresh = false },
	{ config_id = 6, name = "currentPathNodeIndex", value = 0, no_refresh = false }
}

-- 废弃数据
garbages = {
	gadgets = {
		{ config_id = 512001, gadget_id = 70350292, pos = { x = -3885.874, y = 206.999, z = -2554.841 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, isOneoff = true, start_route = false, persistent = true, is_use_point_array = true, area_id = 13 },
		{ config_id = 512002, gadget_id = 70211101, pos = { x = -3961.725, y = 230.461, z = -2497.295 }, rot = { x = 359.729, y = 213.688, z = 9.030 }, level = 26, drop_tag = "解谜低级稻妻", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 13 },
		{ config_id = 512003, gadget_id = 70350292, pos = { x = -3965.060, y = 231.616, z = -2498.829 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, start_route = false, persistent = true, is_use_point_array = true, area_id = 13 },
		{ config_id = 512004, gadget_id = 70900380, pos = { x = -3897.320, y = 215.308, z = -2559.158 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 13 },
		{ config_id = 512005, gadget_id = 70900380, pos = { x = -3923.281, y = 223.238, z = -2559.158 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 13 },
		{ config_id = 512006, gadget_id = 70900380, pos = { x = -3955.271, y = 228.149, z = -2547.895 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 13 },
		{ config_id = 512007, gadget_id = 70900380, pos = { x = -3979.554, y = 235.894, z = -2537.520 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 13 }
	},
	triggers = {
		{ config_id = 1512008, name = "PLATFORM_REACH_POINT_512008", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "", action = "", trigger_count = 0 },
		{ config_id = 1512009, name = "AVATAR_NEAR_PLATFORM_512009", event = EventType.EVENT_AVATAR_NEAR_PLATFORM, source = "", condition = "", action = "", trigger_count = 0 }
	}
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
		},
		monsters = {
		},
		regions = { },
		triggers = { },
		npcs = { },
		variables = {
			{ config_id = 1, name = "isFinished", value = 0, no_refresh = true },
			{ config_id = 2, name = "isMoving", value = 0, no_refresh = false },
			{ config_id = 3, name = "currentRouteIndex", value = 0, no_refresh = false },
			{ config_id = 4, name = "nextRouteIndex", value = 1, no_refresh = false },
			{ config_id = 5, name = "isstart", value = 0, no_refresh = false },
			{ config_id = 6, name = "currentPathNodeIndex", value = 0, no_refresh = false }
		}
	},
	[2] = {
		gadgets = {
		},
		monsters = {
		},
		regions = { },
		triggers = { },
		npcs = { },
		variables = {
			{ config_id = 1, name = "isFinished", value = 1, no_refresh = true },
			{ config_id = 2, name = "isMoving", value = 0, no_refresh = false },
			{ config_id = 3, name = "currentRouteIndex", value = 0, no_refresh = false },
			{ config_id = 4, name = "nextRouteIndex", value = 1, no_refresh = false },
			{ config_id = 5, name = "isstart", value = 0, no_refresh = false },
			{ config_id = 6, name = "currentPathNodeIndex", value = 0, no_refresh = false }
		}
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================