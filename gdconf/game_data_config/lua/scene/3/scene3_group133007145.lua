-- 基础信息
local base_info = {
	group_id = 133007145
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 145001, monster_id = 21030201, pos = { x = 2719.092, y = 207.372, z = 345.602 }, rot = { x = 0.000, y = 205.881, z = 0.000 }, level = 27, drop_tag = "丘丘萨满", disableWander = true, area_id = 4 },
	{ config_id = 145004, monster_id = 21030301, pos = { x = 2717.472, y = 207.023, z = 340.851 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, drop_tag = "丘丘萨满", disableWander = true, area_id = 4 },
	{ config_id = 145005, monster_id = 21020101, pos = { x = 2721.511, y = 207.108, z = 341.845 }, rot = { x = 0.000, y = 287.966, z = 0.000 }, level = 30, drop_tag = "丘丘暴徒", disableWander = true, pose_id = 401, area_id = 4 },
	{ config_id = 145006, monster_id = 21010401, pos = { x = 2718.817, y = 207.074, z = 339.160 }, rot = { x = 0.000, y = 261.127, z = 0.000 }, level = 27, drop_tag = "远程丘丘人", pose_id = 9003, area_id = 4 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 145002, gadget_id = 70211012, pos = { x = 2716.100, y = 207.133, z = 344.200 }, rot = { x = 0.000, y = 105.761, z = 0.000 }, level = 21, drop_tag = "战斗中级蒙德", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 4 },
	{ config_id = 145007, gadget_id = 70220014, pos = { x = 2721.196, y = 206.964, z = 338.502 }, rot = { x = 0.000, y = 209.864, z = 0.000 }, level = 23, area_id = 4 },
	{ config_id = 145008, gadget_id = 70220014, pos = { x = 2720.185, y = 206.928, z = 338.185 }, rot = { x = 0.000, y = 211.939, z = 0.000 }, level = 23, area_id = 4 },
	{ config_id = 145009, gadget_id = 70310006, pos = { x = 2719.205, y = 207.091, z = 342.770 }, rot = { x = 0.000, y = 114.778, z = 0.000 }, level = 23, area_id = 4 },
	{ config_id = 145010, gadget_id = 70220013, pos = { x = 2718.108, y = 207.213, z = 337.990 }, rot = { x = 0.000, y = 356.990, z = 0.000 }, level = 23, area_id = 4 },
	{ config_id = 145011, gadget_id = 70220013, pos = { x = 2718.768, y = 207.702, z = 349.021 }, rot = { x = 0.000, y = 88.142, z = 0.000 }, level = 23, area_id = 4 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1145003, name = "ANY_MONSTER_DIE_145003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_145003", action = "action_EVENT_ANY_MONSTER_DIE_145003" }
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
		monsters = { 145001, 145004, 145005, 145006 },
		gadgets = { 145002, 145007, 145008, 145009, 145010, 145011 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_145003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_145003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_145003(context, evt)
	-- 将configid为 145002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 145002, GadgetState.Default) then
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