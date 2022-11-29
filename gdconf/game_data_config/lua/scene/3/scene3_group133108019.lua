-- 基础信息
local base_info = {
	group_id = 133108019
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 19001, monster_id = 24010201, pos = { x = -317.442, y = 200.278, z = -629.641 }, rot = { x = 0.000, y = 197.983, z = 0.000 }, level = 35, drop_tag = "遗迹守卫", disableWander = true, pose_id = 100, area_id = 7 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 19002, gadget_id = 70211022, pos = { x = -311.438, y = 201.109, z = -621.266 }, rot = { x = 0.000, y = 233.844, z = 0.000 }, level = 26, drop_tag = "战斗高级璃月", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 7 },
	{ config_id = 19004, gadget_id = 70310007, pos = { x = -336.783, y = 198.877, z = -653.039 }, rot = { x = 22.711, y = 45.627, z = 34.452 }, level = 32, area_id = 7 },
	{ config_id = 19005, gadget_id = 70310007, pos = { x = -323.429, y = 201.215, z = -618.493 }, rot = { x = 45.439, y = 334.542, z = 61.211 }, level = 32, area_id = 7 },
	{ config_id = 19006, gadget_id = 70310007, pos = { x = -296.431, y = 200.291, z = -645.371 }, rot = { x = 0.000, y = 19.617, z = 0.000 }, level = 32, area_id = 7 },
	{ config_id = 19007, gadget_id = 70310007, pos = { x = -311.580, y = 199.488, z = -672.898 }, rot = { x = 21.934, y = 272.096, z = 301.767 }, level = 32, area_id = 7 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1019003, name = "ANY_MONSTER_DIE_19003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_19003", action = "action_EVENT_ANY_MONSTER_DIE_19003" },
	{ config_id = 1019008, name = "GROUP_LOAD_19008", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_19008" }
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
	suite = 2,
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
		monsters = { 19001 },
		gadgets = { 19002, 19004, 19005, 19006, 19007 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_19003" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { "GROUP_LOAD_19008" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_19003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_19003(context, evt)
	-- 将configid为 19002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 19002, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 4001, 3, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end

-- 触发操作
function action_EVENT_GROUP_LOAD_19008(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133108019, suite = 1 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end