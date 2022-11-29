-- 基础信息
local base_info = {
	group_id = 133210117
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 117004, monster_id = 23050101, pos = { x = -3580.129, y = 200.593, z = -498.168 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, drop_tag = "藏镜侍女", area_id = 17 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 117001, gadget_id = 70220048, pos = { x = -3575.082, y = 200.428, z = -495.142 }, rot = { x = 356.195, y = 261.311, z = 358.774 }, level = 30, area_id = 17 },
	{ config_id = 117002, gadget_id = 70211002, pos = { x = -3579.202, y = 200.623, z = -496.108 }, rot = { x = 1.143, y = 160.459, z = 0.544 }, level = 26, drop_tag = "战斗低级稻妻", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 17 },
	{ config_id = 117005, gadget_id = 70220048, pos = { x = -3586.218, y = 200.082, z = -498.849 }, rot = { x = 355.070, y = 95.222, z = 355.084 }, level = 30, area_id = 17 },
	{ config_id = 117006, gadget_id = 70220051, pos = { x = -3573.680, y = 200.324, z = -494.610 }, rot = { x = 357.076, y = 200.407, z = 2.727 }, level = 30, area_id = 17 },
	{ config_id = 117007, gadget_id = 70220051, pos = { x = -3573.771, y = 200.364, z = -495.721 }, rot = { x = 357.873, y = 185.539, z = 3.385 }, level = 30, area_id = 17 },
	{ config_id = 117008, gadget_id = 70220050, pos = { x = -3584.509, y = 200.276, z = -498.417 }, rot = { x = 3.879, y = 173.942, z = 354.219 }, level = 30, area_id = 17 },
	{ config_id = 117009, gadget_id = 70710414, pos = { x = -3583.826, y = 200.412, z = -496.990 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 17 }
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
		monsters = { 117004 },
		gadgets = { 117001, 117002, 117005, 117006, 117007, 117008, 117009 },
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