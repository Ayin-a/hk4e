-- 基础信息
local base_info = {
	group_id = 155006146
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 146004, monster_id = 22010401, pos = { x = 335.977, y = 163.740, z = -220.245 }, rot = { x = 0.000, y = 70.949, z = 0.000 }, level = 36, drop_tag = "深渊法师", pose_id = 9013, area_id = 200 },
	{ config_id = 146005, monster_id = 21030101, pos = { x = 367.044, y = 164.398, z = -201.808 }, rot = { x = 0.000, y = 171.948, z = 0.000 }, level = 36, drop_tag = "丘丘萨满", disableWander = true, pose_id = 9012, area_id = 200 },
	{ config_id = 146006, monster_id = 21030101, pos = { x = 369.016, y = 165.756, z = -208.881 }, rot = { x = 0.000, y = 303.724, z = 0.000 }, level = 36, drop_tag = "丘丘萨满", disableWander = true, pose_id = 9012, area_id = 200 },
	{ config_id = 146014, monster_id = 21030101, pos = { x = 362.264, y = 166.177, z = -207.159 }, rot = { x = 353.868, y = 80.157, z = 15.379 }, level = 36, drop_tag = "丘丘萨满", disableWander = true, pose_id = 9012, area_id = 200 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 146002, gadget_id = 70211002, pos = { x = 371.301, y = 165.481, z = -202.023 }, rot = { x = 346.386, y = 221.453, z = 359.310 }, level = 16, drop_tag = "战斗低级稻妻", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 200 },
	{ config_id = 146007, gadget_id = 70310009, pos = { x = 366.647, y = 164.803, z = -205.965 }, rot = { x = 358.716, y = 198.655, z = 350.337 }, level = 36, area_id = 200 },
	{ config_id = 146011, gadget_id = 70300086, pos = { x = 370.540, y = 162.273, z = -190.925 }, rot = { x = 15.508, y = 0.000, z = 355.619 }, level = 36, area_id = 200 },
	{ config_id = 146012, gadget_id = 70300086, pos = { x = 380.175, y = 164.664, z = -207.413 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, area_id = 200 },
	{ config_id = 146013, gadget_id = 70300107, pos = { x = 364.868, y = 164.677, z = -208.574 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, state = GadgetState.GearStart, area_id = 200 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1146003, name = "ANY_MONSTER_DIE_146003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_146003", action = "action_EVENT_ANY_MONSTER_DIE_146003" }
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
		monsters = { 146004, 146005, 146006, 146014 },
		gadgets = { 146002, 146007, 146011, 146012, 146013 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_146003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_146003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_146003(context, evt)
	-- 将configid为 146002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 146002, GadgetState.Default) then
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