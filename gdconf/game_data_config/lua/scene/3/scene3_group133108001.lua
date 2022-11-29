-- 基础信息
local base_info = {
	group_id = 133108001
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 4, monster_id = 23020101, pos = { x = -158.747, y = 202.372, z = -461.342 }, rot = { x = 354.979, y = 162.462, z = 355.979 }, level = 30, drop_tag = "债务处理人", area_id = 7 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 1002, gadget_id = 70211011, pos = { x = -159.773, y = 201.002, z = -504.167 }, rot = { x = 356.652, y = 37.963, z = 1.830 }, level = 26, drop_tag = "战斗中级璃月", showcutscene = true, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 7 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1001001, name = "ANY_MONSTER_DIE_1001", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_1001", action = "action_EVENT_ANY_MONSTER_DIE_1001" }
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
		monsters = { 4 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_1001" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_1001(context, evt)
	if 4 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_1001(context, evt)
	-- 创建id为1002的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 1002 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end