-- 基础信息
local base_info = {
	group_id = 133108131
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 131001, monster_id = 21010101, pos = { x = -105.426, y = 259.842, z = -203.706 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "丘丘人", area_id = 7 },
	{ config_id = 131002, monster_id = 21010101, pos = { x = -108.768, y = 259.387, z = -204.379 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "丘丘人", area_id = 7 },
	{ config_id = 131003, monster_id = 21010101, pos = { x = -115.936, y = 260.941, z = -188.773 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "丘丘人", area_id = 7 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
}

-- 区域
regions = {
	{ config_id = 131004, shape = RegionShape.SPHERE, radius = 30, pos = { x = -107.389, y = 259.603, z = -202.164 }, area_id = 7 }
}

-- 触发器
triggers = {
	{ config_id = 1131004, name = "ENTER_REGION_131004", event = EventType.EVENT_ENTER_REGION, source = "", condition = "", action = "action_EVENT_ENTER_REGION_131004", trigger_count = 0 },
	{ config_id = 1131005, name = "ANY_MONSTER_DIE_131005", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "", action = "action_EVENT_ANY_MONSTER_DIE_131005", trigger_count = 0, tag = "131005" },
	{ config_id = 1131006, name = "CHALLENGE_SUCCESS_131006", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "11116801", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_131006" }
}

-- 变量
variables = {
	{ config_id = 1, name = "save", value = 0, no_refresh = true }
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
		monsters = { 131001, 131002, 131003 },
		gadgets = { },
		regions = { 131004 },
		triggers = { "ENTER_REGION_131004", "ANY_MONSTER_DIE_131005", "CHALLENGE_SUCCESS_131006" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发操作
function action_EVENT_ENTER_REGION_131004(context, evt)
	--[[
	起一个challenge，数量读variable 创建编号为0（该挑战的识别id),挑战内容为0的区域挑战，具体参数填写方式，见DungeonChallengeData表中的注释，所有填写的值都必须是int类型
	]]--
	if 0 ~= ScriptLib.ActiveChallenge(context, 11116801, 111168, 1, 131005, 3, ScriptLib.GetGroupVariableValue(context,"save")) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_challenge")
		return -1
	end
	
	-- 告知服务器，该显示黄圈了
	if 0 ~= ScriptLib.ActivateGroupLinkBundle(context, 133108131) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : ActivateGroupLinkBundle")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_131005(context, evt)
	-- 针对当前group内变量名为 "save" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "save", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_SUCCESS_131006(context, evt)
	-- 告知服务器挑战完成
	if 0 ~= ScriptLib.FinishGroupLinkBundle(context, 133108131) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : FinishGroupLinkBundle")
	  return -1
	end
	return 0
end