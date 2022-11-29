-- 基础信息
local base_info = {
	group_id = 133001034
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 34001, monster_id = 21010901, pos = { x = 1881.197, y = 195.536, z = -1561.461 }, rot = { x = 0.000, y = 67.972, z = 0.000 }, level = 7, drop_tag = "远程丘丘人", disableWander = true, area_id = 2 },
	{ config_id = 34003, monster_id = 21010901, pos = { x = 1866.932, y = 196.587, z = -1550.270 }, rot = { x = 0.000, y = 31.237, z = 0.000 }, level = 7, drop_tag = "远程丘丘人", disableWander = true, area_id = 2 },
	{ config_id = 34004, monster_id = 21010301, pos = { x = 1872.330, y = 196.562, z = -1552.501 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 7, drop_tag = "丘丘人", ban_excel_drop = true, area_id = 2 },
	{ config_id = 34005, monster_id = 21030101, pos = { x = 1874.861, y = 196.322, z = -1555.094 }, rot = { x = 0.000, y = 40.860, z = 0.000 }, level = 7, drop_tag = "丘丘萨满", ban_excel_drop = true, area_id = 2 },
	{ config_id = 34006, monster_id = 21010201, pos = { x = 1876.003, y = 196.304, z = -1552.183 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 7, drop_tag = "丘丘人", area_id = 2 },
	{ config_id = 34007, monster_id = 21010401, pos = { x = 1880.906, y = 195.565, z = -1561.476 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 7, drop_tag = "远程丘丘人", disableWander = true, area_id = 2 },
	{ config_id = 34008, monster_id = 21030301, pos = { x = 1872.053, y = 196.369, z = -1554.281 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 7, drop_tag = "丘丘萨满", area_id = 2 },
	{ config_id = 34009, monster_id = 21010401, pos = { x = 1867.023, y = 196.584, z = -1550.362 }, rot = { x = 0.000, y = 9.488, z = 0.000 }, level = 7, drop_tag = "远程丘丘人", area_id = 2 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 34010, gadget_id = 70211012, pos = { x = 1873.464, y = 196.152, z = -1557.396 }, rot = { x = 0.000, y = 357.726, z = 0.000 }, level = 1, drop_tag = "战斗中级蒙德", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 2 },
	{ config_id = 34011, gadget_id = 70310006, pos = { x = 1873.629, y = 196.244, z = -1553.753 }, rot = { x = 350.023, y = 312.994, z = 1.595 }, level = 5, state = GadgetState.GearStart, area_id = 2 },
	{ config_id = 34012, gadget_id = 70220005, pos = { x = 1871.743, y = 196.672, z = -1550.839 }, rot = { x = 5.148, y = 247.601, z = 0.774 }, level = 5, area_id = 2 },
	{ config_id = 34013, gadget_id = 70220005, pos = { x = 1872.674, y = 196.579, z = -1550.570 }, rot = { x = 351.809, y = 274.604, z = 2.009 }, level = 5, area_id = 2 },
	{ config_id = 34014, gadget_id = 70220005, pos = { x = 1870.931, y = 195.910, z = -1562.155 }, rot = { x = 1.705, y = 131.548, z = 356.731 }, level = 5, area_id = 2 },
	{ config_id = 34015, gadget_id = 70220005, pos = { x = 1881.170, y = 195.758, z = -1559.745 }, rot = { x = 0.000, y = 131.596, z = 0.000 }, level = 5, area_id = 2 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1034002, name = "ANY_MONSTER_DIE_34002", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_34002", action = "action_EVENT_ANY_MONSTER_DIE_34002" }
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
	rand_suite = true
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
		monsters = { 34001, 34003, 34004, 34005 },
		gadgets = { 34010, 34011, 34012, 34013, 34014, 34015 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_34002" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 34006, 34007, 34008, 34009 },
		gadgets = { 34010, 34011, 34012, 34013, 34014, 34015 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_34002" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_34002(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_34002(context, evt)
	-- 将configid为 34010 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 34010, GadgetState.Default) then
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