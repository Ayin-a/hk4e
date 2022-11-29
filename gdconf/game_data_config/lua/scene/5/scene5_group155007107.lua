-- 基础信息
local base_info = {
	group_id = 155007107
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 107001, monster_id = 26050901, pos = { x = -430.150, y = 180.382, z = 1436.013 }, rot = { x = 0.000, y = 201.591, z = 0.000 }, level = 36, drop_tag = "幼岩龙蜥", area_id = 200 },
	{ config_id = 107004, monster_id = 26050901, pos = { x = -440.136, y = 180.100, z = 1431.700 }, rot = { x = 0.000, y = 120.794, z = 0.000 }, level = 36, drop_tag = "幼岩龙蜥", area_id = 200 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 107002, gadget_id = 70211002, pos = { x = -429.806, y = 181.652, z = 1443.705 }, rot = { x = 1.594, y = 228.115, z = 352.155 }, level = 26, drop_tag = "战斗低级稻妻", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 200 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1107003, name = "ANY_MONSTER_DIE_107003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_107003", action = "action_EVENT_ANY_MONSTER_DIE_107003" }
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
		monsters = { 107001, 107004 },
		gadgets = { 107002 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_107003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_107003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_107003(context, evt)
	-- 将configid为 107002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 107002, GadgetState.Default) then
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