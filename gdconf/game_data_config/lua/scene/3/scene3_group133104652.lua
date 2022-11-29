-- 基础信息
local base_info = {
	group_id = 133104652
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 652001, monster_id = 21030401, pos = { x = 314.391, y = 211.908, z = 885.819 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 19, drop_tag = "丘丘萨满", disableWander = true, oneoff_reset_version = 2, area_id = 6 },
	{ config_id = 652004, monster_id = 21010701, pos = { x = 309.940, y = 212.545, z = 888.637 }, rot = { x = 0.000, y = 87.802, z = 0.000 }, level = 19, drop_tag = "丘丘人", disableWander = true, oneoff_reset_version = 2, area_id = 6 },
	{ config_id = 652005, monster_id = 21010501, pos = { x = 317.491, y = 210.982, z = 892.151 }, rot = { x = 0.000, y = 251.060, z = 0.000 }, level = 19, drop_tag = "远程丘丘人", disableWander = true, oneoff_reset_version = 2, area_id = 6 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 652002, gadget_id = 70211012, pos = { x = 314.177, y = 211.555, z = 889.100 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 16, drop_tag = "战斗中级璃月", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 6 },
	{ config_id = 652007, gadget_id = 70310009, pos = { x = 314.675, y = 211.493, z = 891.871 }, rot = { x = 358.837, y = 0.063, z = 353.770 }, level = 19, area_id = 6 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1652003, name = "ANY_MONSTER_DIE_652003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_652003", action = "action_EVENT_ANY_MONSTER_DIE_652003" },
	{ config_id = 1652006, name = "MONSTER_BATTLE_652006", event = EventType.EVENT_MONSTER_BATTLE, source = "", condition = "condition_EVENT_MONSTER_BATTLE_652006", action = "action_EVENT_MONSTER_BATTLE_652006" }
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
		monsters = { 652001 },
		gadgets = { 652002, 652007 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_652003", "MONSTER_BATTLE_652006" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 652004, 652005 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_652003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_652003(context, evt)
	-- 将configid为 652002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 652002, GadgetState.Default) then
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
function condition_EVENT_MONSTER_BATTLE_652006(context, evt)
	if 652001 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_MONSTER_BATTLE_652006(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133104652, 2)
	
	return 0
end