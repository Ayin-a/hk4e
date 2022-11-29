-- 基础信息
local base_info = {
	group_id = 133217262
}

-- Trigger变量
local defs = {
	gadget_Teleport_1 = 262001,
	gadget_Teleport_2 = 262002,
	gadget_Teleport_3 = 262003,
	gadget_Teleport_4 = 262004,
	pointarray_1 = 321700015,
	pointarray_2 = 321700016,
	pointarray_3 = 321700017,
	pointarray_4 = 321700049,
	gadget_TeleportOperator_1 = 262005,
	gadget_TeleportOperator_2 = 0,
	gadget_TeleportOperator_3 = 0,
	gadget_TeleportOperator_4 = 0,
	group_ID = 133217262,
	pointarray_Rotate = 321700018,
	rotStep = 90,
	gadget_Teleport_5 = 262021,
	gadget_TeleportOperator_5 = 0
}

-- DEFS_MISCS
connectInfo = 
{
	{defs.gadget_Teleport_1,defs.gadget_Teleport_2,defs.pointarray_1,10},
	{defs.gadget_Teleport_1,defs.gadget_Teleport_3,defs.pointarray_2,10},
	{defs.gadget_Teleport_1,defs.gadget_Teleport_4,defs.pointarray_3,10},
	{defs.gadget_Teleport_1,defs.gadget_Teleport_5,defs.pointarray_4,10}
}


TeleportOwnerShip = 
{
	{defs.gadget_TeleportOperator_1, defs.gadget_Teleport_1},
	{defs.gadget_TeleportOperator_2, defs.gadget_Teleport_2},
	{defs.gadget_TeleportOperator_3, defs.gadget_Teleport_3},
	{defs.gadget_TeleportOperator_4, defs.gadget_Teleport_4},
	{defs.gadget_TeleportOperator_5, defs.gadget_Teleport_5}
}

staticForwardSet = {1,2,3,4,5,6,7,8,9,10}
staticBackwardSet = {10,9,8,7,6,5,4,3,2,1}


function GetTeleportNameByConfigID(context, config_id)
	for k,v  in pairs(defs)  do
		if v == config_id then 
			return k
		end
	end
end

function InitialTeleportRotationY(context)
	local rot
	local name
	local localtarget
	ScriptLib.PrintLog("Initial starting...")
	ScriptLib.SetGroupVariableValue(context,"isInitial",1)
	for i=1,#TeleportOwnerShip do
		localtarget = TeleportOwnerShip[i][2]
		if isTeleportValid(context,localtarget)==true then
			ScriptLib.PrintLog("Initial localtarget = "..localtarget)
			if localtarget ~= 0 then
				name = GetTeleportNameByConfigID(context,localtarget).."_state"
				rot = ScriptLib.GetGroupVariableValue(context,name)
				ScriptLib.PrintLog("Initial gadgetName = "..name .. " , Rot = "..rot)
	
				if rot == 90 then 
					ScriptLib.SetPlatformPointArray(context, localtarget, defs.pointarray_Rotate, { 1 }, { route_type = 0,turn_mode=true })
				elseif rot == 180 then
					ScriptLib.SetPlatformPointArray(context, localtarget, defs.pointarray_Rotate, { 2 }, { route_type = 0,turn_mode=true })
				elseif rot == 270 then
					ScriptLib.SetPlatformPointArray(context, localtarget, defs.pointarray_Rotate, { 3 }, { route_type = 0,turn_mode=true })
				end
			end
		end
	end
	ScriptLib.PrintLog("Initial ending...")
end

function InitialTeleportState(context)
	local tempname
	local localtarget
	for i=1,#TeleportOwnerShip do
		tempname = "gadget_Teleport_"..i.."_isActive"
		localtarget = TeleportOwnerShip[i][2]
		if isTeleportValid(context,localtarget)==true then
			if ScriptLib.GetGroupVariableValue(context,tempname) == 1 then 
				ScriptLib.SetGadgetStateByConfigId(context, localtarget, GadgetState.GearStart)
			else
				ScriptLib.SetGadgetStateByConfigId(context, localtarget, GadgetState.Default)
			end

		end

	end
	
end

function isTeleportValid(context,teleportID)
	local result = false
	if teleportID == 0 then return false end
	local state = ScriptLib.GetGadgetStateByConfigId(context, defs.group_ID, teleportID)

	if state ~= -1 then 
		result = true
	end
--[[ 	local suiteindex = ScriptLib.GetGroupSuite(context, defs.group_ID)
	for i=1, #suites[suiteindex].gadgets do
		if teleportID == suites[suiteindex].gadgets[i] then 
			result = true
			return result
		end 
	end ]]
	return result
end

function CheckIsConnected(context,teleport_aID,teleport_bID)

	if not (isTeleportValid(context,teleport_aID)) or not (isTeleportValid(context,teleport_bID)) then
		return false
	end

	--获取角度
	ScriptLib.PrintLog("CheckConnected from "..teleport_aID .. " to "..teleport_bID)
	local yrotation_a = ScriptLib.GetRotationByEntityId(context, ScriptLib.GetEntityIdByConfigId(context,teleport_aID)).y
	local yrotation_b = ScriptLib.GetRotationByEntityId(context, ScriptLib.GetEntityIdByConfigId(context,teleport_bID)).y
	ScriptLib.PrintLog("yrotation_a = "..yrotation_a .. "| yrotation_a =  "..yrotation_b)
	--转换为弧度
	local yrad_a = math.rad(yrotation_a) 
	local yrad_b = math.rad(yrotation_b)
	ScriptLib.PrintLog("yrad_a = "..yrad_a .. "| yrad_b =  "..yrad_b)

	--编辑器中的XZ和运行下的对应关系是反的,所以这里XZ左边调换了一下
	local dir_a = {x = math.sin(yrad_a), y = 0, z = math.cos(yrad_a)}
	local dir_b = {x = math.sin(yrad_b), y = 0, z = math.cos(yrad_b)}
	ScriptLib.PrintLog("dir_a : x = "..dir_a.x.." , y = "..dir_a.y.." , z = "..dir_a.z)
	ScriptLib.PrintLog("dir_b : x = "..dir_b.x.." , y = "..dir_b.y.." , z = "..dir_b.z)
	
	--获取两个点位置
	local pos_a = ScriptLib.GetPosByEntityId(context, ScriptLib.GetEntityIdByConfigId(context,teleport_aID))
	ScriptLib.PrintLog("pos_a : x = "..pos_a.x.." , y = "..pos_a.y.." , z = "..pos_a.z)
	local pos_b = ScriptLib.GetPosByEntityId(context, ScriptLib.GetEntityIdByConfigId(context,teleport_bID))
	ScriptLib.PrintLog("pos_b : x = "..pos_b.x.." , y = "..pos_b.y.." , z = "..pos_b.z)

	--计算两个点之间的方向,并且Normalize
	local diratob = {x = pos_b.x - pos_a.x,y = 0,z = pos_b.z - pos_a.z}
	local norDirAtoB = Normalize({x = pos_b.x - pos_a.x,y = 0,z = pos_b.z - pos_a.z})
	ScriptLib.PrintLog("norDirAtoB : x = "..norDirAtoB.x.." , y = "..norDirAtoB.y.." , z = "..norDirAtoB.z)
	local dirbtoa = {x = pos_a.x - pos_b.x,y = 0,z = pos_a.z - pos_b.z}
	local norDirBtoA = Normalize({x = pos_a.x - pos_b.x,y = 0,z = pos_a.z - pos_b.z})
	ScriptLib.PrintLog("norDirBtoA : x = "..norDirBtoA.x.." , y = "..norDirBtoA.y.." , z = "..norDirBtoA.z)

	--计算两个点的点乘结果
	local dotvalue_a = dir_a.x * norDirAtoB.x + dir_a.y * norDirAtoB.y + dir_a.z * norDirAtoB.z
	local dotvalue_b = dir_b.x * norDirBtoA.x + dir_b.y * norDirBtoA.y + dir_b.z * norDirBtoA.z

	ScriptLib.PrintLog("dotvalue_a "..dotvalue_a)
	ScriptLib.PrintLog("dotvalue_b "..dotvalue_b)

	--判断点乘结果是否大于0.5,也就是正负 45度范围
	if dotvalue_a >= 0.5  and dotvalue_b >= 0.5 then
		return true 
	end
	
	ScriptLib.PrintLog("invalid cos = ".. dotvalue_a)

	return false

end

--获取所有关联的传送点
function FindRelatedTargets(context,teleport_ID)
	local relatedtarget ={}
	for i=1,#connectInfo do
		if connectInfo[i][1] == teleport_ID or connectInfo[i][2] == teleport_ID then
			if connectInfo[i][1] == teleport_ID then
				--链接的Gadget ID, 对应的点阵ID, 点阵的indexArray, 速度
				table.insert(relatedtarget,{connectInfo[i][2],connectInfo[i][3],staticForwardSet,connectInfo[i][4]})
			elseif connectInfo[i][2] == teleport_ID then
				table.insert(relatedtarget,{connectInfo[i][1],connectInfo[i][3],staticBackwardSet,connectInfo[i][4]})
			end
		end
	end
	return relatedtarget
end

--在所有关联传送点中找到激活链接的,如果没有则返回nil
function GetConnectedTeleport(context,teleport_id)
	local related 
	related = FindRelatedTargets(context,teleport_id)

	for i=1,#related do
		if CheckIsConnected(context,teleport_id,related[i][1]) == true then 
			return related[i]
		end
	end
	return nil
end

--数学计算归一化
function Normalize(vet)
	local magnitude = math.sqrt(vet.x * vet.x + vet.y * vet.y + vet.z * vet.z)
	local newvect = {x = vet.x/magnitude, y = vet.y / magnitude, z = vet.z / magnitude}
	return newvect
end

--更新所有传送门的状态表现
function UpdateTeleportState(context)
	
	local teleportname
	for i=1,#TeleportOwnerShip do
			local connect = GetConnectedTeleport(context,TeleportOwnerShip[i][2])
			
		if connect == nil then 
			
			ScriptLib.SetGadgetStateByConfigId(context, TeleportOwnerShip[i][2], GadgetState.Default)
			teleportname = GetTeleportNameByConfigID(context, TeleportOwnerShip[i][2])
			teleportname = teleportname.."_isActive"
			ScriptLib.SetGroupVariableValue(context, teleportname, 0)
			ScriptLib.PrintLog("connect nothing : "..i)
		else
			

			--ScriptLib.PrintLog("connect count = "..#connect)
			--ScriptLib.PrintLog("connect{"..connect[1].." , "..connect[2].." , "..connect[3].."}")
			ScriptLib.SetGadgetStateByConfigId(context, TeleportOwnerShip[i][2], GadgetState.GearStart)
			teleportname = GetTeleportNameByConfigID(context, TeleportOwnerShip[i][2])
			teleportname = teleportname.."_isActive"
			ScriptLib.SetGroupVariableValue(context, teleportname, 1)
			ScriptLib.PrintLog("connect something = "..i)
			
		end

	end
end

--传送玩家, 只要给到对应的Teleportid就可以
function TeleportAction(context,teleport_id)
	local related = FindRelatedTargets(context, teleport_id)
	for i=1,#related do
		if CheckIsConnected(context,teleport_id,related[i][1]) == true then 
			ScriptLib.MoveAvatarByPointArray(context, context.uid, related[i][2], related[i][3], {speed=related[i][4]}, "{\"MarkType\":1}")
			return 0
		end
	end
end

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	-- Teleport #1
	{ config_id = 262001, gadget_id = 70950095, pos = { x = -4406.613, y = 170.637, z = -3807.570 }, rot = { x = 0.000, y = 133.874, z = 0.000 }, level = 2, persistent = true, is_use_point_array = true, area_id = 14 },
	-- Teleport #2
	{ config_id = 262002, gadget_id = 70950095, pos = { x = -4435.970, y = 188.016, z = -3836.432 }, rot = { x = 0.000, y = 48.798, z = 0.000 }, level = 2, persistent = true, is_use_point_array = true, area_id = 14 },
	-- Teleport #3
	{ config_id = 262003, gadget_id = 70950095, pos = { x = -4385.567, y = 181.945, z = -3789.208 }, rot = { x = 0.000, y = 226.021, z = 0.000 }, level = 2, persistent = true, is_use_point_array = true, area_id = 14 },
	-- Teleport #4
	{ config_id = 262004, gadget_id = 70950095, pos = { x = -4377.150, y = 182.921, z = -3833.961 }, rot = { x = 0.000, y = 311.709, z = 0.000 }, level = 2, persistent = true, is_use_point_array = true, area_id = 14 },
	-- Operator #5
	{ config_id = 262005, gadget_id = 70950145, pos = { x = -4406.770, y = 170.091, z = -3807.420 }, rot = { x = 0.000, y = 322.521, z = 0.000 }, level = 2, persistent = true, area_id = 14 },
	{ config_id = 262009, gadget_id = 70330114, pos = { x = -4406.516, y = 171.395, z = -3807.456 }, rot = { x = 5.127, y = 41.212, z = 349.610 }, level = 2, area_id = 14 },
	{ config_id = 262010, gadget_id = 70330114, pos = { x = -4435.970, y = 188.016, z = -3836.432 }, rot = { x = 0.000, y = 48.798, z = 0.000 }, level = 2, area_id = 14 },
	{ config_id = 262011, gadget_id = 70330114, pos = { x = -4385.567, y = 181.945, z = -3789.208 }, rot = { x = 0.000, y = 226.021, z = 0.000 }, level = 2, area_id = 14 },
	{ config_id = 262012, gadget_id = 70330114, pos = { x = -4377.403, y = 182.683, z = -3833.736 }, rot = { x = 0.000, y = 311.709, z = 0.000 }, level = 2, area_id = 14 },
	{ config_id = 262013, gadget_id = 70330114, pos = { x = -4406.813, y = 171.273, z = -3807.551 }, rot = { x = 0.000, y = 139.438, z = 0.000 }, level = 2, area_id = 14 },
	{ config_id = 262014, gadget_id = 70330114, pos = { x = -4406.813, y = 171.273, z = -3807.551 }, rot = { x = 0.000, y = 234.846, z = 0.000 }, level = 2, area_id = 14 },
	{ config_id = 262019, gadget_id = 70900387, pos = { x = -4377.595, y = 182.400, z = -3832.098 }, rot = { x = 1.160, y = 92.180, z = 351.044 }, level = 30, isOneoff = true, persistent = true, area_id = 14 },
	{ config_id = 262020, gadget_id = 70330064, pos = { x = -4384.287, y = 179.905, z = -3836.804 }, rot = { x = 348.460, y = 99.904, z = 354.889 }, level = 30, interact_id = 35, area_id = 14 },
	-- Teleport #5
	{ config_id = 262021, gadget_id = 70950095, pos = { x = -4434.609, y = 164.922, z = -3773.924 }, rot = { x = 359.788, y = 141.030, z = 359.049 }, level = 30, persistent = true, is_use_point_array = true, area_id = 14 },
	{ config_id = 262022, gadget_id = 70330114, pos = { x = -4406.938, y = 171.239, z = -3807.256 }, rot = { x = 8.184, y = 310.811, z = 357.825 }, level = 30, area_id = 14 }
}

-- 区域
regions = {
	-- Trigger #5
	{ config_id = 262006, shape = RegionShape.SPHERE, radius = 1.5, pos = { x = -4433.839, y = 165.669, z = -3774.863 }, area_id = 14 },
	-- Trigger #1
	{ config_id = 262015, shape = RegionShape.SPHERE, radius = 1.5, pos = { x = -4406.288, y = 171.470, z = -3807.791 }, area_id = 14 },
	-- Trigger #2
	{ config_id = 262016, shape = RegionShape.SPHERE, radius = 1.5, pos = { x = -4436.156, y = 188.631, z = -3836.615 }, area_id = 14 },
	-- Trigger #3
	{ config_id = 262017, shape = RegionShape.SPHERE, radius = 1.5, pos = { x = -4385.567, y = 181.945, z = -3789.208 }, area_id = 14 },
	-- Trigger #4
	{ config_id = 262018, shape = RegionShape.SPHERE, radius = 1.5, pos = { x = -4378.428, y = 183.414, z = -3832.929 }, area_id = 14 }
}

-- 触发器
triggers = {
	-- Trigger #5
	{ config_id = 1262006, name = "ENTER_REGION_262006", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_262006", action = "action_EVENT_ENTER_REGION_262006", trigger_count = 0, forbid_guest = false },
	-- 初始化使用, 开启一个延迟的TimeAxis
	{ config_id = 1262007, name = "GROUP_LOAD_262007", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_262007", trigger_count = 0 },
	-- 延迟处理初始化的状态设置
	{ config_id = 1262008, name = "TIME_AXIS_PASS_262008", event = EventType.EVENT_TIME_AXIS_PASS, source = "InitialEnding", condition = "", action = "action_EVENT_TIME_AXIS_PASS_262008", trigger_count = 0 },
	-- Trigger #1
	{ config_id = 1262015, name = "ENTER_REGION_262015", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_262015", action = "action_EVENT_ENTER_REGION_262015", trigger_count = 0, forbid_guest = false },
	-- Trigger #2
	{ config_id = 1262016, name = "ENTER_REGION_262016", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_262016", action = "action_EVENT_ENTER_REGION_262016", trigger_count = 0, forbid_guest = false },
	-- Trigger #3
	{ config_id = 1262017, name = "ENTER_REGION_262017", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_262017", action = "action_EVENT_ENTER_REGION_262017", trigger_count = 0, forbid_guest = false },
	-- Trigger #4
	{ config_id = 1262018, name = "ENTER_REGION_262018", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_262018", action = "action_EVENT_ENTER_REGION_262018", trigger_count = 0, forbid_guest = false },
	-- 玩家操作控制台旋转传送门
	{ config_id = 1262023, name = "SELECT_OPTION_262023", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_262023", action = "action_EVENT_SELECT_OPTION_262023", trigger_count = 0 },
	-- 旋转到位之后的判断
	{ config_id = 1262024, name = "PLATFORM_REACH_POINT_262024", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_262024", action = "action_EVENT_PLATFORM_REACH_POINT_262024", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "isInitial", value = 1, no_refresh = false },
	{ config_id = 2, name = "gadget_Teleport_1_isActive", value = 0, no_refresh = true },
	{ config_id = 3, name = "gadget_Teleport_2_isActive", value = 0, no_refresh = true },
	{ config_id = 4, name = "gadget_Teleport_3_isActive", value = 0, no_refresh = true },
	{ config_id = 5, name = "gadget_Teleport_4_isActive", value = 0, no_refresh = true },
	{ config_id = 6, name = "gadget_Teleport_5_isActive", value = 0, no_refresh = true },
	{ config_id = 7, name = "gadget_Teleport_1_state", value = 0, no_refresh = true },
	{ config_id = 8, name = "gadget_Teleport_2_state", value = 0, no_refresh = true },
	{ config_id = 9, name = "gadget_Teleport_3_state", value = 0, no_refresh = true },
	{ config_id = 10, name = "gadget_Teleport_4_state", value = 0, no_refresh = true },
	{ config_id = 11, name = "gadget_Teleport_5_state", value = 0, no_refresh = true }
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
		monsters = { },
		gadgets = { 262001, 262002, 262003, 262004, 262005, 262009, 262010, 262011, 262012, 262013, 262014, 262019, 262020, 262021, 262022 },
		regions = { 262006, 262015, 262016, 262017, 262018 },
		triggers = { "ENTER_REGION_262006", "GROUP_LOAD_262007", "TIME_AXIS_PASS_262008", "ENTER_REGION_262015", "ENTER_REGION_262016", "ENTER_REGION_262017", "ENTER_REGION_262018", "SELECT_OPTION_262023", "PLATFORM_REACH_POINT_262024" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_262006(context, evt)
	if evt.param1 ~= 262006 then return false end
	
	-- 判断变量"gadget_Teleport_5_isActive"为1
	if ScriptLib.GetGroupVariableValue(context, "gadget_Teleport_5_isActive") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_262006(context, evt)
			--gadget_Teleport_5 trigger
			local teleportid = defs["gadget_Teleport_5"]
			TeleportAction(context, teleportid)
			return 0
end

-- 触发操作
function action_EVENT_GROUP_LOAD_262007(context, evt)
		InitialTeleportRotationY(context)
		InitialTeleportState(context)
		ScriptLib.InitTimeAxis(context, "InitialEnding", {1}, false)
				
		
	return 0
end

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_262008(context, evt)
			UpdateTeleportState(context)
			for i = 1, #TeleportOwnerShip do 
				if TeleportOwnerShip[i][1] ~= 0 then
					ScriptLib.SetWorktopOptionsByGroupId(context, defs.group_ID, TeleportOwnerShip[i][1], {31})
				end
				
			end
			return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_262015(context, evt)
	if evt.param1 ~= 262015 then return false end
	
	-- 判断变量"gadget_Teleport_1_isActive"为1
	if ScriptLib.GetGroupVariableValue(context, "gadget_Teleport_1_isActive") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_262015(context, evt)
			--gadget_Teleport_1 trigger
			local teleportid = defs["gadget_Teleport_1"]
			TeleportAction(context, teleportid)
			return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_262016(context, evt)
	if evt.param1 ~= 262016 then return false end
	
	-- 判断变量"gadget_Teleport_2_isActive"为1
	if ScriptLib.GetGroupVariableValue(context, "gadget_Teleport_2_isActive") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_262016(context, evt)
			--gadget_Teleport_2 trigger
			local teleportid = defs["gadget_Teleport_2"]
			TeleportAction(context, teleportid)
			return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_262017(context, evt)
	if evt.param1 ~= 262017 then return false end
	
	-- 判断变量"gadget_Teleport_3_isActive"为1
	if ScriptLib.GetGroupVariableValue(context, "gadget_Teleport_3_isActive") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_262017(context, evt)
			--gadget_Teleport_3 trigger
			local teleportid = defs["gadget_Teleport_3"]
			TeleportAction(context, teleportid)
			return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_262018(context, evt)
	if evt.param1 ~= 262018 then return false end
	
	-- 判断变量"gadget_Teleport_4_isActive"为1
	if ScriptLib.GetGroupVariableValue(context, "gadget_Teleport_4_isActive") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_262018(context, evt)
			--gadget_Teleport_4 trigger
			local teleportid = defs["gadget_Teleport_4"]
			TeleportAction(context, teleportid)
			return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_262023(context, evt)
			local result = false
			for i = 1, #TeleportOwnerShip do 
				if TeleportOwnerShip[i][1] ~= evt.param1 then 
					result = false
				else 
					result = true
					if 31 ~= evt.param2 then
						result = false
					end
					return result
				end
			end
		
		return result
end

-- 触发操作
function action_EVENT_SELECT_OPTION_262023(context, evt)
		local localtarget
			local localoption
		
				for i=1,#TeleportOwnerShip do
					if TeleportOwnerShip[i][1] == evt.param1 then
						localtarget = TeleportOwnerShip[i][2]
						localoption = TeleportOwnerShip[i][1]
					end
				end
				--旋转时取消所有的Option
				for i = 1, #TeleportOwnerShip do 
					if TeleportOwnerShip[i][1] ~= 0 then
						ScriptLib.DelWorktopOptionByGroupId(context, defs.group_ID, TeleportOwnerShip[i][1], 31)
					end
				end
				
	
				ScriptLib.SetGroupVariableValue(context,"isInitial",0)
				
				ScriptLib.PrintLog("evt.gadgetid = "..evt.param1)
				ScriptLib.PrintLog("localtarget = "..localtarget)
				ScriptLib.SetPlatformPointArray(context, localtarget, defs.pointarray_Rotate, { 1 }, { route_type = 0,turn_mode=true })
	
		
				return 0
end

-- 触发条件
function condition_EVENT_PLATFORM_REACH_POINT_262024(context, evt)
		ScriptLib.PrintLog("Reachpoint_condition : "..evt.param1)
	
		local result = false
		for i = 1, #TeleportOwnerShip do 
			if TeleportOwnerShip[i][2] ~= evt.param1 then 
				result = false
			else 
				result = true
				if ScriptLib.GetGroupVariableValue(context,"isInitial") ~= 0 then
					result =  false
				end
				return result
			end
		end
		return result
end

-- 触发操作
function action_EVENT_PLATFORM_REACH_POINT_262024(context, evt)
		ScriptLib.PrintLog("Reachpoint_action : "..evt.param1)
		--旋转完成后再重新加回所有的Option
		for i = 1, #TeleportOwnerShip do 
			if TeleportOwnerShip[i][1] ~= 0 then
				ScriptLib.SetWorktopOptionsByGroupId(context, defs.group_ID, TeleportOwnerShip[i][1], {31})
			end
		end
	
		UpdateTeleportState(context)
	
		-- set teleprot rotation and save to group variable
		local name = GetTeleportNameByConfigID(context,evt.param1).."_state"
		ScriptLib.PrintLog("gadgetname = "..name)
		local prerot = ScriptLib.GetGroupVariableValue(context,name)
		ScriptLib.PrintLog("prerot = ".. prerot)
		prerot = prerot + defs.rotStep
		if prerot >= 360 then
		prerot = 0
		end
		ScriptLib.PrintLog("prerot ++ = ".. prerot)
		ScriptLib.SetGroupVariableValue(context,name,prerot)
	
		return 0
end