-- 基础信息
local base_info = {
	group_id = 133004102
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 271, monster_id = 21030201, pos = { x = 2333.430, y = 297.623, z = -187.285 }, rot = { x = 0.000, y = 173.232, z = 0.000 }, level = 18, drop_tag = "丘丘萨满", disableWander = true, area_id = 3 },
	{ config_id = 272, monster_id = 21010501, pos = { x = 2336.675, y = 297.600, z = -187.874 }, rot = { x = 0.000, y = 233.274, z = 0.000 }, level = 18, drop_tag = "远程丘丘人", disableWander = true, pose_id = 9003, area_id = 3 },
	{ config_id = 273, monster_id = 21010501, pos = { x = 2335.701, y = 297.557, z = -191.342 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 18, drop_tag = "远程丘丘人", disableWander = true, pose_id = 9003, area_id = 3 },
	{ config_id = 274, monster_id = 21010301, pos = { x = 2331.885, y = 297.444, z = -190.726 }, rot = { x = 0.000, y = 53.229, z = 0.000 }, level = 18, drop_tag = "丘丘人", disableWander = true, pose_id = 9003, area_id = 3 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 384, gadget_id = 70220014, pos = { x = 2339.112, y = 297.496, z = -184.955 }, rot = { x = 0.000, y = 65.529, z = 0.000 }, level = 15, area_id = 3 },
	{ config_id = 385, gadget_id = 70220014, pos = { x = 2329.945, y = 297.639, z = -185.799 }, rot = { x = 0.000, y = 208.593, z = 0.000 }, level = 15, area_id = 3 },
	{ config_id = 386, gadget_id = 70220014, pos = { x = 2337.992, y = 297.470, z = -184.427 }, rot = { x = 0.000, y = 349.816, z = 0.000 }, level = 15, area_id = 3 },
	{ config_id = 387, gadget_id = 70220013, pos = { x = 2339.406, y = 297.530, z = -192.990 }, rot = { x = 0.000, y = 46.547, z = 0.000 }, level = 15, area_id = 3 },
	{ config_id = 388, gadget_id = 70220013, pos = { x = 2332.246, y = 297.623, z = -183.876 }, rot = { x = 0.000, y = 43.209, z = 0.000 }, level = 15, area_id = 3 },
	{ config_id = 389, gadget_id = 70220013, pos = { x = 2337.531, y = 297.684, z = -194.690 }, rot = { x = 0.000, y = 81.405, z = 0.000 }, level = 15, area_id = 3 },
	{ config_id = 390, gadget_id = 70310004, pos = { x = 2334.089, y = 297.561, z = -189.572 }, rot = { x = 0.000, y = 32.591, z = 0.000 }, level = 15, area_id = 3 },
	{ config_id = 391, gadget_id = 70310001, pos = { x = 2329.267, y = 297.615, z = -187.958 }, rot = { x = 0.000, y = 125.513, z = 0.000 }, level = 15, state = GadgetState.GearStart, area_id = 3 },
	{ config_id = 392, gadget_id = 70310001, pos = { x = 2340.088, y = 297.604, z = -187.213 }, rot = { x = 0.000, y = 201.943, z = 0.000 }, level = 15, state = GadgetState.GearStart, area_id = 3 },
	{ config_id = 393, gadget_id = 70310001, pos = { x = 2317.285, y = 299.460, z = -188.737 }, rot = { x = 0.000, y = 22.899, z = 0.000 }, level = 15, state = GadgetState.GearStart, area_id = 3 },
	{ config_id = 394, gadget_id = 70310001, pos = { x = 2334.430, y = 293.308, z = -204.800 }, rot = { x = 0.000, y = 89.519, z = 0.000 }, level = 15, state = GadgetState.GearStart, area_id = 3 },
	{ config_id = 395, gadget_id = 70211012, pos = { x = 2335.320, y = 297.730, z = -185.318 }, rot = { x = 0.079, y = 359.101, z = 5.002 }, level = 11, drop_tag = "战斗中级蒙德", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 3 },
	{ config_id = 1282, gadget_id = 70310001, pos = { x = 2334.831, y = 293.492, z = -199.522 }, rot = { x = 0.000, y = 54.793, z = 0.000 }, level = 15, state = GadgetState.GearStart, area_id = 3 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1102001, name = "ANY_MONSTER_DIE_102001", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_102001", action = "action_EVENT_ANY_MONSTER_DIE_102001" }
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
		monsters = { 271, 272, 273, 274 },
		gadgets = { 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_102001" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_102001(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_102001(context, evt)
	-- 将configid为 395 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 395, GadgetState.Default) then
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