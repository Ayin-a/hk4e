-- 基础信息
local base_info = {
	group_id = 133308556
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 556001, monster_id = 25310301, pos = { x = -2204.161, y = 330.536, z = 4243.723 }, rot = { x = 0.000, y = 111.527, z = 0.000 }, level = 30, drop_tag = "中级镀金旅团", disableWander = true, pose_id = 9001, area_id = 26 },
	{ config_id = 556002, monster_id = 25210201, pos = { x = -2212.723, y = 332.708, z = 4231.347 }, rot = { x = 0.000, y = 66.694, z = 0.000 }, level = 30, drop_tag = "镀金旅团", disableWander = true, area_id = 26 },
	{ config_id = 556003, monster_id = 25210202, pos = { x = -2207.911, y = 335.677, z = 4256.144 }, rot = { x = 0.000, y = 111.954, z = 0.000 }, level = 30, drop_tag = "镀金旅团", disableWander = true, area_id = 26 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 556004, gadget_id = 70211151, pos = { x = -2208.240, y = 331.080, z = 4246.203 }, rot = { x = 4.711, y = 123.682, z = 348.044 }, level = 26, chest_drop_id = 21910104, drop_count = 1, state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 10 }, area_id = 26 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1556006, name = "ANY_MONSTER_DIE_556006", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_556006", action = "action_EVENT_ANY_MONSTER_DIE_556006" },
	{ config_id = 1556007, name = "MONSTER_BATTLE_556007", event = EventType.EVENT_MONSTER_BATTLE, source = "", condition = "condition_EVENT_MONSTER_BATTLE_556007", action = "action_EVENT_MONSTER_BATTLE_556007" }
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
		monsters = { 556001 },
		gadgets = { 556004 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_556006", "MONSTER_BATTLE_556007" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 556002, 556003 },
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
function condition_EVENT_ANY_MONSTER_DIE_556006(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_556006(context, evt)
	-- 将configid为 556004 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 556004, GadgetState.Default) then
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

-- 触发条件
function condition_EVENT_MONSTER_BATTLE_556007(context, evt)
	if 556001 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_MONSTER_BATTLE_556007(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133308556, 2)
	
	return 0
end