-- 基础信息
local base_info = {
	group_id = 133108096
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 96002, monster_id = 21010101, pos = { x = -105.805, y = 253.423, z = -40.043 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "丘丘人", area_id = 7 },
	{ config_id = 96003, monster_id = 21010101, pos = { x = -109.146, y = 252.968, z = -40.716 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "丘丘人", area_id = 7 },
	{ config_id = 96004, monster_id = 21010101, pos = { x = -116.315, y = 254.522, z = -25.111 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "丘丘人", area_id = 7 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 96007, gadget_id = 70360001, pos = { x = -109.447, y = 253.074, z = -37.985 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 7 }
}

-- 区域
regions = {
	{ config_id = 96001, shape = RegionShape.SPHERE, radius = 30, pos = { x = -107.768, y = 253.184, z = -38.501 }, area_id = 7 }
}

-- 触发器
triggers = {
	{ config_id = 1096001, name = "ENTER_REGION_96001", event = EventType.EVENT_ENTER_REGION, source = "", condition = "", action = "action_EVENT_ENTER_REGION_96001", trigger_count = 0 },
	{ config_id = 1096005, name = "ANY_MONSTER_DIE_96005", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "", action = "action_EVENT_ANY_MONSTER_DIE_96005", trigger_count = 0, tag = "96005" },
	{ config_id = 1096006, name = "CHALLENGE_SUCCESS_96006", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "11116801", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_96006" }
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
		monsters = { 96002, 96003, 96004 },
		gadgets = { 96007 },
		regions = { 96001 },
		triggers = { "ENTER_REGION_96001", "ANY_MONSTER_DIE_96005", "CHALLENGE_SUCCESS_96006" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发操作
function action_EVENT_ENTER_REGION_96001(context, evt)
	--[[
	起一个challenge，数量读variable 创建编号为0（该挑战的识别id),挑战内容为0的区域挑战，具体参数填写方式，见DungeonChallengeData表中的注释，所有填写的值都必须是int类型
	]]--
	if 0 ~= ScriptLib.StartChallenge(context, 11116801, 111168, {1, 96005, 3,1, ScriptLib.GetGroupVariableValue(context,"save")}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_challenge")
		return -1
	end
	
	-- 告知服务器，该显示黄圈了
	if 0 ~= ScriptLib.ActivateGroupLinkBundle(context, 133108096) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : ActivateGroupLinkBundle")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_96005(context, evt)
	-- 针对当前group内变量名为 "save" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "save", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_SUCCESS_96006(context, evt)
	-- 告知服务器挑战完成
	if 0 ~= ScriptLib.FinishGroupLinkBundle(context, 133108096) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : FinishGroupLinkBundle")
	  return -1
	end
	return 0
end