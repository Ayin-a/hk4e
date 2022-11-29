-- 基础信息
local base_info = {
	group_id = 144004119
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 119001, monster_id = 21010201, pos = { x = -622.821, y = 202.195, z = -353.865 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, drop_tag = "丘丘人", disableWander = true, pose_id = 9002, area_id = 100 },
	{ config_id = 119004, monster_id = 21010901, pos = { x = -623.058, y = 205.668, z = -363.085 }, rot = { x = 0.000, y = 105.146, z = 0.000 }, level = 22, drop_tag = "远程丘丘人", pose_id = 9002, area_id = 100 },
	{ config_id = 119007, monster_id = 21030301, pos = { x = -624.617, y = 202.243, z = -350.879 }, rot = { x = 0.000, y = 134.241, z = 0.000 }, level = 25, drop_tag = "丘丘萨满", pose_id = 9012, area_id = 100 },
	{ config_id = 119016, monster_id = 21010901, pos = { x = -603.146, y = 203.821, z = -355.870 }, rot = { x = 0.000, y = 85.499, z = 0.000 }, level = 22, drop_tag = "远程丘丘人", area_id = 100 },
	{ config_id = 119017, monster_id = 21010401, pos = { x = -608.944, y = 203.817, z = -343.994 }, rot = { x = 0.000, y = 33.008, z = 0.000 }, level = 22, drop_tag = "远程丘丘人", area_id = 100 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 119002, gadget_id = 70211002, pos = { x = -623.309, y = 205.719, z = -364.197 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 16, chest_drop_id = 1002000, drop_count = 1, state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 100 },
	{ config_id = 119008, gadget_id = 70310006, pos = { x = -617.800, y = 200.969, z = -362.158 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 100 },
	{ config_id = 119009, gadget_id = 70220013, pos = { x = -614.391, y = 200.995, z = -359.996 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 100 },
	{ config_id = 119010, gadget_id = 70220026, pos = { x = -615.017, y = 200.943, z = -358.556 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 100 },
	{ config_id = 119011, gadget_id = 70950092, pos = { x = -603.798, y = 200.000, z = -356.290 }, rot = { x = 0.000, y = 335.313, z = 0.000 }, level = 1, area_id = 100 },
	{ config_id = 119012, gadget_id = 70950092, pos = { x = -609.760, y = 200.000, z = -344.364 }, rot = { x = 0.000, y = 335.966, z = 0.000 }, level = 1, area_id = 100 },
	{ config_id = 119013, gadget_id = 70290057, pos = { x = -606.829, y = 200.000, z = -350.549 }, rot = { x = 0.000, y = 344.034, z = 0.000 }, level = 1, area_id = 100 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1119003, name = "ANY_MONSTER_DIE_119003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_119003", action = "action_EVENT_ANY_MONSTER_DIE_119003" }
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
		monsters = { 119001, 119004, 119007, 119016, 119017 },
		gadgets = { 119002, 119008, 119009, 119010, 119011, 119012, 119013 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_119003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_119003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_119003(context, evt)
	-- 将configid为 119002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 119002, GadgetState.Default) then
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