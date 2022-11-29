-- 基础信息
local base_info = {
	group_id = 133008500
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 500001, monster_id = 21020601, pos = { x = 1042.675, y = 336.056, z = -967.755 }, rot = { x = 0.000, y = 245.991, z = 0.000 }, level = 30, drop_tag = "丘丘暴徒", disableWander = true, pose_id = 401, climate_area_id = 1, area_id = 10 },
	{ config_id = 500005, monster_id = 21030501, pos = { x = 1041.177, y = 337.326, z = -974.101 }, rot = { x = 0.000, y = 347.263, z = 0.000 }, level = 30, drop_tag = "丘丘萨满", climate_area_id = 1, area_id = 10 },
	{ config_id = 500006, monster_id = 21010901, pos = { x = 1038.114, y = 335.556, z = -966.007 }, rot = { x = 0.000, y = 142.763, z = 0.000 }, level = 30, drop_tag = "远程丘丘人", climate_area_id = 1, area_id = 10 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 500002, gadget_id = 70211012, pos = { x = 1040.578, y = 334.958, z = -962.708 }, rot = { x = 346.893, y = 173.541, z = 352.361 }, level = 26, drop_tag = "雪山战斗中级蒙德", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 10 },
	{ config_id = 500007, gadget_id = 70310019, pos = { x = 1040.775, y = 336.223, z = -970.167 }, rot = { x = 0.000, y = 302.799, z = 0.000 }, level = 30, state = GadgetState.GearStart, area_id = 10 },
	{ config_id = 500008, gadget_id = 70220059, pos = { x = 1045.724, y = 335.418, z = -964.710 }, rot = { x = 21.933, y = 0.000, z = 0.000 }, level = 30, area_id = 10 },
	{ config_id = 500009, gadget_id = 70220059, pos = { x = 1036.265, y = 335.230, z = -961.525 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 10 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1500003, name = "ANY_MONSTER_DIE_500003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_500003", action = "action_EVENT_ANY_MONSTER_DIE_500003" },
	{ config_id = 1500004, name = "MONSTER_BATTLE_500004", event = EventType.EVENT_MONSTER_BATTLE, source = "", condition = "condition_EVENT_MONSTER_BATTLE_500004", action = "action_EVENT_MONSTER_BATTLE_500004" }
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
		monsters = { 500001 },
		gadgets = { 500002, 500007, 500008, 500009 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_500003", "MONSTER_BATTLE_500004" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_500003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_500003(context, evt)
	-- 将configid为 500002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 500002, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 4000, 3, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end

-- 触发条件
function condition_EVENT_MONSTER_BATTLE_500004(context, evt)
	if 500001 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_MONSTER_BATTLE_500004(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 500005, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 500006, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end