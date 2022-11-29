-- 基础信息
local base_info = {
	group_id = 155008122
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 122001, monster_id = 22010301, pos = { x = -245.942, y = 228.404, z = 334.043 }, rot = { x = 0.000, y = 227.981, z = 0.000 }, level = 36, drop_tag = "深渊法师", disableWander = true, area_id = 200 },
	{ config_id = 122005, monster_id = 21010201, pos = { x = -247.454, y = 228.407, z = 330.221 }, rot = { x = 0.000, y = 273.400, z = 0.000 }, level = 36, drop_tag = "丘丘人", pose_id = 9012, area_id = 200 },
	{ config_id = 122006, monster_id = 21010301, pos = { x = -249.356, y = 228.349, z = 333.382 }, rot = { x = 0.000, y = 212.065, z = 0.000 }, level = 36, drop_tag = "丘丘人", pose_id = 9012, area_id = 200 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 122002, gadget_id = 70211012, pos = { x = -245.576, y = 228.409, z = 330.107 }, rot = { x = 0.000, y = 352.167, z = 0.000 }, level = 16, drop_tag = "战斗中级稻妻", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 200 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1122003, name = "ANY_MONSTER_DIE_122003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_122003", action = "action_EVENT_ANY_MONSTER_DIE_122003" }
}

-- 变量
variables = {
}

-- 废弃数据
garbages = {
	monsters = {
		{ config_id = 122004, monster_id = 21030601, pos = { x = -247.974, y = 228.446, z = 332.451 }, rot = { x = 0.000, y = 237.746, z = 0.000 }, level = 36, drop_tag = "丘丘萨满", pose_id = 9012, area_id = 200 }
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
		monsters = { 122001, 122005, 122006 },
		gadgets = { 122002 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_122003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_122003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_122003(context, evt)
	-- 将configid为 122002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 122002, GadgetState.Default) then
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