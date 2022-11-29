-- 基础信息
local base_info = {
	group_id = 133308117
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 117001, monster_id = 21010201, pos = { x = -2116.059, y = 240.226, z = 4228.467 }, rot = { x = 0.000, y = 357.675, z = 0.000 }, level = 32, drop_tag = "丘丘人", disableWander = true, pose_id = 9016, area_id = 26 },
	{ config_id = 117004, monster_id = 21030201, pos = { x = -2120.089, y = 241.127, z = 4223.621 }, rot = { x = 0.000, y = 359.503, z = 0.000 }, level = 32, drop_tag = "丘丘萨满", pose_id = 9012, area_id = 26 },
	{ config_id = 117005, monster_id = 21030601, pos = { x = -2124.026, y = 240.855, z = 4227.663 }, rot = { x = 0.000, y = 116.171, z = 0.000 }, level = 32, drop_tag = "丘丘萨满", pose_id = 9012, area_id = 26 },
	{ config_id = 117007, monster_id = 21011001, pos = { x = -2138.690, y = 239.561, z = 4236.132 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, drop_tag = "远程丘丘人", pose_id = 9013, area_id = 26 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 117002, gadget_id = 70211002, pos = { x = -2119.228, y = 240.105, z = 4230.722 }, rot = { x = 357.816, y = 192.055, z = 356.867 }, level = 26, drop_tag = "战斗低级须弥", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 10 }, area_id = 26 },
	{ config_id = 117006, gadget_id = 70310009, pos = { x = -2120.846, y = 240.917, z = 4226.068 }, rot = { x = 0.000, y = 53.806, z = 0.000 }, level = 32, area_id = 26 },
	{ config_id = 117008, gadget_id = 70220013, pos = { x = -2122.177, y = 241.552, z = 4218.510 }, rot = { x = 5.157, y = 359.288, z = 352.760 }, level = 32, area_id = 26 },
	{ config_id = 117009, gadget_id = 70220026, pos = { x = -2127.586, y = 240.387, z = 4230.853 }, rot = { x = 356.584, y = 0.522, z = 342.644 }, level = 32, area_id = 26 },
	{ config_id = 117010, gadget_id = 70220026, pos = { x = -2119.925, y = 241.471, z = 4218.460 }, rot = { x = 9.773, y = 25.561, z = 351.991 }, level = 32, area_id = 26 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1117003, name = "ANY_MONSTER_DIE_117003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_117003", action = "action_EVENT_ANY_MONSTER_DIE_117003" }
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
		monsters = { 117001, 117004, 117005, 117007 },
		gadgets = { 117002, 117006, 117008, 117009, 117010 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_117003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_117003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_117003(context, evt)
	-- 将configid为 117002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 117002, GadgetState.Default) then
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