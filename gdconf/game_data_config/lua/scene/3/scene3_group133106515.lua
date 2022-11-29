-- 基础信息
local base_info = {
	group_id = 133106515
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 515001, monster_id = 20011501, pos = { x = -523.948, y = 145.746, z = 1884.884 }, rot = { x = 0.000, y = 350.141, z = 0.000 }, level = 36, drop_tag = "大史莱姆", disableWander = true, area_id = 19 },
	{ config_id = 515002, monster_id = 20011501, pos = { x = -522.715, y = 154.845, z = 1881.437 }, rot = { x = 0.000, y = 203.244, z = 0.000 }, level = 36, drop_tag = "大史莱姆", disableWander = true, area_id = 19 },
	{ config_id = 515003, monster_id = 20011501, pos = { x = -534.258, y = 154.845, z = 1883.294 }, rot = { x = 0.000, y = 74.222, z = 0.000 }, level = 36, drop_tag = "大史莱姆", disableWander = true, area_id = 19 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 515004, gadget_id = 70211002, pos = { x = -525.445, y = 146.499, z = 1882.519 }, rot = { x = 14.324, y = 358.453, z = 15.404 }, level = 26, drop_tag = "战斗低级璃月", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 19 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1515005, name = "ANY_MONSTER_DIE_515005", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_515005", action = "action_EVENT_ANY_MONSTER_DIE_515005" },
	{ config_id = 1515006, name = "MONSTER_BATTLE_515006", event = EventType.EVENT_MONSTER_BATTLE, source = "", condition = "condition_EVENT_MONSTER_BATTLE_515006", action = "action_EVENT_MONSTER_BATTLE_515006" }
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
		monsters = { 515001 },
		gadgets = { 515004 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_515005", "MONSTER_BATTLE_515006" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 515002, 515003 },
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
function condition_EVENT_ANY_MONSTER_DIE_515005(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_515005(context, evt)
	-- 将configid为 515004 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 515004, GadgetState.Default) then
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
function condition_EVENT_MONSTER_BATTLE_515006(context, evt)
	if 515001 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_MONSTER_BATTLE_515006(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133106515, 2)
	
	return 0
end