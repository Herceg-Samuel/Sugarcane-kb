 theory prolog_facts
    imports Main
begin

(*Define the 'disease_name' datatype to enumerate all possible diseases*)
datatype disease_name =
  red_rot | smut | wilt | sett_rot | ratoon_stunting_disease |
  grassy_shoot | mosaic | yellow_leaf_disease | pokkah_boeng |
  leaf_fleck | rust | eye_spot | brown_spot | yellow_spot |
  brown_stripe | ring_spot | leaf_scald | leaf_blast |
  curvularia_leaf_spot | orange_rust

(*Define the symptom datatype to enumerate all symptoms*)
  datatype symptom_name = 
  reddened_areas_with_white_patches | affected_parenchymatous_tissues |
  hollow_cavity_with_grey_mycelium | dark_brownish_lesions_on_rind | 
  necrosis_on_nodal_region | cut_ends_show_reddening | entire_stool_dries |
  excessive_tillering_lanky | black_whip_structures | whip_like_sorus_bearing_structures | 
  stunted_thin_canes | narrow_weak_leaves | proliferating_axillary_buds | 
  stem_or_leaf_galls | yellowish_stools_drying | dull_brownish_discolouration_internal | 
  linear_pith_cavities | dried_canes_detopped_crown | yellowish_foliage | 
  pineapple_odor | setts_fail_to_germinate | sett_rot_before_germination | 
  shoot_die_after_emergence | stunted_chlorotic_shoots | sett_blackening_with_spores | 
  wilting_and_withering | stunted_growth | reduced_tillering | thin_stalks_shortened_internodes |
  yellowish_foliage | vascular_bundle_discolouration_nodes | excessive_tillering_lanky | 
  narrow_leaves | grass_like_appearance | chlorotic_areas_young_leaves | yellowish_stripes | 
  mild_mottling | yellowing | necrosis | yellowish_midrib_lower_surface | reddish_pinkish_discolouration_midrib | 
  shortening_internodes_top | bunching_leaves_top | reduced_cane_thickness | 
  yellowing | malformed_twisted_top | white_mycelium_on_leaves | wrinkling_twisting_shotening_leaves | 
  irregular_reddish_stripes_specks | knife_cut_symptoms | top_rot | flecks_specks_leaf_lamina | 
  premature_leaf_drying | tiny_chlorotic_flecks | mottling_on_middle_leaves | 
  reddening_and_drying | fleck_coalescence | reduced_plant_vigor | rust_pustules | 
  small_chlorotic_puncta | brown_tawny_pustules | lesion_coalescence | reduced_canopy_density | 
  orange_powdery_pustules | yellow_orange_streaks_on_leaves | pustules_between_leaf_veins | leaf_yellowing | eye_shaped_spots | 
  minute_water_soaked_spots_on_young_leaves | reddish_brown_elliptical_lesions_parallel_to_veins |
  lesions_0_5_to_4_mm_long_with_yellowish_brown_margins | grey_or_tan_center_in_mature_spots |
  reddish_brown_to_yellowish_runners_streaking_toward_leaf_tip | lesions_may_coalesce_into_long_streaks |
  seedling_blight_and_top_rot_in_severe_infections | red_brown_oval_or_elliptical_lesions_on_leaf_blade |
  lesion_size_approximately_3_to_15_mm | narrow_yellow_halo_around_spots | 
  spots_may_increase_and_coalesce_forming_larger_necrotic_areas | 
  occurs_from_seedling_stage_through_maturity_under_favourable_conditions | yellow_spots | brown_spots | small_yellow_leaf_lesions_initially |
  lesions_enlarge_and_turn_reddish_or_brown_with_age | splotchy_yellow_lesions_that_may_transition_to_brown | 
  gray_fuzzy_down_of_conidiophores_often_on_leaf_underside | visible_from_distance_when_widespread_in_canopy_wet_tropics | 
  brown_stripes | brown_lesions_along_leaf_blades_parallel_to_veins | narrow_dark_brown_stripes_on_young_leaves | 
  lesions_may_merge_into_bands_covering_large_leaf_area | disease_develops_under_warm_humid_conditions | 
  ring_shaped_spots | small_elongated_or_oval_spots_dark_olivaceous_green_to_reddish_brown | 
  narrow_yellow_halo_surrounding_each_spot | larger_elongated_lesions_2_5_to_5_mm_x_10_to_18_mm_with_red_brown_margins |
  spots_coalesce_into_patches_leading_to_leaf_chlorosis_and_necrosis | small_black_fruiting_bodies_may_be_visible_in_old_lesions |
  yellow_narrow_spots_with_long_axes_parallel_to_vessels | small_yellowish_or_pale_spots_on_leaf_blades_initially | 
  spots_extend_long_axes_parallel_to_leaf_veins | lesions_turn_brown_and_merge_into_larger_blighted_areas | 
  severe_infection_causes_whole_leaf_to_wither_and_dry | slight_pale_yellow_ribbon_on_first_five_leaves | 
  red_changes_around_lesion | small_to_medium_brown_or_reddish_elliptical_lesions_on_leaves |
  pale_yellow_ribbon_or_band_on_first_few_leaves_of_seedlings | red_or_reddish_margin_or_red_changes_around_lesion_center |
  lesions_may_coalesce_and_cause_early_leaf_senescence | white_stripes_on_leaves | leaf_yellowing_from_tip | stunted_growth | 
  cane_death_in_advanced_infection | leaf_rust_brown_patches | wilting_of_whole_plant

(*Define the pests datatype and enumerate all pests*)
datatype pest_name = colletotrichum_falcatum | sporisorium_scitamineum | 
fusarium_sacchari | ceratocystis_paradoxa | leifsonia_xyli | sugarcane_grassy_shoot_phytoplasma |
sugarcane_mosaic_virus | sugarcane_yellow_leaf_virus | fusarium_verticillioides | 
fusarium_proliferatum | sugarcane_bacilliform_virus | foliar_fungus | xanthomonas_albilineans |
white_grub | root_borer | stem_borer | nematode | mealy_bug | scale_insect | oligonychus_stickneyi |
oligonychus_pratensis | oligonychus_grypus | oollembola | acleridae | aphididae | coccidae | cydnidae |
delphacidae | pseudococcidae | coleoptera | buprestidae | paraphaeosphaeria_michotii | curvularia_lunata |
leaf_hopper | army_worm | termite | black_beetle | whitefly | early_shoot_borer | sugarcane_scale | mites |
top_shoot_borer | internode_borer | stalk_borer | grasshopper | shoot_boorer | top_boorer | root_grub | 
cane_moth | cane_weevil | cane_mite | earwig | cane_bug

(*Define the pesticide_name datatype and enumerate all the pesticides*)
datatype pesticide_name = thiophanate_methyl | carbendazim | propiconazole | 
mancozeb | copper_oxychloride | imd-178 | pyron | chakrawarti | sarvashakti | 
organic_pest_controller | triadimefon | chlorpyrifos | diazinon | thiamethoxam | 
imidacloprid | fipronil | bifenthrin | oxamyl | fenamiphos | quinalphos | 
cypermethrin | phorate | propargite | carbaryl

(*Define a set 'Disease' which explicitly contains all the diseases*)
definition Disease :: "disease_name set" where
  "Disease = {
    red_rot, smut, wilt, sett_rot, ratoon_stunting_disease,
    grassy_shoot, mosaic, yellow_leaf_disease, pokkah_boeng,
    leaf_fleck, rust, eye_spot, brown_spot, yellow_spot,
    brown_stripe, ring_spot, leaf_scald, leaf_blast,
    curvularia_leaf_spot, orange_rust
  }"

  

end