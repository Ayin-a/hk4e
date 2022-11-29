-- 基础信息
local base_info = {
	group_id = 155003019
}

-- Trigger变量
local defs = {
	group_ID = 155003019,
	managerGroup = 155003001,
	pointarray_move = 500300005
}

-- DEFS_MISCS
local defs = {
	group_ID = 155003019,
	managerGroup = 155003001,
	pointarray_move = 500300005
}

-- DEFS_MISCS
local gameplayStateFuncitons = 
{
	["0"] = function(context)
		
		
	end,
	["1"] = function(context)

	
		ScriptLib.AddExtraGroupSuite(context,defs.group_ID, 2)
		ScriptLib.PrintContextLog(context, " add suit 2")

	
	end,
	["2"] = function(context)
		
		
		ScriptLib.AddExtraGroupSuite(context, defs.group_ID, 2)

	
	end
}


function UpdateGamePlayState(context)
	local state = ScriptLib.GetGroupVariableValue(context, "gameplayState") 
	ScriptLib.PrintContextLog(context, "update gameplay state")
	gameplayStateFuncitons[tostring(state)](context)

end

function TeleportAction(context,pointarray_id,routelist)
	
	--context, uid, pointarrayid, pointindex, speed, SFX
	ScriptLib.MoveAvatarByPointArray(context, context.uid, pointarray_id, routelist, {speed=10}, "{\"MarkType\":2,\"IgnoreCollisionWhenEnter\":true}") 
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
	{ config_id = 19003, gadget_id = 70290275, pos = { x = 1148.348, y = 204.984, z = -682.845 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, area_id = 200 }
}

-- 区域
regions = {
	{ config_id = 19004, shape = RegionShape.SPHERE, radius = 2, pos = { x = 1148.348, y = 204.984, z = -682.845 }, area_id = 200 }
}

-- 触发器
triggers = {
	{ config_id = 1019001, name = "GROUP_LOAD_19001", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_19001", trigger_count = 0 },
	{ config_id = 1019002, name = "VARIABLE_CHANGE_19002", event = EventType.EVENT_VARIABLE_CHANGE, source = "gameplayState", condition = "condition_EVENT_VARIABLE_CHANGE_19002", action = "action_EVENT_VARIABLE_CHANGE_19002", trigger_count = 0 },
	{ config_id = 1019004, name = "ENTER_REGION_19004", event = EventType.EVENT_ENTER_REGION, source = "1", condition = "condition_EVENT_ENTER_REGION_19004", action = "action_EVENT_ENTER_REGION_19004", trigger_count = 0, forbid_guest = false }
}

-- 变量
variables = {
	{ config_id = 1, name = "gameplayState", value = 0, no_refresh = true }
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
		gadgets = { },
		regions = { },
		triggers = { "GROUP_LOAD_19001", "VARIABLE_CHANGE_19002" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 19003 },
		regions = { 19004 },
		triggers = { "ENTER_REGION_19004" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发操作
function action_EVENT_GROUP_LOAD_19001(context, evt)
			local isactive = ScriptLib.GetGroupVariableValueByGroup(context, "IslandActive", defs.managerGroup)
			
			if isactive == 1 then 
				if ScriptLib.GetGroupVariableValue(context,"gameplayState") == 0 then 
					ScriptLib.SetGroupVariableValue(context,"gameplayState", 1)
				end
				
			end
		UpdateGamePlayState(context)
			return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_19002(context, evt)
	if evt.param1 == evt.param2 then return false end
	
		-- 判断变量"gameplayState"为0
		if ScriptLib.GetGroupVariableValue(context, "gameplayState") == 0 then
				return false
		end
		
		return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_19002(context, evt)
	UpdateGamePlayState(context)
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_19004(context, evt)
	if evt.param1 ~= 19004 then return false end
	
	-- 判断角色数量不少于0
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_19004(context, evt)
	TeleportAction(context,defs.pointarray_move,{1,2,3})
	return 0
end