-- 基础信息
local base_info = {
	group_id = 155005175
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 175001, monster_id = 24010101, pos = { x = 305.182, y = 276.947, z = 403.017 }, rot = { x = 0.000, y = 242.170, z = 0.000 }, level = 36, drop_tag = "遗迹守卫", disableWander = true, pose_id = 101, area_id = 200 },
	{ config_id = 175004, monster_id = 24010101, pos = { x = 300.728, y = 276.455, z = 384.404 }, rot = { x = 0.000, y = 297.989, z = 0.000 }, level = 36, drop_tag = "遗迹守卫", disableWander = true, pose_id = 101, area_id = 200 },
	{ config_id = 175005, monster_id = 24010101, pos = { x = 294.392, y = 278.149, z = 372.594 }, rot = { x = 0.000, y = 313.870, z = 0.000 }, level = 36, drop_tag = "遗迹守卫", disableWander = true, pose_id = 101, area_id = 200 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 175002, gadget_id = 70211012, pos = { x = 293.926, y = 276.153, z = 389.380 }, rot = { x = 1.773, y = 307.512, z = 355.025 }, level = 16, drop_tag = "战斗中级稻妻", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 200 },
	{ config_id = 175006, gadget_id = 70310007, pos = { x = 277.478, y = 274.925, z = 410.687 }, rot = { x = 350.323, y = 215.477, z = 342.173 }, level = 36, area_id = 200 },
	{ config_id = 175007, gadget_id = 70310007, pos = { x = 264.428, y = 274.024, z = 406.579 }, rot = { x = 0.000, y = 100.397, z = 0.000 }, level = 36, area_id = 200 },
	{ config_id = 175008, gadget_id = 70310007, pos = { x = 261.535, y = 274.555, z = 388.473 }, rot = { x = 0.000, y = 49.379, z = 0.000 }, level = 36, area_id = 200 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1175003, name = "ANY_MONSTER_DIE_175003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_175003", action = "action_EVENT_ANY_MONSTER_DIE_175003" }
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
		monsters = { 175001, 175004, 175005 },
		gadgets = { 175002, 175006, 175007, 175008 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_175003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_175003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_175003(context, evt)
	-- 将configid为 175002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 175002, GadgetState.Default) then
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