-- 基础信息
local base_info = {
	group_id = 155005366
}

-- Trigger变量
local defs = {
	groupID = 155005366,
	gadget_teleport = 366001,
	pointarray_move = 500500020
}

-- DEFS_MISCS
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
	{ config_id = 366001, gadget_id = 70290275, pos = { x = 272.992, y = 338.027, z = 246.662 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, area_id = 200 }
}

-- 区域
regions = {
	{ config_id = 366002, shape = RegionShape.SPHERE, radius = 2, pos = { x = 272.992, y = 338.027, z = 246.662 }, area_id = 200 }
}

-- 触发器
triggers = {
	{ config_id = 1366002, name = "ENTER_REGION_366002", event = EventType.EVENT_ENTER_REGION, source = "1", condition = "condition_EVENT_ENTER_REGION_366002", action = "action_EVENT_ENTER_REGION_366002", trigger_count = 0, forbid_guest = false },
	{ config_id = 1366003, name = "QUEST_START_366003", event = EventType.EVENT_QUEST_START, source = "7224113", condition = "", action = "action_EVENT_QUEST_START_366003", trigger_count = 0 }
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
		gadgets = { },
		regions = { },
		triggers = { "QUEST_START_366003" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 366001 },
		regions = { 366002 },
		triggers = { "ENTER_REGION_366002" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_366002(context, evt)
	if evt.param1 ~= 366002 then return false end
	
	-- 判断角色数量不少于0
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_366002(context, evt)
	TeleportAction(context,defs.pointarray_move,{1,2,3,4,5})
	return 0
end

-- 触发操作
function action_EVENT_QUEST_START_366003(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 155005366, suite = 2 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end