-- 基础信息
local base_info = {
	group_id = 111101030
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
	{ config_id = 30001, gadget_id = 70220039, pos = { x = 2659.053, y = 269.025, z = -1564.406 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 30004, gadget_id = 70220008, pos = { x = 2657.737, y = 268.991, z = -1563.790 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 }
}

-- 区域
regions = {
	{ config_id = 30002, shape = RegionShape.SPHERE, radius = 5, pos = { x = 2659.023, y = 269.164, z = -1564.306 } }
}

-- 触发器
triggers = {
	{ config_id = 1030002, name = "ENTER_REGION_30002", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_30002", action = "action_EVENT_ENTER_REGION_30002" },
	{ config_id = 1030003, name = "CHALLENGE_FAIL_30003", event = EventType.EVENT_CHALLENGE_FAIL, source = "710", condition = "", action = "action_EVENT_CHALLENGE_FAIL_30003", trigger_count = 0 }
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
		gadgets = { 30001, 30004 },
		regions = { 30002 },
		triggers = { "ENTER_REGION_30002", "CHALLENGE_FAIL_30003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_30002(context, evt)
	if evt.param1 ~= 30002 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_30002(context, evt)
	-- 创建编号为710（该挑战的识别id),挑战内容为232的区域挑战，具体参数填写方式，见DungeonChallengeData表中的注释，所有填写的值都必须是int类型
	if 0 ~= ScriptLib.ActiveChallenge(context, 710, 232, 111101073, 1, 0, 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_challenge")
		return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_FAIL_30003(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 111101030, suite = 1 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end