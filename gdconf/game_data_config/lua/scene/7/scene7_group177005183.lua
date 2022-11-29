-- 基础信息
local base_info = {
	group_id = 177005183
}

-- Trigger变量
local defs = {
	groupID = 155005270,
	gadget_teleport = 183001,
	pointarray_move = 700500042
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
	{ config_id = 183001, gadget_id = 70290275, pos = { x = 219.361, y = 315.359, z = 299.429 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, area_id = 210 },
	{ config_id = 183003, gadget_id = 70360286, pos = { x = 226.053, y = 313.817, z = 295.925 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, area_id = 210 }
}

-- 区域
regions = {
	{ config_id = 183002, shape = RegionShape.SPHERE, radius = 2, pos = { x = 219.361, y = 315.359, z = 299.429 }, area_id = 210 }
}

-- 触发器
triggers = {
	{ config_id = 1183002, name = "ENTER_REGION_183002", event = EventType.EVENT_ENTER_REGION, source = "1", condition = "condition_EVENT_ENTER_REGION_183002", action = "action_EVENT_ENTER_REGION_183002", trigger_count = 0, forbid_guest = false }
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
		gadgets = { 183003 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 183001 },
		regions = { 183002 },
		triggers = { "ENTER_REGION_183002" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_183002(context, evt)
	if evt.param1 ~= 183002 then return false end
	
	-- 判断角色数量不少于0
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_183002(context, evt)
	TeleportAction(context,defs.pointarray_move,{1,2,3})
	return 0
end