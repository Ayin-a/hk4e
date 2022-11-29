-- 基础信息
local base_info = {
	group_id = 133220577
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 577001, monster_id = 21010201, pos = { x = -2698.689, y = 202.297, z = -4621.598 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, drop_tag = "丘丘人", disableWander = true, area_id = 11 },
	{ config_id = 577004, monster_id = 21011601, pos = { x = -2692.314, y = 203.822, z = -4631.999 }, rot = { x = 10.937, y = 318.170, z = 3.143 }, level = 27, drop_tag = "丘丘人", disableWander = true, pose_id = 9002, area_id = 11 },
	{ config_id = 577005, monster_id = 21011001, pos = { x = -2694.846, y = 204.539, z = -4635.512 }, rot = { x = 0.000, y = 241.090, z = 0.000 }, level = 27, drop_tag = "远程丘丘人", disableWander = true, pose_id = 9002, area_id = 11 },
	{ config_id = 577010, monster_id = 21010101, pos = { x = -2701.077, y = 200.182, z = -4635.005 }, rot = { x = 0.000, y = 116.102, z = 0.000 }, level = 27, drop_tag = "丘丘人", disableWander = true, pose_id = 9012, area_id = 11 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 577002, gadget_id = 70211002, pos = { x = -2692.721, y = 205.023, z = -4636.617 }, rot = { x = 11.732, y = 330.953, z = 353.557 }, level = 26, drop_tag = "战斗低级稻妻", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 11 },
	{ config_id = 577006, gadget_id = 70310004, pos = { x = -2693.986, y = 204.124, z = -4633.148 }, rot = { x = 14.758, y = 4.012, z = 6.188 }, level = 27, area_id = 11 },
	{ config_id = 577007, gadget_id = 70220026, pos = { x = -2690.140, y = 204.573, z = -4634.547 }, rot = { x = 7.087, y = 45.586, z = 18.708 }, level = 27, area_id = 11 },
	{ config_id = 577008, gadget_id = 70220026, pos = { x = -2689.888, y = 204.201, z = -4632.916 }, rot = { x = 13.047, y = 3.343, z = 8.359 }, level = 27, area_id = 11 },
	{ config_id = 577009, gadget_id = 70300087, pos = { x = -2699.060, y = 200.301, z = -4636.169 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 11 },
	{ config_id = 577011, gadget_id = 70220026, pos = { x = -2701.796, y = 200.398, z = -4625.799 }, rot = { x = 334.817, y = 22.916, z = 54.783 }, level = 27, area_id = 11 },
	{ config_id = 577012, gadget_id = 70220026, pos = { x = -2703.800, y = 200.508, z = -4623.551 }, rot = { x = 5.124, y = 355.291, z = 90.000 }, level = 27, area_id = 11 },
	{ config_id = 577013, gadget_id = 70220013, pos = { x = -2699.169, y = 199.363, z = -4641.093 }, rot = { x = 12.369, y = 26.673, z = 33.085 }, level = 27, area_id = 11 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1577003, name = "ANY_MONSTER_DIE_577003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_577003", action = "action_EVENT_ANY_MONSTER_DIE_577003" }
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
		monsters = { 577001, 577004, 577005, 577010 },
		gadgets = { 577002, 577006, 577007, 577008, 577009, 577011, 577012, 577013 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_577003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_577003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_577003(context, evt)
	-- 将configid为 577002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 577002, GadgetState.Default) then
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