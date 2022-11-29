-- 基础信息
local base_info = {
	group_id = 133310208
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 208001, monster_id = 25210201, pos = { x = -2146.009, y = 160.498, z = 5112.400 }, rot = { x = 0.000, y = 309.923, z = 0.000 }, level = 32, drop_tag = "镀金旅团", disableWander = true, pose_id = 9506, area_id = 27 },
	{ config_id = 208002, monster_id = 25210101, pos = { x = -2146.602, y = 160.462, z = 5111.396 }, rot = { x = 0.000, y = 319.430, z = 0.000 }, level = 32, drop_tag = "镀金旅团", disableWander = true, pose_id = 9505, area_id = 27 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 208003, gadget_id = 70710352, pos = { x = -2146.232, y = 160.437, z = 5109.494 }, rot = { x = 0.000, y = 338.238, z = 0.000 }, level = 32, area_id = 27 },
	{ config_id = 208004, gadget_id = 70210101, pos = { x = -2146.031, y = 160.446, z = 5109.163 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜通用须弥", persistent = true, area_id = 27 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1208005, name = "ANY_GADGET_DIE_208005", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_208005", action = "action_EVENT_ANY_GADGET_DIE_208005", trigger_count = 0 }
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
		monsters = { 208001, 208002 },
		gadgets = { 208003, 208004 },
		regions = { },
		triggers = { "ANY_GADGET_DIE_208005" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_208005(context, evt)
	if 208004 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_208005(context, evt)
	-- 通知groupid为133310208中,configid为：208001的怪物入战或者脱战，set为1是入战，为0是脱战
	if 0 ~= ScriptLib.SetMonsterBattleByGroup(context, 208001, 133310208) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_monster_battle_by_group")
	  return -1
	end
	
	return 0
end