module Dapps::EosKnightsHelper
	def get_border_style(categroy_id)
		normal_ids = [3, 22, 23, 24, 41, 42, 4, 43, 44, 21, 61, 62, 63, 64, 81, 82, 83, 84, 503, 504, 505, 601, 602, 603, 604, 605, 701, 702, 703, 704, 705, 801, 802, 803, 804, 805]

		rare_ids = [5, 6, 45, 7, 46, 47, 65, 25, 66, 67, 26, 85, 86, 87, 27].
				concat([513, 514, 515, 611, 612, 613, 614, 615, 711, 712, 713, 714, 715, 811, 812, 813, 814, 815])

		master_ids = [8, 9, 68, 69, 28, 88, 89, 29, 48, 49, 325, 323, 422, 424, 522,523, 524, 621, 625, 622, 623, 624, 626, 721, 722, 723, 724, 725, 821, 822, 823, 824]
		epic_ids = [10, 30, 50, 70, 90, 434, 433, 231, 531, 532, 533, 232, 631, 632, 634, 633, 731, 732, 733, 831, 832, 834, 833]
		legend_ids = [31, 51, 71, 91, 142, 142, 741, 742]
		
		color = if categroy_id.in?(normal_ids)
			"#c9c9c9"
		elsif categroy_id.in?(rare_ids)
			"#b0dd28"
		elsif categroy_id.in?(master_ids)
			"#3ca5eb"
		elsif categroy_id.in?(epic_ids)
			"#d370ff"
		elsif categroy_id.in?(legend_ids)
			"#f8bf17"
		else
			"#c9c9c9"
		end

		"border: 3px solid #{color}"
	end
end
