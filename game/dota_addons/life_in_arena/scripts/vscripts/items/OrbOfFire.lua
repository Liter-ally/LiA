function OnOrbImpact( event )
	local caster = event.caster
	local target = event.target
	local targets = event.target_entities
	local damage = event.Damage
	for _,v in pairs(targets) do
		if v ~= target then
			ApplyDamage({ victim = v, attacker = caster, damage = damage, damage_type = DAMAGE_TYPE_PURE })
		end
	end
end