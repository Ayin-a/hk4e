-- 基础信息
local base_info = {
	group_id = 133007019
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 19001, monster_id = 21010401, pos = { x = 2545.615, y = 205.450, z = 207.511 }, rot = { x = 0.000, y = 220.270, z = 0.000 }, level = 30, drop_tag = "远程丘丘人", disableWander = true, pose_id = 9003, area_id = 4 },
	{ config_id = 19004, monster_id = 21010401, pos = { x = 2541.328, y = 205.454, z = 201.762 }, rot = { x = 0.000, y = 12.687, z = 0.000 }, level = 30, drop_tag = "远程丘丘人", disableWander = true, pose_id = 9002, area_id = 4 },
	{ config_id = 19005, monster_id = 21030101, pos = { x = 2545.332, y = 205.450, z = 205.238 }, rot = { x = 0.000, y = 314.019, z = 0.000 }, level = 30, drop_tag = "丘丘萨满", disableWander = true, area_id = 4 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 19002, gadget_id = 70211012, pos = { x = 2548.700, y = 205.450, z = 207.300 }, rot = { x = 0.000, y = 283.476, z = 0.000 }, level = 21, drop_tag = "战斗中级蒙德", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 4 },
	{ config_id = 19006, gadget_id = 70220013, pos = { x = 2545.306, y = 205.766, z = 212.186 }, rot = { x = 0.000, y = 86.533, z = 0.000 }, level = 23, area_id = 4 },
	{ config_id = 19007, gadget_id = 70220013, pos = { x = 2543.625, y = 206.215, z = 212.934 }, rot = { x = 0.000, y = 203.268, z = 0.000 }, level = 23, area_id = 4 },
	{ config_id = 19008, gadget_id = 70220013, pos = { x = 2538.248, y = 205.461, z = 201.321 }, rot = { x = 0.000, y = 203.721, z = 0.000 }, level = 23, area_id = 4 },
	{ config_id = 19009, gadget_id = 70310006, pos = { x = 2544.292, y = 205.450, z = 206.148 }, rot = { x = 0.000, y = 151.648, z = 0.000 }, level = 23, state = GadgetState.GearStart, area_id = 4 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1019003, name = "ANY_MONSTER_DIE_19003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_19003", action = "action_EVENT_ANY_MONSTER_DIE_19003" }
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
		monsters = { 19001, 19004, 19005 },
		gadgets = { 19002, 19006, 19007, 19008, 19009 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_19003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_19003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_19003(context, evt)
	-- 将configid为 19002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 19002, GadgetState.Default) then
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