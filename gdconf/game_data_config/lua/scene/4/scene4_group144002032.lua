-- 基础信息
local base_info = {
	group_id = 144002032
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 32001, monster_id = 21010901, pos = { x = 684.493, y = 125.295, z = -550.566 }, rot = { x = 0.000, y = 288.097, z = 0.000 }, level = 20, drop_tag = "远程丘丘人", disableWander = true, area_id = 101 },
	{ config_id = 32004, monster_id = 21010901, pos = { x = 721.537, y = 123.830, z = -574.815 }, rot = { x = 0.000, y = 270.617, z = 0.000 }, level = 20, drop_tag = "远程丘丘人", area_id = 101 },
	{ config_id = 32005, monster_id = 22010201, pos = { x = 693.846, y = 123.215, z = -556.953 }, rot = { x = 0.000, y = 165.037, z = 0.000 }, level = 20, drop_tag = "深渊法师", disableWander = true, area_id = 101 },
	{ config_id = 32006, monster_id = 21010701, pos = { x = 699.845, y = 120.330, z = -573.517 }, rot = { x = 0.000, y = 163.248, z = 0.000 }, level = 20, drop_tag = "丘丘人", area_id = 101 },
	{ config_id = 32010, monster_id = 21010201, pos = { x = 706.263, y = 120.906, z = -554.908 }, rot = { x = 0.000, y = 270.617, z = 0.000 }, level = 20, drop_tag = "丘丘人", pose_id = 9011, area_id = 101 },
	{ config_id = 32011, monster_id = 21010201, pos = { x = 706.351, y = 120.079, z = -572.227 }, rot = { x = 0.000, y = 99.387, z = 0.000 }, level = 1, drop_tag = "丘丘人", area_id = 101 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 32002, gadget_id = 70211012, pos = { x = 684.320, y = 125.375, z = -548.747 }, rot = { x = 0.000, y = 92.608, z = 0.000 }, level = 26, drop_tag = "战斗中级群岛", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 101 },
	{ config_id = 32007, gadget_id = 70310006, pos = { x = 700.919, y = 120.249, z = -576.269 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 101 },
	{ config_id = 32008, gadget_id = 70950092, pos = { x = 722.422, y = 120.000, z = -574.467 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 101 },
	{ config_id = 32012, gadget_id = 70220014, pos = { x = 706.254, y = 120.120, z = -578.683 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 101 },
	{ config_id = 32013, gadget_id = 70220014, pos = { x = 708.863, y = 120.097, z = -565.209 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 101 },
	{ config_id = 32014, gadget_id = 70300081, pos = { x = 714.206, y = 119.852, z = -552.422 }, rot = { x = 0.000, y = 308.563, z = 0.000 }, level = 1, area_id = 101 },
	{ config_id = 32015, gadget_id = 70300083, pos = { x = 695.944, y = 119.942, z = -579.449 }, rot = { x = 0.000, y = 40.410, z = 0.000 }, level = 1, area_id = 101 },
	{ config_id = 32017, gadget_id = 70300091, pos = { x = 702.522, y = 121.418, z = -552.993 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 101 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1032003, name = "ANY_MONSTER_DIE_32003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_32003", action = "action_EVENT_ANY_MONSTER_DIE_32003" }
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
		monsters = { 32001, 32004, 32005, 32006, 32010, 32011 },
		gadgets = { 32002, 32007, 32008, 32012, 32013, 32014, 32015, 32017 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_32003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_32003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_32003(context, evt)
	-- 将configid为 32002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 32002, GadgetState.Default) then
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