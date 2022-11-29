-- 基础信息
local base_info = {
	group_id = 133217120
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 120004, monster_id = 23010501, pos = { x = -4366.593, y = 209.443, z = -3731.829 }, rot = { x = 0.000, y = 309.606, z = 0.000 }, level = 30, drop_tag = "先遣队", pose_id = 9001, area_id = 14 },
	{ config_id = 120007, monster_id = 23010201, pos = { x = -4366.131, y = 210.376, z = -3738.706 }, rot = { x = 0.000, y = 26.478, z = 0.000 }, level = 30, drop_tag = "先遣队", area_id = 14 },
	{ config_id = 120011, monster_id = 23010601, pos = { x = -4363.913, y = 209.611, z = -3734.974 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, drop_tag = "先遣队", area_id = 14 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 120002, gadget_id = 70211002, pos = { x = -4367.816, y = 209.482, z = -3730.311 }, rot = { x = 0.000, y = 115.896, z = 0.000 }, level = 26, drop_tag = "战斗低级稻妻", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 14 },
	{ config_id = 120009, gadget_id = 70210101, pos = { x = -4376.151, y = 211.404, z = -3737.331 }, rot = { x = 0.000, y = 82.066, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜武器稻妻", isOneoff = true, persistent = true, area_id = 14 },
	{ config_id = 120010, gadget_id = 70210101, pos = { x = -4371.623, y = 210.311, z = -3721.222 }, rot = { x = 0.000, y = 237.429, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜武器稻妻", isOneoff = true, persistent = true, area_id = 14 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1120003, name = "ANY_MONSTER_DIE_120003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_120003", action = "action_EVENT_ANY_MONSTER_DIE_120003" },
	{ config_id = 1120006, name = "MONSTER_BATTLE_120006", event = EventType.EVENT_MONSTER_BATTLE, source = "", condition = "", action = "action_EVENT_MONSTER_BATTLE_120006" }
}

-- 变量
variables = {
}

-- 废弃数据
garbages = {
	monsters = {
		{ config_id = 120001, monster_id = 23010201, pos = { x = -4365.765, y = 209.488, z = -3728.158 }, rot = { x = 0.000, y = 345.392, z = 0.000 }, level = 30, drop_tag = "先遣队", disableWander = true, area_id = 14 },
		{ config_id = 120005, monster_id = 23010501, pos = { x = -4361.874, y = 210.791, z = -3739.581 }, rot = { x = 0.000, y = 0.488, z = 0.000 }, level = 30, drop_tag = "先遣队", pose_id = 9001, area_id = 14 },
		{ config_id = 120008, monster_id = 23010301, pos = { x = -4360.112, y = 210.028, z = -3737.295 }, rot = { x = 4.719, y = 307.561, z = 350.796 }, level = 30, drop_tag = "先遣队", area_id = 14 }
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
		monsters = { 120011 },
		gadgets = { 120002, 120009, 120010 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_120003", "MONSTER_BATTLE_120006" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 120004, 120007 },
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
function condition_EVENT_ANY_MONSTER_DIE_120003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_120003(context, evt)
	-- 将configid为 120002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 120002, GadgetState.Default) then
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
function action_EVENT_MONSTER_BATTLE_120006(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133217120, 2)
	
	return 0
end