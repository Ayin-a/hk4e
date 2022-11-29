-- 基础信息
local base_info = {
	group_id = 133223174
}

-- Trigger变量
local defs = {
	group_ID = 133223174,
	gadget_thunderThelfID = 174001,
	pointarray_ID = 322300024,
	maxPointCount = 15,
	pointInfo = {11,13,14,15} ,
	loopStartPointIndex = 2
}

-- DEFS_MISCS
function GetNextPath(context)
	local path = {}
	local index = ScriptLib.GetGroupVariableValue(context,"nextRouteIndex")
	local stoppoint = defs.pointInfo[index]
	ScriptLib.PrintLog("stop point : "..stoppoint)
	local currentNodeID = ScriptLib.GetGroupVariableValue(context,"currentPathNodeID")

	if currentNodeID == defs.maxPointCount then
		table.insert(path, stoppoint)
	else 
		for i= currentNodeID + 1,stoppoint do
		table.insert(path,i)
		end
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
	{ config_id = 1, name = "isMoving", value = 0, no_refresh = false },
	{ config_id = 2, name = "currentPathNodeID", value = 0, no_refresh = false },
	{ config_id = 3, name = "nextRouteIndex", value = 1, no_refresh = false },
	{ config_id = 4, name = "isstart", value = 0, no_refresh = false },
	{ config_id = 5, name = "loopCount", value = 0, no_refresh = true },
	{ config_id = 6, name = "markFinish", value = 0, no_refresh = true }
}

-- 废弃数据
garbages = {
	gadgets = {
		{ config_id = 174001, gadget_id = 70350292, pos = { x = -5792.090, y = 202.208, z = -2626.198 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 33, start_route = false, persistent = true, is_use_point_array = true, area_id = 18 }
	},
	triggers = {
		{ config_id = 1174002, name = "VARIABLE_CHANGE_174002", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_174002", action = "action_EVENT_VARIABLE_CHANGE_174002" },
		{ config_id = 1174003, name = "PLATFORM_REACH_POINT_174003", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_174003", action = "action_EVENT_PLATFORM_REACH_POINT_174003", trigger_count = 0 },
		{ config_id = 1174004, name = "AVATAR_NEAR_PLATFORM_174004", event = EventType.EVENT_AVATAR_NEAR_PLATFORM, source = "", condition = "condition_EVENT_AVATAR_NEAR_PLATFORM_174004", action = "action_EVENT_AVATAR_NEAR_PLATFORM_174004", trigger_count = 0 }
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
			{ config_id = 1, name = "isMoving", value = 0, no_refresh = false },
			{ config_id = 2, name = "currentPathNodeID", value = 0, no_refresh = false },
			{ config_id = 3, name = "nextRouteIndex", value = 1, no_refresh = false },
			{ config_id = 4, name = "isstart", value = 0, no_refresh = false },
			{ config_id = 5, name = "loopCount", value = 0, no_refresh = true },
			{ config_id = 6, name = "markFinish", value = 0, no_refresh = true }
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
			{ config_id = 1, name = "isMoving", value = 0, no_refresh = false },
			{ config_id = 2, name = "currentPathNodeID", value = 0, no_refresh = false },
			{ config_id = 3, name = "nextRouteIndex", value = 1, no_refresh = false },
			{ config_id = 4, name = "isstart", value = 0, no_refresh = false },
			{ config_id = 5, name = "loopCount", value = 0, no_refresh = true },
			{ config_id = 6, name = "markFinish", value = 0, no_refresh = true }
		}
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================