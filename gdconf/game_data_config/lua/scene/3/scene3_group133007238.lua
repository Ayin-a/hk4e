-- 基础信息
local base_info = {
	group_id = 133007238
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 238001, monster_id = 21030201, pos = { x = 2943.373, y = 215.951, z = 284.776 }, rot = { x = 0.000, y = 17.280, z = 0.000 }, level = 22, drop_tag = "丘丘萨满", disableWander = true, area_id = 4 },
	{ config_id = 238004, monster_id = 21020201, pos = { x = 2944.972, y = 215.951, z = 281.380 }, rot = { x = 0.000, y = 283.105, z = 0.000 }, level = 24, drop_tag = "丘丘暴徒", disableWander = true, pose_id = 401, area_id = 4 },
	{ config_id = 238005, monster_id = 21010401, pos = { x = 2938.219, y = 221.146, z = 291.948 }, rot = { x = 0.000, y = 195.746, z = 0.000 }, level = 22, drop_tag = "远程丘丘人", disableWander = true, pose_id = 402, area_id = 4 },
	{ config_id = 238006, monster_id = 21010401, pos = { x = 2952.326, y = 215.951, z = 281.877 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 22, drop_tag = "远程丘丘人", disableWander = true, pose_id = 9003, area_id = 4 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 238002, gadget_id = 70211012, pos = { x = 2940.900, y = 216.000, z = 291.700 }, rot = { x = 0.000, y = 142.860, z = 0.000 }, level = 21, drop_tag = "战斗中级蒙德", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 4 },
	{ config_id = 238007, gadget_id = 70220013, pos = { x = 2938.413, y = 215.951, z = 290.554 }, rot = { x = 0.000, y = 341.161, z = 0.000 }, level = 23, area_id = 4 },
	{ config_id = 238008, gadget_id = 70220013, pos = { x = 2943.861, y = 215.951, z = 291.879 }, rot = { x = 0.000, y = 35.478, z = 0.000 }, level = 23, area_id = 4 },
	{ config_id = 238009, gadget_id = 70220013, pos = { x = 2945.570, y = 215.951, z = 290.561 }, rot = { x = 0.000, y = 339.428, z = 0.000 }, level = 23, area_id = 4 },
	{ config_id = 238010, gadget_id = 70220013, pos = { x = 2945.626, y = 215.951, z = 292.715 }, rot = { x = 0.000, y = 307.479, z = 0.000 }, level = 23, area_id = 4 },
	{ config_id = 238011, gadget_id = 70220013, pos = { x = 2944.258, y = 215.951, z = 293.792 }, rot = { x = 0.000, y = 36.565, z = 0.000 }, level = 23, area_id = 4 },
	{ config_id = 238012, gadget_id = 70220013, pos = { x = 2948.365, y = 215.951, z = 278.782 }, rot = { x = 0.000, y = 5.616, z = 0.000 }, level = 23, area_id = 4 },
	{ config_id = 238013, gadget_id = 70310006, pos = { x = 2943.142, y = 215.951, z = 281.528 }, rot = { x = 0.000, y = 297.303, z = 0.000 }, level = 23, state = GadgetState.GearStart, area_id = 4 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1238003, name = "ANY_MONSTER_DIE_238003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_238003", action = "action_EVENT_ANY_MONSTER_DIE_238003" }
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
		monsters = { 238001, 238004, 238005, 238006 },
		gadgets = { 238002, 238007, 238008, 238009, 238010, 238011, 238012, 238013 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_238003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_238003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_238003(context, evt)
	-- 将configid为 238002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 238002, GadgetState.Default) then
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