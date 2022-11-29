--此方法在两个region坐标接近时调用比较合适
function TrySetPlayerEyePoint(context, small_region, big_region, opt_type, vision_type_list)
	--opt_type为1表示需要setVisionType
	local eid = ScriptLib.GetAvatarEntityIdByUid(context, context.uid)
	local player_pos = ScriptLib.GetPosByEntityId(context, eid)
	local small_pos = small_region.pos
	local big_pos = big_region.pos
	--在小圈内要处理入圈
	if Is_In_Region(player_pos, small_region) == true then 
		ScriptLib.SetPlayerEyePoint(context, small_region.config_id,big_region.config_id)
		if opt_type == 1 then
			ScriptLib.SetPlayerGroupVisionType(context, {context.uid}, vision_type_list)
		end
	--在大圈外要处理出圈
	elseif Is_In_Region(player_pos, big_region) == false then
		ScriptLib.ClearPlayerEyePoint(context, small_region.config_id)
		if opt_type == 1 then
			ScriptLib.SetPlayerGroupVisionType(context, {context.uid}, {1})
		end
	end
end

function Is_In_Region(pos1, region)
	local X = pos1.x - region.pos.x
	local Y = pos1.y - region.pos.y
	local Z = pos1.z - region.pos.z
	if region.shape == RegionShape.SPHERE then
		if math.sqrt(X*X+Y*Y+Z*Z) <= region.radius then
			return true
		else 
			return false
		end
	elseif region.shape == RegionShape.CUBIC then
		if math.abs(X) > region.size.x/2 or math.abs(Y) > region.size.y/2 or math.abs(Z) > region.size.z/2 then
			return false
		else
			return true
		end
	end
end