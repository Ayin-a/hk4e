-- 基础信息
local base_info = {
	group_id = 133108109
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 109001, monster_id = 21010201, pos = { x = -103.494, y = 202.919, z = -994.737 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, drop_tag = "丘丘人", disableWander = true, pose_id = 9012, area_id = 7 },
	{ config_id = 109005, monster_id = 21010201, pos = { x = -106.824, y = 202.909, z = -991.646 }, rot = { x = 0.000, y = 89.104, z = 0.000 }, level = 32, drop_tag = "丘丘人", disableWander = true, pose_id = 9012, area_id = 7 },
	{ config_id = 109006, monster_id = 21010201, pos = { x = -103.566, y = 202.870, z = -988.280 }, rot = { x = 0.000, y = 181.271, z = 0.000 }, level = 32, drop_tag = "丘丘人", disableWander = true, pose_id = 9012, area_id = 7 },
	{ config_id = 109007, monster_id = 21010201, pos = { x = -100.250, y = 202.919, z = -991.515 }, rot = { x = 0.000, y = 269.264, z = 0.000 }, level = 32, drop_tag = "丘丘人", disableWander = true, pose_id = 9012, area_id = 7 },
	{ config_id = 109008, monster_id = 21030101, pos = { x = -104.020, y = 202.964, z = -996.124 }, rot = { x = 0.000, y = 356.118, z = 0.000 }, level = 32, drop_tag = "丘丘萨满", disableWander = true, pose_id = 9012, area_id = 7 },
	{ config_id = 109009, monster_id = 21030401, pos = { x = -98.684, y = 203.016, z = -992.288 }, rot = { x = 0.000, y = 279.384, z = 0.000 }, level = 32, drop_tag = "丘丘萨满", disableWander = true, area_id = 7 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 109002, gadget_id = 70211012, pos = { x = -107.337, y = 202.929, z = -999.956 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "战斗中级璃月", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 7 },
	{ config_id = 109010, gadget_id = 70310001, pos = { x = -108.813, y = 202.927, z = -999.994 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, state = GadgetState.GearStart, area_id = 7 },
	{ config_id = 109011, gadget_id = 70310001, pos = { x = -97.204, y = 202.904, z = -984.150 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, state = GadgetState.GearStart, area_id = 7 },
	{ config_id = 109012, gadget_id = 70310001, pos = { x = -95.079, y = 202.964, z = -995.416 }, rot = { x = 0.000, y = 295.307, z = 0.000 }, level = 32, state = GadgetState.GearStart, area_id = 7 },
	{ config_id = 109013, gadget_id = 70220013, pos = { x = -93.803, y = 203.335, z = -987.995 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 7 },
	{ config_id = 109014, gadget_id = 70220013, pos = { x = -102.448, y = 202.951, z = -983.573 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 7 },
	{ config_id = 109015, gadget_id = 70300089, pos = { x = -103.486, y = 202.919, z = -991.639 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 7 },
	{ config_id = 109016, gadget_id = 70300089, pos = { x = -108.975, y = 202.916, z = -991.908 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 7 },
	{ config_id = 109017, gadget_id = 70220014, pos = { x = -93.951, y = 203.209, z = -986.567 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 7 },
	{ config_id = 109018, gadget_id = 70220014, pos = { x = -99.976, y = 202.915, z = -982.949 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 7 },
	{ config_id = 109019, gadget_id = 70220014, pos = { x = -95.141, y = 203.280, z = -987.040 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 7 },
	{ config_id = 109020, gadget_id = 70220014, pos = { x = -103.719, y = 202.909, z = -1000.319 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 7 },
	{ config_id = 109021, gadget_id = 70220035, pos = { x = -95.029, y = 203.395, z = -987.983 }, rot = { x = 0.000, y = 309.603, z = 0.000 }, level = 32, area_id = 7 },
	{ config_id = 109022, gadget_id = 70220035, pos = { x = -104.529, y = 202.938, z = -999.756 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 7 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1109003, name = "ANY_MONSTER_DIE_109003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_109003", action = "action_EVENT_ANY_MONSTER_DIE_109003" }
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
		monsters = { 109001, 109005, 109006, 109007, 109008, 109009 },
		gadgets = { 109002, 109010, 109011, 109012, 109013, 109014, 109015, 109016, 109017, 109021, 109022 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_109003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_109003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_109003(context, evt)
	-- 将configid为 109002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 109002, GadgetState.Default) then
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