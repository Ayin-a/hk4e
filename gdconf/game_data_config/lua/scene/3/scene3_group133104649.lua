-- 基础信息
local base_info = {
	group_id = 133104649
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 649001, monster_id = 23010401, pos = { x = 480.748, y = 223.733, z = 938.597 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 19, drop_tag = "先遣队", disableWander = true, area_id = 6 },
	{ config_id = 649004, monster_id = 23010301, pos = { x = 480.026, y = 223.306, z = 946.218 }, rot = { x = 0.000, y = 172.256, z = 0.000 }, level = 19, drop_tag = "先遣队", disableWander = true, area_id = 6 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 649002, gadget_id = 70211012, pos = { x = 478.650, y = 223.447, z = 942.705 }, rot = { x = 0.000, y = 59.490, z = 0.000 }, level = 16, drop_tag = "战斗中级璃月", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 6 },
	{ config_id = 649005, gadget_id = 70310001, pos = { x = 480.613, y = 223.544, z = 942.974 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 19, area_id = 6 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1649003, name = "ANY_MONSTER_DIE_649003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_649003", action = "action_EVENT_ANY_MONSTER_DIE_649003" },
	{ config_id = 1649006, name = "MONSTER_BATTLE_649006", event = EventType.EVENT_MONSTER_BATTLE, source = "", condition = "condition_EVENT_MONSTER_BATTLE_649006", action = "action_EVENT_MONSTER_BATTLE_649006" }
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
		monsters = { 649004 },
		gadgets = { 649002, 649005 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_649003", "MONSTER_BATTLE_649006" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 649001 },
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
function condition_EVENT_ANY_MONSTER_DIE_649003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_649003(context, evt)
	-- 将configid为 649002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 649002, GadgetState.Default) then
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
function condition_EVENT_MONSTER_BATTLE_649006(context, evt)
	if 649004 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_MONSTER_BATTLE_649006(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133104649, 2)
	
	return 0
end