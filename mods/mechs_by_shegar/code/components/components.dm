/obj/item/mech_component
	///
	///Отвечает за минимальное возможное ХП части меха, ОБЯЗАТЕЛЬНО прописывайте этот пункт. При ремонте повреждений
	///листом материала максимальное ХП части меха уменьшается, min_damage является минимальным пределом до куда будет
	///снижаться макс ХП меха.
	///
	var/min_damage = 5


	///
	/// Отвечает за то на сколько снижается максимальное хп части после ремонта. Обратите внимание, что макс хп падает
	///лишь при ремонте листами материала.
	///
	var/repair_damage = 5


	///
	///Отвечает за ТЕКУЩУЮ структурную целостность части, вычисляется по max_damage - ( brute_damage + burn_damage)
	///
	var/current_hp


	///
	///Отвечает за максимальное число урона, при котором не потребуется ремонт листами матеиала, можно обойтись сваркой.
	///Если урон выше этого значения - ремонт лишь листами.
	///
	var/max_repair = 5


	///
	///Отвечает за то какой материал требуется для ремонта данной части листами. Проверяется переменная при клику листами по
	///меху.
	///
	var/req_material = MATERIAL_STEEL



	//Содержит в себе значение НЕЧИНИБЕЛЬНОГО урона что скопился в части.
	var/unrepairable_damage = 0
/obj/item/mech_component/Initialize()
	current_hp = max_damage
	. = ..()
