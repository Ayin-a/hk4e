-- 基础信息
local base_info = {
	group_id = 177006026
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 26001, monster_id = 24010101, pos = { x = 135.720, y = 186.083, z = -405.855 }, rot = { x = 0.000, y = 135.663, z = 0.000 }, level = 36, drop_tag = "遗迹守卫", disableWander = true, affix = { 5009, 5135, 1006 }, pose_id = 101, area_id = 210 },
	{ config_id = 26004, monster_id = 24010101, pos = { x = 142.062, y = 185.937, z = -426.254 }, rot = { x = 0.000, y = 351.632, z = 0.000 }, level = 36, drop_tag = "遗迹守卫", disableWander = true, affix = { 5009, 5135, 1006 }, pose_id = 101, area_id = 210 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 26002, gadget_id = 70211157, pos = { x = 131.127, y = 185.908, z = -420.373 }, rot = { x = 0.000, y = 239.184, z = 0.000 }, level = 26, drop_tag = "渊下宫活动中级稻妻", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, area_id = 210 },
	{ config_id = 26005, gadget_id = 70290279, pos = { x = 128.684, y = 190.601, z = -421.760 }, rot = { x = 0.000, y = 60.145, z = 0.000 }, level = 36, persistent = true, area_id = 210 },
	{ config_id = 26007, gadget_id = 70290282, pos = { x = 154.658, y = 191.082, z = -405.804 }, rot = { x = 0.000, y = 59.148, z = 0.000 }, level = 36, persistent = true, area_id = 210 }
}

-- 区域
regions = {
	{ config_id = 26006, shape = RegionShape.SPHERE, radius = 10, pos = { x = 143.565, y = 185.929, z = -414.220 }, area_id = 210 }
}

-- 触发器
triggers = {
	{ config_id = 1026003, name = "ANY_MONSTER_DIE_26003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_26003", action = "action_EVENT_ANY_MONSTER_DIE_26003", trigger_count = 0 },
	{ config_id = 1026006, name = "ENTER_REGION_26006", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_26006", action = "action_EVENT_ENTER_REGION_26006", trigger_count = 0 },
	-- beta保底
	{ config_id = 1026008, name = "GADGET_CREATE_26008", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_26008", action = "action_EVENT_GADGET_CREATE_26008", trigger_count = 0 }
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
		monsters = { 26001, 26004 },
		gadgets = { 26002, 26005, 26007 },
		regions = { 26006 },
		triggers = { "ANY_MONSTER_DIE_26003", "ENTER_REGION_26006", "GADGET_CREATE_26008" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_26003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_26003(context, evt)
	-- 将configid为 26002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 26002, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 26005 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	-- 触发镜头注目，注目位置为坐标{x=128.5614, y=190.5389, z=-421.7982}，持续时间为1.5秒，并且为强制注目形式，不广播其他玩家
		local pos = {x=128.5614, y=190.5389, z=-421.7982}
	  local pos_follow = {x=0, y=0, z=0}
	    if 0 ~= ScriptLib.BeginCameraSceneLook(context, { look_pos = pos, is_allow_input = false, duration = 1.5, is_force = true, is_broadcast = false, is_recover_keep_current = true, delay = 1,
	                                                      is_set_follow_pos = false, follow_pos = pos_follow, is_force_walk = false, is_change_play_mode = false,
	                                                      is_set_screen_XY = false, screen_x = 0, screen_y = 0 }) then
					ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_cameraLook_Begin")
	        return -1
				end 
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 4000, 3, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_26006(context, evt)
	if evt.param1 ~= 26006 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_26006(context, evt)
		-- 改变指定monster的globalvalue
	  ScriptLib.AddEntityGlobalFloatValueByConfigId(context, {26001}, "_MONSTERAFFIX_AIHITFEELING_LEVELTRIGGER", 1)
	
		-- 改变指定monster的globalvalue
	  ScriptLib.AddEntityGlobalFloatValueByConfigId(context, {26004}, "_MONSTERAFFIX_AIHITFEELING_LEVELTRIGGER", 1)
	
	-- 通知groupid为177006026中,configid为：26001的怪物入战或者脱战，set为1是入战，为0是脱战
	if 0 ~= ScriptLib.SetMonsterBattleByGroup(context, 26001, 177006026) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_monster_battle_by_group")
	  return -1
	end
	
	-- 通知groupid为177006026中,configid为：26004的怪物入战或者脱战，set为1是入战，为0是脱战
	if 0 ~= ScriptLib.SetMonsterBattleByGroup(context, 26004, 177006026) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_monster_battle_by_group")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_26008(context, evt)
	if GadgetState.GearAction1 ~= ScriptLib.GetGadgetStateByConfigId(context, 177006091, 91001) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_26008(context, evt)
	-- 将configid为 26007 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 26007, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end