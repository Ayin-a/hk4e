-- 基础信息
local base_info = {
	group_id = 133213001
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 1001, monster_id = 21010401, pos = { x = -3361.374, y = 202.453, z = -3712.484 }, rot = { x = 353.444, y = 252.881, z = 10.244 }, level = 27, drop_tag = "远程丘丘人", disableWander = true, pose_id = 9016, area_id = 12 },
	{ config_id = 1004, monster_id = 21010901, pos = { x = -3351.230, y = 200.047, z = -3733.484 }, rot = { x = 0.549, y = 205.380, z = 7.159 }, level = 27, drop_tag = "远程丘丘人", disableWander = true, pose_id = 9002, area_id = 12 },
	{ config_id = 1005, monster_id = 21020101, pos = { x = -3351.800, y = 201.737, z = -3703.733 }, rot = { x = 1.420, y = 168.563, z = 6.983 }, level = 27, drop_tag = "丘丘暴徒", disableWander = true, pose_id = 401, area_id = 12 },
	{ config_id = 1013, monster_id = 21010701, pos = { x = -3351.028, y = 200.016, z = -3740.133 }, rot = { x = 0.894, y = 359.972, z = 356.424 }, level = 27, drop_tag = "丘丘人", area_id = 12 },
	{ config_id = 1014, monster_id = 21010101, pos = { x = -3349.811, y = 201.516, z = -3707.314 }, rot = { x = 355.820, y = 44.908, z = 356.204 }, level = 27, drop_tag = "丘丘人", pose_id = 9002, area_id = 12 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 1002, gadget_id = 70211002, pos = { x = -3353.136, y = 201.771, z = -3707.077 }, rot = { x = 4.343, y = 69.938, z = 353.689 }, level = 26, drop_tag = "战斗低级稻妻", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 12 },
	{ config_id = 1006, gadget_id = 70310006, pos = { x = -3351.038, y = 201.656, z = -3705.958 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 12 },
	{ config_id = 1007, gadget_id = 70210101, pos = { x = -3362.731, y = 202.559, z = -3712.904 }, rot = { x = 352.132, y = 81.865, z = 350.721 }, level = 26, drop_tag = "搜刮点解谜通用稻妻", area_id = 12 },
	{ config_id = 1008, gadget_id = 70220013, pos = { x = -3358.269, y = 201.472, z = -3718.037 }, rot = { x = 356.921, y = 356.407, z = 349.704 }, level = 27, area_id = 12 },
	{ config_id = 1009, gadget_id = 70220013, pos = { x = -3357.467, y = 201.173, z = -3720.445 }, rot = { x = 354.074, y = 326.433, z = 354.325 }, level = 27, area_id = 12 },
	{ config_id = 1010, gadget_id = 70220026, pos = { x = -3356.390, y = 201.163, z = -3718.353 }, rot = { x = 357.332, y = 0.146, z = 353.758 }, level = 27, area_id = 12 },
	{ config_id = 1011, gadget_id = 70220014, pos = { x = -3348.138, y = 201.376, z = -3704.423 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 12 },
	{ config_id = 1012, gadget_id = 70220014, pos = { x = -3358.319, y = 202.677, z = -3705.925 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 12 },
	{ config_id = 1015, gadget_id = 70220013, pos = { x = -3357.467, y = 201.173, z = -3720.445 }, rot = { x = 354.074, y = 326.433, z = 354.325 }, level = 27, area_id = 12 },
	{ config_id = 1016, gadget_id = 70220013, pos = { x = -3358.771, y = 200.385, z = -3736.177 }, rot = { x = 0.423, y = 5.416, z = 355.553 }, level = 27, area_id = 12 },
	{ config_id = 1017, gadget_id = 70220014, pos = { x = -3360.714, y = 200.526, z = -3737.324 }, rot = { x = 0.002, y = 0.028, z = 356.424 }, level = 27, area_id = 12 },
	{ config_id = 1018, gadget_id = 70900393, pos = { x = -3361.914, y = 200.713, z = -3735.262 }, rot = { x = 353.770, y = 0.195, z = 356.424 }, level = 27, area_id = 12 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1001003, name = "ANY_MONSTER_DIE_1003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_1003", action = "action_EVENT_ANY_MONSTER_DIE_1003" }
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
		monsters = { 1001, 1004, 1005, 1013, 1014 },
		gadgets = { 1002, 1006, 1007, 1008, 1009, 1010, 1011, 1012, 1015, 1016, 1017, 1018 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_1003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_1003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_1003(context, evt)
	-- 将configid为 1002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 1002, GadgetState.Default) then
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