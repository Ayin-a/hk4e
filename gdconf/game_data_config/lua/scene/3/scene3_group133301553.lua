-- 基础信息
local base_info = {
	group_id = 133301553
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 553004, monster_id = 24030101, pos = { x = -265.402, y = 244.899, z = 3903.943 }, rot = { x = 0.000, y = 301.379, z = 0.000 }, level = 27, drop_tag = "遗迹龙兽", pose_id = 102, area_id = 22 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 553002, gadget_id = 70211012, pos = { x = -270.705, y = 245.145, z = 3898.628 }, rot = { x = 335.106, y = 315.095, z = 359.960 }, level = 26, drop_tag = "战斗中级须弥", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 10 }, area_id = 22 },
	{ config_id = 553005, gadget_id = 70220109, pos = { x = -275.388, y = 247.536, z = 3883.926 }, rot = { x = 1.077, y = 359.792, z = 338.099 }, level = 27, area_id = 22 },
	{ config_id = 553006, gadget_id = 70220109, pos = { x = -265.158, y = 242.126, z = 3890.583 }, rot = { x = 354.751, y = 0.528, z = 348.517 }, level = 27, area_id = 22 },
	{ config_id = 553007, gadget_id = 70220109, pos = { x = -276.938, y = 245.801, z = 3891.735 }, rot = { x = 1.631, y = 359.648, z = 335.622 }, level = 27, area_id = 22 },
	{ config_id = 553008, gadget_id = 70220109, pos = { x = -258.902, y = 242.150, z = 3896.585 }, rot = { x = 352.940, y = 0.105, z = 358.291 }, level = 27, area_id = 22 },
	{ config_id = 553009, gadget_id = 70220109, pos = { x = -256.518, y = 243.171, z = 3906.964 }, rot = { x = 353.818, y = 0.433, z = 351.995 }, level = 27, area_id = 22 },
	{ config_id = 553010, gadget_id = 70220109, pos = { x = -261.657, y = 244.146, z = 3915.289 }, rot = { x = 0.000, y = 0.000, z = 344.291 }, level = 27, area_id = 22 },
	{ config_id = 553011, gadget_id = 70220109, pos = { x = -269.300, y = 246.445, z = 3910.344 }, rot = { x = 0.851, y = 359.864, z = 341.833 }, level = 27, area_id = 22 },
	{ config_id = 553012, gadget_id = 70220109, pos = { x = -288.519, y = 249.408, z = 3897.207 }, rot = { x = 2.638, y = 359.755, z = 349.380 }, level = 27, area_id = 22 },
	{ config_id = 553013, gadget_id = 70220109, pos = { x = -276.155, y = 247.343, z = 3900.827 }, rot = { x = 351.321, y = 0.940, z = 347.660 }, level = 27, area_id = 22 },
	{ config_id = 553014, gadget_id = 70220109, pos = { x = -275.649, y = 246.509, z = 3873.315 }, rot = { x = 351.474, y = 1.576, z = 339.094 }, level = 27, area_id = 22 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1553003, name = "ANY_MONSTER_DIE_553003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_553003", action = "action_EVENT_ANY_MONSTER_DIE_553003" }
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
		monsters = { 553004 },
		gadgets = { 553002, 553005, 553006, 553007, 553008, 553009, 553010, 553011, 553012, 553013, 553014 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_553003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_553003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_553003(context, evt)
	-- 将configid为 553002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 553002, GadgetState.Default) then
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