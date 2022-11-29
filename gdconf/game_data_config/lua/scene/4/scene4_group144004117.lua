-- 基础信息
local base_info = {
	group_id = 144004117
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 117004, monster_id = 21010301, pos = { x = -31.088, y = 202.252, z = -256.714 }, rot = { x = 0.000, y = 92.779, z = 0.000 }, level = 20, drop_tag = "丘丘人", pose_id = 9013, area_id = 101 },
	{ config_id = 117005, monster_id = 21010301, pos = { x = -28.849, y = 202.229, z = -253.742 }, rot = { x = 0.000, y = 177.223, z = 0.000 }, level = 20, drop_tag = "丘丘人", pose_id = 9013, area_id = 101 },
	{ config_id = 117006, monster_id = 21020101, pos = { x = -25.436, y = 202.202, z = -256.881 }, rot = { x = 0.000, y = 273.391, z = 0.000 }, level = 25, drop_tag = "丘丘暴徒", pose_id = 401, area_id = 101 },
	{ config_id = 117017, monster_id = 21010901, pos = { x = -42.397, y = 203.869, z = -268.283 }, rot = { x = 0.000, y = 117.558, z = 0.000 }, level = 20, drop_tag = "远程丘丘人", pose_id = 9003, area_id = 101 },
	{ config_id = 117018, monster_id = 21010901, pos = { x = -25.004, y = 203.866, z = -274.934 }, rot = { x = 0.000, y = 261.626, z = 0.000 }, level = 20, drop_tag = "远程丘丘人", pose_id = 9003, area_id = 101 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 117002, gadget_id = 70211002, pos = { x = -34.755, y = 202.212, z = -255.864 }, rot = { x = 0.000, y = 97.851, z = 0.000 }, level = 16, chest_drop_id = 1002000, drop_count = 1, state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 101 },
	{ config_id = 117012, gadget_id = 70310006, pos = { x = -24.186, y = 202.149, z = -253.854 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 101 },
	{ config_id = 117013, gadget_id = 70310006, pos = { x = -24.223, y = 202.171, z = -259.984 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 101 },
	{ config_id = 117014, gadget_id = 70220026, pos = { x = -23.479, y = 202.149, z = -256.104 }, rot = { x = 0.000, y = 334.134, z = 0.000 }, level = 1, area_id = 101 },
	{ config_id = 117015, gadget_id = 70950092, pos = { x = -42.471, y = 200.000, z = -268.396 }, rot = { x = 0.000, y = 39.200, z = 0.000 }, level = 1, area_id = 101 },
	{ config_id = 117016, gadget_id = 70950092, pos = { x = -24.987, y = 200.000, z = -275.124 }, rot = { x = 0.000, y = 15.246, z = 0.000 }, level = 1, area_id = 101 },
	{ config_id = 117019, gadget_id = 70220005, pos = { x = -26.378, y = 202.201, z = -253.794 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 101 },
	{ config_id = 117020, gadget_id = 70220005, pos = { x = -26.336, y = 202.201, z = -259.510 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 101 },
	{ config_id = 117021, gadget_id = 70220013, pos = { x = -26.763, y = 202.264, z = -249.703 }, rot = { x = 0.000, y = 27.123, z = 0.000 }, level = 1, area_id = 101 }
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

-- 废弃数据
garbages = {
	monsters = {
		{ config_id = 117001, monster_id = 21010201, pos = { x = -29.044, y = 202.204, z = -259.034 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, drop_tag = "丘丘人", disableWander = true, pose_id = 9014, area_id = 101 }
	},
	gadgets = {
		{ config_id = 117007, gadget_id = 50004002, pos = { x = -27.814, y = 202.205, z = -257.214 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 101 },
		{ config_id = 117008, gadget_id = 50004002, pos = { x = -28.321, y = 202.210, z = -255.610 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 101 },
		{ config_id = 117009, gadget_id = 50004002, pos = { x = -29.977, y = 202.228, z = -256.676 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 101 },
		{ config_id = 117010, gadget_id = 50004002, pos = { x = -28.768, y = 202.122, z = -250.274 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 101 },
		{ config_id = 117011, gadget_id = 50004002, pos = { x = -31.459, y = 202.170, z = -250.660 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 101 }
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
		monsters = { 117004, 117005, 117006, 117017, 117018 },
		gadgets = { 117002, 117012, 117013, 117014, 117015, 117016, 117019, 117020, 117021 },
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