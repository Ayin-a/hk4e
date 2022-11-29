-- 基础信息
local base_info = {
	group_id = 133007022
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 22001, monster_id = 21030101, pos = { x = 2587.948, y = 212.492, z = 448.994 }, rot = { x = 0.000, y = 338.270, z = 0.000 }, level = 30, drop_tag = "丘丘萨满", disableWander = true, area_id = 4 },
	{ config_id = 22004, monster_id = 21010901, pos = { x = 2585.304, y = 211.746, z = 451.114 }, rot = { x = 0.000, y = 77.246, z = 0.000 }, level = 30, drop_tag = "远程丘丘人", disableWander = true, pose_id = 9003, area_id = 4 },
	{ config_id = 22005, monster_id = 21010901, pos = { x = 2593.050, y = 212.559, z = 450.408 }, rot = { x = 0.000, y = 76.245, z = 0.000 }, level = 30, drop_tag = "远程丘丘人", disableWander = true, pose_id = 9003, area_id = 4 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 22002, gadget_id = 70211012, pos = { x = 2586.200, y = 210.800, z = 455.000 }, rot = { x = 0.000, y = 182.923, z = 0.000 }, level = 21, drop_tag = "战斗中级蒙德", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 4 },
	{ config_id = 22007, gadget_id = 70220013, pos = { x = 2583.284, y = 212.230, z = 448.578 }, rot = { x = 0.000, y = 309.405, z = 0.000 }, level = 23, area_id = 4 },
	{ config_id = 22008, gadget_id = 70220014, pos = { x = 2582.735, y = 211.760, z = 450.333 }, rot = { x = 0.000, y = 343.326, z = 0.000 }, level = 23, area_id = 4 },
	{ config_id = 22009, gadget_id = 70220014, pos = { x = 2587.635, y = 210.763, z = 455.442 }, rot = { x = 0.000, y = 82.425, z = 0.000 }, level = 23, area_id = 4 },
	{ config_id = 22010, gadget_id = 70310001, pos = { x = 2587.409, y = 211.921, z = 451.016 }, rot = { x = 0.000, y = 168.368, z = 0.000 }, level = 23, state = GadgetState.GearStart, area_id = 4 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1022003, name = "ANY_MONSTER_DIE_22003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_22003", action = "action_EVENT_ANY_MONSTER_DIE_22003" }
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
		monsters = { 22001, 22004, 22005 },
		gadgets = { 22002, 22007, 22008, 22009, 22010 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_22003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_22003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_22003(context, evt)
	-- 将configid为 22002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 22002, GadgetState.Default) then
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