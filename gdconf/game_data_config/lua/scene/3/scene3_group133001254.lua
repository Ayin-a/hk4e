-- 基础信息
local base_info = {
	group_id = 133001254
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 254015, monster_id = 21010601, pos = { x = 1717.984, y = 233.709, z = -1150.507 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 9, drop_tag = "丘丘人", area_id = 2 },
	{ config_id = 254016, monster_id = 21030201, pos = { x = 1715.724, y = 233.826, z = -1154.540 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 9, drop_tag = "丘丘萨满", disableWander = true, pose_id = 9012, area_id = 2 },
	{ config_id = 254017, monster_id = 21010201, pos = { x = 1722.125, y = 235.930, z = -1154.351 }, rot = { x = 0.000, y = 85.586, z = 0.000 }, level = 9, drop_tag = "丘丘人", disableWander = true, pose_id = 9002, area_id = 2 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 254001, gadget_id = 70220020, pos = { x = 1723.432, y = 233.252, z = -1146.666 }, rot = { x = 0.000, y = 352.911, z = 0.000 }, level = 10, area_id = 2 },
	{ config_id = 254002, gadget_id = 70211012, pos = { x = 1724.686, y = 236.874, z = -1159.682 }, rot = { x = 0.000, y = 334.156, z = 0.000 }, level = 6, drop_tag = "战斗中级蒙德", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 2 },
	{ config_id = 254004, gadget_id = 70220020, pos = { x = 1727.211, y = 234.698, z = -1150.678 }, rot = { x = 0.000, y = 37.260, z = 12.661 }, level = 10, area_id = 2 },
	{ config_id = 254005, gadget_id = 70220020, pos = { x = 1693.849, y = 232.850, z = -1163.015 }, rot = { x = 0.000, y = 26.845, z = 0.000 }, level = 10, area_id = 2 },
	{ config_id = 254006, gadget_id = 70220020, pos = { x = 1697.749, y = 232.401, z = -1165.217 }, rot = { x = 0.000, y = 52.301, z = 0.000 }, level = 10, area_id = 2 },
	{ config_id = 254007, gadget_id = 70220020, pos = { x = 1696.373, y = 232.342, z = -1170.873 }, rot = { x = 0.000, y = 61.556, z = 0.000 }, level = 10, area_id = 2 },
	{ config_id = 254008, gadget_id = 70220020, pos = { x = 1699.472, y = 232.747, z = -1173.149 }, rot = { x = 357.398, y = 52.556, z = 7.549 }, level = 10, area_id = 2 },
	{ config_id = 254009, gadget_id = 70220020, pos = { x = 1703.716, y = 233.410, z = -1172.917 }, rot = { x = 358.886, y = 3.891, z = 15.946 }, level = 10, area_id = 2 },
	{ config_id = 254010, gadget_id = 70220013, pos = { x = 1705.872, y = 233.256, z = -1170.210 }, rot = { x = 0.000, y = 187.688, z = 0.000 }, level = 10, area_id = 2 },
	{ config_id = 254011, gadget_id = 70220013, pos = { x = 1707.919, y = 233.694, z = -1170.160 }, rot = { x = 0.177, y = 29.479, z = 6.814 }, level = 10, area_id = 2 },
	{ config_id = 254012, gadget_id = 70220013, pos = { x = 1695.679, y = 232.760, z = -1161.919 }, rot = { x = 0.000, y = 303.460, z = 0.000 }, level = 10, area_id = 2 },
	{ config_id = 254013, gadget_id = 70220013, pos = { x = 1721.075, y = 233.284, z = -1143.153 }, rot = { x = 0.000, y = 162.420, z = 0.000 }, level = 10, area_id = 2 },
	{ config_id = 254014, gadget_id = 70220013, pos = { x = 1716.612, y = 233.520, z = -1146.540 }, rot = { x = 0.000, y = 162.420, z = 0.000 }, level = 10, area_id = 2 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1254003, name = "ANY_MONSTER_DIE_254003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_254003", action = "action_EVENT_ANY_MONSTER_DIE_254003" }
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
		monsters = { 254015, 254016, 254017 },
		gadgets = { 254001, 254002, 254004, 254005, 254006, 254007, 254008, 254009, 254010, 254011, 254012, 254013, 254014 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_254003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_254003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_254003(context, evt)
	-- 将configid为 254002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 254002, GadgetState.Default) then
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