-- 基础信息
local base_info = {
	group_id = 133101167
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 167001, monster_id = 21030301, pos = { x = 1325.560, y = 227.927, z = 1262.484 }, rot = { x = 0.000, y = 62.573, z = 0.000 }, level = 23, drop_tag = "丘丘萨满", disableWander = true, area_id = 6 },
	{ config_id = 167004, monster_id = 21010601, pos = { x = 1330.472, y = 227.506, z = 1260.308 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 23, drop_tag = "丘丘人", pose_id = 9003, area_id = 6 },
	{ config_id = 167005, monster_id = 21011001, pos = { x = 1327.663, y = 227.782, z = 1267.719 }, rot = { x = 0.000, y = 163.326, z = 0.000 }, level = 23, drop_tag = "远程丘丘人", pose_id = 9003, area_id = 6 },
	{ config_id = 167006, monster_id = 21011201, pos = { x = 1332.978, y = 227.325, z = 1265.308 }, rot = { x = 0.000, y = 256.463, z = 0.000 }, level = 23, drop_tag = "丘丘人", area_id = 6 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 167002, gadget_id = 70211012, pos = { x = 1334.818, y = 227.321, z = 1262.764 }, rot = { x = 357.716, y = 278.006, z = 356.971 }, level = 16, drop_tag = "战斗中级璃月", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 6 },
	{ config_id = 167007, gadget_id = 70220013, pos = { x = 1332.490, y = 227.652, z = 1258.234 }, rot = { x = 355.864, y = 220.074, z = 3.521 }, level = 19, area_id = 6 },
	{ config_id = 167008, gadget_id = 70220013, pos = { x = 1332.147, y = 227.520, z = 1268.737 }, rot = { x = 0.000, y = 297.453, z = 0.000 }, level = 19, area_id = 6 },
	{ config_id = 167009, gadget_id = 70300099, pos = { x = 1328.712, y = 227.433, z = 1264.038 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 19, state = GadgetState.GearStart, area_id = 6 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1167003, name = "ANY_MONSTER_DIE_167003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_167003", action = "action_EVENT_ANY_MONSTER_DIE_167003" }
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
		monsters = { 167001, 167004, 167005, 167006 },
		gadgets = { 167002, 167007, 167008, 167009 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_167003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_167003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_167003(context, evt)
	-- 将configid为 167002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 167002, GadgetState.Default) then
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