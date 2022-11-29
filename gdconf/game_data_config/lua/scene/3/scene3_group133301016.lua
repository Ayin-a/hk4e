-- 基础信息
local base_info = {
	group_id = 133301016
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 16001, monster_id = 25210203, pos = { x = -780.716, y = 191.558, z = 3643.992 }, rot = { x = 0.000, y = 242.298, z = 0.000 }, level = 33, drop_tag = "镀金旅团", disableWander = true, pose_id = 9006, area_id = 23 },
	{ config_id = 16004, monster_id = 25210202, pos = { x = -760.298, y = 200.593, z = 3641.100 }, rot = { x = 0.000, y = 307.695, z = 0.000 }, level = 33, drop_tag = "镀金旅团", disableWander = true, pose_id = 9512, area_id = 23 },
	{ config_id = 16013, monster_id = 25210302, pos = { x = -753.807, y = 197.348, z = 3617.005 }, rot = { x = 0.000, y = 26.867, z = 0.000 }, level = 33, drop_tag = "镀金旅团", pose_id = 9504, area_id = 23 },
	{ config_id = 16016, monster_id = 25210202, pos = { x = -762.165, y = 200.593, z = 3642.121 }, rot = { x = 0.000, y = 125.482, z = 0.000 }, level = 33, drop_tag = "镀金旅团", disableWander = true, pose_id = 9511, area_id = 23 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 16002, gadget_id = 70211002, pos = { x = -743.923, y = 208.146, z = 3637.770 }, rot = { x = 6.985, y = 36.252, z = 0.756 }, level = 26, drop_tag = "战斗低级须弥", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 10 }, area_id = 23 },
	{ config_id = 16005, gadget_id = 70330197, pos = { x = -742.060, y = 200.065, z = 3629.126 }, rot = { x = 349.504, y = 68.705, z = 358.098 }, level = 33, area_id = 23 },
	{ config_id = 16007, gadget_id = 70220048, pos = { x = -782.497, y = 191.502, z = 3642.845 }, rot = { x = 0.000, y = 321.591, z = 356.742 }, level = 33, area_id = 23 },
	{ config_id = 16008, gadget_id = 70220048, pos = { x = -782.095, y = 191.521, z = 3645.270 }, rot = { x = 0.572, y = 40.599, z = 357.125 }, level = 33, area_id = 23 },
	{ config_id = 16009, gadget_id = 70220048, pos = { x = -759.400, y = 200.441, z = 3645.930 }, rot = { x = 2.467, y = 10.792, z = 357.872 }, level = 33, area_id = 23 },
	{ config_id = 16010, gadget_id = 70220048, pos = { x = -758.239, y = 200.414, z = 3644.191 }, rot = { x = 359.615, y = 314.819, z = 356.765 }, level = 33, area_id = 23 },
	{ config_id = 16011, gadget_id = 70220048, pos = { x = -740.577, y = 208.212, z = 3638.163 }, rot = { x = 3.061, y = 81.059, z = 1.735 }, level = 33, area_id = 22 },
	{ config_id = 16012, gadget_id = 70220048, pos = { x = -738.973, y = 208.124, z = 3639.875 }, rot = { x = 3.498, y = 57.656, z = 0.378 }, level = 33, area_id = 22 },
	{ config_id = 16014, gadget_id = 70210101, pos = { x = -761.976, y = 200.421, z = 3645.156 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜果蔬须弥", persistent = true, area_id = 23 },
	{ config_id = 16015, gadget_id = 70210101, pos = { x = -763.747, y = 193.039, z = 3626.485 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜遗物须弥", persistent = true, area_id = 23 },
	{ config_id = 16017, gadget_id = 70210101, pos = { x = -732.868, y = 205.405, z = 3592.406 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜遗物须弥", persistent = true, area_id = 22 },
	{ config_id = 16018, gadget_id = 70210101, pos = { x = -781.458, y = 191.508, z = 3644.767 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜遗物须弥", persistent = true, area_id = 23 },
	{ config_id = 16019, gadget_id = 70220128, pos = { x = -761.188, y = 200.470, z = 3641.651 }, rot = { x = 0.000, y = 34.357, z = 0.000 }, level = 33, area_id = 23 },
	{ config_id = 16020, gadget_id = 70210101, pos = { x = -728.686, y = 202.929, z = 3609.130 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜遗物须弥", persistent = true, area_id = 22 },
	{ config_id = 16021, gadget_id = 70217020, pos = { x = -740.892, y = 212.469, z = 3650.372 }, rot = { x = 335.701, y = 19.693, z = 13.084 }, level = 26, drop_tag = "摩拉石箱须弥", isOneoff = true, persistent = true, explore = { name = "chest", exp = 4 }, area_id = 23 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1016003, name = "ANY_MONSTER_DIE_16003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_16003", action = "action_EVENT_ANY_MONSTER_DIE_16003" }
}

-- 变量
variables = {
}

-- 废弃数据
garbages = {
	gadgets = {
		{ config_id = 16006, gadget_id = 70310006, pos = { x = -755.857, y = 199.148, z = 3614.698 }, rot = { x = 0.000, y = 23.881, z = 0.000 }, level = 33, state = GadgetState.GearStart, area_id = 23 }
	}
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
		monsters = { 16001, 16004, 16013, 16016 },
		gadgets = { 16002, 16005, 16007, 16008, 16009, 16010, 16011, 16012, 16014, 16015, 16017, 16018, 16019, 16020, 16021 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_16003" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_16003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_16003(context, evt)
	-- 将configid为 16002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 16002, GadgetState.Default) then
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