-- 基础信息
local base_info = {
	group_id = 133104401
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 401001, monster_id = 20010101, pos = { x = 743.454, y = 208.285, z = 636.343 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 19, drop_tag = "史莱姆", pose_id = 201, area_id = 6 },
	{ config_id = 401006, monster_id = 20010201, pos = { x = 741.487, y = 207.592, z = 633.309 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 19, drop_tag = "大史莱姆", pose_id = 201, area_id = 6 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 401005, gadget_id = 70211011, pos = { x = 743.319, y = 207.881, z = 633.858 }, rot = { x = 356.372, y = 116.377, z = 351.289 }, level = 16, drop_tag = "战斗中级璃月", showcutscene = true, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 6 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1401004, name = "ANY_MONSTER_DIE_401004", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_401004", action = "action_EVENT_ANY_MONSTER_DIE_401004", trigger_count = 0 }
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
		monsters = { 401001, 401006 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_401004" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_401004(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_401004(context, evt)
	-- 创建id为401005的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 401005 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end