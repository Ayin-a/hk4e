-- 基础信息
local base_info = {
	group_id = 199001129
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 129008, monster_id = 21010401, pos = { x = 206.034, y = 194.292, z = 436.253 }, rot = { x = 0.000, y = 107.896, z = 0.000 }, level = 20, drop_tag = "远程丘丘人", pose_id = 402, area_id = 402 },
	{ config_id = 129009, monster_id = 21010401, pos = { x = 206.731, y = 194.760, z = 442.786 }, rot = { x = 0.000, y = 118.214, z = 0.000 }, level = 20, drop_tag = "远程丘丘人", pose_id = 402, area_id = 402 },
	{ config_id = 129010, monster_id = 21010401, pos = { x = 207.586, y = 193.847, z = 430.557 }, rot = { x = 0.000, y = 56.451, z = 0.000 }, level = 20, drop_tag = "远程丘丘人", pose_id = 402, area_id = 402 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 129002, gadget_id = 70211002, pos = { x = 207.628, y = 194.476, z = 448.036 }, rot = { x = 0.000, y = 174.515, z = 0.000 }, level = 16, drop_tag = "战斗低级群岛", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 402 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1129003, name = "ANY_MONSTER_DIE_129003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_129003", action = "action_EVENT_ANY_MONSTER_DIE_129003" }
}

-- 变量
variables = {
}

-- 废弃数据
garbages = {
	monsters = {
		{ config_id = 129001, monster_id = 21010201, pos = { x = 207.842, y = 194.476, z = 444.755 }, rot = { x = 0.000, y = 88.067, z = 0.000 }, level = 20, drop_tag = "丘丘人", disableWander = true, area_id = 402 },
		{ config_id = 129004, monster_id = 22010301, pos = { x = 207.119, y = 194.155, z = 440.865 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, drop_tag = "深渊法师", area_id = 402 },
		{ config_id = 129005, monster_id = 22010101, pos = { x = 213.023, y = 193.336, z = 445.866 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, drop_tag = "深渊法师", area_id = 402 },
		{ config_id = 129006, monster_id = 21010101, pos = { x = 236.636, y = 190.686, z = 431.780 }, rot = { x = 0.000, y = 269.516, z = 0.000 }, level = 20, drop_tag = "丘丘人", pose_id = 9013, area_id = 402 },
		{ config_id = 129007, monster_id = 21010101, pos = { x = 237.801, y = 191.385, z = 437.255 }, rot = { x = 0.000, y = 250.132, z = 0.000 }, level = 20, drop_tag = "丘丘人", pose_id = 9013, area_id = 402 }
	}
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
		monsters = { 129008, 129009, 129010 },
		gadgets = { 129002 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_129003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_129003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_129003(context, evt)
	-- 将configid为 129002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 129002, GadgetState.Default) then
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