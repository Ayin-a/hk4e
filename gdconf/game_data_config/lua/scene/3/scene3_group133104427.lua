-- 基础信息
local base_info = {
	group_id = 133104427
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 427001, monster_id = 20010101, pos = { x = 897.082, y = 209.115, z = 638.991 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 19, drop_tag = "史莱姆", pose_id = 201, area_id = 6 },
	{ config_id = 427002, monster_id = 20010101, pos = { x = 902.569, y = 208.711, z = 636.303 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 19, drop_tag = "史莱姆", pose_id = 201, area_id = 6 },
	{ config_id = 427003, monster_id = 20010101, pos = { x = 906.526, y = 209.039, z = 639.880 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 19, drop_tag = "史莱姆", pose_id = 201, area_id = 6 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 427004, gadget_id = 70211001, pos = { x = 903.055, y = 209.493, z = 645.151 }, rot = { x = 3.343, y = 186.733, z = 2.193 }, level = 16, drop_tag = "战斗低级璃月", showcutscene = true, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 6 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1427005, name = "ANY_MONSTER_DIE_427005", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_427005", action = "action_EVENT_ANY_MONSTER_DIE_427005" }
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
		monsters = { 427001, 427002, 427003 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_427005" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_427005(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_427005(context, evt)
	-- 创建id为427004的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 427004 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end