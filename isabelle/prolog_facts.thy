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
  yellowing | malformed_twisted_top | white_mycelium_on_leaves | wrinkling_twisting_shortening_leaves | 
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

definition Symptom :: "symptom_name set" where
"Symptom = {
  reddened_areas_with_white_patches , affected_parenchymatous_tissues ,
  hollow_cavity_with_grey_mycelium , dark_brownish_lesions_on_rind , 
  necrosis_on_nodal_region , cut_ends_show_reddening , entire_stool_dries ,
  excessive_tillering_lanky , black_whip_structures , whip_like_sorus_bearing_structures , 
  stunted_thin_canes , narrow_weak_leaves , proliferating_axillary_buds , 
  stem_or_leaf_galls , yellowish_stools_drying , dull_brownish_discolouration_internal , 
  linear_pith_cavities , dried_canes_detopped_crown , yellowish_foliage , 
  pineapple_odor , setts_fail_to_germinate , sett_rot_before_germination , 
  shoot_die_after_emergence , stunted_chlorotic_shoots , sett_blackening_with_spores , 
  wilting_and_withering , stunted_growth , reduced_tillering , thin_stalks_shortened_internodes ,
  yellowish_foliage , vascular_bundle_discolouration_nodes , excessive_tillering_lanky , 
  narrow_leaves , grass_like_appearance , chlorotic_areas_young_leaves , yellowish_stripes , 
  mild_mottling , yellowing , necrosis , yellowish_midrib_lower_surface , reddish_pinkish_discolouration_midrib , 
  shortening_internodes_top , bunching_leaves_top , reduced_cane_thickness , 
  yellowing , malformed_twisted_top , white_mycelium_on_leaves , wrinkling_twisting_shortening_leaves , 
  irregular_reddish_stripes_specks , knife_cut_symptoms , top_rot , flecks_specks_leaf_lamina , 
  premature_leaf_drying , tiny_chlorotic_flecks , mottling_on_middle_leaves , 
  reddening_and_drying , fleck_coalescence , reduced_plant_vigor , rust_pustules , 
  small_chlorotic_puncta , brown_tawny_pustules , lesion_coalescence , reduced_canopy_density , 
  orange_powdery_pustules , yellow_orange_streaks_on_leaves , pustules_between_leaf_veins , leaf_yellowing , eye_shaped_spots , 
  minute_water_soaked_spots_on_young_leaves , reddish_brown_elliptical_lesions_parallel_to_veins ,
  lesions_0_5_to_4_mm_long_with_yellowish_brown_margins , grey_or_tan_center_in_mature_spots ,
  reddish_brown_to_yellowish_runners_streaking_toward_leaf_tip , lesions_may_coalesce_into_long_streaks ,
  seedling_blight_and_top_rot_in_severe_infections , red_brown_oval_or_elliptical_lesions_on_leaf_blade ,
  lesion_size_approximately_3_to_15_mm , narrow_yellow_halo_around_spots , 
  spots_may_increase_and_coalesce_forming_larger_necrotic_areas , 
  occurs_from_seedling_stage_through_maturity_under_favourable_conditions , yellow_spots , brown_spots , small_yellow_leaf_lesions_initially ,
  lesions_enlarge_and_turn_reddish_or_brown_with_age , splotchy_yellow_lesions_that_may_transition_to_brown , 
  gray_fuzzy_down_of_conidiophores_often_on_leaf_underside , visible_from_distance_when_widespread_in_canopy_wet_tropics , 
  brown_stripes , brown_lesions_along_leaf_blades_parallel_to_veins , narrow_dark_brown_stripes_on_young_leaves , 
  lesions_may_merge_into_bands_covering_large_leaf_area , disease_develops_under_warm_humid_conditions , 
  ring_shaped_spots , small_elongated_or_oval_spots_dark_olivaceous_green_to_reddish_brown , 
  narrow_yellow_halo_surrounding_each_spot , larger_elongated_lesions_2_5_to_5_mm_x_10_to_18_mm_with_red_brown_margins ,
  spots_coalesce_into_patches_leading_to_leaf_chlorosis_and_necrosis , small_black_fruiting_bodies_may_be_visible_in_old_lesions ,
  yellow_narrow_spots_with_long_axes_parallel_to_vessels , small_yellowish_or_pale_spots_on_leaf_blades_initially , 
  spots_extend_long_axes_parallel_to_leaf_veins , lesions_turn_brown_and_merge_into_larger_blighted_areas , 
  severe_infection_causes_whole_leaf_to_wither_and_dry , slight_pale_yellow_ribbon_on_first_five_leaves , 
  red_changes_around_lesion , small_to_medium_brown_or_reddish_elliptical_lesions_on_leaves ,
  pale_yellow_ribbon_or_band_on_first_few_leaves_of_seedlings , red_or_reddish_margin_or_red_changes_around_lesion_center ,
  lesions_may_coalesce_and_cause_early_leaf_senescence , white_stripes_on_leaves , leaf_yellowing_from_tip , stunted_growth , 
  cane_death_in_advanced_infection , leaf_rust_brown_patches , wilting_of_whole_plant

}"

datatype pest_effect_name =   stalk_tunneling |  reduced_sugar_content |  stalk_breakage |  internal_rot |  lodging_of_canes |  poor_milling_quality   |
  dead_heart |  tip_wilting |  suppressed_shoot_growth |  malformed_leaves |  reduced_tillering |  shortened_internodes   |  severe_root_pruning | 
  poor_nutrient_absorption |  stunted_growth |  yellowing_of_foliage |  wilting_even_in_moist_soil |  plant_toppling   |  leaf_yellowing |  leaf_curling |
  sap_loss |  honeydew_deposition |  sooty_mold_development |  reduced_sucrose_accumulation   |  root_damage |  hollowing_of_stalks |  plant_collapse | 
  dry_rot |  reduced_tillering |  death_of_young_setts   |  honeydew_production |  sooty_mold_growth |  sap_sucking |  reduced_photosynthesis | 
  internode_shrinkage |  leaf_yellowing |  stunted_growth   |  root_galling |  poor_water_absorption |  nutrient_deficiency |  stunting |  slender_stalks | 
  reduced_root_mass |  wilting_under_low_stress   |  sap_extraction |  yellowing_of_leaf_blades |  leaf_tip_necrosis |  hopperburn_damage |  virus_transmission | 
  reduced_tillering |  stunted_plants   |  tunneling_in_lower_stalk |  internal_tissue_destruction |  reduced_juice_content |  increased_fiber_percentage | 
  breakage_at_wind |  lodging |  poor_cane_quality   |  leaf_silvering |  leaf_scarring |  curling_of_leaf_edges |  reduced_photosynthesis |  poor_shoot_emergence | 
  delayed_cane_growth |  yield_reduction   |  dead_heart |  tunneling_stem |  shoot_wilting   |  shortened_internodes |  borehole_sealing |  yield_loss   |  dead_heart | 
  underground_stalk_damage |  yield_loss   |  leaf_drying |  slow_plant_growth |  discoloration   |  leaf_spot |  leaf_blight |  rust   |  top_rot |  stem_rot |  sett_rot   |
  top_rot |  stem_rot   |  root_rot |  root_knot |  sett_rot   |  stem_rot |  top_rot |  red_rot   |  root_rot |  stem_rot |  root_knot   |  leaf_scald |  leaf_spot |
  rust   |  sett_rot |  stunted_shoot   |  ratoon_stunting |  leaf_spot |  gumming_disease 

definition Pest :: "pest_name set" where
"Pest = {
  colletotrichum_falcatum , sporisorium_scitamineum , 
fusarium_sacchari , ceratocystis_paradoxa , leifsonia_xyli , sugarcane_grassy_shoot_phytoplasma ,
sugarcane_mosaic_virus , sugarcane_yellow_leaf_virus , fusarium_verticillioides , 
fusarium_proliferatum , sugarcane_bacilliform_virus , foliar_fungus , xanthomonas_albilineans ,
white_grub , root_borer , stem_borer , nematode , mealy_bug , scale_insect , oligonychus_stickneyi ,
oligonychus_pratensis , oligonychus_grypus , oollembola , acleridae , aphididae , coccidae , cydnidae ,
delphacidae , pseudococcidae , coleoptera , buprestidae , paraphaeosphaeria_michotii , curvularia_lunata ,
leaf_hopper , army_worm , termite , black_beetle , whitefly , early_shoot_borer , sugarcane_scale , mites ,
top_shoot_borer , internode_borer , stalk_borer , grasshopper , shoot_boorer , top_boorer , root_grub , 
cane_moth , cane_weevil , cane_mite , earwig , cane_bug
}"

definition Pesticide :: "pesticide_name set" where
"Pesticide = {
  thiophanate_methyl , carbendazim , propiconazole , 
mancozeb , copper_oxychloride , imd-178 , pyron , chakrawarti , sarvashakti , 
organic_pest_controller , triadimefon , chlorpyrifos , diazinon , thiamethoxam , 
imidacloprid , fipronil , bifenthrin , oxamyl , fenamiphos , quinalphos , 
cypermethrin , phorate , propargite , carbaryl
}"

(*A function that will verify that a particular disease has a particular symptom*)
inductive symptom_of :: "disease_name => symptom_name => bool" where
"symptom_of red_rot reddened_areas_with_white_patches" |
"symptom_of red_rot affected_parenchymatous_tissues" |
"symptom_of red_rot hollow_cavity_with_grey_mycelium" |
"symptom_of red_rot dark_brownish_lesions_on_rind" |
"symptom_of red_rot necrosis_on_nodal_region" |
"symptom_of red_rot cut_ends_show_reddening" |
"symptom_of red_rot entire_stool_dries" |
"symptom_of smut excessive_tillering_lanky" |
"symptom_of smut black_whip_structures" |
"symptom_of smut whip-like_sorus-bearing_structures" |
"symptom_of smut stunted_thin_canes" |
"symptom_of smut narrow_weak_leaves" |
"symptom_of smut proliferating_axillary_buds" |
"symptom_of smut stem_or_leaf_galls" |
"symptom_of wilt yellowish_stools_drying" |
"symptom_of wilt dull_brownish_discolouration_internal" |
"symptom_of wilt linear_pith_cavities" |
"symptom_of wilt dried_canes_detopped_crown" |
"symptom_of wilt yellowish_foliage" |
"symptom_of sett_rott pineapple_odor" | 
"symptom_of sett_rott setts_fail_to_germinate" |
"symptom_of sett_rott sett_rot_before_germination" |
"symptom_of sett_rott shoot_die_after_emergence" |
"symptom_of sett_rott stunted_chlorotic_shoots" |
"symptom_of sett_rott sett_blackening_with_spores" |
"symptom_of sett_rott wilting_and_withering" |
"symptom_of ratoon_stunting_disease stunted_growth" |
"symptom_of ratoon_stunting_disease reduced_tillering" |
"symptom_of ratoon_stunting_disease thin_stalks_shortened_internodes" |
"symptom_of ratoon_stunting_disease yellowish_foliage" |
"symptom_of ratoon_stunting_disease vascular_bundle_discolouration_nodes" |
"symptom_of grassy_shoot excessive_tillering_lanky" |
"symptom_of grassy_shoot narrow_leaves" |
"symptom_of grassy_shoot grass_like_appearance" |
"symptom_of grassy_shoot stunted_growth" |
"symptom_of mosaic chlorotic_areas_young_leaves" |
"symptom_of mosaic yellowish_stripes" |
"symptom_of mosaic mild_mottling" |
"symptom_of mosaic stunting" |
"symptom_of mosaic yellowing" |
"symptom_of mosaic necrosis" |
"symptom_of yellow_leaf_disease yellowish_midrib_lower_surface" |
"symptom_of yellow_leaf_disease reddish_pinkish_discolouration_midrib" |
"symptom_of yellow_leaf_disease shortening_internodes_top" |
"symptom_of yellow_leaf_disease bunching_leaves_top" |
"symptom_of yellow_leaf_disease reduced_cane_thickness" |
"symptom_of yellow_leaf_disease stunted_growth" |
"symptom_of yellow_leaf_disease necrosis" |
"symptom_of yellow_leaf_disease yellowing" |
"symptom_of pokkah_boeng malformed_twisted_top" |
"symptom_of pokkah_boeng white_mycelium_on_leaves" |
"symptom_of pokkah_boeng wrinkling_twisting_shortening_leaves" |
"symptom_of pokkah_boeng irregular_reddish_stripes_specks" |
"symptom_of pokkah_boeng knife_cut_symptoms" |
"symptom_of pokkah_boeng top_rot" |
"symptom_of leaf_fleck flecks_specks_leaf_lamina" |
"symptom_of leaf_fleck premature_leaf_drying" |
"symptom_of leaf_fleck tiny_chlorotic_flecks" |
"symptom_of leaf_fleck mottling_on_middle_leaves" |
"symptom_of leaf_fleck reddening_and_drying" |
"symptom_of leaf_fleck fleck_coalescence" |
"symptom_of leaf_fleck reduced_plant_vigor" |
"symptom_of rust_brown small_chlorotic_puncta" |
"symptom_of rust_brown brown_tawny_pustules" |
"symptom_of rust_brown lesion_coalescence" |
"symptom_of rust_brown reduced_canopy_density" |
"symptom_of rust rust_pustules " |
"symptom_of orange_rust orange_powdery_pustules" |
"symptom_of orange_rust yellow_orange_streaks_on_leaves" |
"symptom_of orange_rust pustules_between_leaf_veins" |
"symptom_of orange_rust premature_leaf_drying" |
"symptom_of orange_rust leaf_yellowing" |
"symptom_of orange_rust reduced_tillering" |
"symptom_of orange_rust stunted_growth" |
"symptom_of eye_spot eye_shaped_spots" |
"symptom_of eye_spot minute_water_soaked_spots_on_young_leaves" |
"symptom_of eye_spot reddish_brown_elliptical_lesions_parallel_to_veins" |
"symptom_of eye_spot lesions_0_5_to_4_mm_long_with_yellowish_brown_margins" |
"symptom_of eye_spot grey_or_tan_center_in_mature_spots" |
"symptom_of eye_spot reddish_brown_to_yellowish_runners_streaking_toward_leaf_tip" |
"symptom_of eye_spot lesions_may_coalesce_into_long_streaks" |
"symptom_of eye_spot seedling_blight_and_top_rot_in_severe_infections"
"symptom_of brown_spot brown_spots" |
"symptom_of brown_spot red_brown_oval_or_elliptical_lesions_on_leaf_blade" |
"symptom_of brown_spot lesion_size_approximately_3_to_15_mm" |
"symptom_of brown_spot narrow_yellow_halo_around_spots" |
"symptom_of brown_spot spots_may_increase_and_coalesce_forming_larger_necrotic_areas" |
"symptom_of brown_spot occurs_from_seedling_stage_through_maturity_under_favourable_conditions" |
"symptom_of yellow_spot yellow_spots" |
"symptom_of yellow_spot small_yellow_leaf_lesions_initially" |
"symptom_of yellow_spot lesions_enlarge_and_turn_reddish_or_brown_with_age" |
"symptom_of yellow_spot splotchy_yellow_lesions_that_may_transition_to_brown" |
"symptom_of yellow_spot gray_fuzzy_down_of_conidiophores_often_on_leaf_underside" |
"symptom_of yellow_spot visible_from_distance_when_widespread_in_canopy_wet_tropics" |
"symptom_of brown_stripe brown_stripes" |
"symptom_of brown_stripe brown_lesions_along_leaf_blades_parallel_to_veins" |
"symptom_of brown_stripe narrow_dark_brown_stripes_on_young_leaves" |
"symptom_of brown_stripe lesions_may_merge_into_bands_covering_large_leaf_area" |
"symptom_of brown_stripe disease_develops_under_warm_humid_conditions" |
"symptom_of ring_spot ring_shaped_spots" |
"symptom_of ring_spot small_elongated_or_oval_spots_dark_olivaceous_green_to_reddish_brown" |
"symptom_of ring_spot narrow_yellow_halo_surrounding_each_spot" |
"symptom_of ring_spot larger_elongated_lesions_2_5_to_5_mm_x_10_to_18_mm_with_red_brown_margins" |
"symptom_of ring_spot spots_coalesce_into_patches_leading_to_leaf_chlorosis_and_necrosis" |
"symptom_of ring_spot small_black_fruiting_bodies_may_be_visible_in_old_lesions" |
"symptom_of leaf_blast yellow_narrow_spots_with_long_axes_parallel_to_vessels" |
"symptom_of leaf_blast small_yellowish_or_pale_spots_on_leaf_blades_initially" |
"symptom_of leaf_blast spots_extend_long_axes_parallel_to_leaf_veins" |
"symptom_of leaf_blast lesions_turn_brown_and_merge_into_larger_blighted_areas" |
"symptom_of leaf_blast severe_infection_causes_whole_leaf_to_wither_and_dry" |
"symptom_of curvularia_leaf_spot slight_pale_yellow_ribbon_on_first_five_leaves" |
"symptom_of curvularia_leaf_spot red_changes_around_lesion" |
"symptom_of curvularia_leaf_spot small_to_medium_brown_or_reddish_elliptical_lesions_on_leaves" |
"symptom_of curvularia_leaf_spot pale_yellow_ribbon_or_band_on_first_few_leaves_of_seedlings" |
"symptom_of curvularia_leaf_spot red_or_reddish_margin_or_red_changes_around_lesion_center" |
"symptom_of curvularia_leaf_spot lesions_may_coalesce_and_cause_early_leaf_senescence" |
"symptom_of leaf_scald white_stripes_on_leaves" |
"symptom_of leaf_scald leaf_yellowing_from_tip" |
"symptom_of leaf_scald stunted_growth" |
"symptom_of leaf_scald cane_death_in_advanced_infection" |
"symptom_of fiji_disease leaf_rust_brown_patches" |
"symptom_of fiji_disease stunted_growth" |
"symptom_of fiji_disease wilting_of_whole_plant"


inductive pest_causes_disease :: "pest_name => disease_name => bool" where
"pest_causes_disease colletotrichum_falcatum red_rot" |
"pest_causes_disease sporisorium_scitamineum smut" |
"pest_causes_disease fusarium_sacchari wilt" |
"pest_causes_disease ceratocystis_paradoxa sett_rot" |
"pest_causes_disease leifsonia_xyli ratoon_stunting_disease" |
"pest_causes_disease sugarcane_grassy_shoot_phytoplasma grassy_shoot" |
"pest_causes_disease sugarcane_mosaic_virus mosaic" |
"pest_causes_disease sugarcane_yellow_leaf_virus yellow_leaf_disease" |
"pest_causes_disease fusarium_verticillioides pokkah_boeng" |
"pest_causes_disease fusarium_proliferatum pokkah_boeng" |
"pest_causes_disease sugarcane_bacilliform_virus leaf_fleck" |
"pest_causes_disease foliar_fungus rust" |
"pest_causes_disease foliar_fungus eye_spot" |
"pest_causes_disease foliar_fungus brown_spot" |
"pest_causes_disease foliar_fungus yellow_spot" |
"pest_causes_disease foliar_fungus brown_stripe" |
"pest_causes_disease foliar_fungus ring_spot" |
"pest_causes_disease xanthomonas_albilineans leaf_scald" |
"pest_causes_disease aphididae sugarcane_yellow_leaf_virus" |
"pest_causes_disease coccidae sugarcane_yellow_leaf_luteovirus" |
"pest_causes_disease delphacidae fiji_disease" |
"pest_causes_disease buprestidae dead_tissue" |
"pest_causes_disease paraphaeosphaeria_michotii leaf_blast" |
"pest_causes_disease curvularia_leaf_spot curvularia_lunata" |
"pest_causes_disease early_shoot_borer dead_heart" |
"pest_causes_disease top_shoot_borer leaf_mines" |
"pest_causes_disease top_shoot_borer bunchy_top" |
"pest_causes_disease internode_borer constricted_internodes" |
"pest_causes_disease internode_borer boreholes" |
"pest_causes_disease stalk_borer leaf_sheath_decay" |
"pest_causes_disease root_borer dead_heart" |
"pest_causes_disease leaf_hopper phloem_sap_feeding" |
"pest_causes_disease leaf_hopper sooty_mold_development" |
"pest_causes_disease whitefly leaf_yellowing" |
"pest_causes_disease whitefly leaf_paling" |
"pest_causes_disease whitefly sooty_mold" |
"pest_causes_disease mealy_bug sap_sucking" |
"pest_causes_disease mealy_bug sooty_mold"

inductive pest_causes_effect :: "pest_name =>pest_effect_name => bool" where
"pest_causes_effect sugarcane_borer stalk_tunneling" |
"pest_causes_effect sugarcane_borer reduced_sugar_content" |
"pest_causes_effect sugarcane_borer stalk_breakage" |
"pest_causes_effect sugarcane_borer internal_rot" |
"pest_causes_effect sugarcane_borer lodging_of_canes" |
"pest_causes_effect sugarcane_borer poor_milling_quality" |
"pest_causes_effect top_shoot_borer dead_heart" |
"pest_causes_effect top_shoot_borer tip_wilting" |
"pest_causes_effect top_shoot_borer suppressed_shoot_growth" |
"pest_causes_effect top_shoot_borer malformed_leaves" |
"pest_causes_effect top_shoot_borer reduced_tillering" |
"pest_causes_effect top_shoot_borer shortened_internodes" |
"pest_causes_effect white_grub severe_root_pruning" |
"pest_causes_effect white_grub poor_nutrient_absorption" |
"pest_causes_effect white_grub stunted_growth" |
"pest_causes_effect white_grub yellowing_of_foliage" |
"pest_causes_effect white_grub wilting_even_in_moist_soil" |
"pest_causes_effect white_grub plant_toppling" |
"pest_causes_effect sugarcane_aphid leaf_yellowing" |
"pest_causes_effect sugarcane_aphid leaf_curling" |
"pest_causes_effect sugarcane_aphid sap_loss" |
"pest_causes_effect sugarcane_aphid honeydew_deposition" |
"pest_causes_effect sugarcane_aphid sooty_mold_development" |
"pest_causes_effect sugarcane_aphid reduced_sucrose_accumulation" |
"pest_causes_effect termites root_damage"                                 |
"pest_causes_effect termites hollowing_of_stalks" |
"pest_causes_effect termites plant_collapse" |
"pest_causes_effect termites dry_rot" |
"pest_causes_effect termites reduced_tillering" |
"pest_causes_effect termites death_of_young_setts" |
"pest_causes_effect mealybug honeydew_production" |
"pest_causes_effect mealybug sooty_mold_growth" |
"pest_causes_effect mealybug sap_sucking" |
"pest_causes_effect mealybug reduced_photosynthesis" |
"pest_causes_effect mealybug internode_shrinkage" |
"pest_causes_effect mealybug leaf_yellowing" |
"pest_causes_effect mealybug stunted_growth" |
"pest_causes_effect root_knot_nematode root_galling" |
"pest_causes_effect root_knot_nematode poor_water_absorption" |
"pest_causes_effect root_knot_nematode nutrient_deficiency" |
"pest_causes_effect root_knot_nematode stunting" |
"pest_causes_effect root_knot_nematode slender_stalks" |
"pest_causes_effect root_knot_nematode reduced_root_mass" |
"pest_causes_effect root_knot_nematode wilting_under_low_stress" |
"pest_causes_effect leaf_hopper sap_extraction" |
"pest_causes_effect leaf_hopper yellowing_of_leaf_blades" |
"pest_causes_effect leaf_hopper leaf_tip_necrosis" |
"pest_causes_effect leaf_hopper hopperburn_damage" |
"pest_causes_effect leaf_hopper virus_transmission" |
"pest_causes_effect leaf_hopper reduced_tillering" |
"pest_causes_effect leaf_hopper stunted_plants" |
"pest_causes_effect stalk_borer tunneling_in_lower_stalk" |
"pest_causes_effect stalk_borer internal_tissue_destruction" |
"pest_causes_effect stalk_borer reduced_juice_content" |
"pest_causes_effect stalk_borer increased_fiber_percentage" |
"pest_causes_effect stalk_borer breakage_at_wind" |
"pest_causes_effect stalk_borer lodging" |
"pest_causes_effect stalk_borer poor_cane_quality" |
"pest_causes_effect thrips leaf_silvering" |
"pest_causes_effect thrips leaf_scarring"                                       |
"pest_causes_effect thrips curling_of_leaf_edges" |
"pest_causes_effect thrips reduced_photosynthesis" |
"pest_causes_effect thrips poor_shoot_emergence" |
"pest_causes_effect thrips delayed_cane_growth" |
"pest_causes_effect thrips yield_reduction" |
"pest_causes_effect early_shoot_borer dead_heart" |
"pest_causes_effect early_shoot_borer tunneling_stem" |
"pest_causes_effect early_shoot_borer shoot_wilting" |
"pest_causes_effect internode_borer shortened_internodes" |
"pest_causes_effect internode_borer borehole_sealing" |
"pest_causes_effect internode_borer yield_loss" |
"pest_causes_effect root_borer dead_heart" |
"pest_causes_effect root_borer underground_stalk_damage" |
"pest_causes_effect root_borer yield_loss" |
"pest_causes_effect whitefly leaf_drying" |
"pest_causes_effect whitefly slow_plant_growth" |
"pest_causes_effect whitefly discoloration" |
"pest_causes_effect grasshopper leaf_spot" |
"pest_causes_effect grasshopper leaf_blight" |
"pest_causes_effect grasshopper rust" |
"pest_causes_effect shoot_borer top_rot" |
"pest_causes_effect shoot_borer stem_rot" |
"pest_causes_effect shoot_borer sett_rot" |
"pest_causes_effect top_borer top_rot" |
"pest_causes_effect top_borer stem_rot" |
"pest_causes_effect root_grub root_rot" |
"pest_causes_effect root_grub root_knot" |
"pest_causes_effect root_grub sett_rot" |
"pest_causes_effect cane_moth stem_rot" |
"pest_causes_effect cane_moth top_rot" |
"pest_causes_effect cane_moth red_rot" |
"pest_causes_effect cane_weevil root_rot" |
"pest_causes_effect cane_weevil stem_rot" |
"pest_causes_effect cane_weevil root_knot"  |
"pest_causes_effect cane_mite leaf_scald" |
"pest_causes_effect cane_mite leaf_spot" |
"pest_causes_effect cane_mite rust" |
"pest_causes_effect earwig sett_rot" |
"pest_causes_effect earwig stunted_shoot" |
"pest_causes_effect cane_bug ratoon_stunting" |
"pest_causes_effect cane_bug leaf_spot" |
"pest_causes_effect cane_bug gumming_disease"                                      |        

inductive pesticide_controls :: "pesticide_name => pest_name => bool" where
"pesticide_controls thiophanate_methyl colletotrichum_falcatum" |
"pesticide_controls thiophanate_methyl ceratocystis_paradoxa" |
"pesticide_controls carbendazim colletotrichum_falcatum" |
"pesticide_controls carbendazim ceratocystis_paradoxa" |
"pesticide_controls propiconazole sporisorium_scitamineum" |
"pesticide_controls mancozeb foliar_fungus" |
"pesticide_controls copper_oxychloride foliar_fungus" |
"pesticide_controls imd-178 whitefly" |
"pesticide_controls chakrawarti leaf_hopper" |
"pesticide_controls sarvashakti mealybug" |
"pesticide_controls ashwamedh_plus mealybug" |
"pesticide_controls organic_pest_controller early_shoot_borer" |
"pesticide_controls acaricides mites" |
"pesticide_controls triadimefon smut" |
"pesticide_controls chlorpyrifos black_beetle" |
"pesticide_controls chlorpyrifos termite" |
"pesticide_controls chlorpyrifos army_worm" |
"pesticide_controls imidacloprid sugarcane_aphid" |
"pesticide_controls thiamethoxam sugarcane_aphid" |
"pesticide_controls organic_pest_controller top_shoot_borer" |
"pesticide_controls fipronil top_shoot_borer" |
"pesticide_controls oxamyl root_knot_nematode" |
"pesticide_controls fenamiphos root_knot_nematode" |
"pesticide_controls chlorpyrifos sugarcane_scale" |
"pesticide_controls organic_pest_controller early_shoot_borer" |
"pesticide_controls acaricides mites" |
"pesticide_controls fenamiphos root_grub" |
"pesticide_controls chlorpyrifos grasshopper" |
"pesticide_controls quinalphos top_borer" |
"pesticide_controls chlorpyrifos shoot_borer" |
"pesticide_controls phorate cane_weevil" |
"pesticide_controls cypermethrin cane_moth" |
"pesticide_controls propargite cane_mite" |
"pesticide_controls carbaryl earwig" |
"pesticide_controls imidacloprid cane_bug"

end