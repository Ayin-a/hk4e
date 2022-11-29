-- 基础信息
local base_info = {
	group_id = 133213036
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 36001, monster_id = 23010601, pos = { x = -3787.766, y = 205.091, z = -3193.544 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, drop_tag = "先遣队", disableWander = true, climate_area_id = 2, area_id = 12 },
	{ config_id = 36004, monster_id = 23010501, pos = { x = -3794.307, y = 206.231, z = -3187.536 }, rot = { x = 0.000, y = 92.468, z = 0.000 }, level = 27, drop_tag = "先遣队", disableWander = true, pose_id = 9011, climate_area_id = 2, area_id = 12 },
	{ config_id = 36005, monster_id = 23050101, pos = { x = -3787.082, y = 205.601, z = -3183.058 }, rot = { x = 355.335, y = 282.308, z = 356.249 }, level = 29, drop_tag = "藏镜侍女", disableWander = true, climate_area_id = 2, area_id = 12 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 36002, gadget_id = 70211002, pos = { x = -3788.759, y = 205.416, z = -3190.262 }, rot = { x = 359.112, y = 0.055, z = 352.875 }, level = 26, drop_tag = "战斗低级稻妻", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 12 },
	{ config_id = 36006, gadget_id = 70310006, pos = { x = -3787.320, y = 205.482, z = -3188.833 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 12 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1036003, name = "ANY_MONSTER_DIE_36003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_36003", action = "action_EVENT_ANY_MONSTER_DIE_36003" },
	{ config_id = 1036007, name = "MONSTER_BATTLE_36007", event = EventType.EVENT_MONSTER_BATTLE, source = "", condition = "condition_EVENT_MONSTER_BATTLE_36007", action = "action_EVENT_MONSTER_BATTLE_36007" }
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
		monsters = { 36004 },
		gadgets = { 36002, 36006 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_36003", "MONSTER_BATTLE_36007" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_36003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_36003(context, evt)
	-- 将configid为 36002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 36002, GadgetState.Default) then
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
function condition_EVENT_MONSTER_BATTLE_36007(context, evt)
	if 36004 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_MONSTER_BATTLE_36007(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 36001, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 36005, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end