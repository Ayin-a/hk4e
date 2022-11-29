-- 基础信息
local base_info = {
	group_id = 133104097
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 265, monster_id = 21030201, pos = { x = 282.537, y = 234.645, z = 943.053 }, rot = { x = 4.327, y = 96.209, z = 353.317 }, level = 19, drop_tag = "丘丘萨满", disableWander = true, pose_id = 9012, oneoff_reset_version = 2, area_id = 6 },
	{ config_id = 266, monster_id = 21010501, pos = { x = 282.821, y = 235.630, z = 936.299 }, rot = { x = 354.557, y = 73.829, z = 347.842 }, level = 19, drop_tag = "远程丘丘人", disableWander = true, pose_id = 9012, oneoff_reset_version = 2, area_id = 6 },
	{ config_id = 97001, monster_id = 21010701, pos = { x = 285.290, y = 234.696, z = 939.146 }, rot = { x = 3.633, y = 133.202, z = 354.843 }, level = 19, drop_tag = "丘丘人", disableWander = true, oneoff_reset_version = 2, area_id = 6 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 205, gadget_id = 70211012, pos = { x = 280.116, y = 235.796, z = 938.971 }, rot = { x = 9.532, y = 96.320, z = 7.480 }, level = 16, drop_tag = "战斗中级璃月", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 6 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1000142, name = "ANY_MONSTER_DIE_142", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_142", action = "action_EVENT_ANY_MONSTER_DIE_142" },
	{ config_id = 1097002, name = "MONSTER_BATTLE_97002", event = EventType.EVENT_MONSTER_BATTLE, source = "", condition = "condition_EVENT_MONSTER_BATTLE_97002", action = "action_EVENT_MONSTER_BATTLE_97002" }
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
		-- description = suite_1,
		monsters = { 265 },
		gadgets = { 205 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_142", "MONSTER_BATTLE_97002" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 266, 97001 },
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
function condition_EVENT_ANY_MONSTER_DIE_142(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_142(context, evt)
	-- 将configid为 205 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 205, GadgetState.Default) then
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
function condition_EVENT_MONSTER_BATTLE_97002(context, evt)
	if 265 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_MONSTER_BATTLE_97002(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133104097, 2)
	
	return 0
end