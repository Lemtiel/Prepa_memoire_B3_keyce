-- Seed script generated for memoBachelor
SET NOCOUNT ON;
SET DATEFORMAT ymd;
DECLARE @old_ansi_nulls INT; SET @old_ansi_nulls = 1;
PRINT 'Disabling constraints...';
IF OBJECT_ID(N'[accouchements]', N'U') IS NOT NULL ALTER TABLE [accouchements] NOCHECK CONSTRAINT ALL;
IF OBJECT_ID(N'[accounts]', N'U') IS NOT NULL ALTER TABLE [accounts] NOCHECK CONSTRAINT ALL;
IF OBJECT_ID(N'[account_transactions]', N'U') IS NOT NULL ALTER TABLE [account_transactions] NOCHECK CONSTRAINT ALL;
IF OBJECT_ID(N'[account_types]', N'U') IS NOT NULL ALTER TABLE [account_types] NOCHECK CONSTRAINT ALL;
IF OBJECT_ID(N'[accreditations]', N'U') IS NOT NULL ALTER TABLE [accreditations] NOCHECK CONSTRAINT ALL;
IF OBJECT_ID(N'[achats]', N'U') IS NOT NULL ALTER TABLE [achats] NOCHECK CONSTRAINT ALL;
IF OBJECT_ID(N'[acte_carrieres]', N'U') IS NOT NULL ALTER TABLE [acte_carrieres] NOCHECK CONSTRAINT ALL;
IF OBJECT_ID(N'[acte_medicals]', N'U') IS NOT NULL ALTER TABLE [acte_medicals] NOCHECK CONSTRAINT ALL;
IF OBJECT_ID(N'[acte_medical_departement]', N'U') IS NOT NULL ALTER TABLE [acte_medical_departement] NOCHECK CONSTRAINT ALL;
IF OBJECT_ID(N'[acte_medical_types]', N'U') IS NOT NULL ALTER TABLE [acte_medical_types] NOCHECK CONSTRAINT ALL;
IF OBJECT_ID(N'[acte_soin_demandes]', N'U') IS NOT NULL ALTER TABLE [acte_soin_demandes] NOCHECK CONSTRAINT ALL;
IF OBJECT_ID(N'[acte_soin_recuses]', N'U') IS NOT NULL ALTER TABLE [acte_soin_recuses] NOCHECK CONSTRAINT ALL;
IF OBJECT_ID(N'[actions]', N'U') IS NOT NULL ALTER TABLE [actions] NOCHECK CONSTRAINT ALL;
IF OBJECT_ID(N'[activites]', N'U') IS NOT NULL ALTER TABLE [activites] NOCHECK CONSTRAINT ALL;
IF OBJECT_ID(N'[activity_log]', N'U') IS NOT NULL ALTER TABLE [activity_log] NOCHECK CONSTRAINT ALL;
IF OBJECT_ID(N'[affectations]', N'U') IS NOT NULL ALTER TABLE [affectations] NOCHECK CONSTRAINT ALL;
IF OBJECT_ID(N'[affectation_personnels]', N'U') IS NOT NULL ALTER TABLE [affectation_personnels] NOCHECK CONSTRAINT ALL;
IF OBJECT_ID(N'[agences]', N'U') IS NOT NULL ALTER TABLE [agences] NOCHECK CONSTRAINT ALL;
IF OBJECT_ID(N'[analyses_laboratoires]', N'U') IS NOT NULL ALTER TABLE [analyses_laboratoires] NOCHECK CONSTRAINT ALL;
IF OBJECT_ID(N'[annees]', N'U') IS NOT NULL ALTER TABLE [annees] NOCHECK CONSTRAINT ALL;
IF OBJECT_ID(N'[annee_academiques]', N'U') IS NOT NULL ALTER TABLE [annee_academiques] NOCHECK CONSTRAINT ALL;
IF OBJECT_ID(N'[appareils]', N'U') IS NOT NULL ALTER TABLE [appareils] NOCHECK CONSTRAINT ALL;
IF OBJECT_ID(N'[articles]', N'U') IS NOT NULL ALTER TABLE [articles] NOCHECK CONSTRAINT ALL;
IF OBJECT_ID(N'[article_achetes]', N'U') IS NOT NULL ALTER TABLE [article_achetes] NOCHECK CONSTRAINT ALL;
IF OBJECT_ID(N'[article_necessaires]', N'U') IS NOT NULL ALTER TABLE [article_necessaires] NOCHECK CONSTRAINT ALL;
IF OBJECT_ID(N'[article_vendus]', N'U') IS NOT NULL ALTER TABLE [article_vendus] NOCHECK CONSTRAINT ALL;
IF OBJECT_ID(N'[banques]', N'U') IS NOT NULL ALTER TABLE [banques] NOCHECK CONSTRAINT ALL;
IF OBJECT_ID(N'[banque_sangs]', N'U') IS NOT NULL ALTER TABLE [banque_sangs] NOCHECK CONSTRAINT ALL;
IF OBJECT_ID(N'[barcodes]', N'U') IS NOT NULL ALTER TABLE [barcodes] NOCHECK CONSTRAINT ALL;
IF OBJECT_ID(N'[beneficiaires]', N'U') IS NOT NULL ALTER TABLE [beneficiaires] NOCHECK CONSTRAINT ALL;
IF OBJECT_ID(N'[besoins]', N'U') IS NOT NULL ALTER TABLE [besoins] NOCHECK CONSTRAINT ALL;
IF OBJECT_ID(N'[bon_cmd_adms]', N'U') IS NOT NULL ALTER TABLE [bon_cmd_adms] NOCHECK CONSTRAINT ALL;
IF OBJECT_ID(N'[bon_prise_en_charges]', N'U') IS NOT NULL ALTER TABLE [bon_prise_en_charges] NOCHECK CONSTRAINT ALL;
IF OBJECT_ID(N'[bon_sortie_consomptibles]', N'U') IS NOT NULL ALTER TABLE [bon_sortie_consomptibles] NOCHECK CONSTRAINT ALL;
IF OBJECT_ID(N'[brands]', N'U') IS NOT NULL ALTER TABLE [brands] NOCHECK CONSTRAINT ALL;
IF OBJECT_ID(N'[budgets]', N'U') IS NOT NULL ALTER TABLE [budgets] NOCHECK CONSTRAINT ALL;
IF OBJECT_ID(N'[bulletin_examens]', N'U') IS NOT NULL ALTER TABLE [bulletin_examens] NOCHECK CONSTRAINT ALL;
IF OBJECT_ID(N'[bulletin_examen_examen]', N'U') IS NOT NULL ALTER TABLE [bulletin_examen_examen] NOCHECK CONSTRAINT ALL;
IF OBJECT_ID(N'[bulletin_prescrits]', N'U') IS NOT NULL ALTER TABLE [bulletin_prescrits] NOCHECK CONSTRAINT ALL;
IF OBJECT_ID(N'[bulletin_servies]', N'U') IS NOT NULL ALTER TABLE [bulletin_servies] NOCHECK CONSTRAINT ALL;
IF OBJECT_ID(N'[bulletin_servie_examen]', N'U') IS NOT NULL ALTER TABLE [bulletin_servie_examen] NOCHECK CONSTRAINT ALL;
IF OBJECT_ID(N'[business]', N'U') IS NOT NULL ALTER TABLE [business] NOCHECK CONSTRAINT ALL;
IF OBJECT_ID(N'[business_locations]', N'U') IS NOT NULL ALTER TABLE [business_locations] NOCHECK CONSTRAINT ALL;
IF OBJECT_ID(N'[business_location_product_information]', N'U') IS NOT NULL ALTER TABLE [business_location_product_information] NOCHECK CONSTRAINT ALL;
IF OBJECT_ID(N'[cahier_disciplines]', N'U') IS NOT NULL ALTER TABLE [cahier_disciplines] NOCHECK CONSTRAINT ALL;
IF OBJECT_ID(N'[caisses]', N'U') IS NOT NULL ALTER TABLE [caisses] NOCHECK CONSTRAINT ALL;
IF OBJECT_ID(N'[caisse_transactions]', N'U') IS NOT NULL ALTER TABLE [caisse_transactions] NOCHECK CONSTRAINT ALL;
IF OBJECT_ID(N'[carrieres]', N'U') IS NOT NULL ALTER TABLE [carrieres] NOCHECK CONSTRAINT ALL;
IF OBJECT_ID(N'[cash_denominations]', N'U') IS NOT NULL ALTER TABLE [cash_denominations] NOCHECK CONSTRAINT ALL;
IF OBJECT_ID(N'[cash_registers]', N'U') IS NOT NULL ALTER TABLE [cash_registers] NOCHECK CONSTRAINT ALL;
IF OBJECT_ID(N'[cash_register_transactions]', N'U') IS NOT NULL ALTER TABLE [cash_register_transactions] NOCHECK CONSTRAINT ALL;
IF OBJECT_ID(N'[categories]', N'U') IS NOT NULL ALTER TABLE [categories] NOCHECK CONSTRAINT ALL;
IF OBJECT_ID(N'[categories_salles]', N'U') IS NOT NULL ALTER TABLE [categories_salles] NOCHECK CONSTRAINT ALL;
IF OBJECT_ID(N'[categorie_comptables]', N'U') IS NOT NULL ALTER TABLE [categorie_comptables] NOCHECK CONSTRAINT ALL;
IF OBJECT_ID(N'[categorie_examens]', N'U') IS NOT NULL ALTER TABLE [categorie_examens] NOCHECK CONSTRAINT ALL;
IF OBJECT_ID(N'[categorie_products]', N'U') IS NOT NULL ALTER TABLE [categorie_products] NOCHECK CONSTRAINT ALL;
IF OBJECT_ID(N'[categorie_salles]', N'U') IS NOT NULL ALTER TABLE [categorie_salles] NOCHECK CONSTRAINT ALL;
IF OBJECT_ID(N'[certificats]', N'U') IS NOT NULL ALTER TABLE [certificats] NOCHECK CONSTRAINT ALL;
IF OBJECT_ID(N'[chapitres]', N'U') IS NOT NULL ALTER TABLE [chapitres] NOCHECK CONSTRAINT ALL;
IF OBJECT_ID(N'[class_scolaires]', N'U') IS NOT NULL ALTER TABLE [class_scolaires] NOCHECK CONSTRAINT ALL;
IF OBJECT_ID(N'[clients]', N'U') IS NOT NULL ALTER TABLE [clients] NOCHECK CONSTRAINT ALL;
IF OBJECT_ID(N'[code_actions]', N'U') IS NOT NULL ALTER TABLE [code_actions] NOCHECK CONSTRAINT ALL;
IF OBJECT_ID(N'[code_activites]', N'U') IS NOT NULL ALTER TABLE [code_activites] NOCHECK CONSTRAINT ALL;
IF OBJECT_ID(N'[code_journals]', N'U') IS NOT NULL ALTER TABLE [code_journals] NOCHECK CONSTRAINT ALL;
IF OBJECT_ID(N'[code_s_programmes]', N'U') IS NOT NULL ALTER TABLE [code_s_programmes] NOCHECK CONSTRAINT ALL;
IF OBJECT_ID(N'[code_taches]', N'U') IS NOT NULL ALTER TABLE [code_taches] NOCHECK CONSTRAINT ALL;
IF OBJECT_ID(N'[commandes]', N'U') IS NOT NULL ALTER TABLE [commandes] NOCHECK CONSTRAINT ALL;
IF OBJECT_ID(N'[comptes]', N'U') IS NOT NULL ALTER TABLE [comptes] NOCHECK CONSTRAINT ALL;
IF OBJECT_ID(N'[conditionnements]', N'U') IS NOT NULL ALTER TABLE [conditionnements] NOCHECK CONSTRAINT ALL;
IF OBJECT_ID(N'[constante_vitales]', N'U') IS NOT NULL ALTER TABLE [constante_vitales] NOCHECK CONSTRAINT ALL;
IF OBJECT_ID(N'[consultations]', N'U') IS NOT NULL ALTER TABLE [consultations] NOCHECK CONSTRAINT ALL;
IF OBJECT_ID(N'[consultation_diagnostics]', N'U') IS NOT NULL ALTER TABLE [consultation_diagnostics] NOCHECK CONSTRAINT ALL;
IF OBJECT_ID(N'[consultation_documents]', N'U') IS NOT NULL ALTER TABLE [consultation_documents] NOCHECK CONSTRAINT ALL;
IF OBJECT_ID(N'[consultation_parametre_patients]', N'U') IS NOT NULL ALTER TABLE [consultation_parametre_patients] NOCHECK CONSTRAINT ALL;
IF OBJECT_ID(N'[consultation_patient_plainte]', N'U') IS NOT NULL ALTER TABLE [consultation_patient_plainte] NOCHECK CONSTRAINT ALL;
IF OBJECT_ID(N'[consultation_suivis]', N'U') IS NOT NULL ALTER TABLE [consultation_suivis] NOCHECK CONSTRAINT ALL;
IF OBJECT_ID(N'[contacts]', N'U') IS NOT NULL ALTER TABLE [contacts] NOCHECK CONSTRAINT ALL;
IF OBJECT_ID(N'[contrats]', N'U') IS NOT NULL ALTER TABLE [contrats] NOCHECK CONSTRAINT ALL;
IF OBJECT_ID(N'[corps_metiers]', N'U') IS NOT NULL ALTER TABLE [corps_metiers] NOCHECK CONSTRAINT ALL;
IF OBJECT_ID(N'[cours]', N'U') IS NOT NULL ALTER TABLE [cours] NOCHECK CONSTRAINT ALL;
IF OBJECT_ID(N'[currencies]', N'U') IS NOT NULL ALTER TABLE [currencies] NOCHECK CONSTRAINT ALL;
IF OBJECT_ID(N'[customer_groups]', N'U') IS NOT NULL ALTER TABLE [customer_groups] NOCHECK CONSTRAINT ALL;
IF OBJECT_ID(N'[deces]', N'U') IS NOT NULL ALTER TABLE [deces] NOCHECK CONSTRAINT ALL;
IF OBJECT_ID(N'[dechets]', N'U') IS NOT NULL ALTER TABLE [dechets] NOCHECK CONSTRAINT ALL;
IF OBJECT_ID(N'[demandeur_sangs]', N'U') IS NOT NULL ALTER TABLE [demandeur_sangs] NOCHECK CONSTRAINT ALL;
IF OBJECT_ID(N'[demande_equipements]', N'U') IS NOT NULL ALTER TABLE [demande_equipements] NOCHECK CONSTRAINT ALL;
IF OBJECT_ID(N'[departements]', N'U') IS NOT NULL ALTER TABLE [departements] NOCHECK CONSTRAINT ALL;
IF OBJECT_ID(N'[depots]', N'U') IS NOT NULL ALTER TABLE [depots] NOCHECK CONSTRAINT ALL;
IF OBJECT_ID(N'[depot_caisses]', N'U') IS NOT NULL ALTER TABLE [depot_caisses] NOCHECK CONSTRAINT ALL;
IF OBJECT_ID(N'[destinataires]', N'U') IS NOT NULL ALTER TABLE [destinataires] NOCHECK CONSTRAINT ALL;
IF OBJECT_ID(N'[discounts]', N'U') IS NOT NULL ALTER TABLE [discounts] NOCHECK CONSTRAINT ALL;
IF OBJECT_ID(N'[discount_variations]', N'U') IS NOT NULL ALTER TABLE [discount_variations] NOCHECK CONSTRAINT ALL;
IF OBJECT_ID(N'[donneurs]', N'U') IS NOT NULL ALTER TABLE [donneurs] NOCHECK CONSTRAINT ALL;
IF OBJECT_ID(N'[echantillons_laboratoires]', N'U') IS NOT NULL ALTER TABLE [echantillons_laboratoires] NOCHECK CONSTRAINT ALL;
IF OBJECT_ID(N'[echellons]', N'U') IS NOT NULL ALTER TABLE [echellons] NOCHECK CONSTRAINT ALL;
IF OBJECT_ID(N'[element_salaires]', N'U') IS NOT NULL ALTER TABLE [element_salaires] NOCHECK CONSTRAINT ALL;
IF OBJECT_ID(N'[eleves]', N'U') IS NOT NULL ALTER TABLE [eleves] NOCHECK CONSTRAINT ALL;
IF OBJECT_ID(N'[emplois]', N'U') IS NOT NULL ALTER TABLE [emplois] NOCHECK CONSTRAINT ALL;
IF OBJECT_ID(N'[enabled_modules]', N'U') IS NOT NULL ALTER TABLE [enabled_modules] NOCHECK CONSTRAINT ALL;
IF OBJECT_ID(N'[engagements]', N'U') IS NOT NULL ALTER TABLE [engagements] NOCHECK CONSTRAINT ALL;
IF OBJECT_ID(N'[enseignants]', N'U') IS NOT NULL ALTER TABLE [enseignants] NOCHECK CONSTRAINT ALL;
IF OBJECT_ID(N'[equipements]', N'U') IS NOT NULL ALTER TABLE [equipements] NOCHECK CONSTRAINT ALL;
IF OBJECT_ID(N'[etat_caisses]', N'U') IS NOT NULL ALTER TABLE [etat_caisses] NOCHECK CONSTRAINT ALL;
IF OBJECT_ID(N'[examens]', N'U') IS NOT NULL ALTER TABLE [examens] NOCHECK CONSTRAINT ALL;
IF OBJECT_ID(N'[examens_imagerie_fichiers]', N'U') IS NOT NULL ALTER TABLE [examens_imagerie_fichiers] NOCHECK CONSTRAINT ALL;
IF OBJECT_ID(N'[examens_imagerie_resultats]', N'U') IS NOT NULL ALTER TABLE [examens_imagerie_resultats] NOCHECK CONSTRAINT ALL;
IF OBJECT_ID(N'[examens_valeurs_normales]', N'U') IS NOT NULL ALTER TABLE [examens_valeurs_normales] NOCHECK CONSTRAINT ALL;
IF OBJECT_ID(N'[exercice_budgetaires]', N'U') IS NOT NULL ALTER TABLE [exercice_budgetaires] NOCHECK CONSTRAINT ALL;
IF OBJECT_ID(N'[expense_categories]', N'U') IS NOT NULL ALTER TABLE [expense_categories] NOCHECK CONSTRAINT ALL;
IF OBJECT_ID(N'[facturations]', N'U') IS NOT NULL ALTER TABLE [facturations] NOCHECK CONSTRAINT ALL;
IF OBJECT_ID(N'[familles]', N'U') IS NOT NULL ALTER TABLE [familles] NOCHECK CONSTRAINT ALL;
IF OBJECT_ID(N'[fiche_detenteurs]', N'U') IS NOT NULL ALTER TABLE [fiche_detenteurs] NOCHECK CONSTRAINT ALL;
IF OBJECT_ID(N'[fonctions]', N'U') IS NOT NULL ALTER TABLE [fonctions] NOCHECK CONSTRAINT ALL;
IF OBJECT_ID(N'[formes]', N'U') IS NOT NULL ALTER TABLE [formes] NOCHECK CONSTRAINT ALL;
IF OBJECT_ID(N'[fournisseurs]', N'U') IS NOT NULL ALTER TABLE [fournisseurs] NOCHECK CONSTRAINT ALL;
IF OBJECT_ID(N'[grilles]', N'U') IS NOT NULL ALTER TABLE [grilles] NOCHECK CONSTRAINT ALL;
IF OBJECT_ID(N'[group_sub_taxes]', N'U') IS NOT NULL ALTER TABLE [group_sub_taxes] NOCHECK CONSTRAINT ALL;
IF OBJECT_ID(N'[hospitalisations]', N'U') IS NOT NULL ALTER TABLE [hospitalisations] NOCHECK CONSTRAINT ALL;
IF OBJECT_ID(N'[hospitalisation_actes]', N'U') IS NOT NULL ALTER TABLE [hospitalisation_actes] NOCHECK CONSTRAINT ALL;
IF OBJECT_ID(N'[hospitalisation_suivis]', N'U') IS NOT NULL ALTER TABLE [hospitalisation_suivis] NOCHECK CONSTRAINT ALL;
IF OBJECT_ID(N'[hospitalisation_types]', N'U') IS NOT NULL ALTER TABLE [hospitalisation_types] NOCHECK CONSTRAINT ALL;
IF OBJECT_ID(N'[hosp_administrations_medicaments]', N'U') IS NOT NULL ALTER TABLE [hosp_administrations_medicaments] NOCHECK CONSTRAINT ALL;
IF OBJECT_ID(N'[hosp_indicateurs_qualite]', N'U') IS NOT NULL ALTER TABLE [hosp_indicateurs_qualite] NOCHECK CONSTRAINT ALL;
IF OBJECT_ID(N'[hosp_interventions]', N'U') IS NOT NULL ALTER TABLE [hosp_interventions] NOCHECK CONSTRAINT ALL;
IF OBJECT_ID(N'[hosp_parametres_vitaux]', N'U') IS NOT NULL ALTER TABLE [hosp_parametres_vitaux] NOCHECK CONSTRAINT ALL;
IF OBJECT_ID(N'[hosp_plannings_soins]', N'U') IS NOT NULL ALTER TABLE [hosp_plannings_soins] NOCHECK CONSTRAINT ALL;
IF OBJECT_ID(N'[hosp_transmissions]', N'U') IS NOT NULL ALTER TABLE [hosp_transmissions] NOCHECK CONSTRAINT ALL;
IF OBJECT_ID(N'[imputations]', N'U') IS NOT NULL ALTER TABLE [imputations] NOCHECK CONSTRAINT ALL;
IF OBJECT_ID(N'[indicateursps]', N'U') IS NOT NULL ALTER TABLE [indicateursps] NOCHECK CONSTRAINT ALL;
IF OBJECT_ID(N'[indicateur_actions]', N'U') IS NOT NULL ALTER TABLE [indicateur_actions] NOCHECK CONSTRAINT ALL;
IF OBJECT_ID(N'[indicateur_activites]', N'U') IS NOT NULL ALTER TABLE [indicateur_activites] NOCHECK CONSTRAINT ALL;
IF OBJECT_ID(N'[info_societes]', N'U') IS NOT NULL ALTER TABLE [info_societes] NOCHECK CONSTRAINT ALL;
IF OBJECT_ID(N'[inscriptions]', N'U') IS NOT NULL ALTER TABLE [inscriptions] NOCHECK CONSTRAINT ALL;
IF OBJECT_ID(N'[invoices]', N'U') IS NOT NULL ALTER TABLE [invoices] NOCHECK CONSTRAINT ALL;
IF OBJECT_ID(N'[invoice_details]', N'U') IS NOT NULL ALTER TABLE [invoice_details] NOCHECK CONSTRAINT ALL;
IF OBJECT_ID(N'[invoice_items]', N'U') IS NOT NULL ALTER TABLE [invoice_items] NOCHECK CONSTRAINT ALL;
IF OBJECT_ID(N'[invoice_layouts]', N'U') IS NOT NULL ALTER TABLE [invoice_layouts] NOCHECK CONSTRAINT ALL;
IF OBJECT_ID(N'[invoice_schemes]', N'U') IS NOT NULL ALTER TABLE [invoice_schemes] NOCHECK CONSTRAINT ALL;
IF OBJECT_ID(N'[lecon]', N'U') IS NOT NULL ALTER TABLE [lecon] NOCHECK CONSTRAINT ALL;
IF OBJECT_ID(N'[lecons]', N'U') IS NOT NULL ALTER TABLE [lecons] NOCHECK CONSTRAINT ALL;
IF OBJECT_ID(N'[lettre_missions]', N'U') IS NOT NULL ALTER TABLE [lettre_missions] NOCHECK CONSTRAINT ALL;
IF OBJECT_ID(N'[lignetransmission_bons]', N'U') IS NOT NULL ALTER TABLE [lignetransmission_bons] NOCHECK CONSTRAINT ALL;
IF OBJECT_ID(N'[ligne_achats]', N'U') IS NOT NULL ALTER TABLE [ligne_achats] NOCHECK CONSTRAINT ALL;
IF OBJECT_ID(N'[ligne_transmission_mandats]', N'U') IS NOT NULL ALTER TABLE [ligne_transmission_mandats] NOCHECK CONSTRAINT ALL;
IF OBJECT_ID(N'[liquidations]', N'U') IS NOT NULL ALTER TABLE [liquidations] NOCHECK CONSTRAINT ALL;
IF OBJECT_ID(N'[lits]', N'U') IS NOT NULL ALTER TABLE [lits] NOCHECK CONSTRAINT ALL;
IF OBJECT_ID(N'[mandats]', N'U') IS NOT NULL ALTER TABLE [mandats] NOCHECK CONSTRAINT ALL;
IF OBJECT_ID(N'[marches]', N'U') IS NOT NULL ALTER TABLE [marches] NOCHECK CONSTRAINT ALL;
IF OBJECT_ID(N'[matieres]', N'U') IS NOT NULL ALTER TABLE [matieres] NOCHECK CONSTRAINT ALL;
IF OBJECT_ID(N'[media]', N'U') IS NOT NULL ALTER TABLE [media] NOCHECK CONSTRAINT ALL;
IF OBJECT_ID(N'[mercuriales]', N'U') IS NOT NULL ALTER TABLE [mercuriales] NOCHECK CONSTRAINT ALL;
IF OBJECT_ID(N'[methode_analyses]', N'U') IS NOT NULL ALTER TABLE [methode_analyses] NOCHECK CONSTRAINT ALL;
IF OBJECT_ID(N'[missions]', N'U') IS NOT NULL ALTER TABLE [missions] NOCHECK CONSTRAINT ALL;
IF OBJECT_ID(N'[model_has_permissions]', N'U') IS NOT NULL ALTER TABLE [model_has_permissions] NOCHECK CONSTRAINT ALL;
IF OBJECT_ID(N'[model_has_roles]', N'U') IS NOT NULL ALTER TABLE [model_has_roles] NOCHECK CONSTRAINT ALL;
IF OBJECT_ID(N'[mois]', N'U') IS NOT NULL ALTER TABLE [mois] NOCHECK CONSTRAINT ALL;
IF OBJECT_ID(N'[mouvement_caisses]', N'U') IS NOT NULL ALTER TABLE [mouvement_caisses] NOCHECK CONSTRAINT ALL;
IF OBJECT_ID(N'[natures]', N'U') IS NOT NULL ALTER TABLE [natures] NOCHECK CONSTRAINT ALL;
IF OBJECT_ID(N'[nature_ecos]', N'U') IS NOT NULL ALTER TABLE [nature_ecos] NOCHECK CONSTRAINT ALL;
IF OBJECT_ID(N'[niveaux]', N'U') IS NOT NULL ALTER TABLE [niveaux] NOCHECK CONSTRAINT ALL;
IF OBJECT_ID(N'[notes]', N'U') IS NOT NULL ALTER TABLE [notes] NOCHECK CONSTRAINT ALL;
IF OBJECT_ID(N'[notices]', N'U') IS NOT NULL ALTER TABLE [notices] NOCHECK CONSTRAINT ALL;
IF OBJECT_ID(N'[notifications]', N'U') IS NOT NULL ALTER TABLE [notifications] NOCHECK CONSTRAINT ALL;
IF OBJECT_ID(N'[notification_templates]', N'U') IS NOT NULL ALTER TABLE [notification_templates] NOCHECK CONSTRAINT ALL;
IF OBJECT_ID(N'[nouveaux_nes]', N'U') IS NOT NULL ALTER TABLE [nouveaux_nes] NOCHECK CONSTRAINT ALL;
IF OBJECT_ID(N'[observation_medicals]', N'U') IS NOT NULL ALTER TABLE [observation_medicals] NOCHECK CONSTRAINT ALL;
IF OBJECT_ID(N'[operations]', N'U') IS NOT NULL ALTER TABLE [operations] NOCHECK CONSTRAINT ALL;
IF OBJECT_ID(N'[op_types_anesthesies]', N'U') IS NOT NULL ALTER TABLE [op_types_anesthesies] NOCHECK CONSTRAINT ALL;
IF OBJECT_ID(N'[op_types_interventions]', N'U') IS NOT NULL ALTER TABLE [op_types_interventions] NOCHECK CONSTRAINT ALL;
IF OBJECT_ID(N'[op_types_operations]', N'U') IS NOT NULL ALTER TABLE [op_types_operations] NOCHECK CONSTRAINT ALL;
IF OBJECT_ID(N'[ordonnances]', N'U') IS NOT NULL ALTER TABLE [ordonnances] NOCHECK CONSTRAINT ALL;
IF OBJECT_ID(N'[ordonnance_prescrites]', N'U') IS NOT NULL ALTER TABLE [ordonnance_prescrites] NOCHECK CONSTRAINT ALL;
IF OBJECT_ID(N'[ordonnance_servies]', N'U') IS NOT NULL ALTER TABLE [ordonnance_servies] NOCHECK CONSTRAINT ALL;
IF OBJECT_ID(N'[ordonnateurs]', N'U') IS NOT NULL ALTER TABLE [ordonnateurs] NOCHECK CONSTRAINT ALL;
IF OBJECT_ID(N'[ordres]', N'U') IS NOT NULL ALTER TABLE [ordres] NOCHECK CONSTRAINT ALL;
IF OBJECT_ID(N'[ordre_entrees]', N'U') IS NOT NULL ALTER TABLE [ordre_entrees] NOCHECK CONSTRAINT ALL;
IF OBJECT_ID(N'[orientations]', N'U') IS NOT NULL ALTER TABLE [orientations] NOCHECK CONSTRAINT ALL;
IF OBJECT_ID(N'[paies]', N'U') IS NOT NULL ALTER TABLE [paies] NOCHECK CONSTRAINT ALL;
IF OBJECT_ID(N'[parametres]', N'U') IS NOT NULL ALTER TABLE [parametres] NOCHECK CONSTRAINT ALL;
IF OBJECT_ID(N'[parametre_patients]', N'U') IS NOT NULL ALTER TABLE [parametre_patients] NOCHECK CONSTRAINT ALL;
IF OBJECT_ID(N'[partenaires]', N'U') IS NOT NULL ALTER TABLE [partenaires] NOCHECK CONSTRAINT ALL;
IF OBJECT_ID(N'[password_reset_tokens]', N'U') IS NOT NULL ALTER TABLE [password_reset_tokens] NOCHECK CONSTRAINT ALL;
IF OBJECT_ID(N'[pathologie_chroniques]', N'U') IS NOT NULL ALTER TABLE [pathologie_chroniques] NOCHECK CONSTRAINT ALL;
IF OBJECT_ID(N'[patients]', N'U') IS NOT NULL ALTER TABLE [patients] NOCHECK CONSTRAINT ALL;
IF OBJECT_ID(N'[patient_plaintes]', N'U') IS NOT NULL ALTER TABLE [patient_plaintes] NOCHECK CONSTRAINT ALL;
IF OBJECT_ID(N'[patient_references]', N'U') IS NOT NULL ALTER TABLE [patient_references] NOCHECK CONSTRAINT ALL;
IF OBJECT_ID(N'[payements]', N'U') IS NOT NULL ALTER TABLE [payements] NOCHECK CONSTRAINT ALL;
IF OBJECT_ID(N'[payment_patient_reference]', N'U') IS NOT NULL ALTER TABLE [payment_patient_reference] NOCHECK CONSTRAINT ALL;
IF OBJECT_ID(N'[pays]', N'U') IS NOT NULL ALTER TABLE [pays] NOCHECK CONSTRAINT ALL;
IF OBJECT_ID(N'[periodes]', N'U') IS NOT NULL ALTER TABLE [periodes] NOCHECK CONSTRAINT ALL;
IF OBJECT_ID(N'[periode_academiques]', N'U') IS NOT NULL ALTER TABLE [periode_academiques] NOCHECK CONSTRAINT ALL;
IF OBJECT_ID(N'[permissions]', N'U') IS NOT NULL ALTER TABLE [permissions] NOCHECK CONSTRAINT ALL;
IF OBJECT_ID(N'[personnels]', N'U') IS NOT NULL ALTER TABLE [personnels] NOCHECK CONSTRAINT ALL;
IF OBJECT_ID(N'[personnes]', N'U') IS NOT NULL ALTER TABLE [personnes] NOCHECK CONSTRAINT ALL;
IF OBJECT_ID(N'[personne_contacters]', N'U') IS NOT NULL ALTER TABLE [personne_contacters] NOCHECK CONSTRAINT ALL;
IF OBJECT_ID(N'[plan_comptables]', N'U') IS NOT NULL ALTER TABLE [plan_comptables] NOCHECK CONSTRAINT ALL;
IF OBJECT_ID(N'[plan_comptable_matieres]', N'U') IS NOT NULL ALTER TABLE [plan_comptable_matieres] NOCHECK CONSTRAINT ALL;
IF OBJECT_ID(N'[prelevements]', N'U') IS NOT NULL ALTER TABLE [prelevements] NOCHECK CONSTRAINT ALL;
IF OBJECT_ID(N'[prescripteurs]', N'U') IS NOT NULL ALTER TABLE [prescripteurs] NOCHECK CONSTRAINT ALL;
IF OBJECT_ID(N'[prescripteur_quote_parts]', N'U') IS NOT NULL ALTER TABLE [prescripteur_quote_parts] NOCHECK CONSTRAINT ALL;
IF OBJECT_ID(N'[prescriptions]', N'U') IS NOT NULL ALTER TABLE [prescriptions] NOCHECK CONSTRAINT ALL;
IF OBJECT_ID(N'[prescription_acte_medicals]', N'U') IS NOT NULL ALTER TABLE [prescription_acte_medicals] NOCHECK CONSTRAINT ALL;
IF OBJECT_ID(N'[prescription_examens]', N'U') IS NOT NULL ALTER TABLE [prescription_examens] NOCHECK CONSTRAINT ALL;
IF OBJECT_ID(N'[prescription_items]', N'U') IS NOT NULL ALTER TABLE [prescription_items] NOCHECK CONSTRAINT ALL;
IF OBJECT_ID(N'[prescription_medications]', N'U') IS NOT NULL ALTER TABLE [prescription_medications] NOCHECK CONSTRAINT ALL;
IF OBJECT_ID(N'[prescription_prescription_types]', N'U') IS NOT NULL ALTER TABLE [prescription_prescription_types] NOCHECK CONSTRAINT ALL;
IF OBJECT_ID(N'[pricing_rules]', N'U') IS NOT NULL ALTER TABLE [pricing_rules] NOCHECK CONSTRAINT ALL;
IF OBJECT_ID(N'[primes]', N'U') IS NOT NULL ALTER TABLE [primes] NOCHECK CONSTRAINT ALL;
IF OBJECT_ID(N'[prime_corps_metiers]', N'U') IS NOT NULL ALTER TABLE [prime_corps_metiers] NOCHECK CONSTRAINT ALL;
IF OBJECT_ID(N'[printers]', N'U') IS NOT NULL ALTER TABLE [printers] NOCHECK CONSTRAINT ALL;
IF OBJECT_ID(N'[products]', N'U') IS NOT NULL ALTER TABLE [products] NOCHECK CONSTRAINT ALL;
IF OBJECT_ID(N'[product_categories]', N'U') IS NOT NULL ALTER TABLE [product_categories] NOCHECK CONSTRAINT ALL;
IF OBJECT_ID(N'[product_information]', N'U') IS NOT NULL ALTER TABLE [product_information] NOCHECK CONSTRAINT ALL;
IF OBJECT_ID(N'[product_locations]', N'U') IS NOT NULL ALTER TABLE [product_locations] NOCHECK CONSTRAINT ALL;
IF OBJECT_ID(N'[product_racks]', N'U') IS NOT NULL ALTER TABLE [product_racks] NOCHECK CONSTRAINT ALL;
IF OBJECT_ID(N'[product_variations]', N'U') IS NOT NULL ALTER TABLE [product_variations] NOCHECK CONSTRAINT ALL;
IF OBJECT_ID(N'[proformats]', N'U') IS NOT NULL ALTER TABLE [proformats] NOCHECK CONSTRAINT ALL;
IF OBJECT_ID(N'[provenances]', N'U') IS NOT NULL ALTER TABLE [provenances] NOCHECK CONSTRAINT ALL;
IF OBJECT_ID(N'[purchase_lines]', N'U') IS NOT NULL ALTER TABLE [purchase_lines] NOCHECK CONSTRAINT ALL;
IF OBJECT_ID(N'[quartiers]', N'U') IS NOT NULL ALTER TABLE [quartiers] NOCHECK CONSTRAINT ALL;
IF OBJECT_ID(N'[reanimations]', N'U') IS NOT NULL ALTER TABLE [reanimations] NOCHECK CONSTRAINT ALL;
IF OBJECT_ID(N'[reference_counts]', N'U') IS NOT NULL ALTER TABLE [reference_counts] NOCHECK CONSTRAINT ALL;
IF OBJECT_ID(N'[reformes]', N'U') IS NOT NULL ALTER TABLE [reformes] NOCHECK CONSTRAINT ALL;
IF OBJECT_ID(N'[regions]', N'U') IS NOT NULL ALTER TABLE [regions] NOCHECK CONSTRAINT ALL;
IF OBJECT_ID(N'[reglements]', N'U') IS NOT NULL ALTER TABLE [reglements] NOCHECK CONSTRAINT ALL;
IF OBJECT_ID(N'[rendez_vous]', N'U') IS NOT NULL ALTER TABLE [rendez_vous] NOCHECK CONSTRAINT ALL;
IF OBJECT_ID(N'[ressources]', N'U') IS NOT NULL ALTER TABLE [ressources] NOCHECK CONSTRAINT ALL;
IF OBJECT_ID(N'[resultat_examens]', N'U') IS NOT NULL ALTER TABLE [resultat_examens] NOCHECK CONSTRAINT ALL;
IF OBJECT_ID(N'[res_product_modifier_sets]', N'U') IS NOT NULL ALTER TABLE [res_product_modifier_sets] NOCHECK CONSTRAINT ALL;
IF OBJECT_ID(N'[ribs]', N'U') IS NOT NULL ALTER TABLE [ribs] NOCHECK CONSTRAINT ALL;
IF OBJECT_ID(N'[roles]', N'U') IS NOT NULL ALTER TABLE [roles] NOCHECK CONSTRAINT ALL;
IF OBJECT_ID(N'[role_has_permissions]', N'U') IS NOT NULL ALTER TABLE [role_has_permissions] NOCHECK CONSTRAINT ALL;
IF OBJECT_ID(N'[saless]', N'U') IS NOT NULL ALTER TABLE [saless] NOCHECK CONSTRAINT ALL;
IF OBJECT_ID(N'[salles]', N'U') IS NOT NULL ALTER TABLE [salles] NOCHECK CONSTRAINT ALL;
IF OBJECT_ID(N'[salle_accouchements]', N'U') IS NOT NULL ALTER TABLE [salle_accouchements] NOCHECK CONSTRAINT ALL;
IF OBJECT_ID(N'[selling_price_groups]', N'U') IS NOT NULL ALTER TABLE [selling_price_groups] NOCHECK CONSTRAINT ALL;
IF OBJECT_ID(N'[sell_line_warranties]', N'U') IS NOT NULL ALTER TABLE [sell_line_warranties] NOCHECK CONSTRAINT ALL;
IF OBJECT_ID(N'[services]', N'U') IS NOT NULL ALTER TABLE [services] NOCHECK CONSTRAINT ALL;
IF OBJECT_ID(N'[session_tickets]', N'U') IS NOT NULL ALTER TABLE [session_tickets] NOCHECK CONSTRAINT ALL;
IF OBJECT_ID(N'[soins]', N'U') IS NOT NULL ALTER TABLE [soins] NOCHECK CONSTRAINT ALL;
IF OBJECT_ID(N'[source_financements]', N'U') IS NOT NULL ALTER TABLE [source_financements] NOCHECK CONSTRAINT ALL;
IF OBJECT_ID(N'[sous_programmes]', N'U') IS NOT NULL ALTER TABLE [sous_programmes] NOCHECK CONSTRAINT ALL;
IF OBJECT_ID(N'[sous_types]', N'U') IS NOT NULL ALTER TABLE [sous_types] NOCHECK CONSTRAINT ALL;
IF OBJECT_ID(N'[specialites]', N'U') IS NOT NULL ALTER TABLE [specialites] NOCHECK CONSTRAINT ALL;
IF OBJECT_ID(N'[statuts]', N'U') IS NOT NULL ALTER TABLE [statuts] NOCHECK CONSTRAINT ALL;
IF OBJECT_ID(N'[stocks]', N'U') IS NOT NULL ALTER TABLE [stocks] NOCHECK CONSTRAINT ALL;
IF OBJECT_ID(N'[stock_adjustment_lines]', N'U') IS NOT NULL ALTER TABLE [stock_adjustment_lines] NOCHECK CONSTRAINT ALL;
IF OBJECT_ID(N'[stock_mouvements]', N'U') IS NOT NULL ALTER TABLE [stock_mouvements] NOCHECK CONSTRAINT ALL;
IF OBJECT_ID(N'[stock_movements]', N'U') IS NOT NULL ALTER TABLE [stock_movements] NOCHECK CONSTRAINT ALL;
IF OBJECT_ID(N'[stock_sangs]', N'U') IS NOT NULL ALTER TABLE [stock_sangs] NOCHECK CONSTRAINT ALL;
IF OBJECT_ID(N'[suppliers]', N'U') IS NOT NULL ALTER TABLE [suppliers] NOCHECK CONSTRAINT ALL;
IF OBJECT_ID(N'[system]', N'U') IS NOT NULL ALTER TABLE [system] NOCHECK CONSTRAINT ALL;
IF OBJECT_ID(N'[taches]', N'U') IS NOT NULL ALTER TABLE [taches] NOCHECK CONSTRAINT ALL;
IF OBJECT_ID(N'[taxes]', N'U') IS NOT NULL ALTER TABLE [taxes] NOCHECK CONSTRAINT ALL;
IF OBJECT_ID(N'[taxess]', N'U') IS NOT NULL ALTER TABLE [taxess] NOCHECK CONSTRAINT ALL;
IF OBJECT_ID(N'[taxe_rates]', N'U') IS NOT NULL ALTER TABLE [taxe_rates] NOCHECK CONSTRAINT ALL;
IF OBJECT_ID(N'[tax_rates]', N'U') IS NOT NULL ALTER TABLE [tax_rates] NOCHECK CONSTRAINT ALL;
IF OBJECT_ID(N'[test_analyse_laboratoires]', N'U') IS NOT NULL ALTER TABLE [test_analyse_laboratoires] NOCHECK CONSTRAINT ALL;
IF OBJECT_ID(N'[ticketables]', N'U') IS NOT NULL ALTER TABLE [ticketables] NOCHECK CONSTRAINT ALL;
IF OBJECT_ID(N'[tierces]', N'U') IS NOT NULL ALTER TABLE [tierces] NOCHECK CONSTRAINT ALL;
IF OBJECT_ID(N'[timezones]', N'U') IS NOT NULL ALTER TABLE [timezones] NOCHECK CONSTRAINT ALL;
IF OBJECT_ID(N'[transaction]', N'U') IS NOT NULL ALTER TABLE [transaction] NOCHECK CONSTRAINT ALL;
IF OBJECT_ID(N'[transactions]', N'U') IS NOT NULL ALTER TABLE [transactions] NOCHECK CONSTRAINT ALL;
IF OBJECT_ID(N'[transaction_payments]', N'U') IS NOT NULL ALTER TABLE [transaction_payments] NOCHECK CONSTRAINT ALL;
IF OBJECT_ID(N'[transaction_sell_lines]', N'U') IS NOT NULL ALTER TABLE [transaction_sell_lines] NOCHECK CONSTRAINT ALL;
IF OBJECT_ID(N'[transaction_sell_lines_purchase_lines]', N'U') IS NOT NULL ALTER TABLE [transaction_sell_lines_purchase_lines] NOCHECK CONSTRAINT ALL;
IF OBJECT_ID(N'[transferts]', N'U') IS NOT NULL ALTER TABLE [transferts] NOCHECK CONSTRAINT ALL;
IF OBJECT_ID(N'[transfert_caisses]', N'U') IS NOT NULL ALTER TABLE [transfert_caisses] NOCHECK CONSTRAINT ALL;
IF OBJECT_ID(N'[transmissions]', N'U') IS NOT NULL ALTER TABLE [transmissions] NOCHECK CONSTRAINT ALL;
IF OBJECT_ID(N'[types_of_services]', N'U') IS NOT NULL ALTER TABLE [types_of_services] NOCHECK CONSTRAINT ALL;
IF OBJECT_ID(N'[type_comptes]', N'U') IS NOT NULL ALTER TABLE [type_comptes] NOCHECK CONSTRAINT ALL;
IF OBJECT_ID(N'[type_conditionnements]', N'U') IS NOT NULL ALTER TABLE [type_conditionnements] NOCHECK CONSTRAINT ALL;
IF OBJECT_ID(N'[type_consultations]', N'U') IS NOT NULL ALTER TABLE [type_consultations] NOCHECK CONSTRAINT ALL;
IF OBJECT_ID(N'[type_examens]', N'U') IS NOT NULL ALTER TABLE [type_examens] NOCHECK CONSTRAINT ALL;
IF OBJECT_ID(N'[type_of_services]', N'U') IS NOT NULL ALTER TABLE [type_of_services] NOCHECK CONSTRAINT ALL;
IF OBJECT_ID(N'[type_ordres]', N'U') IS NOT NULL ALTER TABLE [type_ordres] NOCHECK CONSTRAINT ALL;
IF OBJECT_ID(N'[type_prelevements]', N'U') IS NOT NULL ALTER TABLE [type_prelevements] NOCHECK CONSTRAINT ALL;
IF OBJECT_ID(N'[unites]', N'U') IS NOT NULL ALTER TABLE [unites] NOCHECK CONSTRAINT ALL;
IF OBJECT_ID(N'[units]', N'U') IS NOT NULL ALTER TABLE [units] NOCHECK CONSTRAINT ALL;
IF OBJECT_ID(N'[urgentistes]', N'U') IS NOT NULL ALTER TABLE [urgentistes] NOCHECK CONSTRAINT ALL;
IF OBJECT_ID(N'[users]', N'U') IS NOT NULL ALTER TABLE [users] NOCHECK CONSTRAINT ALL;
IF OBJECT_ID(N'[user_contact_access]', N'U') IS NOT NULL ALTER TABLE [user_contact_access] NOCHECK CONSTRAINT ALL;
IF OBJECT_ID(N'[valeursps]', N'U') IS NOT NULL ALTER TABLE [valeursps] NOCHECK CONSTRAINT ALL;
IF OBJECT_ID(N'[valeur_actions]', N'U') IS NOT NULL ALTER TABLE [valeur_actions] NOCHECK CONSTRAINT ALL;
IF OBJECT_ID(N'[valeur_activites]', N'U') IS NOT NULL ALTER TABLE [valeur_activites] NOCHECK CONSTRAINT ALL;
IF OBJECT_ID(N'[variations]', N'U') IS NOT NULL ALTER TABLE [variations] NOCHECK CONSTRAINT ALL;
IF OBJECT_ID(N'[variation_group_prices]', N'U') IS NOT NULL ALTER TABLE [variation_group_prices] NOCHECK CONSTRAINT ALL;
IF OBJECT_ID(N'[variation_location_details]', N'U') IS NOT NULL ALTER TABLE [variation_location_details] NOCHECK CONSTRAINT ALL;
IF OBJECT_ID(N'[variation_templates]', N'U') IS NOT NULL ALTER TABLE [variation_templates] NOCHECK CONSTRAINT ALL;
IF OBJECT_ID(N'[variation_value_templates]', N'U') IS NOT NULL ALTER TABLE [variation_value_templates] NOCHECK CONSTRAINT ALL;
IF OBJECT_ID(N'[ventes]', N'U') IS NOT NULL ALTER TABLE [ventes] NOCHECK CONSTRAINT ALL;
IF OBJECT_ID(N'[villes]', N'U') IS NOT NULL ALTER TABLE [villes] NOCHECK CONSTRAINT ALL;
IF OBJECT_ID(N'[warranties]', N'U') IS NOT NULL ALTER TABLE [warranties] NOCHECK CONSTRAINT ALL;

PRINT 'Inserting data...';
INSERT INTO [accouchements] ([numero_accouchement], [patient_id], [medecin_id], [sage_femme_id], [salle_accouchement_id], [service_id], [business_id], [location_id], [date_admission], [date_debut_travail], [date_accouchement], [type_accouchement], [duree_travail], [complications], [semaines_grossesse], [statut], [examens_prenatal], [antecedents_obstetricaux], [created_at], [updated_at]) VALUES
  (N'bVrpoiVg', 709571, 776647, 935519, 571859, 91162, 605, 433, '2020-11-27 07:31:10', '2020-11-21 03:28:21', '2021-06-07 16:03:16', N'oGMbJmTPSIA', 226, N'LrZaWZkSBvrjnWvgfyg', N'_wMqZcUDIhyfJs-O', N'KmTecQoXsf_ogyrD', N'kxwnQrSRPeMOkIUp', N'DyrOSJoRu-', '2021-02-10 08:39:59', '2022-08-02 04:41:34'),
  (N'Zuzren', 957493, 988713, 594732, 918939, 752788, 323, 218, '2024-11-18 15:00:42', '2024-01-01 18:05:00', '2024-07-16 04:06:17', N'qipVJIqVL', 439, N'xoiGFfWdhjOkYRBMe', N'yMDHqJaRUhRIWrXPv', N'sBkDaUUq', N'GgOt-OGMmj', N'WkIXHaMuFbhx-Ztp', '2021-02-16 12:50:40', '2022-09-07 22:19:05'),
  (N'fUF eWI', 803036, 131870, 134629, 691799, 498370, 970, 563, '2022-01-15 14:23:21', '2022-11-22 01:41:07', '2025-02-14 23:50:23', N'nIWUSmTtzQPxCHChpo', 66, N'bLJoLoaeTOdoecv', N'GprQFnI', N'UKKEpYEZA', N'ggQBwBADUdR', N'dzUvZgpm', '2022-04-03 12:38:05', '2025-03-13 17:59:41'),
  (N'iBlrDpeCZ_JgdPI-afW', 889922, 247862, 174390, 426157, 509232, 493, 219, '2024-01-18 13:21:43', '2021-02-18 17:48:12', '2022-01-14 01:51:51', N'ayqYYDsBSUYJQTFjm', 304, N'dLVIdVuddLE', N'dGf_leMeRp', N'hKpLMcNfAQLKHuqnQ', N'pqziQPtDuWeaDNK', N'eInGqiwe', '2022-09-18 12:47:49', '2023-10-12 15:34:04'),
  (N'kC-ITtNZPHaQ J', 313922, 977018, 695614, 108619, 984540, 900, 138, '2022-11-20 05:38:21', '2021-08-14 04:36:57', '2021-07-19 02:48:41', N'rsMnTvnRO', 874, N'GFq_dfOB-rcav', N'OqkVCJTBJ', N'heSjI', N'-xLJjB', N'ctxYcwnRp', '2021-07-05 22:28:43', '2023-08-24 09:49:15'),
  (N'NVjpkZZlAblVvYAZQV', 850133, 260223, 279767, 166932, 825623, 719, 111, '2023-11-22 02:00:32', '2020-12-18 21:08:47', '2024-08-21 22:49:21', N'm Dwt YoobQm', 409, N'reXrwPGzR-Ivbhq', N'LqcgMBwUYu', N'MGhyKmqcTBaHZIRUVV', N'xBeQvNuQ_hU', N'GtQAuzSsJimAQy', '2022-02-12 06:02:59', '2025-06-23 17:11:40'),
  (N'zJ-atsnBYLMPuD', 463247, 463639, 708447, 224083, 536005, 485, 813, '2022-01-29 18:44:17', '2021-05-11 00:26:39', '2023-01-19 06:16:44', N'f WpRtoZmjbcpEN', 871, N'DAOKmTS', N'FzpjPSaWXgXBolZSH', N'dJp_hDiZDQHJMuWCN U', N'-JCkVECqWp-OrXXHFO', N'rCeTsprvuIfi', '2021-12-02 04:22:48', '2022-08-09 01:44:12'),
  (N'SjTneAAvIDAdn-AyX', 612452, 992018, 729309, 20481, 898349, 902, 784, '2025-07-14 04:12:52', '2023-11-15 08:53:46', '2024-09-10 11:49:03', N'wtWy_', 914, N'IVVIZMoForBFbyvQRZ', N'Uk-DiNIbzLKQbfPBi', N'ldqyunDuvWyrW-Aq-fE', N'VIdwo', N'XPcWbpm', '2020-10-22 21:16:30', '2021-12-07 00:04:55'),
  (N'iEQhKnDSqXxk', 635325, 636746, 784257, 753253, 120097, 797, 839, '2022-01-11 08:53:39', '2023-04-13 22:22:25', '2021-07-22 10:03:28', N'tKRyz', 965, N'eLS-OpgSXt_', N'YKYcwIBQ', N'eGPva_A FgBxO-DT', N'BlUHPrNZI', N'DB ULru_p-frCpWDKNQy', '2023-07-01 17:10:52', '2020-11-17 17:39:27'),
  (N'_ulFnwZqvrMSrJaHmfpU', 426171, 512312, 582145, 794994, 251998, 708, 488, '2024-10-23 11:55:19', '2024-06-12 23:56:49', '2020-10-13 03:22:54', N'sozSptQ', 596, N'EJHwBVJvwSDrtqoh', N'uhVIWSlmnVE', N'ULWHMsg-msoxl', N'aTIircdJsSiOWF', N'aKsEECvl', '2021-01-27 04:33:24', '2022-10-13 23:47:01'),
  (N'h ezFeKORdjjZKtfphJW', 436391, 635771, 625085, 829152, 648459, 232, 795, '2025-01-30 03:27:47', '2023-11-15 08:40:20', '2024-06-20 06:25:25', N'tLBtKNdNVgWnOnqQfkp', 178, N'kaACSME', N'cosTsSDeRoqYYO', N'BhIoPjr jed', N'YtMV KsChD', N'SzrGIFCfMcBVuM', '2022-10-07 10:24:53', '2020-11-08 22:15:26'),
  (N'oR-KLbW', 704939, 861323, 282603, 604239, 42186, 782, 775, '2022-02-15 20:47:54', '2024-08-21 08:42:53', '2025-01-18 22:22:45', N'rlLBO FfEwAvuQg_kvA', 711, N'sQz WJcDfuquhXzG aQI', N'AdmHxNWFOCWdnrJisCS', N'hbOMZpTktJaJAfo-hDhP', N'FTsGTrA-E', N'pDJjymMGVierXY_AvYGr', '2020-08-28 12:54:37', '2023-01-16 07:38:02'),
  (N'-LLQFjCIEwvJWI', 395534, 477464, 978167, 337409, 911844, 194, 715, '2022-09-01 12:15:46', '2025-07-02 01:57:12', '2023-11-23 10:00:25', N'_XAcuVETZyyQ', 812, N'FciGLvg_C', N'HDaUjAPj', N'EYqvNSz', N'_v_R_Iy', N'OTWFIcNepORsoVf', '2024-04-29 20:53:19', '2021-06-22 10:04:55'),
  (N'CkStbcuY', 58846, 307619, 375877, 393050, 451608, 150, 251, '2025-02-25 20:15:44', '2024-02-21 18:26:09', '2025-06-13 20:17:08', N'klfNyNRpFL', 147, N'DOqDqQaZDsRI', N'eCwLtOBSqD', N'my_EgpyKwKsSsb', N'raKRXVdMVF-sXZoMZ', N'oOmNqRWUXQR-iOgO', '2020-12-21 01:11:28', '2023-04-07 09:20:09'),
  (N'cLxUifsuVAlmiYIxHGr', 870814, 172538, 269453, 958450, 864750, 967, 494, '2023-02-23 12:58:20', '2023-07-08 22:04:14', '2021-08-13 09:18:24', N'ejWoRURz_ZJxfYzaqIh', 466, N'RVRqLy OxgRoEbNJ', N'NoPeO DStPAhicc', N'FhgpIiyDxQVSIA', N'APg-FNArc', N'nCCp_xgRxIPwdzrm', '2021-09-04 02:31:10', '2024-07-03 07:48:56'),
  (N'QnPOMbd', 825014, 349710, 255401, 132041, 825207, 579, 211, '2021-03-21 17:34:28', '2025-05-08 10:21:31', '2022-05-26 04:24:14', N'ovXjYMar_j', 134, N'ZlhQbiawYYpLu', N'lqdiV', N'HhVeECXxGLgCGoNcUY', N'DPbdE_zBRgFTCe', N'uMjeirN', '2025-08-13 05:35:07', '2025-04-20 06:03:00'),
  (N'yMHsDGMBgYSh_PP', 920342, 806316, 578117, 755856, 907535, 221, 441, '2024-06-23 12:00:19', '2022-07-31 11:20:48', '2024-02-27 05:48:26', N'DzAUguBuQqxjRE', 69, N'-ffBgVV', N'ZiJdLJJvQhAwQWBU', N'sMtwgK', N'jQEo_gw_Jxh', N'KoZB_JX NNRPJ', '2020-11-10 03:15:30', '2022-11-29 11:58:43'),
  (N'lrSWt', 966303, 356332, 368075, 6403, 190218, 891, 147, '2025-06-15 01:35:32', '2024-01-17 18:16:40', '2021-03-24 18:17:46', N'VObfVHnyA', 465, N'kxtUuXKMfdjkWNd', N'rCQBFMC', N'rnWGhwBhsRRLFHQtco', N'MdantnXiWqsuhaFVB', N'iyIToGJ-QZ', '2023-08-25 22:14:57', '2021-04-01 11:58:09'),
  (N'VcBbDeuKBKzTOAshz', 21870, 340545, 180223, 840248, 993646, 633, 472, '2023-09-18 19:19:23', '2021-05-21 09:04:16', '2024-05-08 09:13:16', N'pBLzHfzt', 764, N'ovXkeGOhHGmXwwU', N'pgjqmlMjW', N'lXOFDWK', N'RKPONuOujCeECOtYrLd', N'GetDCcdx-seP_fNM', '2024-12-12 23:20:52', '2023-11-28 02:43:20'),
  (N'LJYVcCZKPmuMEGjdCgZ', 942803, 878054, 360121, 749015, 88426, 517, 662, '2022-02-07 16:33:21', '2020-12-20 04:16:46', '2022-09-29 06:44:30', N'CHHNkxxsyAXvRMdYOPv', 68, N'gJRysqU_QMjvfLQ', N'wtPSQziMT', N'tJyPYv', N'QS-VRHfPQ', N'GxbxtlnvXFmoijes_Y', '2021-06-30 19:13:57', '2024-12-14 21:43:10'),
  (N'QvXNiM', 395020, 161746, 170129, 189631, 871729, 710, 790, '2022-01-16 21:07:32', '2024-05-11 08:55:32', '2021-01-03 07:34:28', N'xRUpCNsWVYCoIptZYE', 926, N'xRKCDXsXyGH', N'k mZMiqdPExJgT_H_h', N'fWkrCGj-Bfo Cw', N'AdzGx', N'yfxobug-TPvY', '2021-11-17 07:51:23', '2021-10-22 01:48:00'),
  (N's-ES-i', 795703, 739809, 491898, 470393, 645240, 6, 928, '2021-04-23 17:07:58', '2020-10-18 14:39:48', '2022-10-24 16:42:07', N'-jJUMHBhXsp', 309, N'dpAOYNDe', N'-FMIbOGK', N'TjsBaNwpKAlQ', N'HxeHIGY', N'yEcOy', '2023-10-24 09:04:28', '2022-10-17 15:09:54'),
  (N'wYewp', 768545, 689024, 658776, 108700, 808978, 596, 753, '2023-06-19 16:00:55', '2021-10-09 01:22:16', '2021-01-05 07:32:21', N'Iv Pl-XRDSEOlZie', 734, N'csmcYmcutGz IEqcWPm', N'wXdPvrhZxBzVCy', N'lFSFxZHrZfUBfBM', N'IsugfuQstC', N'kSCwCcUwNBrOYdeQOz', '2023-09-23 08:04:20', '2024-12-31 16:05:50'),
  (N'bj_MRYCcie', 247460, 816333, 676503, 384124, 379743, 393, 973, '2025-06-17 22:27:26', '2020-11-29 04:27:19', '2021-12-10 06:48:34', N'xxCWeKiHxzuPrphbVlF', 531, N'JhqXqTCnNsSFmhi_e', N'lTCfZR_uQwTeJIst_kT', N'YxGohmYipY', N'bxJKxDZJiNfetzTUEHAX', N'KeiuPeCDRHwi-XJOL', '2022-03-08 21:47:08', '2021-09-25 11:01:32'),
  (N'Gd-hHjtkkuTowHs_fq', 205838, 665906, 577600, 287783, 131251, 641, 311, '2025-03-05 00:38:09', '2021-06-06 20:09:27', '2024-11-29 00:12:02', N'LLjkQNUMv-', 947, N'bfcPX', N'PnXKANObFOIsP', N'EpZZRztDeSdkCA', N'DnvMjuTuUwziWxGJgupD', N'rCpjgdsy', '2024-03-11 16:01:01', '2022-09-30 22:00:15'),
  (N'uKUumWkFG', 489492, 522988, 921778, 323529, 521531, 24, 93, '2023-12-25 07:53:36', '2024-12-07 22:18:05', '2024-07-11 03:13:05', N'nLwddsFM-PRE', 293, N'_gBiq', N'WzxczdKJmxJseyGC', N'NRNhigzxYvJx', N'mMGzGccci', N'ZEHDjMGiuNukzNV', '2023-03-08 06:09:37', '2023-07-01 15:27:12'),
  (N'TKtE bxvRhALtYUSObME', 278429, 687437, 820935, 813865, 606575, 592, 234, '2021-01-27 02:56:57', '2025-08-07 12:16:48', '2024-09-21 06:29:20', N'HOUNX-yj R', 249, N'KShmbC', N'AjASnAGXNE_VUdT', N'HnJuQEHyu', N'DIvIwRXURP', N'NEmprJtotXsTn', '2024-10-17 20:20:36', '2023-05-02 13:54:07'),
  (N'wJYUrshKRIyz wXZjscs', 748832, 82869, 363189, 968895, 463865, 672, 263, '2024-09-17 00:22:12', '2022-06-16 09:38:38', '2022-05-10 08:54:47', N'JSrigNVLppdQH', 232, N'dgAvTEgRXiaJ', N'APEEPmWsus', N'XfPKoI', N'lA-lc-', N'YFlVscatKMgvsDPIH', '2024-11-02 02:24:36', '2021-10-11 12:18:13'),
  (N'rmZhvkUDPqTlaVvYsKR', 794069, 202545, 184020, 640633, 897735, 655, 919, '2024-02-01 09:11:03', '2024-04-10 09:29:48', '2025-01-07 11:44:30', N'fzQgliEupaqypCW', 274, N'tLUKaqPxSpdQhDt', N'zRGTXtShOs', N'NooiEjDVMxASJEWI', N'WpRWMYfHCHT', N'eKhd-JGmKIjku_HC', '2021-08-16 17:06:53', '2022-05-20 17:28:32'),
  (N'fGCZdDiGADKdJDRZtUbz', 266818, 856114, 3162, 782033, 228487, 593, 75, '2021-01-08 06:40:59', '2024-03-28 22:47:52', '2023-07-26 23:33:54', N'IdeEcsA', 185, N'XPUPAxyCy', N'fRQIiPwhlIzHiUo-a', N'tDRUI', N'Iy opDwjrmUWhcZQAN', N'pnegM', '2020-12-02 21:15:33', '2024-06-07 14:41:21'),
  (N'pVczCo', 565980, 227824, 791031, 905687, 813762, 58, 144, '2024-12-03 02:49:42', '2023-02-05 06:40:38', '2022-08-18 01:58:44', N'KMXR uptjQHoAtr', 63, N'ORBJFdwPQy', N'SAAjtylWIEp_ot_', N'ZDdJAAJHi', N'pqnvPfC_xfIU-mdry', N'emZWLU', '2025-05-22 20:32:34', '2022-06-25 19:33:20'),
  (N'nvtanmVhVWEpSMTnzpJu', 813186, 296810, 399153, 488900, 559573, 665, 368, '2023-04-05 19:15:47', '2022-11-11 05:04:46', '2023-09-11 22:40:37', N'DgZUEW-unxuAcKoVjbqJ', 958, N'sjmvoyK-pFJPRvqW F', N'DkUYwkiUIFlIPdHc-_e', N'WaAi-O', N'eTjanGDxdNOQ', N'QFbaIJAabHUrIsbG SRB', '2022-02-28 12:44:08', '2021-07-19 01:21:13'),
  (N'HjpmNHq', 371659, 280311, 833552, 416177, 82858, 383, 983, '2024-02-03 01:13:43', '2024-07-16 14:59:00', '2025-06-10 23:14:50', N'SotR _fP_PWc', 96, N'yyJEdOaSkfF_BPYvK', N'HconSKEr', N'eRrIKQ', N'l_ubnL', N'W T zetkK', '2022-09-06 16:32:14', '2025-06-16 05:32:27'),
  (N'RIvyWViYSUfGVwdgB', 243421, 879415, 79711, 357138, 634566, 788, 629, '2024-01-05 01:57:13', '2023-05-31 14:02:15', '2020-11-20 14:40:48', N'YCFowJyBlRLQy', 88, N'ZpTefrjyTYOjVy', N'xgfatCxWrgiflBC', N'gbfwJfMMYuyasAyXfU', N'KHkRykirtrFj', N'kBrAtEY', '2021-04-16 13:18:12', '2023-09-16 13:03:22'),
  (N'pUOFMNmDgitaz', 348355, 882496, 650319, 398344, 843136, 883, 338, '2024-05-19 07:01:51', '2023-06-26 13:22:21', '2024-04-19 10:42:11', N'tuMSmEulz', 992, N'sVSOFKYpuyr Yzx', N'KmLIlRXJ', N'UDTnC', N'-Se _YYARFiOtp', N'QjTBYyeCMELzI', '2024-12-11 13:24:26', '2024-03-12 04:23:28'),
  (N'YxSZIM', 669181, 958820, 89111, 114683, 806307, 255, 674, '2023-08-28 13:00:25', '2022-01-19 08:43:39', '2021-01-05 04:37:53', N'WvYBgagqoGVHJLSKo', 457, N'zDXRLSGjwbEgsAfh', N'wtvDYnHEw', N'gCUSCuetcZThb_vPgRZk', N'HlJkvJBDoZzO', N'lOQBzbVNmC', '2024-04-16 03:24:44', '2023-12-11 15:19:42'),
  (N'TnnrW', 737946, 848015, 834675, 65603, 605394, 105, 819, '2025-03-15 14:58:37', '2022-03-24 10:22:00', '2023-10-01 01:08:10', N'mDhqQFHOuMyNzLh', 357, N'_DNl RTZtNLfRiuh', N'thlxSjGyAMiK', N'BlFOISPlJkFsilu-C', N'waFim', N'JGPFARFAT-CFkfKbY', '2022-07-06 17:30:10', '2023-02-14 01:25:59'),
  (N'roIskX', 479537, 593128, 778587, 810075, 803125, 508, 563, '2024-12-24 14:05:07', '2021-08-07 07:15:16', '2025-07-04 22:17:10', N'rXI xI W', 43, N'InBgV-PWptcCqw fChX', N'nZVLSwTNOBkN', N'Yn nZdKwI', N'MIkuTssKr_GR', N'iWYAdrPi', '2021-10-06 19:46:41', '2022-10-05 06:54:55'),
  (N'Tu-pW-RzF', 149078, 605475, 663122, 281771, 658310, 425, 385, '2024-06-24 20:34:36', '2021-04-12 04:31:56', '2021-06-05 19:16:52', N'GVrSxDFuLaX_UfUDO', 681, N'_eYIznB nFru-svJ', N'K_FYvRWdc', N'OY-Dbh_k', N'DaBmSiPtkrfPxqfxQPk', N'zOtUSW', '2022-08-18 00:39:39', '2024-04-15 03:24:33'),
  (N'TganEei', 622519, 237179, 544677, 713014, 466687, 10, 9, '2023-07-24 00:22:34', '2021-08-30 05:45:18', '2024-03-24 15:38:23', N'EeoyfUZgg', 321, N'tiyX WiPRjeHKaNP', N'CwUnOVjANR', N'nfgiWhLUywBuYiprPfp', N'XSb__QtnHMGmVz', N'PdYYpFyhpFOMeH', '2020-09-27 01:24:44', '2023-09-16 11:03:52');
INSERT INTO [accounts] ([business_id], [name], [account_number], [account_type_id], [account_type], [note], [account_details], [created_by], [is_closed], [deleted_at], [created_at], [updated_at]) VALUES
  (957, N'iy-KAxIRlWEXebL', N'aqncdYz', 519, N'OTGXABSzfOIINj', N'ftfGnZjIuzLOW', N'tSBU_pd', 251, 0, '2024-05-01 11:04:32', '2021-08-15 22:13:02', '2024-06-29 03:29:08'),
  (627, N'tQVQVl', N'aTiSakFw', 536, N'kxiVXrUhXbvZB', N'HeqTKOeFDGxdF', N'xkqXgKRUho', 759, 0, '2021-01-04 09:20:06', '2020-09-27 17:53:46', '2022-09-19 08:42:31'),
  (48, N'xyjl_cJZTVPAoupAUur', N'KxhGRdl', 229, N'zeDsX_', N'ufJDaxmsKYtVNp', N'xLFXXmUIWYpjaAboIwO', 860, 0, '2023-06-27 10:20:12', '2020-08-25 02:38:53', '2023-11-02 14:42:56'),
  (870, N'gnHpAFdjTrfco_', N'SxDVfLgGiO zeLKdBQ', 988, N'psq_uZzS-', N'uCroemiXXLgjgkC', N'uAhIwXnCtDq_hfkZRt', 722, 0, '2022-06-19 14:44:33', '2023-06-04 23:41:52', '2021-11-24 09:27:18'),
  (94, N'wzGdRtq lbz_', N'JVJpgDgZYihad-Xoim', 411, N'ROPfLLq ebemPCZi', N'_-ZvhcD', N'kKB Uz', 509, 0, '2023-11-22 16:00:22', '2024-04-07 04:00:22', '2022-02-08 11:04:13'),
  (363, N'lrrCjcNNNpP', N'FAJEdfryiAmPZH', 256, N'yYTwE', N'wKGuyrlbuMobZXrdZEHw', N'kgpQprI YVdW', 971, 0, '2025-07-14 04:20:44', '2023-12-10 08:30:48', '2023-08-27 21:46:53'),
  (958, N'lpLuZVSwLb', N'KKjKm-ZFItlFcfdo', 617, N'bHEavNmZivTl', N'dbjLTjXh_HxexTQ', N'LgvtuikUBYOFPulTJ', 711, 1, '2022-07-15 03:24:13', '2022-02-16 08:47:45', '2023-11-09 03:59:42'),
  (315, N'ilUaSKz_XKclMu', N'OKgFjvVepwuk', 652, N'TQOUvC', N'qnpSe', N'qYgUadyCUAkAFywI', 385, 0, '2024-09-18 06:56:26', '2025-07-21 12:34:20', '2022-07-22 10:17:54'),
  (167, N'eZ_csbuqgevkykUeJfv', N'TbBPkMBkdgvnmASJUUIq', 677, N'tpgdzKJ-FjdxaB', N's QOMEm', N'bnkOsfE_', 119, 1, '2024-01-07 10:56:40', '2024-08-22 17:47:39', '2024-10-18 03:19:55'),
  (917, N'fPIylxyxlCcqC', N'qo-rKdjWSQgfQwZIAWL', 233, N'-y HAI', N'KpEtfz_TcGKHZKRNjhWC', N'knZmicBfRB', 207, 0, '2022-10-30 19:01:54', '2023-05-10 23:52:50', '2021-03-16 18:24:15'),
  (90, N'JzJu_rHDaYSNLHYAh', N'jjKLLWggKXgYsIwAqy', 671, N'KMEclrzjNMRSzczvSpdV', N'rxbv Yttr-F_SRgoitVC', N'rUAMPfmCn AVFWH', 889, 1, '2021-02-11 04:38:26', '2025-01-07 10:55:27', '2021-12-27 11:28:32'),
  (68, N'TGziX_HKblm-m-', N'pcDdxT', 204, N'x DGzOhRbpxFM', N'lELJwwk-qV-Sfsbydk_', N'_oPoRnrPAGb', 886, 0, '2024-09-01 12:52:49', '2021-10-05 15:41:03', '2022-02-09 16:24:27'),
  (616, N'oqMZt', N'By_wDqnDtRH N', 407, N'aGQ--xJP', N'tRgEevrOurqPTP', N'mjHWpdZ_ZZMzQu', 698, 0, '2020-11-07 15:42:47', '2024-11-12 20:26:11', '2023-02-24 23:30:36'),
  (266, N'zyVcLTK mvUToRIOYE', N'Gt_k-QJlsgEiVqUZ', 573, N'RvPfowoVtA', N'xqLsD_hEdOLLNeE', N'GhRyHtAd_ji', 206, 1, '2024-02-12 21:11:09', '2025-06-24 15:26:22', '2024-07-12 04:37:47'),
  (147, N'TlXfFvOluOdaCrn', N'KWkFYWXfiN', 445, N'zBEyacImUxauW-HmbR', N'OUpoS', N'tigyGLtke ctsDUH', 611, 1, '2024-04-28 22:03:14', '2021-10-10 05:41:38', '2023-07-21 09:38:35'),
  (924, N'wWmkZzbooUinUbLGkhxT', N'yOqXIN', 50, N'QgP-bd', N'ACyhJqES', N'nSROatAQg', 679, 1, '2021-10-20 17:17:03', '2024-03-13 19:32:31', '2021-07-12 12:36:11'),
  (524, N'shYgFmMm', N'-HmwTAskcJFnS', 956, N'vpaaQfh-KQFjfXGeUUgq', N'DsqDdg lc_sx', N'BVhg_Wca_iQPkvw', 916, 1, '2022-12-02 04:13:46', '2021-06-05 08:35:00', '2023-10-22 06:21:08'),
  (835, N'lhzzDr-yS_EZAPZ', N'hiSUd_kgAL', 495, N'lNyXwNbR-UiEFhACceq', N'aTRHXVKUKoQvHHS', N'BQUpEwQR', 657, 1, '2021-11-25 10:06:35', '2025-05-21 06:47:40', '2021-02-06 02:22:31'),
  (12, N'G_E_FkeWFu', N'vrdGoJPyz pf', 471, N'ZKCf_FCuhFVPbgzAcJJ', N'fYMN', N'GJnPQDvx d o_D', 340, 1, '2023-09-23 06:50:08', '2024-06-26 12:53:47', '2021-08-09 19:49:44'),
  (100, N'avw-OZsJHxSg', N'kFi TV', 739, N'gqNmmh_znD YmTvgWA', N'O-RLhX', N'DQLGiFaHVdJB-LEGXlS', 593, 0, '2021-09-23 10:28:14', '2021-07-08 07:10:26', '2023-12-07 04:41:03'),
  (674, N'GyAMSWprzvsCZii', N'MSVGt-SJuTVJOnmnNT', 298, N'RiTPlGISOuThWwJE', N'RV-Is_BZaHgbyjdQdm', N'WYksRqj-dSYsn', 772, 0, '2023-09-08 22:55:54', '2024-06-26 17:31:23', '2021-07-04 23:05:38'),
  (631, N'VPJypGYYZSsS', N'yyAYRu', 990, N'aVqmNX', N'-oOTTPxWLIVMmXUmsCl', N'llVGhyc', 439, 1, '2025-05-15 20:37:56', '2022-11-19 12:45:48', '2021-09-28 16:05:39'),
  (165, N'avDTjcjuMdXON', N'FYKJweYTuHolHe', 806, N'AIIzfwonQv', N'xsnWNHEJ WPahQw', N'pPNNpcRuyYhyqIUsbH', 789, 1, '2025-01-04 11:17:38', '2024-12-18 03:42:22', '2024-06-04 20:45:40'),
  (499, N'sPmuGf', N'kXIIaOen', 687, N'RB-gnI-SVXB', N'VRjbDTv', N'fedlYq', 572, 0, '2025-07-11 21:55:35', '2022-07-28 20:07:09', '2022-11-02 03:49:14'),
  (418, N'COzBubyRhIaPUNeWV', N'S_ewGg', 297, N'MfsWCyz QbEkIo', N'VzYZ_IsOj', N'RYUPxaJJjhcaKM', 404, 0, '2023-03-25 05:03:00', '2022-06-04 04:18:34', '2023-07-24 21:04:05'),
  (217, N'P_GjkloN-qmhlQZK_d', N'PJesQeqgmULFvwiQPpg', 292, N'muFCvNQ', N'SLjKKxZuBkaupY', N'TVPBr-xiRUvE', 474, 1, '2023-09-09 03:20:35', '2023-03-27 15:15:31', '2024-10-11 12:50:56'),
  (565, N'lPMf-r_', N'ImqUOeUeb', 870, N'LLzX', N'cJqIIEPXjxz', N'XLU_siDGGfzx', 515, 0, '2022-09-01 17:52:28', '2022-01-17 19:49:19', '2025-01-03 22:26:25'),
  (144, N'klKKQjVUEwcoWFoeqxo', N'QnHYxy', 481, N'ccPugTHO-r-VqLIKlyP', N'xLP-eHqyoHzw wFYE', N'GiCko', 79, 1, '2022-06-08 17:29:21', '2021-11-30 08:22:03', '2022-03-24 06:19:41'),
  (162, N'MT hQoAZvUhEREEn', N'P-AbpciKLk', 138, N'Kjdkql', N'MKObUUQ sfnCMEEko', N'MjYL XlNQGqkURvDML', 71, 0, '2023-11-08 15:06:48', '2023-12-01 03:45:08', '2021-10-05 08:09:41'),
  (112, N'mHGRA', N'MglENMcYI', 516, N'fEQiMI a', N'HAxcSHBoZEYXywLZVW', N'BiqEXo_f', 291, 1, '2022-10-30 12:57:48', '2022-03-30 20:03:34', '2020-09-06 13:27:45'),
  (727, N'KHhHa', N'PnSZuAxgjBPLqq_IB', 579, N'NrRzWnAJYJElxJJE', N'tKwXTzVi_QhVo', N'YSkgnGzYvZJNSRTdkyO', 6, 0, '2021-11-15 02:06:15', '2024-08-24 23:47:42', '2024-05-04 05:43:32'),
  (91, N'qoxfMcU', N'zNPHsTMdX lOFCam_', 673, N'mcYMGHSoNkRcxp', N'kfrXz', N'QzzLmHaVTefJsU-J', 937, 1, '2023-08-05 03:15:04', '2022-12-27 15:33:01', '2022-07-24 15:26:49'),
  (621, N'DzKaqlAGgJe', N'vhZGqI YKqSCyK', 496, N'WvXDRDLbEhqe', N'OYoRSoZuAwHIaS-qp', N'fzRV veJlEuwnK', 276, 0, '2022-04-03 09:32:49', '2024-11-17 21:43:06', '2022-05-02 21:50:50'),
  (241, N'qnom-p-NwjXg', N'fRQFNaW_', 555, N'_ExNuF', N'FlWGrzoWKidHZ', N'EIcGwzRXlDhSHDuSaa', 691, 0, '2023-11-12 09:49:59', '2025-07-30 16:44:38', '2021-06-29 13:56:00'),
  (334, N'NqlJqprENvxlFBnA', N'x_zrClKiKRo gUrZ', 242, N'_ymjZVjEZalAFi_OHI', N'YFtqJ_KdzgSkdn', N'E-OgCVvqxxJJZ', 264, 1, '2020-10-21 04:39:37', '2024-02-20 20:44:58', '2021-09-01 05:45:12'),
  (360, N'KKPPIlXswuR', N'XVCfyNsDOjkOZvAONKz_', 929, N'fkvouuP', N'TrMPzrCXxVLHCA', N'l_biUpQqVS', 768, 0, '2022-06-05 18:58:45', '2022-01-21 03:22:38', '2024-01-06 03:29:44'),
  (106, N'eEJdbXzH', N'gqNjfPy', 317, N'pVsCOiiH-kbc', N'uEDIrJCiSIlLMDOV', N'HOOItwEIoZfCtxAqjt', 11, 0, '2025-02-01 10:55:04', '2021-10-18 00:55:45', '2023-07-24 23:32:56'),
  (294, N'IaSFWEtaXBZsMoYaJxmA', N'zpkTVPy-yoqfBOpHWZ', 932, N'sPVIZrAm_elis', N'ODNCrSNF', N'ubjdIblgsri', 733, 1, '2020-09-15 01:22:19', '2022-08-13 21:14:24', '2021-05-27 19:12:20'),
  (155, N'FnvAt', N'xDSYcvf-WjdrXzeIElm-', 257, N'-ahXTpyXCpVcmDVXg', N'EyRtukOUcVJ', N'qEOtmxdQ', 224, 0, '2022-08-23 16:31:08', '2024-04-30 11:04:11', '2023-05-25 19:06:37'),
  (16, N'YrLhzYpacL', N'SMjxXfpkFfRNvWOddwPj', 719, N'iFouJYPW', N'ZCUmbSywUiqcFTCJ', N'ISFmKlIwuUDr-M', 937, 0, '2021-03-22 13:26:28', '2025-02-25 18:06:29', '2021-12-15 05:10:06');
INSERT INTO [account_transactions] ([account_id], [type], [sub_type], [amount], [reff_no], [operation_date], [created_by], [transaction_id], [transaction_payment_id], [transfer_transaction_id], [note], [deleted_at], [created_at], [updated_at]) VALUES
  (461, N'qIxDaXOGyUlbN', N'XNpuUeQI ymHRFXJ', 1541315139311495.5, N'uAPuhgHQec-ilc', '2022-05-10 09:44:07', 110, 498, 197, 102, N'KP-yQF', '2025-02-09 05:42:47', '2022-10-24 17:47:27', '2021-01-20 01:43:13'),
  (376, N'MTeanPF-fDZO', N'xJVA x', 7942495771380795.0, N'NrHcU', '2021-03-27 06:09:00', 855, 312, 80, 968, N'HggUoIymmHQ', '2022-10-02 10:44:47', '2025-06-26 13:58:27', '2022-02-27 09:13:28'),
  (572, N'VgXOKwRDSQBgkYlJzG', N'QkIMCwuJu_xAWOB', 8261549750407612.0, N'MpKInyXJVqxCCza', '2020-12-06 06:17:02', 292, 611, 17, 531, N'taton_ubX', '2022-12-25 22:29:09', '2025-05-06 17:44:52', '2024-12-26 00:47:45'),
  (570, N'gcDwjiqxL', N'oqZtfKzKnUeU', 3246920540400161.0, N'lF SSK gMPtcUZKyfXdX', '2023-06-25 11:31:48', 357, 901, 837, 445, N'hXoVP_MaOXOydtHcuI', '2025-06-10 16:35:22', '2021-11-28 07:07:31', '2023-06-01 23:57:47'),
  (515, N'jdRUzCWMKGfo', N'sYzjivfEKVdJzqfzGB', 7738251365562566.0, N'WiEJmFzPK', '2022-04-21 19:51:16', 575, 631, 754, 537, N'perXBuRKfhQA', '2024-03-28 11:06:25', '2023-09-29 09:57:38', '2023-08-07 17:20:50'),
  (196, N'wMPbXtkwN ZCNjC', N'omRxj', 7577337825930621.0, N'hVdpNj-', '2023-01-31 08:59:09', 15, 352, 711, 824, N'tCEbvnVI', '2022-06-09 20:11:58', '2022-05-15 18:09:39', '2025-04-14 05:58:24'),
  (536, N'JENUjSSQbyLQH', N'qkdsmY', 6965266884711740.0, N'dDPaeyQrQ_Qxg', '2020-10-18 20:12:50', 300, 889, 905, 665, N'oyGTguFMIflmGDJTb', '2020-12-22 01:47:05', '2022-09-28 04:31:31', '2025-02-20 09:42:06'),
  (313, N'FzVkbwRwwOtpGrZ', N'Oqy bJ', 9491164183631080.0, N'jvzQifUyHRNO', '2022-07-28 03:53:23', 428, 247, 587, 157, N'tMvCIinPiLIRZmitST', '2025-02-02 23:23:54', '2021-10-14 18:47:16', '2024-04-17 17:32:55'),
  (931, N'PKkueJIUh', N'u-jUbWuAAt', 4430044870496520.0, N'jXmgilbWNNrMK', '2022-08-07 23:37:43', 611, 238, 237, 704, N'wfSXE', '2021-10-11 03:51:15', '2024-11-28 05:39:59', '2024-08-15 23:10:14'),
  (730, N'l_yFEikmocAWarAo', N'WnelCNFSuDp', 4275556832914557.5, N'MV yUu', '2023-12-28 03:38:16', 627, 962, 761, 586, N'HgCD c', '2022-09-22 23:57:54', '2025-01-18 02:54:14', '2025-03-18 16:03:40'),
  (406, N'JyHWOd', N'sCztX sDkBs', 6131342792438925.0, N'SHjD-P', '2024-06-23 22:40:54', 93, 740, 513, 116, N'XLSIizAuCb', '2022-02-27 07:47:03', '2024-06-30 02:31:05', '2022-05-09 22:46:20'),
  (904, N'fquSPTYkTUhfhTCOxfH', N'UYGNkyJycXkvKQjkj', 1788667646732686.8, N'AttUXC', '2023-02-03 18:40:05', 642, 186, 121, 921, N'maNWqaDF_', '2024-11-16 19:05:27', '2025-04-05 04:00:51', '2020-09-07 10:25:21'),
  (623, N'pnLQEDACfMMapJrNOJ', N'dljdPwcj_cQ', 5780927154273869.0, N'vfdgAlkRsNQSSM', '2025-07-03 14:06:48', 807, 576, 182, 990, N'VLxcfXtuxy eWB-JesE', '2021-10-12 14:05:31', '2021-09-03 16:20:32', '2022-12-21 03:45:37'),
  (338, N'HnSnNdgKUOHfEUSMYT', N'BM_uqHKNwiNKFH', 7291847439993739.0, N'FZlNoTsmahbDOYhV_nZN', '2024-02-29 18:50:25', 424, 47, 342, 359, N'aOmSsqYettG', '2025-04-25 08:07:34', '2023-05-23 23:08:33', '2020-09-08 14:48:40'),
  (117, N'vzUKNb-lmv-vREE', N'PiEjOD', 8920583267899181.0, N'DY AVd-HtKURuJI', '2020-10-17 17:22:42', 214, 592, 702, 340, N'ejr-bvyOI-kKMylM', '2021-08-18 14:11:53', '2023-04-05 08:45:34', '2023-04-24 16:24:19'),
  (727, N'rAfFpx', N'-tnHtlhxYcXmfCGbZEG', 1540777771935736.2, N'EUHtXujXg HRinU', '2020-12-12 03:11:08', 471, 397, 731, 886, N'atcR_Mfv', '2024-08-10 02:25:16', '2021-01-10 22:03:42', '2021-07-06 21:32:06'),
  (534, N'bKWtOnummsrIuX', N'QhrjkrhaNJGgnIwJurj', 9432778187420494.0, N'KpketNvICdibER', '2021-01-24 07:54:14', 109, 393, 56, 89, N'zlTMLO-SSCNwtv mTW', '2025-03-05 01:09:02', '2021-04-21 14:24:56', '2024-08-06 10:23:38'),
  (582, N'f ZSDgDtR', N'EoojNqxzlSQvYuDFbeE', 1128870573002160.8, N'D_ksXwMKiGgz TYguJPe', '2023-03-17 05:11:27', 546, 473, 411, 605, N'pNpJkEyevn SLBYBKY', '2023-07-19 17:58:28', '2025-04-08 08:29:52', '2022-08-24 06:34:24'),
  (178, N'VTK-FhL', N'uJg CltzeMgR MX yuF', 6449891154480335.0, N'fn iLW', '2020-08-21 03:22:33', 776, 151, 677, 153, N'IsyNKCmnRutKYRtBTwf', '2025-08-05 00:54:13', '2020-09-14 19:02:45', '2024-12-23 09:35:37'),
  (414, N'_sdxJdaTJ', N'hsbpBSLzOuTyzyBI', 2112160746938552.8, N'EimJy-x-Aj', '2023-02-02 19:34:39', 894, 687, 129, 138, N'ePbjU', '2024-10-10 16:42:45', '2024-05-08 10:57:40', '2021-10-16 09:48:15'),
  (87, N'PZADYSMBN', N'DGBJ Cywol', 4247718572957311.0, N'KF_Up', '2024-11-26 09:14:31', 276, 421, 949, 560, N'ccKETxhLESfjUUH_', '2023-01-05 16:43:25', '2024-08-04 01:47:46', '2025-01-12 16:10:59'),
  (81, N'pEOVQQe', N'NdvIXaEDGEKUvA', 3529145416660703.0, N'skcSMVtUYKqdOE', '2025-07-21 18:57:18', 174, 587, 53, 673, N'ZVNbsFfiGe_Yrq', '2021-10-06 08:26:13', '2023-01-10 12:25:00', '2022-12-23 15:18:21'),
  (879, N'aVhMlLVjQCxZl', N'YSpFlZHcvfjM', 1541502985180483.0, N'WAXypQCUOknKU-wdPqW', '2021-08-15 22:47:51', 54, 172, 476, 409, N'tEVWIoyRTyEqjHBasZCy', '2023-04-28 09:04:50', '2025-02-23 00:11:29', '2020-12-26 00:07:33'),
  (100, N'_BNP_rvrrZgqPLzD', N'URLXmHvRSluJ', 105779891669888.22, N'-eaAg', '2025-02-07 12:10:24', 107, 702, 457, 360, N'UsqmcbNfdMQ-', '2022-06-25 05:15:11', '2021-09-02 22:57:39', '2021-08-28 07:46:22'),
  (89, N'yQWPKZlhS', N'qsDQeODrXB', 6922214918091258.0, N'qkXerXdyyvdq ql', '2024-05-20 09:16:18', 72, 504, 951, 206, N'lPFgjIXBnNPgCTqgc', '2021-04-04 02:54:11', '2021-03-27 07:57:16', '2025-06-30 16:10:07'),
  (746, N'XCbFjPOacQyrj', N'zKaGTXFEBz_UXZY', 700996856401019.4, N'ayS XEhKIwvR', '2023-03-19 10:07:44', 411, 57, 648, 982, N'xI_vf-D', '2023-02-07 10:30:58', '2022-05-13 15:23:27', '2022-02-20 07:14:46'),
  (568, N'yQmtSy', N'OSwFfOCV', 1894644956286471.0, N'mbULpF', '2023-12-11 10:14:21', 65, 812, 554, 659, N'FI-ZCbcvdvYUcz', '2021-08-22 18:18:02', '2022-06-09 05:29:57', '2025-01-31 20:15:30'),
  (470, N'VLoecVjFP', N'ENcpS', 6487864191125164.0, N'lOdt', '2021-06-18 20:15:57', 468, 626, 175, 856, N'ghFMZ', '2022-07-06 20:42:38', '2021-03-04 15:27:42', '2022-05-12 03:38:58'),
  (437, N'Z-VRzuhRKIiu-Yn', N'Llvehr', 1412368026193237.0, N'kSxJkCpLcigY_ONyXk', '2020-10-08 03:06:43', 901, 499, 83, 7, N'lfTPL', '2023-01-19 02:11:18', '2024-03-05 17:24:38', '2024-09-07 11:41:35'),
  (709, N'njOrHCApl', N'MlTFNf', 6271916540450125.0, N'wAaJpmhHgNxWIG', '2022-07-02 20:02:39', 476, 789, 642, 676, N'rdmhYjR_EFl', '2021-12-29 22:10:10', '2021-01-01 12:33:47', '2021-02-04 10:13:17'),
  (661, N'snBqvNZWDcgVdIlk', N'FGhep', 7214030805589324.0, N'AmVRuoXhuogpVAm', '2023-10-31 07:21:18', 913, 226, 76, 483, N'dBjnNDlyxiDUmOwrmvic', '2025-06-22 08:25:44', '2021-02-21 21:35:08', '2023-01-09 08:59:36'),
  (140, N'_DDAkWvo', N'MkYYONkKJ_ofA_', 5217687822074696.0, N'LE-DraUBVpp', '2023-06-03 10:35:07', 445, 594, 228, 914, N'KaAccEUXG', '2020-12-03 00:33:39', '2024-04-04 03:56:52', '2025-02-25 16:56:14'),
  (404, N'ZZS gCFpfJWaSUAniwsp', N'bEQtkTD', 8579221112309455.0, N'DDXiT', '2024-01-31 23:29:28', 190, 809, 893, 380, N'TOaOeySvHcsBWrSNIKY', '2022-05-26 03:35:16', '2021-04-29 02:22:27', '2023-06-29 12:50:23'),
  (754, N'GRxdhy', N'DNcxxlPJTeJTXniv', 2386327053579228.0, N'PEVWLSnW', '2022-07-21 23:26:55', 329, 362, 920, 274, N'rdexwCFGH-hETIR Is', '2024-06-24 19:34:54', '2023-10-08 08:34:29', '2021-03-12 11:10:44'),
  (193, N'ffzlsegkrhSjFjnHObs', N'RIiEwACVPbsmebZo-H', 6446720312228602.0, N'LvPPYuFLQSH-JCDtKi', '2023-03-30 19:33:17', 176, 809, 267, 233, N'xsX_djwsDkNkTIsll-TS', '2021-12-10 10:17:13', '2022-01-03 13:39:13', '2022-08-29 17:08:16'),
  (120, N'uKiCqx', N'nJTcQuwjxC', 5398665962775474.0, N'IthbzFXjDu', '2021-12-18 09:48:22', 5, 994, 757, 560, N'PTsEsWKQjZKUCvS', '2021-08-04 12:29:25', '2024-09-16 17:03:36', '2020-12-23 02:16:50'),
  (143, N'tbzN-oCw', N'udMPmLH', 2221438570416223.2, N'mbfI_CRQfGzmF', '2023-05-04 19:22:14', 618, 620, 524, 967, N'QxzjT_', '2024-04-10 04:48:58', '2023-10-12 23:14:19', '2023-12-03 04:16:28'),
  (382, N'swwtC', N'nUCVAZC', 2886340183302039.5, N'UAi-LMfjntEHveLWyf', '2020-09-10 03:10:09', 420, 655, 937, 280, N'lJDTKWiml-ysJFc  t', '2025-08-12 17:55:15', '2023-03-22 19:07:46', '2024-11-02 16:25:59'),
  (573, N'obYajqtO-OEhPQsAlFS', N'bhWrFeMVxLEK', 4360685115184330.5, N'ORES hxGUKb_q', '2022-01-08 12:24:02', 596, 60, 150, 328, N'SiwkdrxAOwdssHOeGmX', '2022-03-12 21:33:16', '2021-06-10 04:42:23', '2022-01-21 20:11:17'),
  (557, N'u _RZtrRSSxgILw', N'aiHsxXFAv', 9209073775320348.0, N'gnjGo-mYJN', '2025-02-08 17:08:46', 867, 545, 730, 565, N'ADeh ibE', '2023-08-07 10:02:37', '2023-04-15 14:13:56', '2023-09-21 00:42:09');
INSERT INTO [account_types] ([name], [parent_account_type_id], [business_id], [created_at], [updated_at]) VALUES
  (N'CMHWvlTt', 30, 763, '2021-08-24 00:51:21', '2022-07-12 09:50:01'),
  (N'_SjSotini', 81, 436, '2021-08-02 16:14:29', '2021-04-19 01:59:42'),
  (N'XEWBc', 202, 111, '2020-11-30 10:49:57', '2025-01-01 21:24:51'),
  (N'Ehqcet', 684, 11, '2021-06-16 09:27:38', '2021-09-09 04:20:50'),
  (N'LmlQwbfj_Vr', 972, 594, '2023-08-06 06:12:11', '2023-08-19 19:48:37'),
  (N'_GXUNpGKeg', 840, 593, '2020-10-03 00:22:35', '2025-02-18 14:42:20'),
  (N'TmskWIaUgnG', 872, 725, '2024-09-03 10:59:04', '2023-10-03 03:05:40'),
  (N'CRgl-wyBnG', 234, 418, '2021-08-06 03:59:57', '2023-04-24 00:04:00');
INSERT INTO [accreditations] ([imputation_id], [personnel_id], [dateEffet], [dateFin], [typeAccred], [created_at], [updated_at]) VALUES
  (129621, 488534, N'HiFWxTsJ', N'fuFhys', N'MVtR-CoJAs_Bm_e-ZER', '2023-10-06 04:02:49', '2022-02-28 15:00:20'),
  (13407, 706907, N'RgzCHQRfhjzzSLgVkexm', N'mM_zho-BUFrWTXL', N'WYZPzwEQMzFGr', '2021-11-21 10:38:23', '2024-07-03 01:39:15'),
  (113285, 128126, N'FFoOibgVd-eFR', N'lyMRu', N'tNNgWeQWH', '2024-10-27 17:47:29', '2024-08-07 10:44:14'),
  (211741, 307824, N'FGqIvZIIbWcBhyCu_yCD', N'clJQXt', N'FBitTyFWhK', '2024-10-22 15:58:00', '2025-05-07 02:45:04'),
  (718667, 565594, N'EJ_kGdzqFLyNRwXsudbL', N'i-xwZV', N'WOvyg', '2024-04-11 18:40:26', '2023-07-28 21:21:36'),
  (374726, 431940, N'dQpppPtLfSethvkb', N'cDQBKGArbSELbuy', N'uKgZFgSRnvFGZWQvk', '2023-03-09 03:31:39', '2023-09-23 09:47:59'),
  (457170, 211560, N'O_Ye-_InsqdtKzZoNVfT', N'LvreKZHE', N'nwYeP tGZtBQIumAzq', '2025-01-07 18:20:45', '2024-06-28 16:48:18'),
  (704182, 800528, N'bOTHlKFnQ', N'rOIZN_XBKUOdHmxDjpj', N'_BAu-eOn_Ar sP', '2022-01-01 11:39:53', '2022-10-26 07:40:40');
INSERT INTO [achats] ([reglement_id], [code], [reference], [emetteur], [motif], [commentaire], [created_at], [updated_at]) VALUES
  (720220, N'zphjmbpZ tDF', N'BPcmkribqYZrQJlP_c', N'YbdfuMteAxQQfz-U-iph', N'HQ-LXHqF', N'pMhXZuv', '2025-08-10 00:09:05', '2023-12-15 02:27:35'),
  (844987, N'BnjglnrCAqLd', N'IxShuIBERprYjxETx tb', N'-VQZdS', N'qJytOSxZRhIp', N'yazqtf WptnkCOuZXPA', '2020-12-03 20:01:55', '2022-12-19 23:16:29'),
  (908534, N'XFEVA-', N'TB g kSqGewAMU', N'DSbWdPPlOCYPiaz', N'OtuKfhkpHTX', N'_MRAYuCEV', '2021-10-09 08:50:35', '2022-11-08 11:19:53'),
  (181906, N'ZsmfAxlzy-KobbJ', N'fDmqS_kdzNBM', N'jfxkKhaTHBXD', N'hoTnm YrsVFyiB_nMn s', N'AlAYjbsqpNC', '2022-10-01 01:33:36', '2023-10-12 23:49:05'),
  (611219, N'faEiuSzRnTyTBVMqegJ', N'dvpEwM', N'aqGNyt', N'QxiJcLlqkGFvDifuT', N'jqhuciF-rVxBsqN-Wq', '2025-01-12 17:54:29', '2023-04-20 01:22:18'),
  (456944, N'uVFWjJ_QOZ', N'dmjdolcEqkTDBhFcCwT', N'DFh_Ujhwfnsl-kVG rKQ', N'LaHXKlAepXF', N'vbsRRhzx', '2021-07-16 02:46:38', '2023-05-22 18:23:52'),
  (161246, N'fD-TQ', N'DOrMQavcPNCuUUZKindZ', N'uZdVeJMyfzqlpX', N'fb_nkyXzsPWPjhtFZ', N'VZtRMiwQg-xGmFCyEr', '2025-06-04 22:12:33', '2024-03-27 00:03:35'),
  (94605, N'ZxNlBOBfcGvDRoPRTj', N'HOPHfsDBfZEtjiRt-pHB', N'KdJecGgGBAgDQU', N'wqLfXGbhVQDlY', N'-zcfATtuLU', '2024-07-04 04:45:06', '2024-06-18 12:10:42'),
  (654113, N'vZlnlfVMqRgBI', N'azhak', N'DSzQVMUFtN NxSRSRzZt', N'iiamh b', N'_bnEPjPpB-O', '2025-03-20 21:15:19', '2022-04-05 17:14:39'),
  (90276, N'XDjEBbhkjVSCFE', N'CLpms', N'dvagO_TBA_FVLMUJs', N'FzFGLU', N'oTdHbBKuJerPAEhFNPwC', '2024-05-06 21:17:51', '2020-10-24 05:06:28'),
  (169171, N'UmEwCoGoLRvM_-', N'isUTyA-RPVxYEZ_kNns', N'QEilmkM', N'gYAFtpnJdbwqwRkl GcZ', N'vBhNohJ', '2022-07-17 19:24:46', '2024-10-09 15:39:22'),
  (270347, N'YwXcXJrj_SGMQgT', N'CZD-Wh', N'YNNY_g J', N'GgkOhn', N'kUsTCWGFUgjPxv i', '2021-09-06 15:56:33', '2022-05-09 19:39:54'),
  (460439, N'XXap-ZEvsGkfrxTWAx', N'jWWHAYoiZBAA', N'_HYRxbCjXaTZHefvuzX', N'BdzWcQPjKd', N'AzRSJtUVuwa rH', '2021-11-19 20:26:28', '2024-01-27 13:26:11'),
  (467864, N'INYNPCSwZYP', N'XmtfcIvyUUViHIsnf', N'HvWOkbbYILqp-X', N'UBGhUd-xqOGwhd', N'CtKVaDvp', '2025-08-01 12:24:33', '2025-06-12 19:36:59'),
  (749362, N'wtsQY TKRiTy', N'guHLm XxDgjT', N'-AffdBiEnCexRHzLJH', N'qLFOBCSFUA kjGiFT', N'iTGHhSnDEcVkJxhM_Ah', '2021-08-31 02:05:05', '2023-10-12 19:57:27'),
  (599539, N'cHjhxtxtsFbYjj', N'dtsnl VFahJwecAEKt', N'vYyE-U-MiWiGODWCQCj', N'fZNQNAyozvIcQCV', N'PfkTbKOYXTtJP', '2021-09-09 03:27:23', '2025-05-24 10:00:01'),
  (89289, N'NIKWdKHmWEG', N'hQIlb', N'Ynp-T-LCfZIMu', N'LcFbvBlAbHuyqfhgI', N'sjlqXfjtAR', '2022-01-28 05:25:48', '2021-02-19 14:33:25'),
  (644325, N'lbTdtygujAuqy h', N'mpWMLp', N'GWGyhrduDJAeEbAOobrJ', N'pWJPYitK', N'Cf_OGnYjxIkYpIBJCc', '2020-08-23 16:16:30', '2024-08-03 04:35:55'),
  (869660, N'PkadErMq-Ryw-O', N'L-GsckVIKet', N'zSh-iUJ', N'BnNGZuRvOqWTC', N'pQuvnDMvbSiPa', '2024-09-09 02:12:18', '2020-09-02 20:42:51'),
  (945234, N'RlAJS', N'WzIfYPPeIb- QCRhw y', N'yl-XZSahDxmCaoVb', N'RTwmf NOtZToo', N'xcrFTTMnam OzhrKGFkJ', '2022-04-14 14:11:17', '2025-06-13 03:48:20'),
  (704828, N'eLiVeiqK_o', N'm_RbSRINqRJDa', N'PRPd_uB_ArhRHDFxHW', N'UodrAI', N'uazmvfKZbVoSBepmkvt', '2021-03-03 19:37:41', '2021-06-17 02:03:05'),
  (29227, N'BZbLZOv-qpgEpv-d vHY', N'eXMNCWgOCLhf', N'cyu_Se', N'dZCdtNOBe', N'RdJds_yz', '2021-06-14 07:15:08', '2024-02-18 20:03:55'),
  (244436, N'DyDYB', N'vPRYbDHv', N'ggaMTeLY-mK', N'OGqwAEUNC', N'piZcditLBG', '2023-09-06 00:55:48', '2023-04-14 09:30:28'),
  (612019, N'jEtMvsxaH', N'dpG -J_dB', N'mmOmYevmQESSDMSv', N'NtAvkgDYcFoaOoS', N'DNnpEVX vZVy', '2022-05-20 11:07:41', '2024-01-16 07:05:58'),
  (193195, N'xaewb', N'jsCmOLWx', N'bmmslo', N'Ulv_Jplmbl-qg', N'-RiyP', '2021-07-31 08:04:48', '2023-07-07 21:18:59'),
  (981587, N'tDpxZxQkHZN', N'TehjiYmmIySxuMBOpc', N'_IsYjupdOYr', N'_GLFnUfYE', N'kGyWPWG', '2023-10-27 08:56:00', '2024-11-16 15:01:47'),
  (544099, N'luTxHSETFErLzOYLPcn', N'mCpzntByKk-x', N'JfiWfsCHwoLcD', N'BCDBAxZFuryblCo', N'Pewfs-GGIPfYr', '2022-07-29 03:16:30', '2021-06-22 07:32:46'),
  (124349, N'xcImvmR', N'qtV XR_rmTMi_WT', N'aXts wYzz LWP', N'EPGWj', N'ooUVnEoHLYJWDU Dv', '2021-05-14 08:59:56', '2023-04-20 06:10:56'),
  (886888, N'BXSAnCC_Jbx', N'KitVaFZQ-', N'voABRWzWXSItuLbK', N'ijvKOZ', N'ynzeIymEgvKCOtfkg', '2025-05-04 09:20:53', '2022-02-23 11:08:18'),
  (33617, N'blmeysnosQHeDdxHakuA', N'khiIAEVeynintB TQ', N'kMKtLmGTRDrmajCe zMZ', N'HvKFDDKcVfsP', N'wS-TYtzN Z_lAplNUBD', '2023-11-28 16:19:53', '2022-03-13 12:13:50'),
  (732454, N'zScpkrOI', N'QeSUUnFAWJhxeW', N'GXXuACkq', N'GcDbeOSRVDy', N'Vz_mzcaqhTiuQVD', '2024-10-04 15:53:57', '2024-07-23 22:54:08'),
  (71552, N'JQpTCiE', N'-kk-bMglshIVz', N'eQWaRrjCwl', N'TcRInCSd-OZ', N'yStCdMad', '2023-11-06 02:16:51', '2022-05-09 08:18:35'),
  (973939, N'xpmfbAbav mR', N'ogZ--Qk', N'cAGg uuJOm', N'IzBhongwula', N'PuaynDoeQ rPNxcen', '2024-02-18 19:13:57', '2023-03-15 09:39:13'),
  (804830, N'gTIY_KkqgMuOSyRXSivl', N'_QEevbMLCyGOVoG', N'obNWh', N'pVBWpNfdixFsmj', N'nPcpUMCVviruPYWcH', '2024-03-01 14:19:29', '2023-02-02 18:24:07'),
  (787010, N'o_Uvv', N'nIdQpZRSUoMy', N'lCOaeFemdOjnifl', N'pGfBUDtkUmp', N'lMptsKCOmrYEfxzykE', '2024-05-22 21:00:57', '2024-03-25 20:13:22'),
  (529838, N'Wj YEbWyB_fWtMIjJU', N'qyDtDsyJME', N'viTEmjm', N'aGUUx', N'zAzVxyFtPLeAchyKkmWB', '2022-10-22 15:04:40', '2023-08-08 13:32:30'),
  (534364, N'OSxSdPyBVppEc xOTRbS', N'qMDRjqpML', N'ahXfPTyzTL', N'HmBk-Bq', N'GIQyLtUAWUfgOK', '2023-07-26 13:25:12', '2021-11-06 23:07:09'),
  (282090, N'VzStak Fage', N'HAPsUBklxlTimFlGhC', N'lmdVlZWmqAC', N'Okfsfyhr', N'vbLpEFR', '2021-06-29 18:30:19', '2020-09-19 02:29:34'),
  (64023, N'WaQLYcgnHYayM', N'FEWvMBvxRvu p', N'QzyNdwvZgaDSzU-i', N'MhHrS', N'xCNRQEGAQmaO', '2023-05-18 13:22:46', '2020-10-11 05:40:33'),
  (664564, N'cZVuRCoMFzVNYfwB', N'Q_SgUysMmTjHKY_TGciF', N't-RJDkC', N'EQIppnkW', N'gBTbkuy', '2023-01-08 14:37:38', '2022-07-06 06:03:32');
INSERT INTO [acte_carrieres] ([categorie_id], [echellon_id], [personnel_id], [referenceContrat], [typeCarriere], [dateSignature], [created_at], [updated_at]) VALUES
  (754110, 270144, 698282, N'QhQiIOUFfYSvoKXMePvy', N'PPYJ_BZooqhsfhfvV', N'VhKxi_uyKVa', '2023-04-13 04:28:40', '2021-02-28 20:06:22'),
  (618723, 561621, 199081, N'BuXxZRYiHQMLogzaI', N'uj s-oFRDjMsjVQ_Z S', N'MutGSh', '2022-12-18 03:43:48', '2025-07-08 20:04:53'),
  (501516, 661733, 868942, N'FsTydZvj Tn', N'SVdXl_FUzt Q', N'bJzvBREwWz', '2023-12-18 13:24:32', '2021-03-31 17:09:29'),
  (553486, 762058, 296789, N'SmS_JzgiuWYLZd', N'DPkKiCSEsjnnZV', N'VPaxU_KgRY_', '2021-11-22 03:53:30', '2023-11-03 11:39:55'),
  (996565, 447859, 712450, N'dgwEldhGPv', N'jOUzpchpzFtSMlPVyX', N'XD PyrO', '2024-06-03 12:03:20', '2023-10-05 19:13:23'),
  (12167, 125830, 122293, N'hFPQGob', N'rSVgYLlyEPSBtKigueTY', N'z SbzJ IYZ', '2025-02-22 11:49:53', '2024-10-16 11:32:53'),
  (67038, 544108, 877810, N'WWnQhlMS', N'aJCZuhciKn', N'fJq_WcfhGt', '2023-09-24 02:36:08', '2025-04-08 01:03:42'),
  (179939, 443602, 991144, N'ptcHY', N'QICiKFSuHwMIGn', N'Q cpcmjt', '2022-06-20 05:04:14', '2021-10-11 12:54:17'),
  (631395, 578889, 226535, N'riUNBeJqqyPkzDfq', N'SjIneOUrOSPmTxKQP', N'A juYBybMp', '2021-04-18 10:17:01', '2022-12-07 19:37:41'),
  (130675, 557287, 115334, N'evOfxvXrjZoragyoyg', N'lHUtL ZF', N'HwSKsJrM', '2021-06-24 08:32:18', '2021-01-16 14:01:57'),
  (179042, 333444, 992488, N'lwZVRYIJM_zELiqaR', N'QijyKVrdU', N'TXpRMATDlCwZDGsr', '2024-04-10 14:06:26', '2025-01-23 23:58:56'),
  (987420, 753368, 924202, N'tO_ftAXu_fOf', N'UpfkKdf', N'JFZaBRGUiEFGRR', '2025-03-01 16:56:55', '2021-09-11 23:18:33'),
  (425168, 14576, 646224, N'-VaTBSIVwpV', N'MCkRWH', N'lex-iGwdBFyk', '2023-10-24 07:40:50', '2021-08-07 08:55:59'),
  (354376, 958446, 712050, N'-I_X_hstEsqn', N'VOKzn', N'PG cDN_FdwaNDv', '2023-03-05 12:16:03', '2023-08-25 01:47:12'),
  (112370, 5405, 366710, N'zwagBFmfHG', N'AhFajXQqo', N'zxtxBlIZrgCQ-CkiwVBa', '2023-09-10 16:15:49', '2022-04-29 04:13:32'),
  (116042, 198776, 298740, N'izAVvc', N'QmEQrhAFJF', N'uWWXzGUV-', '2023-12-11 16:16:38', '2021-10-02 20:50:33'),
  (115064, 113120, 831220, N'ijwGa', N'dR-vBMVaBEss', N'fWBpNjUGlprXhqSpQ Bm', '2024-08-31 21:38:27', '2021-07-06 18:42:22'),
  (735204, 765940, 526736, N'm_LOOjohiz', N'rmjBbN', N'fdyAHtSOoov', '2024-04-05 08:08:57', '2024-09-17 09:01:03'),
  (64330, 534631, 447819, N'thrxrw', N'pudlcadQVunsErMgBl', N'FxvthgQaRJXiv', '2023-09-14 19:34:55', '2023-09-17 08:26:47'),
  (779021, 816640, 617519, N'pPrnLyfgiOVMhcLP', N'mTCgeINvtUE', N'IUjcimAJTqW', '2025-05-27 12:03:37', '2023-08-04 17:08:36'),
  (938385, 383792, 470268, N'BeEAHGYb', N'MrSiscKdYS', N'V zFRIGekCW', '2024-12-19 20:10:42', '2023-11-27 01:57:44'),
  (589823, 817231, 409204, N'MrnlakKnLSaYGDGTU', N't_osTrJhkocIp', N'cOjrirYdPp nIh', '2020-08-24 22:01:10', '2023-08-05 02:16:04'),
  (663417, 634556, 387041, N'fTJqUiANsudO a', N'oUrlqbIQXXLgUVSy', N'OOMJn CournLO', '2024-01-01 05:31:12', '2021-12-17 03:06:01'),
  (467724, 242980, 765264, N'xjEfFlDl lmKFUlPsb', N'kl zRMmejeBpDP', N'gUHiUWZaMgyybh aW', '2021-01-03 11:07:29', '2021-10-05 05:36:54'),
  (260407, 807527, 87657, N'jOMaYaYgIV v_', N'miEWKC', N'tvEjpdISrO', '2025-04-05 12:20:50', '2021-09-06 22:48:24'),
  (22239, 864997, 46689, N'IsgG-Aja', N'boByjwPsoRyR', N'Fkhogswe', '2023-06-23 09:57:17', '2021-08-23 06:31:08'),
  (378005, 968171, 969621, N'cMjlBHv', N'RBjQRtN sw', N'rFQxqZTZ', '2021-04-14 20:09:10', '2020-08-27 08:05:28'),
  (903573, 978421, 155864, N'ujyCUYYE', N'hKBUrjf', N'ilXywuFBESAMYOv', '2021-10-24 00:09:22', '2022-09-23 13:52:10'),
  (401799, 438997, 576024, N'IIFII oyfLTAHKXSZVoS', N'pxan_bx', N'ihdwx__X isDj-_JApn', '2022-07-19 08:03:58', '2021-02-10 03:16:35'),
  (783282, 144496, 122931, N'yUbSBxdSg', N'E-Mkbjx', N'fpeaK- Aj', '2022-03-10 08:11:17', '2024-08-19 01:49:42'),
  (779678, 146919, 784448, N'EAUvCYPSashjdP', N'MWlGka', N'-BRDJT-qKGtToBkrf', '2025-01-26 19:34:01', '2023-11-06 14:33:56'),
  (997273, 131212, 779234, N'zNdozl VJM-', N'SDEuPP', N'ykdZxPBmrggexMX_', '2023-06-28 20:12:39', '2020-11-15 17:06:20'),
  (251166, 295916, 170667, N'enMaWtmJ', N'OcprfKKcKYE', N'duftaw', '2023-01-14 23:03:47', '2024-01-09 12:49:53'),
  (524515, 204351, 329749, N'UwiSRgvAVGgGZXjbL', N'EL_cskjRDfOfTonZR', N'XTkGHUMPH', '2023-07-17 07:23:59', '2024-06-10 20:10:23'),
  (823502, 137571, 355489, N'xN_BcTXRypnNMe', N'KOFgZajXt', N'FgDuksk', '2021-03-20 08:08:46', '2023-01-07 20:41:31'),
  (604517, 380978, 370534, N'elTXDqE', N'WCPihKFcx_szA', N'CxG_NuxfR', '2024-02-25 07:37:33', '2024-12-09 11:25:57'),
  (471956, 275595, 920030, N'NPdVYp', N'j_gsy', N'Kz_eoyDQfw', '2024-08-06 23:58:55', '2024-08-15 02:40:47'),
  (673694, 561110, 943852, N'gflUgzXBmzveuvMFnSV', N'hrDcIjEjOnuKcMXydZxY', N'EndnbWRBrqOlfjerzf', '2023-03-05 11:14:06', '2024-06-23 02:00:53'),
  (913613, 440111, 550270, N'Qql-dfBvWtk', N'wAEEISYkSBw', N'aJYMmeUQLNjuQ UV', '2023-04-30 22:43:17', '2020-10-03 15:28:25'),
  (157818, 940050, 480939, N'FuhYRAqHU', N'C-_iO', N'OLgcnVmASIXkMynwnmR', '2025-07-17 17:40:20', '2020-10-04 05:12:41');
INSERT INTO [acte_medicals] ([code], [departement_id], [acte_medical_type_id], [nom], [montant], [duree_moyenne], [description], [est_acte_therapeutique], [is_active], [metadata], [necessite_prescription], [created_at], [updated_at], [montant_minimum], [montant_maximum]) VALUES
  (N'xbttG hSFPDAAww', 868416, 568818, N'HWvhlDBxlJMkIBys_Q', N'OsSN_gfZ-gfPbNAgFV', 770, N'OCGLZcQs', 1, 0, N'XDJyhm_EhwYD', 1, '2024-01-02 07:15:21', '2020-09-13 04:42:38', 9396168095964476.0, 7821960540409132.0),
  (N'rQqt-YARpaAcab', 160826, 828910, N'- H VMuvkKBpJzmN', N'-dZKBiOyUlzuHkBog', 728, N'GhOKYz-WO', 1, 0, N'nffbBaOXLjbNTIf', 1, '2020-11-07 03:22:49', '2021-09-30 03:59:46', 9834141914077568.0, 6344631510339810.0),
  (N'lpPotmI-pUXZYyXq', 691282, 54263, N'fjObOLghDMhgj', N'qlfeF_x-nzgFYb', 424, N'FOenRAy', 1, 1, N'ltalQKOM_c', 0, '2023-07-21 15:25:50', '2023-08-02 23:41:57', 4839109927037063.0, 6140049964188997.0),
  (N'kHVqh', 202213, 635554, N'IbHGW', N'nxhnbuiof', 746, N'rrEmfwTJP', 1, 1, N'BGzmqlmR_TrzgLYXLtkY', 0, '2024-10-14 05:00:20', '2024-04-28 07:37:15', 8828573334675858.0, 4237373217666877.5),
  (N'uNgMyBmKwxO', 67389, 471234, N'cGqLAsM PH', N'zbhlZuBYlwpenQxx', 149, N'hauSaTvnDKYuoJe', 1, 1, N'HngJrTMZQeK', 1, '2024-05-03 16:54:35', '2023-05-04 21:16:13', 8133944743880734.0, 1981504127168897.0),
  (N'ZFFcrA', 125053, 130121, N'kMuLypKbsbPY_KaDsi-', N'cIHcvPbeEg-ZAUtru', 772, N'zfJXuFNdztSDF_Ph', 1, 0, N'od ai', 0, '2023-05-20 15:44:44', '2024-05-05 04:28:11', 2263412562771995.0, 880167200502729.5),
  (N'IaSdqYchdteqvSN', 830082, 851953, N'rSkiLDhiujWL_AOCQ', N'HHpKEQFr', 330, N'ofqXsTfwJ-pQPV_nSeeF', 0, 0, N'QnD y', 0, '2024-10-13 15:07:13', '2021-07-11 08:18:16', 3404501394082714.0, 8139954178819291.0),
  (N'WtTDPj_GgioxyCN', 538407, 212883, N'merBkRtKPgjDgVhpb', N'lrbEQHCwqhJfwBnjzGB', 521, N'dCrxgdPyUBmsmzl', 1, 1, N'gRdPphohdcKrpeIgro', 1, '2023-12-21 04:24:58', '2023-12-24 05:17:29', 1013042719653866.0, 7339243726735462.0),
  (N'FnkYnwOsTMsUa', 98821, 194070, N'Vt_SpkuReklvDjaQEBvb', N'qekRW_aMwE', 598, N'FpEhc', 0, 1, N'HGkWjXggtZVv', 1, '2024-10-23 00:01:47', '2023-08-15 09:45:39', 9897931184300412.0, 2573395122841635.0),
  (N'qxDa wtTvHXQ_-MEhrRH', 763590, 670880, N'jA_oQ', N'wFbpKVSBx', 212, N'myOgrOR', 1, 0, N'RwvzLArtmcLHS', 1, '2021-09-06 14:17:13', '2024-04-28 06:43:21', 7953329045700108.0, 5666624305259662.0),
  (N'shaFRjDRjHsNJQkt', 510473, 302263, N'ZsaDcns', N'dFtaBwQ-', 1, N'qiwsY_', 0, 0, N'jUmBLfsocEwpZ', 1, '2024-03-25 10:14:00', '2024-01-12 13:41:51', 9669068150532456.0, 981386966484311.1),
  (N'tMtlKBRuZLiRX', 209198, 262166, N'AJmttftKO', N'IlyY-BgiHCSuGRTwDwB', 478, N'ADbJbXAfWiNtYpLGxi', 1, 0, N'izQaDZWHD-dfdr-Pg', 1, '2021-06-19 04:13:51', '2023-02-09 08:36:59', 5654434001555136.0, 6905929023869901.0),
  (N'hVLRGV', 751779, 55596, N'HjJVFioRO_j', N'OtUaZFNSmheajM', 902, N'HgpngEb-', 1, 1, N'htzEl', 0, '2025-04-15 03:58:21', '2022-11-07 04:52:56', 8216864586827163.0, 6813204470212001.0),
  (N'BjOblj V', 689403, 252374, N'GVSImEEssQ', N'LFxQrzyS', 820, N'DA BjbsD', 0, 1, N'LtcPP', 1, '2020-12-31 00:29:15', '2023-08-27 15:58:59', 9627965252049530.0, 4679071074904813.0),
  (N'rakwG_GnwTHyGelPjwP', 754146, 590504, N'DT_YirYWQtze-PE', N'EMQlKTGXQHqiSuLLw', 599, N'ecb_UkogQgFREuWoX', 0, 0, N'UyWAedNqhc', 0, '2024-05-23 08:22:41', '2023-10-27 13:06:37', 6065333011097762.0, 8406793551851768.0),
  (N'ugSCyiOKJm', 205226, 264761, N'CRsomVkB HZYmfLbOQgn', N'ZiaxXA', 582, N'vlRUUPH', 1, 0, N'K EGwwNJ_iZ', 0, '2024-05-15 02:45:04', '2024-04-09 19:13:01', 6254707006820903.0, 8739769017015965.0),
  (N'iYHtghF', 241774, 53980, N'bo s-qyTwekseIK', N'_HNGtzNdIShL', 483, N'PbcvAqmvWdinJ', 1, 0, N'FeZKNS-WZcwe', 1, '2021-04-27 23:06:59', '2025-04-29 18:52:39', 4787714849904230.0, 1294645761736362.8),
  (N'gcFGoP', 367272, 452477, N'tY_obdbXYZmIMyRRVbJE', N'yXySiB', 719, N'JihChNxwmvBdpofLao', 1, 0, N'Up de', 0, '2021-09-18 06:15:10', '2024-05-14 02:43:40', 1805934778049288.5, 437194281378826.56),
  (N'MPpsiMzEQhQeeqIn', 518971, 739514, N'_oCTtxXJsPpHruSI', N'dwATNFrf', 209, N'-HotVJnhx', 0, 0, N'SCPWDhbF-crr', 1, '2023-03-11 22:02:10', '2021-05-10 01:54:28', 597200414470767.6, 8545742378365079.0),
  (N'FbyyCconylQBIdQtc', 567856, 800060, N'bMWv-qZWLnWbvU-N', N'BYUVWdZgJyURs_IDBK', 737, N'kyDVpiarZRrfp', 1, 1, N'cNrxrQqYPZXMahtKQ', 1, '2022-11-20 09:29:18', '2022-02-27 00:45:41', 4438086857104619.5, 172666865580475.28),
  (N'DcwEO', 885340, 583647, N'AdLfrNJueCl', N'XYrqFioOljNPd', 239, N'PclRGCLu', 0, 0, N'TqqbR_', 1, '2025-03-26 15:51:32', '2021-01-06 13:10:11', 6005788388453189.0, 3497296505359074.5),
  (N'GChGepn', 341615, 598072, N'- RAePBsjbuMYxvA', N'EsNbkxcsjLbgMnZu', 524, N'ny-LcQUjyWPfeoKG', 1, 0, N'MEQHHC', 1, '2022-12-04 21:20:57', '2022-04-18 11:38:38', 8360089404526631.0, 2930653088619523.5),
  (N'vpZXxoDuVhSp', 466625, 768395, N'xfwJGexPEMoCYAoK', N'IpXARLQiM', 267, N'vuhfAAGjKFOXml', 1, 0, N'hAqWJTEVgi', 0, '2024-04-21 22:37:39', '2020-11-02 22:05:23', 6900465649883123.0, 9899334838465952.0),
  (N'GHyBwizSJ', 253163, 746569, N'hv vLMNgUceVwC', N'OCV-BsWESiUlUXL Gf', 156, N'LLxRP', 1, 1, N'ClGULrXgotFvdKH', 1, '2023-01-23 19:56:57', '2023-05-20 11:20:56', 3840677463902405.5, 7573002143086180.0),
  (N'c VUnBHrK', 922311, 645375, N'gwskhsrFCoksqMW', N'oQrjgnJ-', 521, N'bMcIIZmaF-', 0, 1, N'sKBUCHi-Dsh', 0, '2024-06-01 06:52:26', '2024-04-24 13:42:58', 4932555501390735.0, 868638296760823.0),
  (N'rUQhwZfVY', 233248, 762694, N'ukGvrDO', N'TSucBgT', 814, N'm-JQ-OcOOapiLyo', 0, 1, N'jF lUFsimOfH_UVnaBeF', 0, '2022-02-24 22:51:00', '2020-12-19 03:43:04', 4181593484281126.5, 2630738140149281.5),
  (N'OLpOwEHQlt-osQFFY', 660632, 411263, N'IEsgohWWsACupQBh', N'DuQhwSzTiX', 904, N'-ZFMARpbsrGn_YAdJXuq', 1, 1, N'ZCBzqdrFUovO ctCA', 0, '2025-07-04 06:44:57', '2022-01-19 23:23:28', 5360130981072844.0, 7795520024395474.0),
  (N'NNviMIbU', 22144, 841391, N'fXTvwXXJePdHnxImk', N'TosZkxvAnJUpac_bW', 963, N'GzYFckst', 0, 0, N'crVh YyPzi V', 1, '2021-05-11 09:28:26', '2021-04-15 07:54:14', 738902427592103.0, 7221128694973084.0),
  (N'baV-IMjgVLYzm-M_tY', 339453, 445805, N'trDmg', N'PKEysBfoAJrEs', 930, N'ybFUzxWITgCo', 0, 1, N'CxEKgPtvjZOf', 0, '2025-05-29 04:16:46', '2022-01-28 10:15:06', 2076818187894501.2, 9420932791368026.0),
  (N'fjzN-EHU-KWo', 61796, 804687, N'qAtVv-jcuSKMAarSnWJY', N'IFuPpuDTEGJ_VUfgBSey', 131, N'kHVhk', 0, 1, N'cBFkOZHF', 0, '2025-04-16 07:14:55', '2024-03-11 16:57:24', 3994056583140680.5, 2967510232149308.5),
  (N'sURrHuNxKPkjsHRnZN', 998240, 749182, N'HMqEDnvVU_ikHT-E', N'uAljE', 69, N'tSmmS', 0, 1, N'gdNDMkewOJowOam', 1, '2023-01-20 12:11:32', '2024-04-05 14:50:41', 5844683850506179.0, 3057503206079810.0),
  (N'qJIPQmeLjgUnrlqKg', 132859, 835594, N'vKX_LMrZVNQEnkaYo', N'fZNjjkEaued', 141, N'BQEutGWhpJzyXyTEwt-', 1, 0, N'kO-rTj-BJCF', 1, '2021-08-29 03:21:36', '2025-05-19 22:02:56', 8997621345178288.0, 6520921241356469.0),
  (N'bx_DXQwUBn', 646945, 586987, N'yxlVamCxHma', N'vgxqGaMrcPrPEz', 45, N'rOdK bTEMODFl', 1, 0, N'xbNTjT', 0, '2021-10-03 14:01:57', '2021-05-04 21:28:55', 4195725830947192.5, 8458031350331512.0),
  (N'COTdug', 899564, 570513, N'_mPNVbv-R_uTk', N'HaQzA-QQdem WGjU', 274, N'lCcrMmS', 1, 0, N'trJwh', 1, '2024-08-08 03:55:14', '2025-06-20 19:42:00', 8361056275389506.0, 860952330096757.0),
  (N'fhflUfluLObXkYanOxD', 85223, 919810, N't-RPmVWVitdy', N'lriKuAo-mrmlsq', 715, N'qfFwLxwXPHC-OR-kc-L', 1, 0, N'SBwPZRYsnvS', 1, '2021-05-29 13:00:01', '2025-01-01 05:59:55', 7734089956486373.0, 2582138495017209.0),
  (N'qchHQOlEiDLuxKyQLcu', 735355, 109695, N'akAEvvPglwtkDIlW', N'CZNDL', 590, N'UzE-pqUxMvERztcoWG', 0, 1, N'XrKzLbkGktMSHmKWii', 1, '2021-02-03 17:15:24', '2021-05-28 10:14:33', 3092735394303756.0, 7658231119920383.0),
  (N'DzkDaQjmlttflp_n', 457755, 94547, N'jRJ_XxaEkwgE', N'SnEQy-DTpWgyiuWiz', 792, N's RUBMzIewFQVLb', 0, 0, N'xxvG aNMWzeP', 0, '2021-10-23 13:36:51', '2024-11-20 20:34:54', 1879705491978519.5, 2112323440755747.8),
  (N'fvyPlBjstyR EcqAlk', 417560, 715486, N'DZfwRUgP', N'ZZakuiKGyRDaFPQzB', 790, N'tBqVOh', 1, 1, N'Tv_IxhYlBIWyRfjavTLq', 0, '2025-01-06 07:04:50', '2024-07-04 04:05:47', 4348880428712337.5, 4647631740697767.0),
  (N'hFDxdM', 719730, 387236, N'BvRsX bIrlswA', N'CutOc', 611, N'wUcIVzpl', 0, 0, N'UjOFBrwDS', 0, '2025-02-02 05:00:01', '2025-06-23 14:26:14', 4584195691394879.0, 765361437692379.0),
  (N'cjMUOZgyGUfvOVtB', 420206, 23471, N'VqUPVf-BhY', N'KqtNGI_YpSZ', 51, N'KEnWBrVSXlrGQcMz', 0, 1, N'aAnbYAQirrDMY', 1, '2021-06-18 09:29:18', '2022-07-09 04:43:16', 2248247714197108.0, 7090085098490777.0);
INSERT INTO [acte_medical_departement] ([departement_id], [acte_medical_id], [quantite], [prix], [created_at], [updated_at]) VALUES
  (231796, 66818, 6113862789260693.0, 7281639703514695.0, '2024-07-21 17:44:53', '2024-03-19 20:07:37'),
  (665608, 624145, 3287520150948906.0, 3890395125419116.0, '2025-05-19 03:33:35', '2020-09-28 14:42:39'),
  (359610, 357141, 3196428071436755.5, 8226287025539805.0, '2021-12-05 03:03:56', '2024-07-25 18:56:11'),
  (895858, 778643, 4989746452170416.0, 5322403661737245.0, '2022-01-30 18:44:58', '2023-12-15 10:42:21'),
  (268114, 422512, 322665099851674.44, 8522916776784754.0, '2021-04-21 19:06:23', '2024-10-10 04:34:20'),
  (588593, 362073, 830919981565415.6, 7480108960335597.0, '2025-02-20 22:51:14', '2023-10-11 14:32:28'),
  (318802, 305999, 7508575194726741.0, 4514991840310496.0, '2024-08-11 16:01:04', '2020-11-20 10:07:30'),
  (163474, 655217, 5849368882681004.0, 6242651369543848.0, '2025-06-10 15:03:49', '2024-04-22 06:53:56'),
  (435572, 802098, 234083440258234.8, 9733570686272358.0, '2025-05-15 08:45:58', '2024-10-23 07:06:56'),
  (246121, 393515, 9211762811064176.0, 1316973893227341.2, '2021-09-08 06:00:42', '2021-06-17 20:58:13'),
  (414974, 228910, 2113051711926676.8, 1106327665652707.6, '2023-02-05 13:03:15', '2022-02-26 12:41:06'),
  (906907, 166847, 7668746395224680.0, 9843827093724958.0, '2024-01-18 19:02:43', '2025-04-25 13:50:57'),
  (428361, 369125, 7512809203397676.0, 4181799955700256.0, '2023-01-04 00:24:36', '2023-05-09 22:04:53'),
  (807928, 380817, 6302756600502042.0, 6642345777508457.0, '2023-05-04 20:39:34', '2024-11-28 04:10:54'),
  (561646, 558376, 3921733664356113.0, 8590565875468102.0, '2024-11-04 23:04:10', '2024-07-31 21:33:42'),
  (300190, 866269, 9245503280271286.0, 1569678032689582.0, '2022-02-23 10:25:55', '2024-01-15 11:50:46'),
  (302418, 3500, 5326657059033684.0, 3340548482755936.0, '2024-08-01 05:34:50', '2022-02-06 19:03:46'),
  (716547, 951353, 983230872702107.8, 5801578287266510.0, '2024-03-11 13:25:07', '2024-03-12 02:04:16'),
  (430225, 198050, 6364168750423267.0, 6188759671464011.0, '2021-10-25 02:18:39', '2024-12-01 10:57:58'),
  (84417, 628693, 5705847049664556.0, 4087752695790605.0, '2020-10-30 12:13:44', '2023-05-27 08:54:06'),
  (639435, 262082, 1664588717319528.5, 6254951243990178.0, '2021-05-30 04:34:48', '2023-10-15 00:53:44'),
  (23824, 779056, 6013425877952014.0, 7898798633673492.0, '2023-12-13 04:52:46', '2025-05-01 18:00:40'),
  (536175, 905381, 1930315781407728.8, 9132067647679096.0, '2024-07-12 19:21:14', '2023-10-11 05:03:39'),
  (758184, 917138, 2393153248370512.0, 4721688921536571.0, '2022-05-03 06:42:10', '2023-05-20 05:41:29'),
  (139094, 307214, 648128233436171.5, 308897585198824.06, '2025-07-20 02:46:33', '2024-07-23 09:40:24'),
  (481499, 256951, 6836710915211512.0, 4436531960197786.0, '2022-09-11 01:46:58', '2022-02-21 02:36:08'),
  (483820, 524514, 6413792603549159.0, 8036869734824209.0, '2023-06-15 18:06:34', '2021-12-28 09:24:29'),
  (256758, 484665, 7220462632363589.0, 698422715580709.9, '2020-11-28 23:46:33', '2024-02-04 01:02:14'),
  (909182, 545016, 9955345501766296.0, 8621689705946712.0, '2021-03-27 04:28:15', '2024-03-08 10:05:10'),
  (272661, 926267, 7159765775303650.0, 1209819742723915.5, '2025-03-07 04:17:36', '2020-11-02 06:19:53'),
  (459823, 504164, 8277538323851805.0, 597862697613467.1, '2024-01-10 08:14:40', '2020-12-22 13:16:19'),
  (381025, 418833, 7166246244861922.0, 5115596996938302.0, '2024-05-18 17:49:27', '2024-04-13 03:30:30'),
  (825674, 130084, 1036230113058069.8, 8470703830011121.0, '2025-07-26 23:32:43', '2021-08-02 20:49:48'),
  (757066, 177161, 3664645061857480.0, 6565369988965587.0, '2021-11-04 14:11:49', '2022-09-14 18:08:40'),
  (834198, 506034, 2100849841870941.0, 971257040651565.2, '2021-04-07 16:39:25', '2024-07-14 06:37:56'),
  (942875, 743528, 4915769305266624.0, 2447284441961390.5, '2022-11-06 08:36:09', '2023-07-20 12:01:27'),
  (309637, 722673, 4446720654566676.0, 7873739484725606.0, '2022-10-30 21:40:16', '2025-06-21 00:01:10'),
  (288672, 623304, 357446429231966.8, 1400209825338718.5, '2025-01-27 16:18:54', '2023-02-02 16:33:46'),
  (27201, 231758, 8801705939386123.0, 5635394332015830.0, '2023-02-11 08:26:28', '2023-03-31 08:03:40'),
  (990687, 750610, 1583024454686039.5, 6338945798929136.0, '2024-09-05 05:26:13', '2024-05-18 04:08:41');
INSERT INTO [acte_medical_types] ([code], [label], [category], [color], [form_template], [created_at], [updated_at]) VALUES
  (N'jVZSijMs_yqOob', N'LtjLaqxUGVH', N'ENkwPjL_GuHxyFPkH', N'lEyaQevotnojrMXUYhPm', N'FDKOa-V_ YYHoVmx', '2020-11-30 14:23:54', '2024-01-10 15:17:23'),
  (N'vGerJI_V', N'ZdCKHpp', N'ZVlSP_poSTDlc', N'JrfVmU-eiHtdn', N'pLWLEDgIYduY', '2021-04-04 12:58:21', '2022-04-22 20:12:08'),
  (N'hCfEmgILnMFtKaLBhUCX', N'LZONWDaqWAM', N'FOlvGEGsPtqIp', N'rRJGtOChWlFauGE', N'kleWBRtgCvORI lmXgWo', '2022-06-14 00:12:05', '2023-04-02 00:08:54'),
  (N'uXHEgRtNnKRjuk', N'XzYk_kNQkuH', N'PMYAXUroqE_-txjtvUw-', N'CtBKzWAaWzdAwPZ', N'DXrb TmnQ', '2022-10-24 17:06:17', '2023-02-22 11:16:48'),
  (N'buBYyuJJVmZnNGC_', N'gepkuUEULEcXQ', N'STFprMLydgdOvrIxC', N'hEiVeuXUA jjLt', N'JfCpuKIWQqJ', '2025-02-25 09:54:34', '2023-02-11 23:26:06'),
  (N'iXXeY', N'_xXCVnluDoDxvmR', N'qMVbihPABzZFZ', N'-HdGxb', N'cGZuYIFsKvOeVeKfJX', '2021-08-04 13:55:48', '2025-02-27 16:42:43'),
  (N'ZG__fKDNPm', N'XRB rDC', N'PvelPKvDH', N'bzKsaN-ybaouBjq_oL', N'IDPQmX KwTKjmXj', '2022-05-23 00:51:16', '2023-04-05 23:41:27'),
  (N'gbIM_cXiIw', N'uuoQnmt', N'BronXwbiCh', N'bCV_VnydCCzmnXyL', N'flGLUHhk', '2022-06-02 21:22:16', '2021-08-29 12:11:51'),
  (N'VMwVuAmnfZGxEqGhDbay', N'z_gwxt-eB_PtoSfPPZ', N'EbrUPucj_plKaiHji', N'WcdMZnVQsxNA kAllHjV', N'xhYkbFntzO', '2023-10-24 00:15:20', '2022-11-22 10:59:05'),
  (N'bYbvbEcVjAcIyWM', N'kgawofAehE', N'A_ICi_MZOatEEqiuQIx', N'EFV-_Kmi', N'GiZjoQfVgTzs', '2021-07-13 12:00:54', '2022-10-05 14:29:16'),
  (N'qlUQtvTDQLHH', N'WiuBxQjLV_cVZ', N'OdYmlajOc-YpkzuaK', N'E_wmO KzCnDNqIChVrPX', N'vlqvZFXJDQgQ_vW', '2025-01-19 06:30:48', '2022-11-15 06:08:34'),
  (N'YxBPbIi', N'oD-hhJTs', N'wtCBJfGlz', N'j-RoXbmUVwH', N'KHHdZIxIo', '2025-02-24 22:10:21', '2022-01-20 15:40:14'),
  (N'kgRkOO_No-WTjINB', N'rdzsyHAEDui', N'aeqTJQtnUNMedW', N'ijE kWZpzYkPAzLmp-', N'eorizhUVLRjnCjRr', '2023-06-03 23:31:21', '2020-09-23 00:37:41'),
  (N'HtHgXOME', N'QCt hIVNDjeW', N'rcy-qhODBLkTSYF', N'oHgfUMMxp_QF-S', N'AdOgXr-UUrqOGvAQ-q', '2023-09-02 16:13:28', '2021-05-05 17:31:15'),
  (N'gTZFp', N'oLBQrgX TFJM-KyMHQyc', N'L-YPgKgh', N'xLRTMA zTVcw', N'_DKHcz ZOVXBQbnKlbO', '2023-06-08 14:50:02', '2021-06-23 13:00:21'),
  (N'AZbUD_qw Rwwpr', N'YduDSOqXYknJXJPuVzW', N'X l_F_fvwNIVZ-ou', N'gUfOzuNFOlWymq', N'wvZCxWkkubhmLtGSPJsW', '2025-05-26 04:23:10', '2025-03-19 20:47:05'),
  (N'zNSemffTMQ', N'_qjTvIwziyg_V ZsN', N'uoC cpJ', N'QrbFo-Sop', N'CPZnjaspb_NE', '2024-05-15 08:06:25', '2024-02-29 10:55:04'),
  (N'Al_HLzOKyVq', N'ZZqBxxpuIweSiu S', N'YILigYGTEIug', N'UwTSPJ oDrK-', N'DNCFLB', '2021-03-09 10:51:45', '2022-02-03 21:45:20'),
  (N'JCJPd', N'ETjeRweUrKqUbTMF', N'TWiznQCtISRtvoKZGA', N'XIRLuaNdT', N'LhXeNeHAUkUmpMXW', '2022-02-28 18:15:04', '2022-03-06 15:43:22'),
  (N'PFUhv', N'gzKSRyZ', N'ySEi_vlgtwlTBqFflq', N'mowPOfvCWgHqbMdJd', N'gkaHaauytbZKKx_e', '2022-02-07 04:10:53', '2022-03-29 03:52:27'),
  (N'lInwgRjMxKlCT_XlGj', N'bNcIYhZtsgwRlLHkgFm', N'NvDQJ-yYC', N'QJevpxjp', N'mYzcwdEZ-QTW-Lg_HfQP', '2023-05-13 11:47:57', '2025-02-13 22:45:50'),
  (N'WIPmsuiCWmsOBzByf', N'bFguJENytFYXsXRSdH-c', N'ftLVKIlPuVd', N'dtymw', N'RBVG', '2025-02-03 12:44:32', '2022-02-25 11:54:19'),
  (N'RScngDloTueTnFnK', N'cynSh', N'apQ -vly ox-zc', N'jMpNQqBRK', N'nPVrASaA Ayr-m', '2024-10-15 09:41:27', '2022-10-16 22:24:15'),
  (N'OSzcS', N'iQSoeOhhkYFelIukVqR', N'sIss_KqgWhz mfJ_F', N'iHcEEghoc-y', N'fWSZepBNxC', '2021-11-07 02:29:29', '2024-05-24 21:18:56'),
  (N'QGXmXn', N'cKajvqlwDmPdzyj', N'GeolOmvQUCbCe-', N'MHsJkjJudhRe', N'HIbNUkUuxcjgRoayaK', '2021-02-18 01:33:29', '2023-12-07 13:45:29'),
  (N'_oWOcKIe', N'P EKP', N'sRNyCVpRFNqwODEjD', N'ojsOUlyqkxVbBZtj', N'DATI_o', '2024-01-22 06:08:39', '2021-09-13 00:06:44'),
  (N'nzAADUCCyDxvuQzi', N'pnTmKmUQYNx', N'JWYAxPtnzjEgIPCt-XN', N'dmnvJkQyHBlCbSnyKQ', N'rVRKXjPzKY', '2022-04-27 03:23:42', '2021-12-01 17:23:20'),
  (N'uDpViWFuNWNHVOcRgY', N'fbadv_f', N'wmVjnt-exNuL-CE', N'TlstgZJkjkAhINA', N'JJOESrS_ph', '2021-11-19 04:22:13', '2024-06-02 20:04:09'),
  (N'WciyEyEk', N'LS xC', N'CbFQKwvfxe', N'iNtRzjhYQm', N'sTYYfwMZFbNLAkx', '2022-10-14 17:29:05', '2022-04-09 03:54:51'),
  (N'HbFukdPpStqCB', N'crVWQDQfvJciNaV', N'tymEy', N'cSRrSyvxZG_YBATvi', N'UqJmFsrfCQfZQuGh', '2020-10-31 01:11:27', '2021-09-23 21:12:39'),
  (N'pelxejKZ', N'XfeaUaVZvNej', N'OvYQgNhdTimVflfTfaB', N'ndTfyuOHmE m', N'MTlEsURLdClGaflmqjIK', '2022-03-31 20:15:40', '2021-09-09 20:30:34'),
  (N'ml_uWok', N'O-LsMAGOsnBq wVpH', N'PRqsW', N'edeFwUdNW', N'fRWTCaVRfuLXxSRMRe', '2025-06-24 00:20:36', '2022-11-13 22:22:27'),
  (N'CwVZExFtWFuIVmo', N'cSwADDuY_z', N'DCjjVWyAbiYuyOjzxaB', N'jLlngbzEjr', N'mbFzkt-_JromFMU', '2024-11-18 07:58:29', '2024-04-26 09:43:54'),
  (N'_kFQdwgeuTEMsjpHFZ', N'AFatOkvOtRN', N'NhMiHsvUxZSixKEebC', N'ApnuSouOEYrJvKYv', N'iuYOKoTLNp', '2022-10-03 11:48:12', '2024-10-16 13:23:11'),
  (N'buGgyWjNufHFDMUreCyX', N'YXrTjx_XdEp', N'Oauw NEJjYru', N'uMIm ZPmMMhsUdVmHZGs', N'YyBS _atqnjs', '2020-11-07 02:55:12', '2020-11-18 02:41:51'),
  (N'fxDXjCOyJkMCWugrDr', N'TMDskLiubhd', N'JExju-UyJbOBPuz', N'uN-WcPsuKW', N'GdUTTi', '2024-11-10 16:31:24', '2021-03-07 00:42:43'),
  (N'ijgHkTp', N'WxwvfAv', N'FzIdHAP', N'SjJ f nCkhWqopdPR', N'dP-So', '2024-09-15 19:35:07', '2020-12-30 06:49:07'),
  (N'oWojiG', N'uyWOQzbGWsFbQTS', N'JecmLcnoLFawSfLxG-', N'znjIaOVNsr', N'Gyk-mWMqvmuqzhPs', '2024-06-23 19:04:43', '2020-11-18 02:25:03'),
  (N'MPQGXznlhcyZgVnmWKV', N'-SRnL txDdPOoK', N'nGbtan-lvnFUy', N'DzMWkFEJMsYQ_pe', N'a_bNd_ar', '2020-08-20 14:20:16', '2023-03-21 08:14:44'),
  (N'yUKkgdxnPmBVxerAPbt', N'htjqDZ', N'hOVRYbElahf', N'DLSJrrbSKEeU', N'nezRybcFB', '2024-08-06 10:51:28', '2024-02-22 22:12:43');
INSERT INTO [acte_soin_demandes] ([hospitalisation_id], [acte_medical_id], [vente_id], [personnel_id], [qte_achetes], [qte_recus], [reste], [created_at], [updated_at]) VALUES
  (183525, 13914, 604778, 941001, 46, 673, 65, '2023-01-10 01:18:19', '2023-01-12 08:54:27'),
  (753791, 502448, 212545, 840897, 274, 25, 688, '2022-12-13 12:37:12', '2022-03-27 21:07:58'),
  (246226, 723177, 469751, 849718, 2, 666, 46, '2025-06-05 09:45:31', '2024-05-04 03:16:09'),
  (586096, 998398, 737094, 512259, 811, 238, 733, '2021-01-14 12:10:00', '2023-01-27 17:53:41'),
  (381719, 92711, 627100, 385139, 468, 841, 484, '2025-04-08 13:15:36', '2022-01-11 18:30:23'),
  (391400, 690594, 945628, 389308, 744, 565, 554, '2021-11-16 05:29:21', '2023-05-13 23:35:37'),
  (770908, 670370, 363634, 426773, 179, 595, 412, '2023-10-20 16:09:25', '2024-08-11 23:46:38'),
  (364315, 804587, 306656, 154805, 834, 689, 770, '2024-11-03 23:01:09', '2025-04-01 08:06:28'),
  (427637, 377833, 452683, 90645, 617, 260, 907, '2021-10-22 04:55:27', '2023-06-20 13:18:03'),
  (969639, 376092, 676819, 489219, 462, 772, 553, '2022-01-12 22:56:53', '2020-12-31 09:43:45'),
  (360138, 530950, 962906, 901473, 641, 149, 614, '2023-07-18 00:53:31', '2025-03-25 22:41:08'),
  (663432, 872429, 780974, 167173, 872, 818, 588, '2021-10-28 01:05:34', '2022-05-22 00:08:39'),
  (864746, 726889, 415604, 85715, 844, 430, 902, '2021-08-03 04:00:18', '2024-11-25 07:30:18'),
  (570422, 44018, 544808, 108859, 590, 5, 261, '2025-04-26 18:03:02', '2022-01-14 06:41:40'),
  (775644, 237799, 717238, 744230, 807, 343, 501, '2021-08-18 19:55:06', '2023-05-28 19:43:22'),
  (767406, 877102, 835624, 391457, 562, 960, 405, '2025-01-31 20:21:42', '2023-12-23 22:54:05'),
  (229714, 605049, 368192, 786250, 418, 705, 770, '2021-07-17 05:22:31', '2022-07-23 03:36:14'),
  (671581, 675181, 475691, 163265, 855, 711, 917, '2022-03-28 16:37:04', '2020-08-22 10:04:49'),
  (936571, 832144, 529019, 838793, 111, 508, 148, '2021-04-01 21:45:02', '2023-03-31 00:05:52'),
  (253581, 792515, 425848, 317570, 846, 215, 555, '2021-06-16 15:41:45', '2022-04-06 00:06:48'),
  (24648, 17008, 32609, 310153, 124, 213, 191, '2021-03-30 04:50:24', '2021-03-16 19:08:31'),
  (265745, 474585, 997210, 124732, 433, 968, 367, '2024-01-24 15:32:57', '2020-09-22 09:40:17'),
  (731716, 626588, 314799, 359840, 398, 384, 214, '2023-03-22 09:36:08', '2024-04-12 22:41:13'),
  (649339, 618336, 964225, 501681, 651, 630, 608, '2020-12-28 16:02:53', '2024-10-25 02:06:33'),
  (33050, 524283, 335159, 368572, 32, 262, 718, '2024-08-30 23:37:08', '2023-11-25 20:29:51'),
  (789492, 565201, 807181, 102768, 433, 706, 602, '2023-08-16 06:10:58', '2024-10-21 21:40:45'),
  (28656, 398425, 40551, 511127, 778, 928, 89, '2024-09-03 22:38:16', '2022-10-12 23:46:24'),
  (570148, 96521, 86995, 257310, 742, 851, 733, '2021-06-08 15:11:53', '2024-07-03 05:29:28'),
  (398303, 785439, 353772, 253104, 619, 481, 36, '2023-05-20 16:45:00', '2023-04-10 03:00:19'),
  (579471, 814916, 738240, 896158, 463, 222, 629, '2024-02-17 06:42:53', '2021-06-11 13:53:48'),
  (10794, 717042, 134621, 622256, 884, 692, 800, '2020-11-16 07:02:25', '2024-12-10 13:41:15'),
  (466019, 72457, 526462, 190037, 475, 282, 714, '2025-06-11 02:48:33', '2023-12-09 14:17:18'),
  (840232, 969913, 561684, 685457, 742, 50, 260, '2025-08-14 03:41:05', '2021-08-21 03:38:06'),
  (732134, 541838, 514955, 182367, 924, 463, 301, '2022-01-08 04:51:58', '2020-12-22 06:33:50'),
  (304388, 630321, 347515, 447461, 113, 704, 159, '2021-04-16 05:47:38', '2022-05-01 05:19:25'),
  (505567, 509868, 261141, 5970, 397, 795, 763, '2022-02-20 08:14:15', '2023-11-03 23:52:51'),
  (46006, 316961, 191552, 234276, 349, 887, 700, '2025-08-07 15:44:59', '2024-10-31 08:33:03'),
  (239844, 748503, 466267, 847689, 718, 971, 934, '2021-08-16 05:53:40', '2021-07-02 00:49:56'),
  (172421, 145968, 138411, 776320, 970, 620, 577, '2020-11-02 03:12:20', '2024-05-12 16:31:57'),
  (520247, 384488, 832924, 732872, 441, 22, 726, '2025-02-07 05:32:00', '2023-10-08 19:11:48');
INSERT INTO [acte_soin_recuses] ([acte_soin_demande_id], [personnel_id], [created_by], [updated_by], [nombre_recus], [nbre_restant], [date_debut_admission], [date_fin_admission], [created_at], [updated_at]) VALUES
  (665670, 569885, 111494, 438960, 486, 35, '2023-01-04 02:05:12', '2024-05-07 01:51:17', '2025-05-17 23:33:20', '2024-03-24 11:15:48'),
  (70191, 68342, 91481, 275541, 899, 972, '2023-09-05 17:23:42', '2024-09-03 04:16:28', '2024-01-19 10:44:19', '2024-12-13 02:45:31'),
  (963930, 255048, 950657, 972940, 897, 141, '2021-08-31 12:51:21', '2020-11-03 11:20:56', '2022-01-05 20:52:39', '2021-05-15 22:24:22'),
  (598130, 195865, 696927, 206064, 457, 676, '2025-04-12 16:17:38', '2023-10-24 10:09:13', '2025-05-18 06:02:12', '2022-11-15 16:49:49'),
  (501094, 70065, 828374, 688142, 190, 597, '2024-02-25 12:12:51', '2021-08-15 12:01:11', '2025-05-25 09:23:46', '2020-12-22 02:02:07'),
  (243530, 212282, 154547, 314933, 137, 765, '2023-12-17 11:03:43', '2020-09-24 08:17:15', '2023-10-19 21:24:53', '2021-02-22 23:06:23'),
  (534980, 826370, 12757, 118230, 538, 682, '2022-11-24 15:38:28', '2025-08-13 21:06:26', '2025-02-23 20:01:02', '2020-09-17 02:05:36'),
  (318080, 923151, 850880, 143720, 328, 943, '2022-09-16 15:26:27', '2024-09-21 02:02:35', '2022-06-15 01:53:50', '2022-03-29 17:39:46'),
  (696293, 497822, 501509, 501990, 220, 102, '2022-02-07 06:02:47', '2023-12-08 14:23:05', '2025-05-04 18:43:34', '2025-03-29 15:33:05'),
  (900405, 842919, 74364, 153210, 684, 131, '2024-12-21 16:08:11', '2021-11-15 07:38:07', '2021-03-19 19:37:56', '2024-09-12 16:39:33'),
  (538323, 76117, 593660, 172735, 253, 642, '2024-02-26 07:04:05', '2023-09-18 09:36:57', '2022-07-21 16:21:05', '2022-11-14 00:41:50'),
  (426133, 62572, 788919, 452850, 44, 892, '2023-05-13 06:55:00', '2023-12-29 15:17:23', '2020-11-14 12:30:02', '2022-04-10 23:21:07'),
  (704283, 761786, 975994, 391835, 401, 461, '2022-07-19 18:02:49', '2021-09-20 03:46:18', '2024-09-17 21:44:07', '2024-12-20 16:13:48'),
  (931916, 426280, 677424, 914224, 774, 651, '2021-12-22 05:39:36', '2022-09-09 09:17:26', '2025-01-26 01:28:52', '2023-01-31 04:42:17'),
  (521283, 810654, 78702, 453763, 615, 32, '2024-03-09 03:00:00', '2021-03-14 15:51:01', '2025-05-31 16:01:29', '2021-05-11 03:57:29'),
  (738695, 934964, 814794, 152635, 792, 657, '2020-12-22 16:24:38', '2023-10-12 15:07:24', '2022-12-30 09:17:10', '2023-12-25 09:46:10'),
  (294476, 487071, 681750, 846004, 940, 350, '2023-03-21 11:59:55', '2025-03-10 15:49:02', '2023-06-02 19:03:44', '2023-04-04 22:21:12'),
  (896930, 994571, 492739, 536284, 500, 396, '2025-05-27 00:15:05', '2025-07-08 21:17:11', '2021-10-21 01:01:32', '2024-08-17 17:16:14'),
  (353450, 95408, 725011, 513463, 999, 351, '2025-03-02 17:32:17', '2025-01-12 19:45:52', '2021-03-04 02:21:27', '2022-10-11 05:45:36'),
  (659682, 281241, 979539, 284428, 896, 296, '2025-01-02 00:18:06', '2022-07-29 10:46:44', '2023-04-20 04:27:07', '2023-05-24 17:04:35'),
  (951287, 251045, 593510, 200558, 357, 996, '2023-03-30 08:33:58', '2022-04-08 14:44:44', '2023-06-27 08:55:41', '2025-01-14 22:02:05'),
  (708943, 431531, 292052, 276730, 613, 435, '2022-03-28 18:13:55', '2021-10-27 06:55:36', '2023-02-23 03:33:57', '2022-04-02 18:31:34'),
  (720481, 719302, 379047, 747238, 556, 567, '2023-05-15 07:45:01', '2022-05-17 19:36:28', '2024-07-28 02:19:47', '2025-08-01 23:58:56'),
  (545378, 181840, 122905, 759791, 741, 898, '2023-02-12 02:32:48', '2022-09-27 01:18:31', '2022-05-21 18:15:24', '2023-07-04 17:54:55'),
  (191972, 930374, 678930, 848904, 509, 384, '2022-09-22 17:24:55', '2023-12-20 07:41:52', '2024-10-03 08:53:10', '2022-12-09 17:30:18'),
  (977781, 595790, 481380, 563514, 350, 150, '2022-10-20 23:21:23', '2021-04-01 10:05:12', '2022-10-14 04:03:25', '2021-09-11 03:44:59'),
  (394854, 852613, 577434, 412176, 4, 69, '2022-03-30 13:07:47', '2022-10-21 05:42:19', '2024-11-05 15:39:08', '2024-07-03 11:02:09'),
  (980158, 577393, 611932, 861047, 284, 524, '2025-06-18 14:02:27', '2024-03-18 23:52:34', '2022-05-01 10:18:53', '2022-11-24 01:44:56'),
  (53471, 448484, 658624, 513341, 610, 111, '2024-09-08 14:12:54', '2024-05-09 19:33:18', '2023-12-05 13:50:40', '2023-04-20 11:11:21'),
  (125247, 146515, 189903, 128888, 371, 779, '2021-02-05 21:36:20', '2020-12-26 01:23:35', '2021-03-26 22:05:09', '2022-12-30 06:47:41'),
  (112682, 575135, 561222, 281453, 131, 803, '2021-06-14 11:45:14', '2024-03-27 14:28:24', '2022-05-19 03:32:28', '2020-12-22 15:34:40'),
  (934608, 692372, 594089, 62789, 11, 115, '2023-07-05 11:21:01', '2022-12-29 17:12:27', '2023-01-20 12:13:54', '2024-04-16 22:02:20'),
  (252372, 241685, 231146, 648348, 619, 585, '2022-11-27 06:53:30', '2025-05-03 11:39:04', '2023-08-24 00:20:11', '2022-08-24 22:05:01'),
  (159073, 24070, 580608, 612495, 325, 781, '2022-07-04 16:29:54', '2022-02-05 11:07:26', '2023-11-24 08:27:44', '2022-05-13 16:56:13'),
  (568026, 646234, 18288, 168188, 94, 585, '2022-12-06 14:05:39', '2024-10-09 07:35:12', '2021-09-11 13:44:32', '2021-06-13 20:19:18'),
  (258153, 886448, 426144, 231708, 248, 471, '2022-01-17 04:50:05', '2022-02-10 17:56:34', '2022-07-06 03:29:33', '2023-01-05 20:28:31'),
  (112604, 3323, 250370, 703764, 316, 446, '2025-07-26 10:32:26', '2023-12-05 00:19:05', '2024-06-06 18:07:11', '2022-06-14 12:58:46'),
  (243460, 105243, 888440, 85981, 419, 730, '2024-05-31 10:35:34', '2024-05-26 10:52:38', '2021-11-30 19:11:19', '2023-11-28 02:12:11'),
  (891905, 644930, 787160, 398630, 24, 555, '2022-12-12 18:47:19', '2022-05-19 21:08:23', '2024-10-25 16:00:20', '2024-05-08 04:38:10'),
  (827943, 917658, 549387, 358916, 330, 22, '2024-11-18 00:09:53', '2024-12-14 11:59:51', '2023-12-08 17:36:03', '2024-05-25 09:40:03');
INSERT INTO [actions] ([personnel_id], [sous_programme_id], [code_action_id], [intitule], [objectif], [abreviation], [desactiver], [created_by], [updated_by], [created_at], [updated_at]) VALUES
  (636018, 215451, 391079, N'TeM-SRykY', N'nnuwzrpTsoyMEbRKp', N'CTZbyKw', 1, N'bFBUCBfBqworxqEkk', N'_LPHMHZm_cyx', '2021-01-16 15:10:08', '2022-07-31 17:48:18'),
  (94344, 741453, 960339, N'fNSJdqfHqC', N'sj_BrloAt', N'HeofNdKPYY', 0, N'JEBkpbZmMTeeXg', N'YlIhXDJWxUlj', '2025-03-05 14:00:22', '2022-03-23 22:56:55'),
  (257580, 825134, 9172, N'_kXrG bGGdzikdE', N'_ipM-xKYr', N'pDlThTpkOMWceyiasDH', 1, N'JIUzHDPHwYMKT-VzW', N'HAkG_FiZcneMx', '2023-03-05 19:05:33', '2021-08-14 12:38:02'),
  (633755, 948086, 432447, N'ytxbuFmWbnBXOWjCL', N'PYtzpjboC', N'FzDTDxnDiAdpj', 0, N'xdwDyPBeMsw GJ', N'c_EewvmtGkagjVTJrdbG', '2022-07-01 00:37:20', '2025-01-25 12:59:39'),
  (389302, 25313, 470139, N'vZNDwNusxdZHLhCWF', N'WGcQXJUVKGej yvQTC', N'jjWmfNyrzocct', 0, N'mAKmAZ jB', N'naek_cqUEYeoD', '2022-01-17 01:57:17', '2024-10-31 18:20:00'),
  (119787, 83855, 701935, N'ZvNUx_EqKJJ VvOQuHj', N'ZMXpo bBErvGt', N'UzdLtZqg jJo_YopDjgS', 1, N'VzAKvtfpkNEQeXudBz', N'jAEbvxhtpFFzLnzB_p', '2023-01-27 14:12:10', '2022-09-15 06:36:43'),
  (640232, 843611, 172905, N'kMuLy_fgffYVajI', N'FfYZSPjdaElcis-xRR', N'QKfcktvgcLfcNa m', 0, N'FgrLsN-He-NsieDM', N'kPXSGgFMoSscz', '2023-07-08 17:46:19', '2022-01-08 09:21:52'),
  (728665, 495621, 849631, N'wGtsPT zAZpY_tQunpD', N'TjcfdLhjg', N'ijUesXvSuLpTEBAhPQQ', 1, N'EPcxkzmwedc', N'yl FDQzYTuCi', '2023-06-02 05:40:18', '2024-03-24 18:12:36');
INSERT INTO [activites] ([personnel_id], [sous_programme_id], [code_activite_id], [action_id], [intitule], [objectif], [abreviation], [desactiver], [created_by], [updated_by], [created_at], [updated_at]) VALUES
  (690388, 330080, 959965, 788020, N'aYkqAfFvjc', N'pGMFrmUlA', N'XaOxTv', 1, N'agEX GmnjvRQ_VV', N'HzHLNNmBXUZcD', '2025-04-16 10:05:32', '2023-02-08 04:00:37'),
  (564965, 792487, 478609, 46676, N'vbALOYeE-ADMKo', N'-LoCqtP_c oQLqz', N'aHoco CpzaBde', 1, N'bGUYXOYtXMQdFLnIQJ', N'Xh_pyJUvlIPmaR', '2024-04-15 23:30:30', '2021-04-25 02:46:13'),
  (344746, 678265, 257527, 992560, N'bgiVUqkQsQqAkBnUkxgW', N'tISJOeejh_apeX', N'lhWCvhGX-XIDG', 0, N'QNrYfwYfwlyZmIqUbNZY', N'ekjvkH', '2025-03-09 03:53:50', '2022-04-15 20:01:41'),
  (501944, 969633, 794102, 662250, N'bv_yYWBgZGXZznkm', N'XLVSeVo-QXFJXDyuPxmc', N'CmaKwb', 1, N'AV-auDfi-gMHJXh', N'EFJJUWvhN', '2020-11-29 11:31:20', '2023-05-02 15:51:12'),
  (257990, 327217, 563171, 862103, N'sc_gdtQiSq yjrv_Ae', N'eFtVtAbbsulTfiHM', N'xhgqXvuh', 0, N'LZfodrt-WJW', N'ZTJKSIt', '2025-05-02 17:04:49', '2023-03-03 00:16:24'),
  (105315, 938818, 423258, 788846, N'tAfQvr', N'iegLag', N'cEZxzIgqkLJYpfvklPKS', 0, N'EnUTi', N'V RGpAaRHr', '2025-07-17 06:48:35', '2022-03-26 06:22:07'),
  (516584, 574163, 249469, 62256, N'nNQym HswizLALsrpN', N'TAqPMFah', N'LmVqSiKl PLhQpiTc', 0, N'VcUeRzinrhKa', N'Th-SaAgvnCj', '2021-11-20 05:49:01', '2021-09-07 11:22:51'),
  (911005, 386670, 340905, 431098, N'QHRrCQm_OjnywmQ_Q', N'FFrBdqaBDkdY', N'VDHsnA', 0, N'jsrlBXaEYWHeLD', N'tPoCmSr-EyrkEoCi', '2020-10-12 20:06:44', '2022-08-18 21:19:29');
INSERT INTO [activity_log] ([log_name], [description], [subject_type], [event], [subject_id], [causer_type], [causer_id], [properties], [batch_uuid], [created_at], [updated_at], [business_id]) VALUES
  (N'yoJGPjhrUxHqSgrQHZtV', N'beKgpsqZpWQJ_NKZH', N'OFHajbuXSX', N'KvaEmlgUtUWBqSZrLm', 659394, N'Q-MKKwgyENmpuc_vw', 494282, N'IvFoBJbSegKi', N'AcnDAIVegRJC', '2021-10-16 05:44:26', '2022-07-07 08:36:48', 756),
  (N'nxgcqaLAhrP', N'nfvpNhfZqYMIVOWpcES', N'IkQWSUa-F nYA', N'gfGLoKraBSwwWCJ', 729745, N'bVgOKbQrml', 862259, N'oVcUlm nmi', N'DdQCoNichUUnxO', '2023-03-09 08:57:06', '2024-04-23 04:39:08', 158),
  (N'-kEyakx', N'IlR-Ag', N'WknejAg', N'oS krTHTJRHLLvCk-M', 558732, N'CBlN-YCruqM', 224550, N'mzsyX', N'fLhYSidoVSI_hJEzPLT', '2021-10-14 16:13:36', '2021-01-31 17:02:51', 531),
  (N'IoZipdG_MI', N'pIJfvHI', N'qqvJi l', N'BF_-ni', 841871, N'SOfHjNCeBUOI', 84051, N'DkRr_vbcWaXbXQS', N'ZUbfu', '2022-01-14 23:15:01', '2025-08-14 17:04:03', 84),
  (N'SmEZgCY', N'dYOVMbUjwuyRhYGP', N'WsqkfI jMQKIEs', N'HXejl WsGNYcuyEcGBDb', 46291, N'aQqpyw', 667595, N'fxUHrHjzyKhpAjZ', N'GouxQdxt kYKy', '2020-12-28 15:55:09', '2025-05-03 06:14:49', 732),
  (N'OEdAnp', N'M_NJDNwYbXNXO_Hlie', N'rZdhzq', N'JHVaqOUq', 898573, N'JEFpHmyTWm', 553986, N'zrpjRej', N'NRsUkHKPQQUtAtkbp', '2024-03-16 20:09:57', '2021-09-30 01:11:24', 378),
  (N'ngtXqfDc ysOykwWxW', N'clzYoURxvIRlsm', N'QfEyt', N'YrsGK HGbXoUgxpJSG', 543946, N'-rvUiDN-Sd', 706403, N'csROd_spnnnW wm', N'LuThzUoZjZgfg', '2024-07-03 09:47:40', '2025-02-10 10:47:51', 478),
  (N'IdMmpLfO', N'FnizPuocA_c', N'fWNWGFW', N'ygDG_AXJUHaaln', 27860, N'LgvXA', 117456, N'-MHapSyvE', N'qUs MhUAaNRnzxNYwide', '2023-04-14 12:27:42', '2021-03-28 21:15:50', 828),
  (N'HOXKsgIs', N'ozHEv-bLiWAm', N'UknMMGjep', N'rvvAefqcSV_UsiHIAVc', 869881, N'ObXYvpFzBBYVcHSg', 122173, N'BX_bcmdHn', N'yzMf WbyjRDeuVng', '2022-02-16 20:28:02', '2022-06-30 17:55:55', 261),
  (N'wd BGJlBKgFO_FB', N'NnH-qsVch', N'tJaYHCXmvtpE', N'AcnoPxNUh', 55995, N'QxCSSbM', 49799, N'KLTeZssKlbTCqLZk', N'WMTKNOAXNKZyXQs-J', '2024-07-07 22:32:12', '2021-05-26 02:46:05', 911),
  (N'jIYxLyOKpjvKgs', N'XGtKN', N'lmgl-XZ osX', N'XBzKJdANS', 24077, N'jzOhDWAbPClVntJUoHMo', 341604, N'PpHiQJWb- s awAQ', N'jSKNBvbJ', '2021-11-21 00:49:04', '2024-02-03 16:24:15', 605),
  (N'IRjBQrfYJyKywAOe', N'aJEZBgR-RjX', N'ZHuKvWhq-mX', N'zIjpLYXt_GrOc', 896152, N'-kEWo', 1026, N'Q_GBM', N'yedh-WyGmefQm Nv', '2020-11-07 17:57:17', '2021-01-16 10:31:03', 969),
  (N'yHdNPrf', N'OMe_VudDAXlOHm', N'PAOjdUxoOrrbFCCMszk', N'TCiUzW', 904939, N'QiMiwbJZfVFUO Eydk', 592888, N'XXqbzHR', N'emmmDofiuwTkm', '2023-07-27 15:23:29', '2024-01-19 09:38:42', 112),
  (N'IfDan_kRgfMkayhoWBp', N'iDFIKwyhmnCeQIs', N'qLdUkLudjzsGc', N'BrsdpCnR', 262277, N'zEIgjDVY', 523930, N'lea-kOfF L', N'gOmqHAkKIv', '2024-10-25 00:03:00', '2024-05-12 04:07:59', 240),
  (N'o Iph_GlIRuAbvoKW', N'VbFYSLIUOBzRhDESdzF', N'zHXZjYaxWayI', N'fQ-kloOwu', 706618, N'fzRQxaXvIC', 982578, N'RqzKjUeH', N'eKiuKzDWMc', '2025-05-18 17:48:47', '2025-03-07 10:54:24', 792),
  (N'pBNMIsYIbkic_', N'ZcMSUoQ-IBUMTSq', N'PitMv_VNGJOePf', N'wCOIGDZWcSPCfw', 968517, N'pIzCyEmIXQ', 195834, N'NCryX', N'NeUOQDF', '2025-03-01 01:08:18', '2024-10-28 14:56:36', 394),
  (N'_NKBGFT_j', N'uHKmFVcYP', N'RHazPlROYpxdSrb', N'WyyUNvRDKcbRhkrI', 184453, N'_xrqlHzDLzmiw', 641087, N'lOpOiRIVK_rYz-', N'mIKgvzkqfRRu', '2022-03-23 07:40:08', '2025-03-03 15:59:33', 780),
  (N'UElvykKkzLoSovH', N'goGgJTzxxbPFHqy_', N'bNuWFXRs qoamtO', N'RG Ke-hE', 628099, N'kdmH-TvLprYcf-xnztfu', 307915, N'gu umgnUlxNn AEU_Hg', N'ZBC_ucbNr_jS', '2021-07-25 13:03:59', '2023-01-18 07:20:32', 974),
  (N'cXwlDyN', N'SLHEJdMU', N'WEarxip_G', N'zkivJZZXBAduXLGA', 830783, N'ICrtkiFTvGvVQrIOvUL', 442462, N'YuYT-NslGitNhfZS', N'vbi_accjZtxOoLPoep', '2021-10-01 23:14:07', '2021-08-15 03:20:57', 819),
  (N'uenauvEcHnOOBJV', N'Rgsts_HHNy', N'LNTFjF_SoBCOYCUsP', N'jVaix_GVTkxsneHnZ', 181272, N'Vim-eimM', 150170, N'OtNfd', N'VafHpAqFknTJDwbIk', '2024-08-24 23:12:17', '2024-01-27 19:56:42', 532);
INSERT INTO [affectations] ([patient_id], [service_id], [service_id2], [objet], [auteur], [created_at], [updated_at]) VALUES
  (740470, 91323, 697468, N'lYlwEDuqVxJOrEiyjKc', N'jNfG X_QVDyQJpU', '2021-07-04 05:56:22', '2023-12-23 00:13:17'),
  (55676, 576061, 911245, N'TChPEleDRn', N'CYTUnKPLl-b', '2023-05-29 20:43:31', '2022-03-08 08:49:14'),
  (180926, 162731, 604660, N'VAkgUBZuQ_L', N'OtpJJjp', '2022-01-20 01:31:48', '2023-05-27 15:01:52'),
  (685056, 381360, 736594, N'YK_InuJtrAhF', N'VVFokZzspbKvqqKZXFN', '2021-08-17 10:55:39', '2022-03-04 05:44:18'),
  (936664, 468532, 632929, N'alKlCekdvpQMDWHFUhn', N'T uiLJHpijbZRWgiYxzU', '2021-02-05 05:49:58', '2025-04-19 01:56:32'),
  (197595, 181683, 39487, N'qWJFMZ', N'HGGKCwRnSVUTxQGwlpO', '2025-03-09 17:20:40', '2023-12-28 18:10:55'),
  (969202, 63839, 837490, N'mbrtpy', N'K_YKuh', '2024-07-20 09:43:53', '2021-03-14 21:24:10'),
  (363738, 875754, 914176, N'nUKfbXjPKk', N'QbftmErPVGmdN ma', '2025-07-16 20:15:11', '2024-03-03 17:51:00');
INSERT INTO [affectation_personnels] ([personnel_id], [service_id], [date], [created_at], [updated_at]) VALUES
  (492933, 86663, N'RLFfMhjzdOj', '2021-12-05 03:43:08', '2021-08-14 14:22:44'),
  (217313, 165051, N'RSDADWQi', '2021-02-02 19:08:17', '2021-08-13 09:01:25'),
  (635267, 808848, N'hhyzgil', '2020-12-28 14:16:36', '2021-08-31 08:49:21'),
  (647505, 756727, N'CiUvQV', '2025-02-19 14:18:12', '2024-05-11 06:12:29'),
  (977695, 260754, N'NVUncsKmByv', '2022-05-30 01:12:11', '2025-03-13 07:45:28'),
  (14061, 692414, N'DPQZtXHgjW', '2023-01-13 20:25:46', '2022-02-18 19:22:11'),
  (105339, 94478, N'bYJRzOHivaKQui', '2021-11-29 23:59:29', '2023-01-28 08:29:56'),
  (393821, 135065, N'- LmS', '2023-10-03 22:47:31', '2023-08-12 21:40:58');
INSERT INTO [agences] ([banque_id], [code], [adresse], [created_at], [updated_at]) VALUES
  (756626, N'-YeZVVPaZnTQKMwiX', N'bXgoDhjrmBwJuIxytWi', '2022-06-10 06:26:11', '2020-11-12 14:02:23'),
  (271956, N'VXjbjEd', N'hxNkEoJFrdkMNdCUUf', '2024-04-21 07:51:55', '2024-04-05 17:19:20'),
  (903836, N'Aoiis', N'vuqk ROP', '2020-09-13 02:38:54', '2022-07-10 18:59:21'),
  (735263, N'cpdhbNxzFKXOCx', N'YtNexCLRXwxsB-lpqE', '2021-07-17 05:15:21', '2021-10-19 18:35:21'),
  (877418, N'DBahcJdXhZYGh', N'nbZVYA', '2025-05-07 07:11:04', '2022-08-04 16:33:32'),
  (105254, N'zrWfFkBHcIaHgZUQxCg', N'LbUgvTdDf', '2022-04-19 22:06:18', '2024-12-16 23:55:46'),
  (44513, N'CgpdDTovfd sxHrFtm', N'lhTmbbKBlwIHRwCBT', '2024-04-15 22:20:49', '2022-10-17 23:23:47'),
  (520277, N'nhJav', N'QZXmMzk ZCq', '2024-05-10 18:07:17', '2023-12-26 12:22:07');
INSERT INTO [analyses_laboratoires] ([echantillon_id], [technicien_id], [validateur_id], [service_id], [type_analyse], [priorite], [statut], [resultats], [conclusion], [debut_analyse], [fin_analyse], [valide], [date_validation], [created_at], [updated_at]) VALUES
  (458028, 863181, 156148, 82768, N'LeHp-iS_EbcdrzAB', N'tvOLbWeY', N'dCLFQDhq', N'bVPqLp', N'TKWS_T', '2022-12-06 01:12:08', '2025-07-09 10:45:50', 0, '2023-04-26 09:14:09', '2022-10-04 02:04:45', '2021-03-12 22:27:20'),
  (332049, 822564, 180482, 44352, N'NMGcZLtP-M Fz', N'OoPemDLCRh AyMJVsgAy', N'jnFsdFEK', N'po-lWuBlnVSGQ', N'LKhNCZaeT qkB_', '2021-10-28 04:28:11', '2020-11-10 07:13:10', 0, '2024-08-11 07:41:38', '2021-01-25 23:02:04', '2025-01-08 09:24:33'),
  (483123, 859637, 947993, 566809, N'gfAd-kQQQb', N'g_IZfpxRSWNKG', N'jhfCbU-IGOLsQGb  _e', N'qtIikWhCwHGVoKCGx', N'aIldZbqIcAEuEQf--l-', '2022-03-30 12:06:17', '2023-11-14 23:07:07', 0, '2023-03-09 06:07:13', '2024-01-25 08:36:08', '2021-05-31 20:38:30'),
  (801752, 679427, 700432, 88115, N'GFR LrYkMQ', N'JGjDUWzLQ_EQOdrcLw', N'ThqYfYLBhwBc', N'JPplFsRZSJJovUywgXDL', N'lsOcMASOs-NyyIpUq', '2024-04-15 09:10:26', '2020-11-08 04:04:26', 1, '2024-06-28 04:12:55', '2024-12-27 08:47:40', '2023-04-18 03:23:30'),
  (159058, 67906, 465512, 12180, N'JvgyjkwLW', N'OArIIiaGKYX', N'rIzISGoNcBiq', N'EjWHCMKeBbN-eften', N'LWUpwQWM', '2022-01-09 18:04:03', '2022-05-18 03:33:19', 1, '2021-07-21 23:44:48', '2022-08-13 09:11:25', '2022-06-14 09:41:49'),
  (498190, 754676, 427434, 937891, N'vlpcq', N'JGgzvX-SbkxrWtF', N'qhNgBuPcm', N'rbYKAz_eEWVEVe', N'SqMIKWIOc', '2025-04-15 02:51:50', '2025-03-28 12:37:58', 0, '2024-01-17 12:19:59', '2024-07-25 02:20:48', '2025-04-28 22:34:25'),
  (152527, 101606, 284687, 83488, N'rAH_gYo-uNlzOyqIBNQ', N'SLzSNJCtGyKt', N'uvLquZQ', N'hhNiUM', N'd_RXExpSyS', '2021-01-05 18:55:44', '2023-08-16 21:33:09', 0, '2021-03-27 05:49:00', '2024-09-02 17:29:09', '2021-04-21 18:56:35'),
  (443005, 715933, 763571, 64873, N'-MIWXJZznAup', N'TPigGLquxMdyFadbMP', N'ZitHLqldsyyRrY', N'BFAduYBqka YtuBxFW', N'vIbKCYtXuomYGZMbBip', '2023-10-12 15:45:35', '2022-10-31 10:06:26', 1, '2023-11-18 02:27:59', '2021-09-30 23:14:34', '2022-03-16 05:55:32'),
  (807849, 439075, 352854, 734631, N'dgzOvMMwodaSRB', N'_lhljslWZC', N'ESQEtziWuNeybgflrT', N'fx_G qIZ', N'daWIagELHzETFJimf', '2022-02-08 17:10:50', '2025-07-20 20:28:20', 1, '2024-05-31 07:15:26', '2020-10-01 21:12:34', '2022-12-17 08:41:04'),
  (467786, 141464, 753170, 428395, N'_kOZBejUhkdnH', N'oVWEvoBwSLUyW', N'DJw Ok', N'qGltihQJSWoGuqxZ', N'dcRBqtPxsPDvV', '2021-11-16 01:29:06', '2022-04-24 00:47:51', 0, '2021-08-01 16:29:23', '2021-10-29 08:35:22', '2022-04-13 21:41:49'),
  (161653, 980057, 747557, 469185, N'XINWVUFRNU fCC', N'WnpQsPPRVkFkbm-JI', N'Rk eEwTaPIdZ_eMYy', N'cqvTOmcyMYo', N'UIG-jrNov_otac_', '2021-07-09 04:16:34', '2025-01-05 16:36:35', 0, '2024-01-03 22:48:37', '2024-05-20 06:47:33', '2024-09-01 18:21:22'),
  (529695, 300528, 539166, 948965, N'-Bwlrqq', N'qqBd In IxSeEMNn', N'TYJgaPRPWZUQupPMhjI', N'GGQqIVyZNKLBLHGXjWS', N'tuELSi', '2024-09-17 19:54:26', '2021-07-11 17:12:30', 1, '2024-06-16 20:22:39', '2021-10-21 20:37:58', '2022-10-18 01:49:02'),
  (395148, 243848, 38199, 849582, N'UMIVyTq', N'rin-JPoLCk', N'pKYgjhPQJFbz', N'KnlHGdTKJn', N'jhc halola', '2020-10-10 03:21:56', '2021-03-04 09:32:41', 1, '2024-07-23 19:19:57', '2024-04-29 20:49:06', '2023-11-12 07:55:34'),
  (120182, 47511, 954247, 31249, N'TyhaJf smxyYfsdUpJsu', N'PfLGWdYErAYW', N'mutALu-RY', N'camUXbD-', N'lax  rvVLyC-evbSc', '2024-05-05 21:33:35', '2024-04-26 09:19:42', 1, '2024-03-23 22:19:52', '2022-12-03 07:18:30', '2021-06-02 11:42:04'),
  (77412, 13676, 948948, 678749, N'xtfTfT-osaZCIugzN', N'XNEcHNaxXJWmB', N'JmsJjyIUKKNzkyMDYa', N'IBJJHOKhEHRQ', N'YNexbxZLBlxD_eKDybSM', '2022-08-26 02:48:28', '2021-09-17 14:28:03', 0, '2021-05-17 18:59:31', '2021-10-06 20:32:17', '2024-04-22 13:01:30'),
  (923984, 735621, 801113, 375922, N'_OHKJ-lyatfJ_aWKxie', N'xvGuhDFDsTfQViFsyMl', N'gIRZ-PJ', N'rfMTLziBr', N'kjMEvGLeCd', '2022-11-19 19:47:17', '2023-10-03 01:28:41', 1, '2021-10-04 08:05:17', '2021-07-13 12:34:48', '2025-05-06 09:28:04'),
  (363449, 714097, 307913, 390960, N'--cuBXGia_Kji_xF-aTK', N'UdeOz', N'TvArdDkn ir_', N'lGkJNuUYradfFHP HlkS', N'TCpfiAeyIYXxa', '2024-09-24 10:39:37', '2021-03-13 08:19:04', 0, '2023-08-17 10:19:12', '2025-06-03 01:33:31', '2021-02-19 21:07:42'),
  (95910, 121812, 602262, 389863, N'Nl_DZ', N'QfulBfV', N'Vxo YC', N'Kimcc', N'eZBLuRaaEqS-PfGKYtJ', '2023-06-03 05:34:43', '2023-02-16 23:56:48', 0, '2021-11-01 04:06:41', '2025-06-18 16:31:36', '2025-01-28 01:32:13'),
  (491075, 433277, 621909, 582309, N'_AwiMqrEXhA', N'NYUGjEm', N'ZIfnXUXecqvcjw', N'oRleDsnYYUxCqHW p', N'jAHdzrIBcVBCmLJ', '2022-07-02 01:38:46', '2022-10-10 13:12:19', 1, '2025-03-31 07:45:24', '2024-12-01 12:21:03', '2022-04-19 03:10:43'),
  (573742, 318390, 185469, 333363, N'yZO_tziIdvvd', N'CrTdzxCNvwfxzknKlU', N'McIvX', N'gcFOStUbQMgogfg', N'XGygMRbjvZsTCRydRSl', '2022-01-25 02:47:34', '2020-11-02 11:45:57', 1, '2023-10-17 01:35:43', '2022-08-16 23:36:25', '2023-04-26 15:12:21'),
  (857288, 964604, 977449, 281071, N'RlafQil', N'uYYKwdakAWZSdfuhvnU', N'wZPRRLqCON', N'cCsc-FgWCTm_iDM', N'wTVLRx', '2020-11-15 17:12:54', '2022-08-07 00:23:03', 0, '2021-01-17 03:32:42', '2020-09-19 18:36:40', '2023-12-23 13:15:34'),
  (301829, 710451, 652257, 226736, N'XUanSLharwicnB', N'GNSWse', N'ItONgoP', N'NNlIwwWWpxRKvjc', N'yecdAFKKaPbzKB J', '2021-02-19 05:19:02', '2021-04-06 12:11:13', 1, '2024-05-16 05:09:59', '2024-09-12 02:39:35', '2022-11-14 23:01:41'),
  (46231, 816101, 729235, 938936, N'EGrSRiTnQmK_', N'tLSxobazFDyW__', N'vuankOw-ae', N'nyuqizlsgDIqlLdOlQKS', N'oYotv_gea', '2020-11-27 19:52:06', '2025-06-30 14:09:53', 0, '2024-03-22 21:57:03', '2021-01-11 17:04:54', '2023-09-01 03:33:11'),
  (256152, 5892, 668160, 801433, N'GqpajhfyzCoYiNasRv', N'vWKJYICu_KlfkLVLXBt', N'zco-pAQZlZ', N'SjDxw', N'eqDDbSMiaC', '2021-08-11 09:56:15', '2021-05-29 18:42:46', 1, '2022-01-06 04:52:48', '2022-07-22 15:17:49', '2025-04-27 15:05:36'),
  (6417, 189722, 198229, 452408, N'gPYMUQkewH', N'HKFUaRxK', N'BgXhGBnI', N'vJJfULuKVDSEkTSg', N'JHcTdWXvpEIWZSM_n', '2021-03-17 06:05:42', '2025-04-17 13:21:41', 1, '2021-12-13 19:26:40', '2024-12-17 11:39:13', '2025-08-02 10:04:51'),
  (502889, 942895, 180752, 842747, N'vtdQgGikUWEka', N'lJnNsI', N'O-oiQjdqf', N'rFrPnUiVHVheA', N'KMTmSaRiVOVaicOn', '2021-01-25 02:40:07', '2022-12-29 04:06:53', 0, '2022-07-02 00:45:37', '2021-10-02 04:39:09', '2021-09-30 06:43:02'),
  (751766, 460228, 522220, 376623, N'SgpxTmcXW', N'GfAvdAqzm', N'R dwT', N'-CDDwzLgNIoi', N'RbPkMfA', '2021-04-07 13:31:26', '2024-08-18 19:14:45', 1, '2023-11-08 08:18:34', '2020-12-25 13:36:47', '2021-12-27 22:34:44'),
  (610314, 785462, 556675, 228768, N'Ybqp-VI', N'eNyzkjKfZmhAF', N'GdxzJ', N'-A-zDWcyoSzjfKGZ', N'xxdtLsXWYqtPcCBzm', '2023-03-29 19:17:18', '2022-03-29 10:01:11', 0, '2025-06-18 21:26:27', '2024-03-07 14:53:50', '2023-07-24 16:27:51'),
  (8951, 316986, 678663, 633884, N'kDmi_kyiB-hfsjqnY', N'Qi-VvPJSurRjgRG_GO', N'IVFMRN', N'VNAjOpUt', N'QMKRyqo', '2022-05-07 02:15:40', '2025-05-25 12:18:23', 1, '2022-09-03 10:13:27', '2021-10-10 19:44:50', '2023-01-12 21:12:03'),
  (993248, 483324, 195727, 932146, N'QdxIpopqm cZSpef', N'_QHFzbxUrxDXUySK', N'FvYDzLTUZrUXO', N'mxpBxKE_rzyUMXG', N'ZeBnriflvsxbISaKv', '2023-03-30 08:42:18', '2024-12-16 00:15:15', 0, '2023-07-18 03:55:14', '2022-03-19 11:25:48', '2024-01-12 12:45:17'),
  (624894, 149523, 338792, 824734, N'Kyzt_Clh_paDripx', N'rlyh sdQ', N'PILmpYkA htXu', N'nTZdCKAoQXDogR', N'bIPRU', '2021-09-03 13:15:43', '2024-11-07 14:23:26', 1, '2022-01-21 10:57:48', '2021-11-05 00:32:08', '2021-08-29 03:54:58'),
  (83258, 386254, 765345, 575651, N'fJruknx QrVlBGZDqr_', N'dhFmPkP RbSHAYvV joC', N'CiKBzRuAmmDahrdP cW', N'j CIebxuPHQccbj', N'_RlUietluDQ_mhBbMtoK', '2021-09-08 00:20:10', '2022-06-27 16:18:23', 1, '2025-02-19 09:11:12', '2021-05-17 09:13:59', '2024-11-03 13:03:41'),
  (172469, 952562, 36787, 208100, N'myNwwTjH', N'lUbMPlKUO_FYpwiUx', N'QRnpjkjOSX CoSN', N'HMMlasx_ESS', N'YwoioBBfGwcE', '2024-01-06 07:15:21', '2021-06-01 06:39:28', 0, '2025-04-29 04:06:01', '2024-07-16 23:42:17', '2021-01-09 02:57:20'),
  (536295, 196543, 407991, 636627, N'YhWGZk-_mycgaFhjzgwP', N'JRJOlTf_FQY-', N'TWqIqXzEmuCWqijnnS', N'jkTGbOgWM', N'qjwJQ_VKjT QRO', '2022-03-15 15:32:23', '2022-02-26 13:51:40', 1, '2024-01-30 22:39:40', '2021-02-14 03:46:57', '2023-11-04 22:47:50'),
  (191932, 860937, 931585, 647950, N'nxPdyp-OYUEZpe_', N'IdrzRYFr', N'paFQuo_', N'XhPJujaQeoXylz', N'GYsQzo', '2025-06-29 07:48:29', '2024-08-30 18:19:55', 1, '2023-12-03 04:33:01', '2021-03-05 02:27:19', '2023-04-22 14:33:50'),
  (765983, 290298, 829166, 499274, N'xuqKeZ', N'OQexfBUree', N'vBrbKQfKUyLnLuC', N'wZldEZaZibqkBkQaeNPF', N'iUQfjtem', '2025-07-01 09:14:57', '2022-09-16 13:33:34', 1, '2024-01-26 07:16:55', '2024-07-28 07:19:27', '2025-02-28 08:57:25'),
  (594050, 678708, 475953, 425705, N'KHEnek', N'FEofZMXliCPyRWbDvS', N'PIAwp-OnORKSStmhMfOX', N'vtmbGRUYLOvlohjck', N'Lew-bXwF', '2023-11-08 09:29:21', '2022-12-14 12:51:14', 1, '2025-06-04 20:57:45', '2024-07-07 14:31:28', '2023-01-20 05:05:45'),
  (503252, 7223, 745503, 52368, N'iAJDz', N'tIQWBFztKCLCtf', N'mywBScq_vcbApwuSo', N'mcLVyrKBNlDCfhOKPwiK', N'oundSxLDUalxwhkHk', '2024-07-28 00:59:45', '2024-02-26 08:19:28', 0, '2024-04-06 20:43:51', '2023-03-09 17:36:11', '2022-08-19 23:24:19'),
  (82170, 894777, 329268, 643912, N'HN_J-KWvNzwsAQ', N'ptvWqsVotTqYeYtNhz', N'WMp-T_qrLCso', N'AqbHWR-QSJkjo', N'LvGAiM', '2024-09-10 15:25:10', '2022-06-30 12:07:52', 1, '2021-06-26 12:11:54', '2022-10-03 17:37:52', '2021-12-23 12:05:51'),
  (108645, 8364, 937654, 797179, N'idSlhEWcEut_HwmsOTY', N'xvEZLi_XicpactrKB_', N'yejUNoKd bjVwg', N'XhnUDv_zw', N'mvLvOR-EaJBZfKNne', '2022-11-09 18:01:15', '2023-09-14 14:10:36', 1, '2022-03-31 05:52:07', '2022-11-04 10:01:31', '2023-06-03 07:36:45');
INSERT INTO [annees] ([annee], [created_at], [updated_at]) VALUES
  (N'yofeoIJxdnslm-AkQ', '2021-10-16 06:31:56', '2020-12-02 14:29:18'),
  (N'mtDslqAnPgbt', '2022-08-11 08:06:39', '2024-06-21 00:54:00'),
  (N'GVSRZQzY I-bcJYPuT', '2021-11-01 05:31:55', '2025-06-23 15:22:32'),
  (N'yWLdjZPfPQFCs', '2021-03-08 16:29:05', '2024-08-06 19:24:18'),
  (N'mctn-udjoIYY-', '2023-10-03 14:15:14', '2021-01-13 09:06:36'),
  (N'k JNrBzvlC', '2023-07-02 21:19:38', '2021-12-29 01:32:57'),
  (N'miHjNYoaibi', '2023-06-12 10:18:41', '2024-01-19 06:41:21'),
  (N'nnaobomq', '2024-02-10 02:02:59', '2024-08-14 23:29:54');
INSERT INTO [annee_academiques] ([dateDebut], [dateFin], [created_at], [updated_at]) VALUES
  (N'eUShQBYDx aC_BjXENN', N'W upVdlrPxndfloV', '2025-08-01 21:54:28', '2025-05-14 09:35:07'),
  (N'FkpbnrTYiciI', N'DeZLZVZXbfDTkk', '2021-10-05 22:17:44', '2023-02-15 20:59:32'),
  (N'xdC UA', N'QIDUXg-EPOSFu', '2022-11-07 18:11:54', '2024-02-27 13:44:27'),
  (N'NY-Mlqdy', N'OIoICjYREOjvGelj', '2023-05-01 09:21:18', '2020-12-23 03:56:44'),
  (N'yzWIsTqGUVjpFpO', N'CKXeYlgiffd', '2021-08-25 23:45:06', '2025-02-25 01:35:10'),
  (N'GcpSwSJAZVNdQeD_d F', N'ScZOoMjwgLNNqS', '2023-08-28 09:20:25', '2022-02-25 05:23:40'),
  (N'VWhFglljFyVqpoJ', N'lkbx_sjjhylyRuRZqLP', '2023-11-21 22:54:30', '2022-04-10 04:51:21'),
  (N'VVaSI mmsst', N'-btG-HFGMLvarDbZkax', '2023-11-06 11:47:51', '2024-12-14 06:35:32');
INSERT INTO [appareils] ([code], [nom], [marque], [cathegorie], [taille], [created_at], [updated_at]) VALUES
  (N'eNXumYRCFqNSlzBO', N'kMVuAorlCFE', N'YkkwKjbAfzwIfjZ', N'bPxKUkjLs', 120, '2021-03-30 04:49:08', '2023-05-19 18:57:46'),
  (N'ncjLuuWQSLzoBpDQUZ', N'PAl NUsQW', N'cByevQqNGb', N'gmnUgoPIW_ccrKI', 873, '2022-07-18 21:48:03', '2021-12-21 10:55:43'),
  (N'Pfl_jg', N'YexVsGQhTx', N'BIAIFztag', N'HuqJIdyt', 313, '2021-10-09 12:58:30', '2020-08-23 13:12:47'),
  (N'YylKGF', N'OHEp-uHuXVyOzszVtXV', N'MBUinsQl', N'NjTBZjle', 198, '2022-03-12 04:43:14', '2020-10-12 17:16:38'),
  (N'SecskNqInYhsUF', N'fENCj WA', N'KSHgPkGSmhVJb', N'oBBAbV', 705, '2022-01-24 19:26:30', '2020-08-27 04:31:34'),
  (N'awmVkI', N'mIzmgauOcuZlrpH', N'JTawJSkA-ZNk', N'dCzISB', 168, '2024-07-11 14:59:58', '2024-05-06 15:09:45'),
  (N'_ol_JnGNyRYn', N'EAVfGvOhOI', N'lzDgpBJtXgaemjQGY', N'moTMjgRI_G', 749, '2022-07-16 21:47:50', '2023-08-10 21:23:08'),
  (N'DVMU_eHEuT', N'zEFyg', N'BWOUx', N'aOIHg_P rp', 789, '2021-04-10 18:32:11', '2021-09-20 11:55:20');
INSERT INTO [articles] ([unite_id], [type_conditionnement_id], [produit_id], [famille_id], [forme_id], [fournisseur_id], [plan_comptable_matiere_id], [taxes_id], [categorie_comptable_id], [code], [codeBarre], [conditionnmentDefaut], [uniteVente], [prixAchat], [categorieAchat], [coefficientVente], [prixVente], [categorieVente], [dernierPrixAchat], [prixRevient], [qteSeuilCritique], [qteSeuilMin], [qteSeuilMax], [qteOptimale], [qteMAxCmd], [datePeremption], [unitePoids], [poidsNet], [coutStockage], [autresCharges], [coutTransport], [created_at], [updated_at]) VALUES
  (489779, 636170, 466192, 429656, 122452, 483021, 962825, 527610, 728544, N'wLAL_IPp', N'wQFlVRbT UjSzy', N'S zIyWkNwK-giuCn', N'NGLKkvuoMrQBOO', N'WCVti', N'CrOEj', N'BLteWCKNzFbJaJYMDt', N'qJwRN_KszreGmZMZG_th', N'Dps-DHOvnzULIZIgys', N'qsuaY', N'QOGZzaukh-', N'kziDcz', N'sJMdb-IlrI-qwHgXo', N'JIKJm', N'vEtQ I', N'NMVEq-_VgJwA', N'ajCYxadancRw', N'WRzgLXMwPnbwysgJq', N'CIQ_sBCKdG', N'UbPhHEkAPZcbhOWnBxSh', N'orstqi', N'zErQvB', '2025-05-22 03:48:40', '2024-01-18 00:36:35'),
  (858260, 961069, 392404, 172842, 315500, 985660, 40496, 396184, 148650, N'huwNMBEiu', N'Xll_lhMavpnOPQsCYb', N'FtEytIsRYuxMo', N'ukg_  oIouaF-fisvU', N'ngkS-MdaVpziQlfe', N'pXOjODFkBXrIPIUpNwJu', N'JuklLQtkR-wiT_u', N'zhGuFxNf', N'edvdH_OdxtMfqCDtrEo', N'OnwXjtCHUV_Ush-Y', N'hwLtSZKDmqs_MncvoFG', N'omhHn', N'fYeSmp PHMlBcGEGIl', N'wYlEIEm', N's JBl', N'ReulhCStAu-QnuU', N'EZZYGdgGKgwB', N'msryFfVECVykLZzLeton', N'iLMKqyOYBqvdNLKLY', N'SchdI', N'EoKbIo-RTvkgTfI', N'QHsskPsyrVGXHtNW-Q', '2024-07-12 23:15:08', '2025-08-05 09:15:04'),
  (388720, 459319, 178989, 588294, 955084, 919436, 388954, 863907, 812784, N'vOTKwWHiHVh-LdljeCVL', N'UIMQQ_O-e itHImOMCf', N'avWLHtqvZgYrYnBFWkH', N'HgflUnObnHGvWB_Ih', N'KpNF-If', N'vKa bVYNQ-UKO', N'-gCDKdxujJ', N'BLno YxfO-QuVGIWbW', N'VaX-QumiRzbVVhhKpYL', N'ap_Ii_K', N'tiPuwhpUBcKdSHu IZg_', N'csuditnT', N'nzevSYYHFnyWziCfnSw', N'KpnwpZNdTaOvIuW-B', N'xOsCQpf', N'y ypLFKlwwYhgys', N'zRNcQi-GpEFl', N'b_kIMAXPyAavpslHfyZ', N'qe TRAecgNSDu', N'vI OtA-qcxh', N'mQJIai', N'naqjFAnBi_GgqOqRrDhH', '2025-07-24 11:51:58', '2022-08-04 21:27:54'),
  (620734, 332387, 832829, 221685, 971574, 22658, 603293, 431764, 603071, N'AFzqSW', N'KllGI', N'NGDWruWwh_Tp-', N'IVDi_FhDrmbPBZJ', N'YgWy-- r', N'mtnLGW', N'GFnJECP', N'GoUonzsWECa-qgoT', N'MaNhw', N'G OAblIiziw', N'YkcqeP_kofNcU', N'CDiarWrebdTSFSL-', N'gKnkrxXp-JPed', N'TNtgOjjWrIDbLUVJEjVy', N'KAnllxfF-tYjl', N'aq-SPRnlAggI-N', N'cmtyHB', N'SyndEajI', N'CSPkdjXccMvXYpzZA', N'eKxmAILba', N'DEMubdgFpivZKab', N'nNDfmWXcPCkkfgnI yK', '2020-12-26 17:56:04', '2024-12-19 22:59:27'),
  (495572, 927570, 79242, 686908, 408785, 519690, 149459, 194656, 125778, N'Z quT', N'VAYhFhKkJZeE-', N'DqtpA', N'j oWts', N'lxjfPzajv', N'nLrWfjUQUb', N'tV CZ-ElyNbnR', N'APOwugoiEA', N'PDM tUJ', N'Rirw', N'LIwhyciggKQhuIL-', N'kZBIzWS', N'UMZIAqEJBYGRAi', N'DydaGHrtDqb', N'C QJfKhKcFsN', N'fBtcdzKVU', N'zMUOi-mYuor', N'GBrCcGkhoKHAu', N'BljT_akekmVUF', N'awvanWnad', N'bJHyp', N'VTzDpLhNaaHHKX', '2025-06-20 16:20:04', '2021-05-27 03:07:20'),
  (127212, 264370, 124897, 425926, 837101, 2779, 24267, 607802, 897449, N'yKWVOj', N'iRFmDV-LRIXK', N'VTNcyaIYUvtI-f_JBEq', N'pcdbM -LGrRopBhgU', N'CfgHfufQMJPx', N'vGjWKZtjbmOqZ', N'exnuW', N'rAAbCuyKMMqs', N'zBCjTdgdJirPU', N'ZiTXI', N'SGjiPoG', N'MXsajzjcHwGeFqSuiDo', N'OmAtkowDbasfkNgX', N'JSvgJhRAe', N'YOuwKbsQzh', N'dDMlod', N'BAbdfiJpHjDfb', N'UVlmiKV', N'ewfibPqITxaFVBBWuo', N'tyUctPljCAo_O', N'y bgNfvpaxFUVZ', N'UtF_jqpwJAf', '2024-10-24 13:50:54', '2024-02-14 20:56:34'),
  (560735, 177291, 171109, 985873, 333291, 793628, 106491, 785859, 712391, N'DQlzCaGz', N'TZywSYzj_ireNCA_IC', N'YNsED-fQkLdOn', N'acAgZGtGKEtjipur', N'tdtUAVWyJjh', N'fvYOB-qMV', N'kwqKYlbzQSrZsP f', N'gQTNFXmI', N'HjDpa_Q', N'otovRLYsGGZlUeHHrL', N'IbzzqXbw_g gclfk x', N'mQVrfZUlpbhTzd', N'NVHBa pFjgTUPG', N'ddmkdSmgMCJ LNMdf', N'ZrcantE', N'pgWSFVgL', N'WPJAcXVgOWyjWwRTNWd', N'gLPs_OD HvxaO', N'enCvovHk', N'bEkJHR-C', N'EiXDM', N'ToDhAg', '2024-04-07 10:33:51', '2020-11-13 23:27:42'),
  (579365, 723790, 536856, 116464, 817048, 645472, 492812, 875341, 162140, N'mRMWLOyqE', N'XhImFv-ocCAJgalZsJaR', N'YwDGcakPqQsmZXin', N'lk hzLcYyMQWyJw_D', N'zQEbyZCRRweBN', N'pK_xSVjf', N'dVh-At jyeaEanm', N'c PHXqYks_nSVShN', N'KisI_sGeobat', N'VBMZZe a', N'_ocjgxeyEUxWZTJ', N'SszTYpoQNvotJffau', N'hWrF', N'qXjFG ZLYB_huEpJvu', N'iIXeCFvZ', N'ioLxWKFG', N'vxqjy_Oc', N'koUybjsYsBWV-xXrBXD', N'jcweCgbDnd GDhxyZqW', N'IPWoEQUdngFutoHbXlCs', N'-tG_uTD', N'ydkKlvqXWz', '2025-02-16 05:55:43', '2024-01-24 02:33:44'),
  (154666, 936906, 472770, 194969, 581961, 541270, 874414, 314843, 47913, N'ABqiaCPyRnjEe-TnvnU', N'EASiwMinHBUG-EMdA', N'ZqHHz', N'ldSvXxXpqawY', N'RH-MX', N'EmKAVfuM_', N'BqXaumRPVuACdVEGMDF', N'wqkB_eLTbp-YHqj', N'EnzV-iDUnl', N'TllPjE', N'gWe-D-xP', N'BMhFgBkdXskNIxhsr-Jz', N'cxlg-BLanL_Z', N'lblVAKYJag', N'lRzrF-edBIbeC', N'WbnZfzmCXcvRacsLmnl', N'-DlqryKo_hZCkKrYCB', N'JaIoKcVzWuqd', N'wNUN JugSM', N'VMoiDSkWFlIf', N'Kh yowPdtX', N'di-BTACzPv kDkJPtw', '2022-05-20 18:02:06', '2024-10-18 14:54:07'),
  (277637, 653713, 785299, 657040, 614869, 391785, 24532, 474632, 757897, N'G_IBt', N'AVFxW', N'_bkcIaQTgK-_kMcklX', N'xX t pN', N'rqIKcL', N'lkwmpnlakpwe', N'jZxPZv', N'_dhNUovsvYTRco_z', N'SYnNmWXpmks_pz', N'LBiaZIbwKV', N'hi-YrWrfkLdC', N'WMzuNMNidhjpFzm', N'EDtLxrk', N'aylMXrP', N'KnCvNYg', N'lzCeSogEx', N'UziB_rEujQ_G', N'qygjSbNBhCZXobaKL', N'QVIruirdmk', N'ewSovwau', N'rnUXigLO', N'tpQ-dH_C', '2024-10-05 18:23:12', '2024-07-22 19:56:43'),
  (668689, 146442, 273604, 488781, 634876, 133012, 392547, 726060, 777256, N'ijfGIpT qOZRu', N'LlVatXIE', N'cBFOy-KmnpWkLLJBwgwN', N'kvDTIQ', N'BrdHvOGYYwVHHm', N'XuSBTYEizY', N'bVGrzEiQLX', N'xtnXOuVxfY', N'kJkllwaWgIlwUYQOz', N'WtClJAmLWq', N'Paf_kYkprf', N'KKlMaYaMSPAzk-', N'ciAzaq-v -dLxBmleE-', N'PcbToNedVWfKop', N'WmINlikt-DffLoy_', N'ScAbH', N'DFQcuzrzh', N'--dEBizsnTHTwaaKuo', N'lmrBfC BQj_oRhnmYAh', N'PYNqs', N'BtimTgy', N'r shVmDlDEQyHxEA', '2020-11-26 21:19:59', '2024-03-23 15:28:26'),
  (900363, 726188, 218553, 828417, 263201, 633765, 306518, 188808, 653972, N'rBZeE', N'_vgGJCbf-_FNNKm', N'tSlcksJoCt', N'XreXFkorwBXvY', N'G yKqCKWakw', N'XIxVoy-WiAJKcr', N'lmHBUTrePaaMvoGvOuE', N'lfzUrpuXLMb-Z', N'LXoEIe', N'RBdtF_POAVgso', N'GHqrnDdzUyfIWC-P_wA', N'A_DiRyWozJZYe', N'QtSfHx HVMKcdjCE', N'K-haXHtvcS', N'P--JybspxAWBcvcoTpC', N'BLGpnbzEPCQnb', N'ESYhJilVlAA_EKPrX', N'NbXGCGP', N'vnGWvRMZ cyEWnKAnt', N'SGSN_GWEzb', N'ZOu_b_QOtKii-hS', N'dqP_JBWSWeIzRUCbAzn', '2022-03-23 23:52:00', '2021-02-26 16:27:19'),
  (799578, 73116, 421758, 800070, 170771, 605952, 976154, 709012, 939853, N'EmZLL', N'X-G-NfRK I', N'FhJjASuXnX', N'DfDVaIB -tNq', N'zLskbnTSLI', N'fRXputROMSbh', N'wXKNACbyMleNv', N'maxqMHkroJGVXrQYpZd', N'YSR VeDUI', N'AEGayOyP', N'QoRhvPHLWWdgy', N'XLUQj_PGfvamC', N'hEdMjA', N'cCdnbGOIcHO_eD', N'zjHkMAJlPX', N'-t-HuWbQ_bDjHG', N'KlPPDOrfeAIaBLR', N'UMy_hkZE', N'ziaJcHi-bpNhDdOWZ', N'AmRqrrnuZM', N'OPlPqvHR FaflaVVs', N'tkQxnAMbL', '2021-05-27 06:21:52', '2021-12-18 21:30:00'),
  (233654, 480803, 381925, 260723, 9390, 191512, 578101, 953652, 279194, N'z  TdpNyPWCaiWspyui', N'cwwoSWBqGWfSI', N'YxXrRbpz Sr-GIjhwTK', N'FpHxrTzAjmioBcyzZDM', N'sLeixLtK F_QliVdql', N'lkAKNiayAzeDKLAlm', N'yNLMQ jLVMYUJpnu', N'zJGDTFCNlxXBathpqHld', N'M pgumMHVmWMf', N'izabaestd', N'zj-NUVeYtVPQo_csUKe', N'thbnHZKFujO', N'icLNIBPu-QytkVYQSisa', N'NTPjdHlov-obKFB', N'MZgNqJNziK XI cP_x', N'IiafEQxpOaCNAAgHB', N'EjWWPUPXs__atpY', N'FqhTkuoeQmEQNu', N'gadFFFmPkeFwdoAfW', N'cjSv-NV-LM', N'LmHEmnD', N'mtUlZs', '2023-04-12 06:51:07', '2022-12-23 03:42:55'),
  (887755, 470343, 300534, 576665, 638514, 90, 817607, 284095, 517349, N'bCVIAiXoueaS-EAueX', N'YEOcSJ_', N'fESpQkILwfrwymqc', N'JYwGaww', N'UVZgu-C', N'rTZNzQxpMQhzd', N'EadsaLp-ZaTtuthIrbW', N'MYTIjlfZIbRn', N'zXkXVUcpGx IJzRrO', N'QCIIa', N'zukMSvfys', N'TMnnUpvUAimdmMDtq_', N'GGdWX', N'FcGUMJEcMkcRThMSNf', N'offmR_jZyyggvI', N'JvJdvkZzplQhh', N'csDZRRkjbuoMERaEE', N'xTrsEUSYdIRRX', N'OmfCWesyV', N'NKvUpK', N'AYFZyAiAlpuSW', N'axoaiVyeVItbixF J', '2024-06-13 18:34:27', '2020-09-08 00:22:29'),
  (226579, 950901, 407122, 542048, 420778, 50771, 346706, 973212, 852074, N'zpczzp', N'-axciUHPfPOBr-aNIL', N'anLcLhkd', N'ObjxibMqvkSm', N'WxKDSMxo_hKP lzcdNT', N'ciDw FsQuqZrOLicus', N'SsvoGfhJbOJhTJ', N'wOwHns-_sWvzzkkMY', N'jhFNFduSAyapZAgZ', N'-itIBbCasCOjWAzbim', N'ZexGxbexmRaeCoRU', N'BFZguBd', N'HCKdxilqtenpLutC', N'dTyqUVxngRZuS', N'LduUDhKVfWPHOKIzBVt', N'LnBvyhJpmuTMFqOQJ', N'zJaxRDdXlpVSE_EZUfI', N'p_aZPgKlkbMxB', N'pnm_ jSTMSEnYRinKzsq', N'lJiupW', N'zZDyNLPlq', N'CEpNTkoUIv', '2021-10-31 16:20:20', '2021-01-12 18:22:40'),
  (143300, 249875, 719335, 191220, 22745, 603175, 98484, 263573, 722197, N'eBNmo', N'HrsintFQeM', N'MaZREv uf', N'-rSviydCuBKSMNe', N'JohbaT-zYsp', N'RjlXWBOUXji', N'CDDnneAUGSczztUEbZCa', N'JxdpyZcvNuk', N'iOsfU cOEYTtUd', N'FrbRPBEYW', N'GkBDAixKa-B-ka-c', N'TzmZGQwO_YZz', N'AUesKCruMFPLn', N'HnLSXKRF', N'-MYeqMTGBcLVN', N'uasMSZQnj AXBs', N'iiVoLqygigk', N'QgvNsJv', N'qbaSelRCBVSk', N'm LHTtFtl', N'vzTDVGSFe_', N'inCHPIPEd', '2023-06-11 07:22:22', '2025-04-14 23:13:20'),
  (889004, 304217, 70667, 406778, 547521, 51880, 403094, 731412, 80778, N'SUqKPxztDVK', N'zbWRuGBRCNrKX', N'mRIpa_N_CjmzZhd-I', N'KjAfyz', N'agAuwuUCR', N'rvFQHzuuWWwFwglqEB', N'aadyHCvHYZAZH', N'sRdweAywq', N'gjlqtqeXGLNEsaj', N'mHAIBbGXo-u', N'cUeCbpAmcNtZrjnGPAdl', N'ZSvUdI', N'bMXrVenrQLaL', N'Oe MEMF_ KFi-rvjJr', N'nxyNrHat', N'cDnwWXyWSFtGaKu', N'OOoKqRbvL-OWJciQBakT', N'rjPZ_cZofwHMW', N'vHrN-bDm_', N'jcogKVCQDEsIBD', N'NxhQteGBVrRHUkma', N'-MuYPHzSG', '2022-12-27 11:30:48', '2021-07-15 23:08:37'),
  (598267, 440701, 166906, 256579, 678118, 803685, 230460, 176492, 934806, N'bVPxUJyTNWrkDA-EsH', N'g_CmSayzl-L', N'QPRfxfZHZWf', N'IGjsXjy x vKtANJL-b', N'jpiDUjoPEhCNGLbjko', N'R KdcT YWBu rZTIOOCd', N'ZDCLuTqeOYCAF', N'umLHe IINRc-CVn', N'GewLeuFMdJLtxGMWTOy', N'z JnGqJGCA', N'HbjbREzfjpL', N'RglhOYQMbO_vVfJZI', N'jKPYIHPy', N'GXi ZbP', N'azyTW_MchdDLioEXjLJj', N'JMoorTGQ_BQtMDcpT', N'cAFuDGNAHYUomvw', N'aZFCpVgXk-ZQnguvvOc', N'CRcwiPfHENMRVoH', N'T rqctxGInget', N'tEdPSgW', N'oPYu_dmzI', '2024-05-30 22:24:10', '2021-08-09 05:28:23'),
  (340053, 658281, 786487, 412661, 858926, 979783, 814161, 559746, 630971, N'VcLOCCN', N'IdjoOtZXOrwBGsqAEKZ', N'bWo XBU_Bt beB', N'iNuEnWFGQnh', N'LFxCTkMTQjQCogGz', N'TciK-fvJxTQ', N'Pk ooltfy_VxeJ', N'OVqIpLBZybDntsYy', N'TqylUhwVOKwIsPfOFrVN', N'BeCavakk', N'GQgzKJe', N'goYWt-rQEySdTL', N'JnSFZCsbViLZ', N'IzsQOpmXb', N'B_OwVbKUP', N'T lhJmAyCDhMVyAAB', N'aiuVzpr', N'ZciY_-iiRS', N'rNLIcenUCBJo', N'FwNVbgECNeujOtr zh', N'sbNknpX_weDt_', N'xBtiZy dhJypFWiyn', '2021-03-15 03:03:54', '2025-06-19 01:49:23');
INSERT INTO [article_achetes] ([unites_id], [type_conditionnements_id], [produits_id], [familles_id], [achats_id], [dateExpiration], [quantile], [prixUnitaire], [created_at], [updated_at]) VALUES
  (612952, 820296, 786892, 374032, 770771, N'NOvwLWkOlFRCy_qZf', N'Mcbn_Y JualVZv', N'eUUn-YrXsRqJzEj', '2022-03-04 13:45:07', '2025-03-04 22:10:46'),
  (954839, 561978, 239803, 600481, 833, N'EWpoeqxryUVSfx', N'sL-mjwfhqSYLDHHDL un', N'iSasaLu', '2023-01-24 07:42:30', '2022-09-17 05:10:00'),
  (462226, 519619, 682237, 456599, 445568, N'GmdSHZxG', N'dgUSIE', N'ftnLfufeqoBE', '2025-03-09 07:43:59', '2024-02-23 07:47:50'),
  (179129, 661974, 108932, 991207, 839058, N'FZJeJ', N'gcNQzOHuBtivWD-dAPJ', N'jB LQ', '2022-04-27 11:48:33', '2022-09-18 20:45:11'),
  (969407, 847916, 756533, 75605, 390372, N'lTVmazcdlmdlG', N'vPSvSbRu-iksVggsYj', N'zAEcg', '2023-04-26 08:29:57', '2021-04-11 18:57:27'),
  (268535, 335292, 774411, 617427, 593903, N'bgzBpn_VH', N'ii_irccuo', N'lQldxyiPb', '2021-06-13 14:30:54', '2021-01-11 14:15:53'),
  (891643, 79195, 119404, 794994, 217826, N'ItnoKgmoPlxlH', N'hYnkpUMqv-ARsvint', N'GztXZtNCBY', '2020-09-05 00:42:27', '2022-02-09 21:01:47'),
  (276519, 612002, 536870, 450939, 450258, N'rlVdUZLwpBW', N'OQEO prQKJOOxlNE-ow', N'-XfvSlyzx vK_erFW', '2023-12-15 12:36:18', '2021-12-23 13:02:47'),
  (387693, 825790, 258252, 914713, 670650, N'NAAtgr', N'Yxopz_LSxksCXrWzBUuQ', N'vnJLSSSAiWOX', '2025-07-16 23:03:13', '2025-04-29 20:17:46'),
  (931373, 355556, 784270, 261978, 161582, N'mTWyFLjtgvEfkP', N'PSAmVOJournQsAJvGVB', N'QKbAYgzUIjsK', '2024-08-21 00:22:14', '2022-08-24 22:13:27'),
  (645830, 637974, 788583, 932624, 795783, N'AgwoRGf', N'zYGPmSDf', N'pbFZn', '2024-09-01 04:25:29', '2021-09-30 22:41:26'),
  (397977, 61794, 494436, 724706, 174113, N'grINB', N'JTbJiyUrKnhihszYmLXt', N'zluPr-jVL-Oky-SswWz', '2022-05-19 20:06:00', '2022-04-06 18:37:52'),
  (626889, 114174, 482355, 145432, 784389, N'anz KqG_QfQhlP', N'SyTsKDfNACRbARJonv', N'MhcgygkwYXKb', '2021-08-08 11:24:31', '2024-01-19 12:36:45'),
  (813770, 753314, 258892, 595263, 630857, N'ULcWWfmoorrnE', N'-EQZnRrIYgsc KIZSq', N'UdeBFMn', '2020-12-15 16:32:25', '2021-04-07 05:00:56'),
  (263241, 952852, 570849, 95569, 108769, N'asLPTLQQfXbd_tPkc', N'HJ-A_AhzI', N'VeNMcp', '2023-02-13 17:05:37', '2021-11-12 03:20:37'),
  (127920, 886710, 807098, 210316, 270341, N'tJqjdnumeBdSEKQ', N'F-LgnIyd', N'uYEg_Sf', '2024-11-07 01:42:47', '2021-08-15 23:40:29'),
  (213153, 919502, 141801, 820711, 739693, N'LRt_ bit', N'QakHJZPfsfhi-ID_Otu', N'FSeXMnBE_', '2024-12-22 07:41:06', '2023-10-09 11:09:39'),
  (514704, 399051, 308873, 901971, 449528, N'MepJYfcOFtN', N'QyhYKskp', N'hwsdeTpfv', '2022-06-28 05:36:08', '2023-06-16 11:46:57'),
  (53896, 430928, 625803, 695688, 454393, N'yeAJq wvku', N'WPFVteaiOx', N'FUZeTDLIMTNrHH', '2023-09-09 14:15:45', '2024-04-04 20:26:25'),
  (409393, 633874, 296041, 531297, 597912, N'dbxgLOSUvBCw', N'nxxXGsj_lCOUfDjyz', N'WPxzxbqya', '2024-09-08 17:24:20', '2020-10-29 15:28:46'),
  (695560, 44915, 87036, 308345, 900750, N'h-oa yGPAlqcY', N'XZgaaO AAIMdRrZWgFi', N'aEAkmGUhh', '2023-08-16 15:05:17', '2022-01-03 19:50:48'),
  (146808, 240511, 149764, 579039, 155277, N'lJjsaIrEuj', N'wMLMtcarfcU', N'CMZhoxYgThpwQ', '2020-11-20 20:19:00', '2023-04-24 10:22:40'),
  (203676, 334165, 817647, 989520, 464516, N'kXPHLi aY', N'shOSQxFJcMWDHpbiIb', N'btgNsTv', '2022-09-13 06:03:53', '2023-03-14 14:51:59'),
  (80952, 643055, 349089, 913926, 795927, N'YWGWgPqsE', N'ZDsUOiJclfPGRJNoby', N'WwFJPTbRoDJL', '2021-08-14 03:07:36', '2021-11-16 21:23:32'),
  (102076, 232699, 863930, 692746, 650710, N'qp UzMKau vJuwFYxLK', N'SXbIWrlKVa-AMB', N'StwjHM', '2025-04-04 07:11:23', '2024-04-14 21:26:06'),
  (15491, 395589, 69917, 763246, 50826, N'vADpoCWrxCcfzujCA', N'oAQJetL', N'iwoObG', '2023-01-08 14:15:25', '2022-04-16 16:58:08'),
  (502175, 758001, 417825, 645887, 643596, N'ON_zsrtDX-', N'luZZaIsRlpVjqlntGaXc', N'fDTithUvvpzMg', '2023-06-04 11:21:26', '2025-03-08 10:35:41'),
  (354458, 330643, 480810, 295477, 886933, N'yl-FK', N'akrkxCdpWnoQjNYvR', N'wlo_fuOIZiHyoc', '2023-01-06 01:12:25', '2020-10-22 12:00:45'),
  (955933, 868368, 146614, 634495, 456218, N'lSNMfCkgFskMi-ibt', N'ADIXlhw', N'LlzyMnE_-azo', '2021-09-16 15:55:35', '2023-08-28 08:42:52'),
  (788031, 34621, 225915, 126994, 879757, N'LkGctIX walj', N'AgQLdg', N'PpnxNoFMFfMd', '2020-08-26 23:21:36', '2021-02-17 04:28:40'),
  (677514, 22732, 192736, 743161, 610028, N'Bgyjl-vyTTRrSFe', N'wMtaUCLNZjoasYXw', N'iVofyPODDYI', '2021-04-12 00:59:24', '2023-01-22 14:37:01'),
  (347601, 395151, 303695, 462519, 769568, N'-pCaYVhNsWwmRN', N'fQCFBATB', N'dwlQEPWAeibYKkJ', '2021-05-16 10:33:40', '2023-05-15 08:28:21'),
  (499951, 574033, 57614, 426540, 694347, N'ZUNdjip', N'RhzEOJR', N'byO EOBnvpijmRFhIwL', '2021-12-16 02:33:35', '2021-03-31 01:25:56'),
  (911218, 144766, 396940, 858507, 666642, N'PGxAoFffs_jMtm', N'cbVpD', N'XpKWIKSjpSSenjq', '2024-05-10 09:05:26', '2023-07-27 03:20:56'),
  (628557, 690703, 656796, 526600, 892818, N'yNniEWITqgFQJmZRF', N'vKevnHicggXrQb yZw', N'SBzslBCYox', '2021-03-06 05:00:32', '2021-11-12 12:19:32'),
  (511550, 191972, 293235, 331269, 988878, N'oZpF-xRzuWyNEAqH', N'GsLBkkr ZKsTx-hbtAO', N'uaALiKAuy', '2025-03-06 03:01:13', '2023-06-23 15:46:28'),
  (900463, 115194, 149941, 858180, 704820, N'AXiWCA', N'lMoVuSbNCLXnqRrieiKh', N'BYQxaljYmsFDJ_', '2020-09-08 23:50:29', '2023-01-28 20:32:36'),
  (954947, 361643, 516683, 758162, 594792, N'_ixhHsSPdDbnoPNHifs', N'JR-jXpmCPUjSdKSTrue', N'FzXUCazmAOoQi_YZH', '2024-04-06 03:44:03', '2022-05-05 09:06:17'),
  (4556, 118305, 70636, 145038, 926188, N'b -dURHsG', N'iy qXInnWnB_C', N'bYGkSIMzFUVOfSnya', '2023-06-29 03:24:26', '2022-10-16 05:11:12'),
  (636056, 961916, 299935, 933917, 455990, N'bJxArKT-d', N'mjqNxWfK', N'xd Paegvszh', '2024-09-04 22:37:19', '2023-07-28 09:15:00');
INSERT INTO [article_necessaires] ([unite_id], [conditionnement_id], [produit_id], [famille_id], [achat_id], [dateExpiration], [quantile], [created_at], [updated_at]) VALUES
  (825317, 943331, 556371, 750147, 724486, N'IdnHUG', N'sqOeds', '2021-02-27 10:37:07', '2022-12-13 10:53:30'),
  (253746, 66978, 365504, 425373, 403662, N'eRn-vmHOPgrGPnE', N'DuwGdmcNOagzHu', '2023-11-18 15:21:00', '2023-01-13 04:33:55'),
  (469111, 115333, 510718, 881638, 855263, N'JqcfMcjDYQgzMHSJPTn', N'SgBfgxHyBZHBhfKKE -y', '2024-05-14 01:35:51', '2023-09-01 09:23:44'),
  (607275, 771588, 747433, 546640, 211776, N'kAeEcUubvIn', N'mqwPIeLwBuCTjIxp', '2023-09-27 19:03:58', '2022-09-03 09:44:21'),
  (259486, 606604, 688006, 622086, 807890, N'skyzQjgDXS', N'vJceRvI rBBJFMna Xma', '2021-12-04 15:36:11', '2025-01-07 23:30:24'),
  (357536, 214443, 165246, 944715, 865843, N'lEWyBLJZPoqueOxZVTd', N'uiHxtBgpaZ', '2025-04-07 20:41:18', '2024-08-10 20:18:15'),
  (857929, 199695, 987106, 959727, 8026, N'iU-aODW-oJT_kEYEEDVW', N'hWGsiuiS', '2024-09-22 03:34:02', '2024-12-03 07:11:16'),
  (966307, 408878, 208058, 1150, 818134, N'aCfjed', N'T_rjmsRsF', '2022-06-24 12:58:10', '2021-01-28 14:17:09'),
  (365743, 774751, 690642, 506912, 889996, N'EgWN-YTBhRLLOEgyxTN', N'wXzzXDAscMNURyH_pm', '2023-01-31 00:33:30', '2022-11-25 01:05:32'),
  (16859, 18314, 644868, 748055, 384456, N'k -siRyRT', N'mXDNmSli-fLeWqpN', '2020-09-30 20:14:48', '2024-07-15 13:24:14'),
  (22284, 379423, 726957, 298335, 501472, N'AdWhvFYOLhfv', N'VSgcez', '2021-12-03 22:14:23', '2024-03-14 12:56:07'),
  (9347, 32223, 528398, 34285, 141087, N'wJKTnQq_DvMDJ_nou', N'GGTnwFfMlgsKzE', '2025-06-26 21:55:54', '2021-05-31 04:40:58'),
  (857948, 264398, 403077, 254245, 939783, N'Oy_sR-pZjbnfFSi QA', N'xjXHjtzIvq_LkUFQis', '2020-08-28 16:31:27', '2020-12-20 23:20:08'),
  (850232, 36053, 722685, 923355, 770324, N'bIzQdftQV', N'YbufLbJXvrn jFhzP', '2022-05-13 00:18:34', '2021-02-13 17:21:14'),
  (921812, 676295, 729887, 760733, 207773, N'uA_PnyMTW-mZ', N'fddUc', '2021-01-30 09:59:41', '2025-02-10 19:08:41'),
  (860625, 624101, 617239, 246202, 69171, N'HhUaZt_ IclHPovSrev', N'NRdNVodqTo', '2024-05-29 10:00:34', '2024-03-08 15:15:53'),
  (445328, 92821, 254219, 807734, 437764, N'kIPbGYZfiiROBHew_', N'XDSqXD_awToe-f', '2020-12-11 11:01:46', '2023-08-09 09:53:09'),
  (713956, 575124, 992874, 222394, 707101, N'aNBFmMCNGsig', N'VtiQBMoE', '2024-02-09 18:37:24', '2023-08-31 13:17:36'),
  (679099, 30180, 794263, 763860, 108891, N'ZFBESgGFEziQHIZnA', N'BIHQQwbfUPzX', '2022-01-04 05:20:08', '2024-07-19 09:31:56'),
  (969219, 421023, 180248, 620888, 166635, N'BBBCG-SGaK', N'CPzfz uklJP', '2025-03-18 09:05:32', '2020-08-22 16:01:08'),
  (486330, 305591, 608993, 612088, 253585, N'KIgiuvNEEDjBuM-', N'ysbJ-mJxVIbubeTshXCg', '2023-12-07 14:04:47', '2023-06-10 18:58:10'),
  (506301, 578223, 611019, 197627, 599426, N'iLwzwZ', N'IICfPh-', '2023-04-05 15:21:15', '2025-02-08 11:52:28'),
  (449347, 41291, 58807, 915447, 683135, N'XcaTMlqrMTOlHCJ-', N'wODdOoPbXjLmbhgUjvOa', '2021-03-06 19:29:22', '2024-12-13 07:23:54'),
  (410439, 876204, 655952, 37884, 517376, N'kKWbzQPMwjlko', N'AMn hOJbykc', '2020-10-01 22:42:32', '2024-11-16 06:36:27'),
  (669976, 205066, 20776, 986103, 142713, N'YlyPTBiqSZKCx', N'EYVOsbSZuFYS', '2021-06-02 11:15:55', '2022-12-29 10:55:04'),
  (319895, 410023, 991992, 695568, 626589, N'ARXFqdUyIFYnxPtq', N'oqvUeryPBJIQ AwG', '2022-04-29 16:18:26', '2022-11-30 04:24:05'),
  (531289, 207932, 824757, 311085, 588843, N'QwPJBOk_A-Fn', N'z-tHupjbQZDExHEaGM', '2023-02-09 19:51:32', '2022-09-16 17:27:27'),
  (166795, 810696, 926755, 682041, 428358, N'Q-PqtpUBMSv', N'wbWUYt', '2023-05-09 01:29:03', '2021-02-21 15:44:40'),
  (378723, 755742, 33430, 624827, 183363, N'zDkU adDmrlWM', N'KcSDCoVFj_L', '2023-04-25 09:46:14', '2022-12-06 07:31:37'),
  (665779, 826770, 966878, 362136, 699353, N'pJbeA', N'vJwhwcRiS', '2020-09-04 16:26:02', '2023-03-10 07:35:58'),
  (360183, 24285, 689894, 193978, 589643, N'tnvoeiDM', N'XRRRRo oWFN_-', '2023-06-13 17:49:46', '2022-03-27 22:41:25'),
  (82491, 836226, 756601, 760096, 949641, N'hjpQwKbr', N'zwlD qjJB-', '2023-11-15 03:09:53', '2022-03-12 16:25:14'),
  (845283, 700279, 360654, 116402, 725511, N'HxFoHm', N'wsvfqOWBcZM OfLo', '2023-05-24 18:09:52', '2021-06-07 21:24:14'),
  (82201, 499790, 697893, 945687, 968003, N'w-wuWRoSDScWAi', N'lI_gADmpCqyg-i_fQu-E', '2023-10-28 06:14:14', '2024-03-27 08:05:59'),
  (754075, 756982, 799536, 911725, 783458, N'WBqglWBbGq', N'GYPCzkaL', '2021-02-20 12:42:19', '2024-03-29 13:38:23'),
  (598758, 245411, 87909, 632824, 872686, N'pbY_pNMveBVFdtvcTv', N'iRTUACoR', '2021-06-27 03:03:21', '2022-02-09 19:35:38'),
  (998526, 797536, 225773, 294018, 819614, N'XHJHctGw_fQ', N'PjdjxM pztxc_R', '2021-11-13 07:10:37', '2025-05-04 14:35:15'),
  (184240, 823587, 757441, 249086, 112268, N'qiExXxCyDlMN', N'hTvsLbV', '2023-01-23 18:29:07', '2022-11-02 12:14:03'),
  (203511, 938791, 89214, 546662, 892170, N'PtpBNxoYfcR', N'QLEEhRPgub', '2024-02-09 04:20:00', '2021-11-20 12:30:54'),
  (716513, 612942, 120264, 994809, 705846, N'MiyYvZeCn_kGh-BjRNf', N'UGFo N', '2021-12-17 01:29:01', '2021-12-20 12:20:02');
INSERT INTO [article_vendus] ([unites_id], [type_conditionnements_id], [produits_id], [familles_id], [ventes_id], [dateExpiration], [quantite], [prixUnitaire], [created_at], [updated_at]) VALUES
  (102709, 622544, 576660, 258145, 416359, N'YuCnRDB', N'hXbwiKGRCFaCPsw_MVN-', N'xmdqrud', '2020-09-21 17:33:10', '2022-02-23 07:04:35'),
  (6164, 137293, 813815, 677592, 395611, N'JFJNcnVtOwdk', N'GzCWzdpPXdraMXU', N'rARSDRwtOeI', '2021-11-17 18:46:07', '2022-09-05 12:18:28'),
  (827125, 444559, 568018, 529519, 100935, N'ep-JQi', N'ledWugpprydgItkjagp', N'xYplcXJVmR', '2021-04-16 04:03:25', '2023-12-05 02:43:34'),
  (548376, 127464, 758818, 817612, 668127, N'oA-apIKRQRfPSEpVyM', N'DVGLT', N'PFBElccbwifqST', '2021-06-26 09:31:39', '2021-01-24 00:18:17'),
  (496909, 957691, 9265, 478940, 119685, N'prJxYbYPQI-MuglnDa', N'fWhXLWfNqZPtxqxA', N'jNzwvy hMlDBFfpCCURZ', '2021-08-16 23:45:04', '2024-11-24 04:49:25'),
  (524788, 435447, 786520, 148234, 887575, N'pLwzgiVzW-yXCIobxx', N'nDgmI__HEVs ckUinRPT', N'QyettYzylFBnUn', '2020-08-23 04:53:51', '2023-02-28 20:52:57'),
  (997645, 713008, 115816, 75098, 844666, N'AXgRtlOQgxlsGohMzIV', N'nAqEb-qyuyIKyLGEbn', N'JJXoabrIoFRMPozUo', '2021-04-22 06:14:51', '2023-07-26 22:33:40'),
  (604665, 189924, 783098, 998338, 152009, N'QPkEdyvM', N'recqdyVRjLgf', N'kiGkrEhHmbfIhCSLXzP', '2021-02-02 13:32:04', '2024-09-21 07:12:39'),
  (350923, 710039, 469972, 551363, 642591, N'-KEsLNCNMduki', N'FhhrI_AY', N'AwHVgJNIQgaBeFn', '2023-04-21 05:10:00', '2024-02-04 03:41:24'),
  (903423, 255071, 99314, 427751, 209838, N'kMDx-wC', N'VWAgAMtMAn', N'JGefK-nH_STLPLLdzHkS', '2021-01-14 17:07:59', '2021-08-09 05:18:35'),
  (800703, 217246, 674237, 863291, 13598, N'eBFwmYRSkhyoZSmAhZ-p', N'ENHvrLc', N'tSM-dp', '2024-09-08 03:17:19', '2022-01-10 01:18:27'),
  (630590, 374612, 786155, 310225, 389621, N'GovSA pRMLJW-hj', N'_rUnMOjjuXvgCZre-MSV', N'uJeOV--q-F', '2024-03-20 11:33:58', '2022-03-01 06:25:48'),
  (948546, 980480, 111458, 858680, 737375, N'TmzZchSIzo', N'wqg nUXJquogu', N'nXdMpaXZEMzHQVvXN', '2021-01-10 22:11:14', '2025-08-18 18:12:25'),
  (449472, 729561, 693740, 320712, 379965, N'iOrUcJVNMlSgDEOXmvP', N'AzGeenn', N'mBCbESihEQoTsaTltiPk', '2022-02-02 00:37:47', '2022-12-08 14:05:26'),
  (98627, 721783, 646688, 550724, 922285, N'ZZdARplUpBut', N'gIgPY', N'srksWJ_rjQQbkS', '2023-01-05 23:27:03', '2022-09-19 16:06:40'),
  (847785, 877432, 790561, 385725, 7679, N'CAwSfhQVGBQevA', N'aNZKsgtFwmNIN', N'mDcut-O', '2021-10-11 14:55:39', '2023-03-10 21:21:40'),
  (879515, 340565, 97873, 717622, 664208, N'G lyeQ', N'bPmuyuN', N'lVKLlcOlpEyTy', '2024-04-26 04:12:46', '2025-08-06 03:40:32'),
  (696218, 982035, 443995, 629092, 181686, N'KwooIyfKqf', N'O IYWmM', N'-NYoY', '2023-03-27 20:37:27', '2021-09-18 13:45:31'),
  (294066, 685460, 661574, 900373, 156025, N'ayBRlGVmrAmmZt', N'pqnExgVHyBNq', N'GBXZxZ', '2023-02-01 06:14:19', '2022-02-17 12:51:02'),
  (298088, 261190, 762796, 589321, 185174, N'NiJvvbCrnv -bKwkW', N'MrE-OapKBZMBsunu', N'-EzvcqDh', '2025-04-23 15:26:13', '2025-01-31 13:50:56'),
  (211193, 4751, 39464, 799039, 620671, N'riJGDnrsVUNPzQy', N'BCLINLqDbASgDS__Pb', N'Ldf_qNCffbWnZHqYTC', '2021-07-05 10:12:21', '2023-07-02 17:28:07'),
  (411240, 503773, 869552, 375911, 439177, N'UuaPveIUGBbRgyFQsq', N'nsSnxNOBKH', N'bruWbPvYAA_TKYo', '2024-10-03 18:31:21', '2023-07-22 17:10:24'),
  (325968, 47775, 142307, 864891, 746516, N'lYJBeE-SILkvZ', N'htc_ivdR_pIuTFBVlWy', N'GYeOAWWpHPsKpW', '2024-02-06 16:57:14', '2025-05-24 05:08:31'),
  (910345, 54286, 703777, 404082, 205377, N'GwobU-fbXf_WjCJ', N'MvfZNPnaWsPGxjTFD', N'HyWEdnyuAjdmVBnq', '2023-03-23 04:50:17', '2023-01-11 09:48:56'),
  (221549, 659416, 624043, 270706, 422541, N'VVTpogIeRjmoxCRAf', N'T-VdCo-hCtrwDDBlRAiy', N'zCIuScGNJMF', '2024-11-08 06:27:40', '2022-11-21 18:56:09'),
  (821619, 519880, 810952, 900402, 392518, N'RsPps-GTviLw_', N'CVDYq bWYpE', N'DAJEsbqjbEADwftMC', '2023-08-15 06:07:28', '2022-05-03 01:55:36'),
  (312526, 92555, 79725, 332494, 791026, N'XnPXndNLdYcPTcK_rVcY', N'xzwUGjpVsUqvpHZvPQ', N'xpvlmRiABcORQWacqD', '2020-11-18 08:48:22', '2025-06-28 10:07:57'),
  (772657, 82504, 73547, 62842, 771346, N'tLWQx AefMS', N'-uffJgRuGnVCYrzBe', N'UtECBfGPWPAGFQ', '2020-08-20 18:05:57', '2023-01-09 13:27:55'),
  (755549, 483979, 768688, 611897, 431604, N'QP_Y-yJjTNbVxTixz', N'MLxbHPNerTkSoSo', N'UlKTl', '2024-11-09 18:22:33', '2024-03-26 04:51:29'),
  (952389, 299655, 896916, 18192, 330874, N'-ERpNIBljeqdw', N'nfIyyct', N'tCpnJL-fqDUVGvkqDtt', '2021-09-22 21:05:08', '2020-08-28 20:10:49'),
  (197109, 343214, 635131, 275205, 295726, N'bVRkUoYG', N'Po-wfIVRSWAAtFEtgnfn', N'eGRmajwGxmrAXuI', '2021-04-21 13:36:36', '2023-08-10 16:28:38'),
  (220241, 997056, 652216, 981116, 552839, N'OkShFJMuvNZNdZKH', N'TRYekJyvxZH-hy', N'wWNlnIn_gLotIWKfJTW', '2020-12-26 02:42:50', '2021-02-08 23:03:12'),
  (205603, 558755, 68190, 858915, 270744, N'mqiTM ltkgSMxKDV-', N'W_d-LVgleGuj', N'msffsUzfmpfvPwxm_deu', '2022-07-15 19:47:38', '2020-12-19 17:02:38'),
  (199030, 61747, 847740, 322240, 311252, N'CCIfQ', N'dNVAxNJt', N'uDAV-TBpVZtuthY', '2025-05-21 08:06:03', '2022-03-14 11:55:24'),
  (626667, 619722, 103055, 148226, 426362, N'vjdAtRfNUZgbA', N'SVyPySNf', N'dW-_S', '2025-02-11 03:33:57', '2021-10-05 23:11:24'),
  (167812, 696416, 262206, 140507, 838926, N'zIjA Gij', N'OZFwOzk', N'-NKXyjbHmOrFKZTfV', '2020-09-01 15:06:35', '2020-09-24 02:58:45'),
  (362035, 596329, 241587, 145912, 694209, N'FiWiJODdTmkjbcPQ', N'_rJvNFViqZmJDhjNwfs', N'lTZcvRGZPbTjOHz', '2020-10-09 01:52:29', '2023-11-14 12:11:25'),
  (46052, 302028, 579253, 30074, 181931, N'qaAYw_tEqC', N'SMvcTLbqfOGULGvBz', N'ncgyvO-wBZioG', '2025-05-22 21:33:03', '2024-10-27 14:01:22'),
  (556630, 533368, 971764, 535247, 464307, N'wBSNN-penyQdAPii-', N'fgZUm', N'arE-LrQWCfWKNanGb', '2022-05-26 16:07:13', '2023-06-09 13:51:15'),
  (127144, 796843, 756056, 765751, 268804, N'UpJkTKsteLTWhqD', N'xotCiJ', N'LwfVAEnOd Kv', '2022-07-08 09:15:31', '2021-09-16 07:55:26');
INSERT INTO [banques] ([banque_id], [nom], [sigle], [code], [adresse], [created_at], [updated_at]) VALUES
  (689448, N'FaZJqGWHz OHVXA-Z', N'ySQjLkxXQQIQlkH', N'TIaWWhHnjp', N'ncBGGvBIUtR-BFAO', '2024-11-06 03:05:40', '2024-11-28 09:56:06'),
  (19370, N'ruZJoErUrKu-KEvjf', N'wOmfEuwRYTvM', N'GSNFrITDrf', N'TOsHyRk', '2024-04-13 00:03:54', '2024-05-30 06:58:59'),
  (338932, N'-VPhYNNF', N'qvorNAwYueXwXPBthN', N'CHMBpUaZdKnwVG ld', N'zYm-cfWV', '2023-06-03 09:28:19', '2025-07-13 22:00:51'),
  (498494, N'lrjiHrWIY', N'tXQMkEyAJdK', N'BPSdfZOGcraYn', N'tJae-_voCVp', '2023-10-28 19:22:19', '2025-02-12 20:22:24'),
  (418521, N'VFgwuqrAbwpLjzcNB', N'_rV zOSiFidOvVnzS_Yt', N'gMSjTH', N'ACVORjZGxVckfwuU', '2022-06-27 08:12:00', '2025-05-17 08:44:08'),
  (257845, N'RFDvu', N'fkylAqnMx', N'EPGrsVzaCJNX-b-E-', N'fQYKSKgMGeDExxe', '2021-12-09 11:18:57', '2025-07-04 12:47:01'),
  (710501, N'tgYtMXkvnRgBr', N'HWRWpHXPvQ', N'rCCBwyXuLcEbxutUNqPY', N'O-toXBIEQFg', '2023-07-01 08:54:14', '2024-02-17 00:45:33'),
  (839599, N'jUa-LrXN_d', N'zSpthwnxLDDhdQdhhvPq', N'D_oXsNqpQe QqSIEilw', N'DGvzqgovrPUOFtgz', '2025-03-06 13:06:50', '2023-06-08 02:39:42');
INSERT INTO [banque_sangs] ([groupe_sanguin], [sacs_restant], [created_at], [updated_at]) VALUES
  (N'DnNQujpjIxxwJb-X', 691, '2025-08-03 00:08:25', '2023-07-25 08:54:30'),
  (N'VMt-FxGgPAzcjYHXqOOh', 796, '2022-04-13 11:49:37', '2024-02-17 02:03:23'),
  (N'pnVVPYOtCa', 308, '2020-10-16 05:55:09', '2024-08-04 07:35:21'),
  (N'qzZLCOTg', 261, '2024-10-29 08:00:31', '2024-10-18 06:32:11'),
  (N'shJwTuKvcHTn', 512, '2023-01-18 01:33:03', '2023-10-23 00:20:02'),
  (N'chDbmM ygbeDwNRbQ', 867, '2020-12-20 17:04:13', '2021-07-12 08:34:15'),
  (N'VcyDKYPrKcFIBSMlHuu', 697, '2021-06-20 15:06:27', '2024-01-08 16:51:14'),
  (N'hVZxLZXpQ', 563, '2025-08-13 06:30:57', '2024-03-30 13:48:17');
INSERT INTO [barcodes] ([name], [description], [width], [height], [paper_width], [paper_height], [top_margin], [left_margin], [row_distance], [col_distance], [stickers_in_one_row], [is_default], [is_continuous], [stickers_in_one_sheet], [business_id], [created_at], [updated_at]) VALUES
  (N'zRpwmYBFpxRYwTHMAcF', N'DiiIIn', 2700.91, 853.75, 2136.31, 8008.45, 8202.73, 7532.82, 6120.92, 744.11, 195, 0, 1, 933, 878, '2023-04-10 08:30:55', '2022-01-15 02:34:23'),
  (N'OtNoBz_RouETXUKACX e', N'HbmTX_QaQdDRU', 2283.27, 3642.05, 6288.9, 8434.81, 5607.2, 1533.68, 8243.62, 5136.66, 998, 1, 0, 972, 686, '2024-03-02 04:16:49', '2022-08-27 18:51:05'),
  (N'ZLqTXZejGWHyBLgfZiRi', N'YZkeqOQkukZ', 3776.11, 9232.73, 5855.81, 7897.18, 5465.54, 8060.29, 1467.47, 3331.47, 634, 1, 1, 777, 777, '2023-05-07 00:42:50', '2024-06-23 08:16:46'),
  (N'OOryxSnlxR ur', N'ehHgZXSIQ_WSvf', 2138.29, 9213.66, 1875.8, 9663.71, 6871.49, 1443.84, 2060.78, 8255.29, 659, 0, 0, 456, 858, '2024-04-13 22:13:13', '2024-12-31 09:00:55'),
  (N'XgIXrFfqyQikbe', N'QHpmpurdghlCk', 5417.03, 9114.18, 114.18, 16.19, 4816.83, 7777.11, 9201.34, 4687.13, 495, 0, 0, 432, 678, '2024-09-29 17:17:01', '2024-05-04 14:09:48'),
  (N'IpXDyjVM', N'aEAPES-eOAlgFjcs', 5456.0, 8455.55, 3947.52, 493.26, 2998.04, 5010.04, 8139.22, 2223.7, 232, 0, 1, 866, 305, '2023-06-07 04:50:56', '2024-01-17 04:57:19'),
  (N'NBDtgLNfzcuTR', N'MRbyYqYZKcKU', 7096.55, 4865.43, 154.66, 2983.68, 3362.93, 6620.04, 1144.93, 9613.28, 462, 0, 0, 566, 71, '2023-10-25 19:28:18', '2025-05-22 05:50:09'),
  (N'mzIjLzDa', N'rlhvpeMpOzUiXvkzYai', 1742.32, 4234.44, 7349.71, 7567.31, 5504.03, 5100.44, 3668.38, 2763.44, 11, 0, 0, 204, 792, '2023-10-08 01:57:58', '2025-04-10 13:24:07');
INSERT INTO [beneficiaires] ([fournisseur_id], [personnel_id], [tierce_id], [nom], [type], [created_by], [updated_by], [created_at], [updated_at]) VALUES
  (242002, 792730, 527943, N'mR-NOfaAxCpZu_', N'EtvqyKn', N'hbkVftdZWfjIpmfK', N'xGOLTEKLaovZWMD', '2021-06-27 03:39:19', '2024-10-29 14:06:49'),
  (974072, 516890, 85403, N'SbmcwAGCdKteiqSyavfz', N'IZoWOOJLunpCy', N'hWJDW-zDDQB_d', N'yrotu', '2025-08-18 16:38:34', '2024-07-04 08:21:29'),
  (709176, 665870, 700760, N'-fOWEWpcoolq', N'V-UUCvWFqvhXatIrI_', N'LtSCUZ', N'-hIfwyb_v_s', '2022-01-06 11:59:08', '2024-10-01 05:05:44'),
  (53965, 477117, 623223, N'LTtZEA-hggdEKEz', N'CxsRVwAvDjGKYD', N'kyRKnsGvr', N'WnLaM', '2024-12-14 05:23:01', '2022-10-30 14:10:01'),
  (718570, 398696, 554094, N'VAa-ByULUMlPTAen', N'AYJEcNXCC', N'CMxDcWPnKK AjyoFDLl', N'eQYfdCWpwhiJMAllQYc', '2024-02-05 15:48:20', '2025-03-24 04:02:43'),
  (944774, 684886, 960797, N'smkomRXpdY', N'nNLoqrybY', N'Tb-_yKqToRazNwPi', N'vCIzuXiMtfi', '2024-12-09 04:24:53', '2023-07-24 04:52:45'),
  (254217, 505827, 750154, N'cYyqqH', N'sIEXvpghLOWWZHY', N'qkxwt', N'HZaupCAWt', '2021-10-04 17:10:24', '2023-09-29 02:11:48'),
  (349199, 839610, 31315, N'JBJHOCIzbRlcoULikhpe', N'cfNTuJzAnLXKQiIZEKHX', N'kHFm ZSeqZkZtKxZAlK', N'EQKztthB', '2020-09-15 11:39:11', '2022-08-18 23:50:47');
INSERT INTO [besoins] ([code], [référence], [emetteur], [motif], [commentaire], [coutTotal], [created_at], [updated_at]) VALUES
  (N'WlIJGaEabuf', N'lHFtvR', N'jbjRkUT', N'fUFxt', N'rezrHFNiQSedrzAi', N'uPVbXgwkzRRKCqrk do', '2024-01-09 20:46:54', '2021-02-08 16:42:56'),
  (N'IXvsVIZmmaKxGFjpSJnz', N'BdYfq', N'CMjoizFerVQIvGT', N'NODagxcU', N'KBFM_EQi', N'NiweK', '2021-09-30 15:01:01', '2021-01-11 04:03:24'),
  (N'_JjJUUwi', N'oTjKC-a-rKP_', N'WELvGkLgvIO', N'uZheB-nZMPCfsMkb', N'v-DtS_hYtltJZD pLAk', N'iwMfHIpSeltPKYEUC', '2022-08-22 15:48:27', '2024-04-30 17:09:19'),
  (N'EkWqtmOtmOvtNDHFkMy', N'EhvzWT_toHRPc-kN', N'WZorIP', N'PsisE', N'dObUdKsaMeASwEoEAi', N'kzySXS-iixqMjc', '2022-07-07 15:26:40', '2024-02-23 10:40:27'),
  (N'dMWfTr-OdgRv', N'DpgThWDl', N'zteqFvAKYa', N'OeHri', N'nvNHVrCZtkkK', N'-YWPWuNARASE', '2024-09-09 12:26:46', '2021-05-03 15:18:33'),
  (N'pMbYkkBXkVtDUXpz', N'acUmjMKbKcTOdBt', N'Ae-PttjCGFp-VTuuqQd', N'lPphzNFMjUTVdV', N'CxZrKoNmtoRKzLbru_', N'VXQLlYSwlGE', '2025-05-20 00:20:52', '2022-07-12 15:22:10'),
  (N'Dmp Z GgopbEorv', N'O-RndloBtg_l', N'sWEqbOKIx', N'T Dkdpowcue', N'dip iug bFTfxwuI_', N'dZLrOSdrjjP RRtvztef', '2021-12-19 01:55:28', '2023-10-18 06:25:49'),
  (N'_fiuoGZ cFXHeLf_', N'UwbwTVoUStN', N'WeNTEhvSF_Wuw', N'hzBZolGOPirApb-YBhVA', N'__eQQIQxT', N'puiaXaDBeucsjduMJQ', '2023-12-01 00:03:17', '2024-11-24 01:01:19');
INSERT INTO [bon_cmd_adms] ([beneficiaire_id], [imputation_id], [numBCA], [objet], [duree], [montantHT], [tauxTVA], [tauxIR], [fraisGestion], [dta], [reduction], [etat], [desactiver], [created_by], [updated_by], [created_at], [updated_at]) VALUES
  (847958, 375914, N'MCDetmRnSBbGcVWLcg', N'fsWWAU', N'_dUnMjF-', N'IMncrZzQ', N'ypJHhAGE', N'fH RwAMcwOcQLyvz', N'yElHcaEjTF', N'aUOJhRQsC', N'OmDnwAsbD', N'UUTXbIodXzMC', 1, N'PqwsMJnA', N'fqyEqKcByHGUACxeJvW', '2024-10-25 08:49:09', '2021-06-30 06:57:58'),
  (88082, 445631, N'wBcwQMYx zntpW', N'GdOPCnL', N'bUciwH-wB', N'WYnpXETEEYpbRmg', N'FSJEgLYk-AgxsJERj', N'_gjqQ', N'ix svu', N'QdvsL', N'GVUcQK', N'K_FzODpHGEi', 1, N'gznamZYXspHoXQdbb', N'soukNtN', '2022-07-23 19:18:23', '2020-10-14 17:55:19'),
  (515605, 725240, N'gCKKPAurAWyjG', N'SmwgHMZykjvjCXuOzdak', N'pcioscxyV', N'C__glxfQxHKVc qgH_O', N'XGaveAzBcT', N'_lnLiFHJ', N'XrFONcLJyZmAfu', N'EzNu-JZZ_', N'ttjajkZqSJjqII', N'mUepDpDetxcoe--hI', 0, N'yRyOLZhqY', N'MWpQKAay', '2021-05-12 11:48:22', '2020-11-04 17:01:34'),
  (276504, 476264, N'GK-Vh-g', N'Uu_yQRMjt', N'AJJQXnsecoqfrfmWeHgh', N'tavfSTok', N'OhCLQattCcGxAaK', N'YdZyDgsQ GDHn', N'bmgqZZw', N'ruEiWjDuQEMrYdDUr', N'on_Cq', N'NOLNHCaMopMgT', 0, N'VNsfl Oztea-ybokB', N'woeSPJcwFzpfR-cfbIM', '2024-02-03 02:38:38', '2023-06-18 22:45:58'),
  (309669, 426775, N'kuozcysb', N'rCsHzD', N'JyXOOL HLrGqHe', N'aPpzZgbdDZDaWeCFWoP', N'uKtMmZm cCHgheCgKTWB', N'crNbkf', N'ssfZwv_LBCroo', N'QQHtQKUASvxk', N'KgEXRb nUoxp', N'WdtNS', 0, N'OzwnUyThVNEP-DpgD', N'KtWBSjrGFTU', '2021-12-06 13:12:23', '2022-04-21 18:07:33'),
  (831290, 782499, N'_Hy_vQp-NjEQZyJD', N'qSfprKm', N'WEMyCcBa', N'xJPgEo uDMihThyi', N'bzSZLJNmxWqztzn', N'agsQOPuxFa_oMTpqQiE', N'UIzzVLjx', N'iM-_PdvbNlydadQ', N'YY hQXV', N'f uBeA', 0, N'mJqYqXVNOGfif_oadRV', N'PWmH_tQy-', '2025-07-05 16:40:43', '2021-01-26 17:54:47'),
  (801282, 713451, N'EimRnedqQqHhFRDOp', N'_xuUAeMiieXHJiibAn', N'HUz shE', N'eOOOTo-bjmAqWhSOB', N'BGmuONLeA_DB', N'a-pjoYKQeTKUo', N'viYIjOZzZD', N'lyMpDLqM', N'_klulNAWqqtRHrW', N'ZVOBXTUIBGhh', 0, N'YoocBqbMTHbuJF', N'f-vuSwMRQYSdXOySkXEH', '2024-09-16 11:41:21', '2021-01-29 12:45:42'),
  (180073, 967096, N'KgSjbTUrypDkhAlU', N'zUbnjmuGteIYalNuw', N'DXoUDYKmM-wF_LuWweKP', N'qUCrRfeeE', N'zDanTHBjwzP', N'BggkxJsU_knnbYaIcxz', N'cVGSjKkOqOJi', N'o-kZhcERTHHmfkOCoTB', N'WsIwjlaEiaeNC_bJ', N'iIEq-ReBRTkFNS', 1, N'OzuekNUUuwv', N'RTbbxfc', '2025-01-01 05:38:05', '2021-08-12 07:29:15');
INSERT INTO [bon_prise_en_charges] ([code], [fournisseur_id], [type_compte_id], [patient_id], [created_at], [updated_at]) VALUES
  (N'SIXqTiiBlnSdan', 438663, 11257, 473744, '2021-10-12 21:08:41', '2021-09-25 08:42:41'),
  (N'ucjVPHoaTmQr', 715971, 149261, 919765, '2022-12-21 21:37:04', '2022-04-26 03:39:20'),
  (N'vZnKhBXKj_JbMhATzoh', 442528, 881050, 943564, '2024-04-05 22:48:42', '2023-12-01 07:06:49'),
  (N'URtapn_aqxrqebygBzqL', 486862, 4493, 32116, '2025-04-14 18:44:47', '2023-01-30 11:18:09'),
  (N'YVvJbgvUPgFAtj', 608287, 991294, 432930, '2022-01-30 14:29:53', '2025-01-08 20:49:27'),
  (N'Lisgh', 376088, 6367, 333292, '2020-10-15 23:37:16', '2024-02-09 00:14:47'),
  (N'gUUXmhv-kTvxkSpSki', 692752, 831713, 579522, '2021-01-16 16:20:16', '2023-05-25 08:56:53'),
  (N'DPCOtpwrVdS', 892164, 747749, 320930, '2024-11-11 12:27:40', '2024-01-29 14:11:20');
INSERT INTO [bon_sortie_consomptibles] ([exercice_budgetaire_id], [service_id], [unite_id], [type_conditionnement_id], [produit_id], [famille_id], [ordre_entree_id], [quantiteDemance], [quantiteservie], [dateComptable], [created_at], [updated_at]) VALUES
  (182827, 984005, 356372, 782398, 912645, 709218, 208119, N'cXgfhvXk uuGRB-l', N'CTIJIlzcofCrILbpbqw', N'TWLEh', '2025-04-05 09:02:33', '2024-04-23 00:28:09'),
  (70682, 838099, 932024, 890814, 884364, 324533, 866981, N'lMoxSvSXs', N'MlcuVYwKACuCFMM_', N'gRmYCLZ', '2025-04-19 22:15:41', '2022-07-15 22:58:29'),
  (19212, 743065, 320288, 795446, 347455, 490457, 431675, N'CquXRgfya', N'HKDcZWgwQklhXnmy', N'daGmrDBRVeiQGOKHL', '2022-07-27 16:57:06', '2020-09-11 10:00:33'),
  (720224, 965405, 519929, 294402, 409381, 946344, 110969, N'VpU-KMWO', N'K_MiDgOvSzdY__onHRFV', N'-jGxUPJNGzGPgIXX', '2022-10-31 18:37:02', '2022-08-20 05:28:12'),
  (603331, 490117, 415159, 730519, 254503, 53635, 746339, N'PaEpF', N'NLN_YUP tYruDR', N'Ztrh_cCzL-kVB', '2021-10-15 08:35:57', '2023-12-01 14:09:11'),
  (671351, 808647, 971246, 360039, 298645, 685971, 243542, N'XC-wKgSzbZUqpv', N'NHvOOTKVdDZ', N'xG_uCGWoRFvAQZJeyE', '2025-02-10 13:29:54', '2023-04-08 22:24:22'),
  (863829, 228675, 321476, 710086, 40835, 512550, 881862, N'dCPQgZR-DDy', N'ROmuQbPO', N'FGIny', '2025-08-08 14:00:01', '2021-12-20 11:41:06'),
  (155832, 200014, 206959, 750253, 746167, 525389, 337167, N'apmALLMviJvRXc', N'ofWi RZzum', N'DpuSQTvZhs', '2024-06-20 04:37:24', '2021-12-17 20:31:33');
INSERT INTO [brands] ([name], [description], [created_by], [updated_by], [deleted_at], [created_at], [updated_at], [business_id]) VALUES
  (N'MSdmiiprEFesB', N'cLpTwuxwSCcjccA', 119062, 493108, '2022-10-10 21:04:27', '2021-04-06 08:50:38', '2022-04-17 01:11:35', 429),
  (N'qYxKrZEZzhXkgJ', N'QMfOjERUWYa-', 438804, 340712, '2020-11-20 17:31:06', '2024-05-11 03:24:41', '2024-01-31 13:06:36', 106),
  (N'kjIPpPTOb', N'yssAJSwpQaqxxuZv', 608838, 349142, '2021-01-26 04:34:30', '2021-09-16 06:02:03', '2024-02-08 20:06:30', 218),
  (N'BaFFFXIMZRtYnoP', N'FA_mKUMdq', 711327, 863482, '2024-02-18 16:28:50', '2020-12-08 10:41:05', '2020-11-19 09:18:32', 533),
  (N'SV pzKyUQ', N'BKblRljdK', 465697, 392718, '2023-07-04 02:00:20', '2020-11-01 03:45:37', '2024-01-16 14:26:39', 107),
  (N'XMcBPDbUevRglcdnL_n', N'tNcDBMEkhylUe', 578010, 680582, '2022-04-14 04:16:52', '2022-08-28 23:38:31', '2022-08-08 21:58:05', 603),
  (N'VMkKyYP', N'ha_vobEfk', 181757, 964317, '2024-03-10 22:44:18', '2020-12-29 10:36:11', '2021-02-09 11:26:29', 920),
  (N'jGoPDCVrl', N'XdusNJuFVIICYkJjdzm', 158048, 166493, '2025-01-17 15:45:11', '2020-11-08 16:49:46', '2021-04-23 11:30:11', 172);
INSERT INTO [budgets] ([sous_programme_id], [activite_id], [tache_id], [exercice_budgetaire_id], [destinataire_id], [source_financement_id], [nature_eco_id], [ae], [cp], [ae1], [ae2], [cp1], [cp2], [desactiver], [created_by], [updated_by], [created_at], [updated_at]) VALUES
  (441858, 604947, 580289, 55592, 945330, 305279, 271253, N'TAxGLuiVrFAa_KA S', N'PB-qC', N'SOq vlxDn', N'JDSqEFJIqaCaZSSMrAu', N'DDXdBfjNGGMDjItjzHdY', N'GYjzRUeTP', 1, N'hCbavmFePHBcv', N'UTzIGaYmeS-PzytEK', '2023-10-06 22:00:14', '2021-03-07 17:34:22'),
  (151357, 488859, 610936, 549136, 200182, 941168, 129196, N'WWqiJRxpxR', N'f-zYbfKMfNJRq', N'HCaSh', N'aSGXURzFgxkcEDPgUdE', N'dsooBJLxUCMyCS', N'PsAfQduef', 0, N'dREd', N'FJVxbUla', '2023-10-21 00:39:51', '2021-01-16 21:38:05'),
  (155816, 364921, 697433, 303102, 592809, 496559, 171414, N'TRNlcfaRlNEx', N'rPDRSPQvOoMBuMVCVtq-', N'wjyQRRNWVq', N'dsfzshwXUn', N'scYYR_xfmpDXNXoCYBY', N'VKXYRMCyIhVRyXa-H', 1, N'FXfZYDtMQcZxHtN', N'HGfrrLNcGdn ZvGzk', '2023-01-17 13:38:42', '2021-01-07 18:58:23'),
  (706573, 372753, 465787, 267903, 278432, 346766, 28112, N'nlqxWpujCVLgghfSdS', N'ZSeIqARBGNJQUuMo', N'epw KAhGQn', N'QDUSm', N'S_IaWcjjQ_Aqj', N'NFQiav_vsI k KHE', 0, N'e_WZsERqM', N'CtyaslLpDgEUJ', '2022-10-12 17:19:48', '2024-09-02 14:25:08'),
  (832991, 922306, 188993, 84520, 274990, 450658, 82337, N'lFvIdZrwZjN-lBC-BNG', N'LIHDEvsrvGqCWseprah', N'ULSnAaSvM', N'lSDvQeSLnqypHMbhj-', N'-HsYsEMpBUYQw', N'hexAJZziTiSpdZDbQA', 1, N'HbuogyciTiCOt', N'pdn-CRlZPTWF', '2021-03-17 23:46:11', '2025-03-15 15:28:35'),
  (433960, 666622, 680212, 169819, 298078, 312740, 478747, N'AmeZZgiOenISaFI_', N'JFIWZdzAeu', N'wNGvGzyowBuT-s', N'HbkO_JR', N'viekQHTIyB', N'u-NryL', 1, N'IGkS-IsCcv', N'cpfQo-Rk', '2025-03-26 12:19:50', '2025-05-12 09:48:16'),
  (909166, 948586, 482630, 95600, 831175, 769222, 791293, N'nVkbnByHBs', N'YCVEIyiBI', N'lEjHDVybUpjaGEC', N'-rCfVaAlQIo', N'rOOw WWOTxEp', N'BlmPi_Z_-CFPTXc', 0, N'vnvHwTLEndiXD', N'VOQ ikJw ZCb', '2023-04-17 10:53:47', '2022-01-09 15:58:22'),
  (826970, 266940, 43788, 800381, 762127, 159796, 347150, N'vsAHMUYSRoLYCDP', N'sggAEJ', N'xYLAOYs', N'PDoHz-YvyMatrGQqV', N'FVonlTlN_eSksIMvwI', N'SCbaQ_BkpRNquL-LR-r', 0, N'rcFAbOJMundfiTdopK', N'ShpUG', '2024-11-17 06:46:59', '2021-05-30 15:50:13');
INSERT INTO [bulletin_examens] ([patient_id], [consultation_id], [personnel_id], [code_bulletin], [statut], [observations], [updated_by], [created_by], [created_at], [updated_at]) VALUES
  (909268, 796087, 394182, N'IopwBJNdu', N'cIRbhx', N'nDr-ZmuzDbi', 652, 672, '2024-06-18 05:00:40', '2024-10-24 01:24:22'),
  (173750, 536341, 804202, N'euyxMBQNxDSLQswFvKv', N'xbvuPpSOyiKTOfCh', N'Gx-seJoNwkSuiV', 874, 679, '2023-10-04 17:08:08', '2021-11-09 03:13:04'),
  (848304, 978352, 64701, N'QXHPGkXWezPugeNOTlf', N'-xFsTsujdZncYZ', N'EOyWNqDmb', 526, 749, '2025-04-15 19:19:51', '2021-11-03 04:22:42'),
  (314768, 997271, 59437, N'UxR_plUfYk', N'saVSlLmXBosP-Y', N'KqflZ', 734, 91, '2025-04-30 13:40:23', '2020-12-19 01:39:54'),
  (379268, 753329, 870794, N'wEKuLKdTbs', N'MqfiZPpjutAafJMfYhnZ', N'VUoqZGTxEemnMX', 703, 639, '2024-04-25 00:06:35', '2022-02-18 01:43:57'),
  (935848, 484108, 448287, N'flFps ihXhjbXkNfST', N'GfocfsL_tJc', N'NHMdJIPHTe', 593, 389, '2024-02-22 03:08:52', '2023-03-16 21:46:03'),
  (848896, 377974, 165448, N'h KgRKLcGje', N'muzJU SngCj', N'WBOzFdtTSeEf', 12, 879, '2022-06-27 19:10:02', '2025-04-18 16:43:17'),
  (945725, 590543, 96723, N'GYWEscu', N'hpUnY', N'bWprZqLxBb', 982, 505, '2021-04-15 14:19:22', '2022-10-25 05:57:52');
INSERT INTO [bulletin_examen_examen] ([bulletin_examen_id], [examen_id], [created_at], [updated_at]) VALUES
  (937811, 544462, '2024-09-03 13:30:04', '2023-12-17 20:48:50'),
  (361699, 60851, '2024-11-08 08:57:45', '2024-06-30 10:03:53'),
  (363597, 787617, '2021-12-10 11:07:45', '2023-09-07 03:56:48'),
  (741854, 901423, '2024-07-17 08:19:23', '2021-12-05 21:20:55'),
  (237077, 78897, '2023-11-05 20:58:15', '2022-05-31 19:22:56'),
  (123388, 413532, '2020-11-09 15:36:00', '2022-04-21 00:59:06'),
  (694301, 521628, '2024-12-02 21:48:26', '2021-04-16 06:26:26'),
  (97331, 684011, '2021-02-07 01:03:16', '2023-04-27 15:49:40');
INSERT INTO [bulletin_prescrits] ([bulletin_examen_id], [examen_id], [code_bulletin_prescrit], [created_at], [updated_at]) VALUES
  (807974, 931988, N'_bmW_KNyXndBzDbawMM', '2023-01-10 09:41:35', '2024-01-23 09:11:27'),
  (958396, 626206, N'zRMpTiXpnSDdbFgVR', '2023-05-06 09:58:41', '2025-01-31 04:59:43'),
  (858566, 9335, N'LFerP', '2021-01-18 10:14:27', '2025-05-24 15:58:58'),
  (441300, 207514, N'lntn_bZWzvIX', '2024-10-23 19:17:17', '2023-02-17 08:40:20'),
  (299174, 924514, N'NPkpDvMUa-K', '2024-10-29 21:59:14', '2022-03-23 00:23:18'),
  (149046, 550082, N'I-SjRxJvVrwuhnN', '2021-08-10 18:32:40', '2025-07-15 11:22:47'),
  (441273, 819696, N'ntHkX', '2022-08-21 07:59:35', '2024-04-12 10:52:53'),
  (519684, 569022, N'JTFmzK-Omjp', '2025-02-28 02:09:20', '2020-10-12 08:47:34');
INSERT INTO [bulletin_servies] ([ordonnance_id], [examen_id], [code_bulletin], [updated_by], [created_by], [created_at], [updated_at], [bulletin_examen_id], [patient_id]) VALUES
  (34123, 270635, N'AqCxHtAAZrHB', 756, 492, '2022-11-24 05:18:32', '2021-06-21 20:47:40', 411981, 242104),
  (514950, 803969, N'iczogDv', 354, 912, '2022-01-26 13:36:17', '2025-07-12 07:15:21', 463749, 504141),
  (419049, 39130, N'qwGtaGgh', 768, 795, '2022-12-05 10:10:38', '2022-10-15 19:14:58', 838078, 83332),
  (387839, 460758, N'IhTtTnSyee', 425, 552, '2023-11-17 22:38:45', '2021-08-22 23:56:25', 106932, 321825),
  (405496, 961999, N'myefH', 623, 171, '2024-01-14 07:05:01', '2020-10-28 08:09:23', 820715, 349016),
  (358294, 356291, N'ywqlVzGpyGWq_', 966, 798, '2022-08-09 17:35:28', '2024-11-20 11:47:46', 474038, 93853),
  (279884, 846154, N'msZRr', 648, 703, '2023-04-25 11:54:16', '2023-01-10 00:19:32', 354380, 888773),
  (594126, 371377, N'YBbaoa_ffMAPijFXjo', 992, 536, '2023-11-03 00:35:24', '2025-08-18 10:52:30', 494484, 951161);
INSERT INTO [bulletin_servie_examen] ([bulletin_servie_id], [examen_id], [created_at], [updated_at]) VALUES
  (280029, 720361, '2021-09-15 03:04:23', '2021-06-24 02:27:43'),
  (683287, 898882, '2024-06-03 04:46:58', '2022-05-27 17:50:10'),
  (409552, 836599, '2025-02-23 09:24:14', '2022-08-10 14:27:56'),
  (561072, 385510, '2021-02-08 13:10:59', '2025-07-30 10:53:47'),
  (340624, 878426, '2024-06-21 17:14:45', '2020-10-26 07:00:09'),
  (828369, 613918, '2022-04-14 07:21:39', '2022-11-02 03:03:35'),
  (30804, 818826, '2025-07-07 15:21:27', '2021-05-11 18:12:11'),
  (426129, 716145, '2023-09-15 06:13:04', '2020-12-01 13:11:58');
INSERT INTO [business] ([name], [currency_id], [start_date], [tax_number_1], [tax_label_1], [tax_number_2], [tax_label_2], [code_label_1], [code_1], [code_label_2], [code_2], [default_sales_tax], [default_profit_percent], [owner_id], [time_zone], [fy_start_month], [accounting_method], [default_sales_discount], [sell_price_tax], [logo], [sku_prefix], [enable_product_expiry], [expiry_type], [on_product_expiry], [stop_selling_before], [enable_tooltip], [purchase_in_diff_currency], [purchase_currency_id], [p_exchange_rate], [transaction_edit_days], [stock_expiry_alert_days], [keyboard_shortcuts], [pos_settings], [weighing_scale_setting], [enable_brand], [enable_category], [enable_sub_category], [enable_price_tax], [enable_purchase_status], [enable_lot_number], [default_unit], [enable_sub_units], [enable_racks], [enable_row], [enable_position], [enable_editing_product_from_purchase], [sales_cmsn_agnt], [item_addition_method], [enable_inline_tax], [currency_symbol_placement], [enabled_modules], [enabled_client_modules], [date_format], [time_format], [currency_precision], [quantity_precision], [ref_no_prefixes], [theme_color], [created_by], [enable_rp], [rp_name], [amount_for_unit_rp], [min_order_total_for_rp], [max_rp_per_order], [redeem_amount_per_unit_rp], [min_order_total_for_redeem], [min_redeem_point], [max_redeem_point], [rp_expiry_period], [rp_expiry_type], [invoice_mode], [email_settings], [sms_settings], [custom_labels], [common_settings], [is_active], [created_at], [updated_at], [validity_period_session_ticket_consultation], [validity_period_session_ticket_chirugie], [validity_period_session_ticket_laboratoire], [validity_period_session_ticket_hospitalisation]) VALUES
  (N'emAZSYq_', 934900, '2024-11-10', N'pr HO', N'JrmVE D', N'aSAlZF', N'vTQKvThtZ', N'MwqsNVyBKv', N'i-fVWSE-SSw_Bi', N'vkGaahAVTePCnrtDLQYs', N'LlouRh ATnJo kB', 286, 9094.47, 539374, N'TfRR_cdfCaDJgiRTNsOP', 346, N'zeVVpc_rXKtJsfS_slO', 7056139401422957.0, N'uTwXjY ImOnE', N'RIZETwzQFK', N'QndiAuyr', 1, N'g fvHJiUUe-HDcRHYMre', N'FUKhh', 427, 0, 0, 308, 9330246999958808.0, 264, 261, N'TPfgL_GpdWKDxZtlU', N'FnU XQHI_PWvTl', N'FUQEsJR-UFDa', 0, 1, 0, 0, 1, 0, 177, 1, 0, 0, 0, 0, N'WkzEKLdNAQ', 1, 1, N'jIBxU', N'Jn-KPxDeAtz', N'gXTa-amRV', N'a-WVL-bCcZpFHXdHOGWU', N'TTWBWZLokcFZ-YWTcK', 988, 911, N'rGrMjRSSBFUt', N'ARlNAwd_EZsRrZvzuCi', 438, 1, N'xRrfXMGkGgCLrFEKw', 34923990004102.07, 9194375262146094.0, 42, 1938309841404205.5, 3338443172329230.5, 136, 773, 153, N'lBlzNo', N'ni_VyQ', N'wkxCopaNTWcDW', N'XWcUyovfBGvjP', N'rDzVExhiv', N'EWOKLbdUZw-', 0, '2024-01-13 14:04:07', '2024-02-09 18:49:44', 615, 954, 214, 199),
  (N'FBonqijIw', 731017, '2022-11-17', N'XXHoDiY-_', N'FRllvW', N'gcoZoTE XUS', N'daISLtjPnq', N'nVCarm', N'oWmRhOOIZGn', N'xzOXfixPFJOar', N'oCgLHZTPOxWRRhEAKQy', 554, 165.63, 684247, N'sx_TwttU-SjgxFQSI', 811, N'DNQkBsbunTjO', 8239077214174136.0, N'PMBHHxNnqUi', N'OZKcoMDNMDR', N'RnfSxbpkgMG', 1, N'wZxXfRRUbivazBBVPH', N'OQXczPDotFAEft-KK', 695, 1, 0, 146, 5595138936011125.0, 367, 742, N'UaoHvlt', N'_EykjguwK', N'pRCsnKRAoMMqNvMsa', 0, 1, 1, 1, 1, 1, 446, 1, 0, 0, 1, 0, N'ncdjV_fbQjVZDnyQyoRV', 0, 1, N'QYDnUT lkUnsGCrKn', N'BQzaZgL', N'cMatJHBz', N'VCn_V', N'AttWCXXJK', 644, 708, N'QEGwNxOrfEB', N'Y NQbM', 203, 1, N'AsXTQQxO', 9495870587172146.0, 1074423269516152.6, 293, 3500694986524220.0, 4908424080506686.0, 253, 733, 279, N'BK-tqFYnSoICXJdVXY', N'iGKbQvyBwfJmCIZ', N'VCCfLHWIGpCrp', N'wcM zGuNnGczk', N'djpcGKPL-RyrzZM', N'qotXowqHzM', 1, '2022-02-20 21:06:02', '2021-08-03 20:15:43', 192, 840, 105, 703),
  (N'yc pGCeaHIcnvtAN', 304861, '2022-10-10', N'atLZdnEzqCrDBVLhQV', N'Bfllh', N'cWpUK RzSuwJYAT', N'TSeOKOccY', N'huHMonnxi_IATT', N'ag oGuuVaXbkLvY_E', N'YHagbel_sZw', N'gIfxJdyVPZfMsMKXLhm', 936, 4011.72, 822514, N'cwvhKgQ VZLo-KAI', 449, N'GBYQFeE', 77868218441898.84, N'PtNjM', N'TkW-_JTY_xb', N'SgMBfjLon ieWmrKwkic', 1, N'Qd nER', N'EFxHJwy', 159, 1, 1, 554, 69050519813586.01, 410, 109, N'SlAYViU', N'PodyL-', N'eBuFRfkhhJBd-PeI', 0, 0, 0, 0, 0, 0, 61, 0, 1, 1, 1, 0, N'BYjohY', 1, 1, N'JQSGSM_ g_bLTyOgKW', N'JdswbwkfejWd-nYBa', N'zYrXgSJX', N'qqVYZ', N'-cISeSNFgqcZXJ-prB', 578, 334, N'rKwb zaLRZ_Vv', N'A iSDq', 349, 1, N'MJoRNOI-wKPcFqjMrf', 3050491000941036.0, 6651555867393520.0, 674, 160762018736889.66, 6202980306676530.0, 466, 953, 881, N'Blu_mRWOIsDzWyMfMZw', N'cgz_sFiHOzh', N'sRTyHuLaiYRyiMZCyfhW', N'yiXUIzBaXmtMHirZz', N'EPchzxyk-FVF Rscke', N'FinfTjujrlmvjv', 1, '2020-12-03 17:24:28', '2020-08-22 16:54:24', 534, 329, 764, 858),
  (N'MyeClgx_dvXjaO', 377467, '2024-09-27', N'vmXfmUhGrxAb', N'N-NosQj', N'jiUTThaMfjLr', N'VoUgY r', N'rbZIYFG', N'qSZ_mR-OD-EL', N'StcWjghBH', N'ofnFNKRVH', 83, 5022.48, 684871, N'cZRKy', 155, N'kAwDHXNWZBZnRv', 3616218902463822.5, N'CsXwiAnXStGHIjmVWF O', N'utsVliOum', N'heDHRJWlJbvcpqv', 1, N'JVHlGEkaqCzE', N'yyTcIiIIFtuTS GCfU', 682, 0, 0, 641, 4726380356654967.0, 213, 74, N'TyJxMmgxXWT', N'zigQPcE-s', N'qYqoaO', 0, 0, 1, 0, 1, 1, 365, 0, 1, 1, 1, 1, N'rnneMYN_EgZhR_', 1, 0, N'prYLCkNB-ND', N'fbWcV', N'YOtostMMFxV', N'JTAOeUHHGf-EGzd', N'hxKLjFMqn', 468, 448, N'GiFsLcnnhkkl', N'MuqJcCasCnRh', 320, 0, N'JDtDEU_FqaDbozyAW', 3532522425220661.0, 125217139998958.78, 689, 9669791344499646.0, 3776251670893656.5, 735, 143, 166, N'hlYRPIihL', N'__GAIkEJYqW', N'iBqTYnMnm_atUXxPL-B', N'QWczzQzcrI', N'oglmqPqnvHZUrLJf', N'HQtZBwgj', 1, '2022-03-06 21:30:06', '2021-08-23 06:34:27', 30, 894, 399, 768);
INSERT INTO [business_locations] ([business_id], [location_id], [name], [landmark], [country], [state], [city], [zip_code], [invoice_scheme_id], [sale_invoice_scheme_id], [invoice_layout_id], [sale_invoice_layout_id], [selling_price_group_id], [print_receipt_on_invoice], [receipt_printer_type], [printer_id], [mobile], [alternate_number], [email], [website], [featured_products], [is_active], [default_payment_accounts], [custom_field1], [custom_field2], [custom_field3], [custom_field4], [deleted_at], [created_at], [updated_at]) VALUES
  (241, N'JRfEWTbtJTUoYyqOHgf', N'UvLwxV JZOTxKqkeNp', N'KWmgnW_AmSzvKFlFzDBH', N'EFxKnxYJBen-XtfFqMeL', N'oX JbJPIZtlBYF_i', N'mMMaRZF_zhx', N'cgefo', 639411, 109, 350552, 316, 539, 0, N'slVmAqFNkWeqLM', 14, N'aUHzgZy', N'DTMbt-OZQMKf', N'EoHQbyDNKyDQoyC', N'cLRzhcZlWm', N'lBtoRldxGZyKKCkrxNE', 0, N'xRCNmkXFDahhRvtR', N'-DRFnOZl', N'a LBGvAGJSIPRJAWec', N'RMEmwGyE- -Ls-n', N'_ArrFdkymjF', '2024-01-01 16:41:57', '2024-10-29 15:03:45', '2024-03-30 19:30:51'),
  (907, N'MzZZqVvHCPVyyNq', N'CVfww-OZVpr_C', N'uPcTOiqbXxpCF', N'MPaJUrR-VH', N'uoPNqvbpCZ wrJcXE', N'xoInm', N'IxzLmlU', 636657, 124, 259706, 417, 616, 1, N'VHcSrZXbEoDndZ', 897, N'fwaUynlZTq-bu', N'cZVjAxHo', N'OLBnmszDrPBrSYzBVcp', N'__iFm YKNEq', N'vMjYdTWK', 1, N'dfblOFB', N'EZIhRM', N'hztHqLDEKOEmHmp', N'Bfqqn', N'CPxrTEHLn_vbZwQ', '2022-03-13 10:40:39', '2024-02-15 01:34:15', '2020-11-27 01:40:36'),
  (191, N'bUzHEvBWEdEfO_SIRhk', N'pUzgnKhimF', N'qxMPLHtRgSVnpFAGCav', N'FLeWc', N'_Pxhb BrcFcDHnWIR', N'CHUrGmZaoqH-Xw', N'nBvQsS', 711348, 8, 910140, 299, 899, 1, N'ElGdNamhC', 568, N'YQYyZqpVfBFV', N'VNG-rqrcJJQKuVL', N'bmlOcDOxBa_', N'jBNNXdhVxkn-Pci', N'ymobM kpw_zwqapbC', 0, N'rZY-dZlRDnkbhjOM', N'nfJuabsimfQIiScW', N'HiZdtHhYScKpdwtHs', N'nHwCW FMCnLZHVjr-Tv', N'pH-gx_fIkFjRmWG', '2021-10-23 13:51:41', '2024-05-08 00:11:58', '2022-12-21 08:55:31'),
  (873, N'LwgGvlxxP', N'RAXHYHQUfvvLcpdGhKB', N'_tqVGDygRZva TW', N'GJsLVhT_uVbGKi', N'sATscpvbC_AMx', N'YwMSZXnxvGGe_dGW', N'iQjCCXv', 314600, 458, 804928, 857, 463, 1, N'rxKlxsThinGCj_sVLZZp', 495, N'NcbFdTsvxMsJ-tKSVADq', N'BBimRKvY', N'Q_FhjvxLovbkXCBCqN', N'ythYj', N'FjREzxmZe', 1, N'hSOmrgFO ddvsxvJ', N'YswwNv-xBZlh', N'JQnnxYQESWAAGdJ YN', N'WatZVLfbGAWTdsmf', N'fxvREJuXkfOTLDLoozJy', '2021-01-11 04:28:48', '2022-09-13 04:56:55', '2021-03-21 14:22:00');
INSERT INTO [business_location_product_information] ([product_id], [location_id], [quantity]) VALUES
  (700690, 713001, 431),
  (37798, 548943, 590),
  (926263, 542799, 519),
  (572860, 367275, 662),
  (712211, 25632, 91),
  (35035, 386457, 381),
  (828434, 799510, 566),
  (206469, 626228, 81);
INSERT INTO [cahier_disciplines] ([eleve_id], [motif], [sension], [dateFait], [created_at], [updated_at]) VALUES
  (97345, N'x-nlckzs', N'cNTmRR', N'TnKBpFLclaQQ', '2022-08-24 10:17:13', '2025-04-04 16:14:10'),
  (587744, N'HkPeJINnHtsCHgWWAXC', N'zpVr-ZiVaIotGSflsl', N'BsErjU Atr_bqDPJm', '2022-01-19 17:19:26', '2024-11-05 04:23:59'),
  (628382, N'ApCMYPuHfRSJEC _tr', N'tyHCQftqy', N'YKNTvpfZuvZ', '2024-05-09 18:49:15', '2024-01-25 19:28:40'),
  (326058, N'mNrajOyYY', N'_JKZy', N'XLyyAQZHehQIl', '2021-10-26 18:03:58', '2025-07-16 19:27:26'),
  (819465, N'pQXPOPiry', N'ildoDnoFTJXrdyRTenGA', N'tTHuFGpdqYvuLyRZuRXC', '2024-01-13 10:38:30', '2023-10-19 20:01:46'),
  (865783, N'GyJRadwve_VizOVEPBq', N'MqnAokDcxAgqB', N'mqZqlcdsjfRGBCqD', '2021-06-26 11:40:42', '2023-10-09 22:48:46'),
  (143957, N'pufOKf', N'QQbZvAxOgpou_Jud', N'Oqml-lT', '2025-06-03 16:12:01', '2024-11-23 04:50:49'),
  (910198, N'BATnl_FQLSTdXrinnJga', N'cVZGNeV FccxjiMfH', N'wD-PX-sL-XAxN', '2020-10-24 14:15:17', '2023-06-23 12:00:34'),
  (888401, N'EbTlwNNBg', N'ZsnuG mc', N'aOEEUVUxhocBea', '2021-12-09 08:46:47', '2021-10-29 07:50:27'),
  (114017, N'JLDsvZm DhsCp-jcs', N'fNiCspZflABA', N'z_clomzfAwvGbAWj', '2022-10-07 23:44:51', '2024-06-30 03:08:47'),
  (341693, N'vjADidRpzOEVdjD', N'haawV_-RBJFcBLa', N'DeXelfSHf_yDSMm', '2022-03-03 12:25:23', '2022-09-08 02:31:18'),
  (382705, N'KZoWSobOxrH', N'ULSufAvE dCLsm', N'gTHocjrlz', '2022-11-22 02:26:19', '2024-02-22 10:19:33'),
  (786303, N'ORvVhKbjUcte_XP', N'uTtIGcX', N'gdMomszXxUpoAmW', '2022-08-30 08:50:56', '2020-09-09 19:17:22'),
  (331046, N'TXxStmDSdaK IshzXqoC', N'cOPjgYDa-VrCdh lvTS', N'JR-ZonO KV', '2024-08-21 23:37:16', '2021-06-04 01:30:30'),
  (470896, N'yHgDyMCxcwMgFVpS', N'bWSedRwUx Lf', N'MXJmpTPeFLnysPFbH', '2022-10-30 05:08:07', '2023-03-10 13:34:27'),
  (45257, N'wTTZOsw jVvKm-xDb', N'_yxaKqzlaEIPuBjPUlCh', N'AbWi-OQyYV', '2021-03-10 01:33:40', '2021-09-01 09:00:05'),
  (588370, N'GbVhbMYoB-aLPeLr_K', N'JePD', N'dmiFSz', '2022-01-24 19:12:48', '2025-02-14 02:03:29'),
  (25296, N'_ZQQSHDD F_FYdfr', N'iSyGiggKvBPPXVMztBb', N'CmOuMxySZKRhL kjcw _', '2021-08-28 18:54:28', '2022-05-18 09:36:39'),
  (386291, N'p_U-KVQDZsUHYQNlw', N'dFwgBD', N'ZUHAOEmxIhJiU', '2021-08-06 15:56:33', '2024-10-21 03:28:46'),
  (762251, N'qGCsFCMpxNNQRvPJtnIp', N'yMLLEWhlwjXc-fNm', N'SyqBOK', '2021-09-06 23:47:26', '2021-11-25 13:47:35');
INSERT INTO [caisses] ([personnel_id], [intitule], [sigle], [adresse], [details], [created_at], [updated_at]) VALUES
  (400057, N'hKfKALKmnxpRcnOepWJE', N'cuPzHiGZVUY', N'xopv-vlBSkdiMRrXJFqE', N'hlJkzL_Q', '2022-04-24 12:37:10', '2023-02-08 18:08:37'),
  (782247, N'hCoKkZiiLofCPDGB', N'aYpKPrRUZ_Cx-WP', N'uuESQF', N'X_KfDtneiQtntPunwpGS', '2021-04-15 05:14:40', '2021-03-22 00:59:40'),
  (723449, N'Fwc_LjDkdNrGcUY', N'yLS_xCPwAlN', N'mmKgAIy YDaZH', N'ubzKWroXLPrrZgd', '2021-03-18 03:43:49', '2020-10-08 03:56:40'),
  (314408, N'_FXVLEqNm', N'r-Ljhag_HZeGIONA', N'njW_OLpx', N'unHtYGOegfuTFc_mtDx', '2024-01-01 17:18:56', '2021-02-01 21:18:10'),
  (674262, N'-As-Rky', N't-vusAkalh', N'vTqYyNTSkjQp', N'aF-fWCpQsoryyd', '2023-07-14 12:42:31', '2022-11-03 20:05:32'),
  (495227, N'UQdAdY', N'KH_edCKXwgzm', N'ieqOWVfVlakksOg', N'vzeyGcMvBqQ-fHUvrhmn', '2022-04-24 19:24:14', '2024-05-02 06:58:51'),
  (411111, N'UZaiHvMZevBSWuJh', N'PNgQxUEJkKdTvlVZtLl', N'f LhPRgPsk', N'GhshsaWfn GxS', '2024-01-05 07:03:12', '2025-07-19 00:14:33'),
  (609308, N'Lhs_kAujah-', N'TbgCtcjdN', N'StBNGGHzzxNtIe', N'DlZMhpQyD', '2023-06-02 08:41:49', '2021-07-02 18:59:10');
INSERT INTO [caisse_transactions] ([caisse_id], [vente_id], [montant], [type], [type_transaction], [payment_status], [created_by], [updated_by], [created_at], [updated_at]) VALUES
  (957498, 436567, 3121711981042611.0, N'SOKhumYjUhJPb', N'gmdHuing', N'z-IXkpslIqTaUijU', N'zlzE-fOpXkaiu', N'-WqkpIBCZc C', '2024-09-01 12:06:41', '2023-11-29 07:15:26'),
  (31078, 326041, 7727579335467185.0, N'POQQLWIFOTB', N'EtdISFFiecCPvlYs-', N'bp-nSc', N'_ebSR ZWMTFjsZDZ', N'wrlBwseBV', '2025-02-27 23:12:21', '2022-05-26 20:05:10'),
  (622360, 186523, 4853961020565715.0, N'WUWTToLJuSloJQgZJk', N'yPmQOkX-DJP', N'HbEVcrlPowDXPofHNM', N'Lpe fUBRLLlRfPmu', N'tTDUdwa E_Pa', '2024-11-07 09:36:16', '2024-09-18 06:42:14'),
  (393171, 6428, 7232142579450443.0, N'KsQKNNYzmYwDyG', N'TAiXepIaZuLweNX qJ', N'VwrVkkxLvvgm', N'TcVuNewsgLA', N'QSwhVTgbMAF', '2023-04-06 10:11:20', '2023-07-21 01:35:39'),
  (112465, 705193, 2303925154904050.5, N'ozWwUMa_vUbqeFpFjj', N'qiASF-GYZDcT', N'RlnO IhiHf', N'eYH NPUKWowtRCVR_Vu', N'hekCVuLB', '2022-09-18 04:08:22', '2024-11-14 22:27:57'),
  (934437, 856417, 2174574887032079.2, N'tM-npgb', N'kpd BUXvYLqR-bbp', N'GZbpTAtJ', N'TfRccieGjteTqbIf', N'ciHqBeBOJEICPYOmlWe', '2023-01-12 07:26:06', '2025-06-19 21:14:12'),
  (636048, 601823, 4782472838601395.0, N'nQibr', N'PtQFqnUntti', N'cAxecZbs', N'aeaOshmhpvxvVDKti', N'UEWjRR', '2021-09-21 22:47:06', '2022-08-11 10:24:10'),
  (625786, 374699, 4232632276044826.5, N'iQfFyYXeTHZWMWJLJFT', N'FBEVCxenGEDQeiYnMIf', N'NDPOZkcrGEoc', N'xhLquvVGAGZ-f', N'-UorhIJRbFLQzXtURcp', '2021-07-18 19:54:23', '2023-08-06 06:09:37'),
  (918944, 507994, 8048578226491684.0, N'NmKgXIOupQzUicx', N'tMmXpLlCfRKu', N'bAoHu_ADaidVD', N'XwmDJQr', N'dRwwRPwUvW', '2022-07-02 02:50:49', '2023-05-10 13:31:08'),
  (279949, 296135, 9369699266502344.0, N'CWHTLR', N'DDSGHIZLkPTUiZgWcV', N'DXiRQa', N'bXWNtFWehYlsz', N'SCxQFISa', '2023-01-05 21:48:57', '2021-06-11 00:49:02'),
  (988400, 930846, 229856889885984.28, N'JBAEfHAqrjBiXs', N'FdSqKJAEfhZbh', N'DXaopkuDXdSsQsoYWbD', N'it-yQBXHKNEQ', N'MZZRdWnOXdqZo', '2025-01-01 17:28:37', '2021-06-30 16:15:17'),
  (841796, 486579, 4423104869151685.0, N'qz-KksDbs', N'gRmdfGBX', N'pipf qwSy xgGY', N'kDxMf Ed', N'prpWD', '2022-12-09 22:49:27', '2022-04-27 03:26:50'),
  (764242, 883820, 1545570221103707.0, N'ZREsb YYSvnyiufPQ', N'nhe vqgOe', N'L-bOibya', N'gpVzPLndYcxileRtqkPB', N'PpVWx mJqQiuXBhh-Ag', '2023-04-19 00:00:10', '2025-06-29 05:11:13'),
  (750176, 640795, 3110830207924148.0, N'AYSfIr_ v', N'nCWXuIjzHiUPNxd', N'r_NL _Qt', N'lZmimw', N'Lo wGdSnQVOvPkGH', '2020-11-22 13:58:02', '2023-06-30 16:19:24'),
  (29380, 971042, 8058650232541363.0, N'cFTQGfLRO CZnxq', N'iwlrTSEFFEqsXr', N'qYLpctBsZddBayKIG', N'ytIBiVQDx', N'ZnFDLoY JwPsPZyb', '2025-08-05 07:03:45', '2021-06-29 08:33:58'),
  (146501, 127175, 221393099870753.62, N'bDkxqZwUmMBcf', N'dK-N_ oj-OVqDbCKjz', N'xQYgTEsmh', N'XdnixdP oVRSXLtpR', N'rjDJKwjRpBfY_', '2024-11-19 01:45:51', '2022-11-20 15:17:18'),
  (597593, 434257, 7259087135088699.0, N'ZtMSVwTNw-DUGhl', N'UmUgFTsRUQZjCUgHoi_', N'RrbknMnzQ', N'EygDA rTb', N'crUyvQxgfkJyo', '2024-12-05 10:23:25', '2021-04-24 10:13:55'),
  (128734, 16681, 3502150178443621.5, N'TZiITMkcE', N'ROvLwkYHTiCXAF', N'YrlnNnuSqnWo ODmUYiT', N'HnMAXVLlf whcaiyaFC', N'eqmOOqSHyK', '2023-11-22 10:39:20', '2023-07-23 01:25:05'),
  (227097, 917071, 4967183475813507.0, N'wEphbwlaJKJmeJDo', N'QZKxd', N'Nn-oDC_-ogiNEmrfVtHv', N'XkRSDQ', N'MO-SbHjAITbaMdEj', '2022-02-08 12:08:15', '2020-11-14 01:36:38'),
  (588016, 687037, 6282556465088508.0, N'kWhHL_W', N'wlpMPSuKAXcip', N'e uZNXNHUDw', N'DxCYNbmk', N'a JHIdYBaMs', '2021-03-16 20:18:58', '2024-08-03 19:52:42'),
  (352553, 12360, 1693000119532913.8, N'hobdCGOIBFPwH', N'uvRIvaLvKWgtvcsN-Clp', N'ANsRziClGBvgIhsXS', N'ctYoPJrWQ', N'cRSqzjgFyqQmsMm', '2025-07-08 21:44:53', '2023-01-27 19:15:11'),
  (111799, 446426, 7841116106422242.0, N'CqcCJRJRSAKGV-S-x', N'CrNeWfdzPZBDPjB', N'fGCNpPLCINunDE', N'ekrKn-', N'BVrwRQMH', '2021-11-20 23:08:05', '2022-11-02 06:13:37'),
  (258839, 981990, 4385397847487168.0, N'rCasc', N'OLmyweZG-CxzYLlBSLiW', N'-XXoQU', N'EnvXFhjxyE', N'ej_pabJXvD', '2024-12-09 11:48:22', '2025-07-15 11:18:04'),
  (365876, 825934, 5869777807231166.0, N'ojTtlvXyybaLIYU_', N'vFZIn', N'PMcSnbmre p OzvPmi', N'BUIrNRM_CUZC bV', N'ZcBcbFryg-rYppCcdYrU', '2021-04-24 02:00:45', '2024-10-15 08:31:31'),
  (323876, 935055, 9500601685323696.0, N'yJCfQUO _yp', N'BlfwETFZt-aVuqx-GBB', N'HjsWIUFt', N'rkFGxoO', N'qgUUMGG', '2024-08-20 04:45:43', '2022-02-09 10:27:53'),
  (438583, 217307, 7088020388650815.0, N'fOkinToKL-', N'huKYbaDS h', N'iQSasTrGqXw', N'DYEex- QrhUDPSyyas', N'AJL-oKfgzR VtxC', '2024-01-17 09:52:19', '2024-10-25 18:16:04'),
  (965346, 825136, 8192377214682247.0, N'W zx EUByzqEzcJwiaG', N'_PiLBtvuleFxdsK', N'HiLJGFjDxtVrjkaBeRSJ', N'ScAMkM IDYRoPHBY', N'cdyZEitABmLcp', '2022-01-06 14:09:35', '2021-05-20 02:30:55'),
  (269425, 259179, 556097119598139.0, N'ISmK pp', N'fghZG', N'QbzwqGIuvHFux', N'SswjKzgve', N'mAMDqwDTHnueC', '2025-07-02 07:21:33', '2025-04-13 13:47:03'),
  (209421, 681750, 5016710866710289.0, N'QpvwzBN', N'pQnZ-ITZKwTVIBQqeD', N'uRycShMNV', N'X VBiqBM', N'OEATkLmzZRIsiB', '2025-02-07 08:10:43', '2023-09-18 21:55:27'),
  (877145, 122603, 4852463824011504.0, N'mBEKU-Mdf aiP _F eM', N'RYNu_U', N'-amIQDkgi', N'XZxOeKcO', N'wUYyk t UrASl', '2021-12-01 04:02:58', '2020-12-09 07:59:06'),
  (98410, 409665, 3365817027168192.0, N'nOYpMnRwcHjsmUiyiu', N'RIfrapdPFuu_', N'eRrkdjsHtmWwdF', N'xaWVMnVplGd_L', N'biqratYmfbNaDEgQJlp', '2023-06-07 07:45:07', '2022-09-09 23:07:33'),
  (984302, 973725, 1292186510301447.5, N'EOPoFBwvqCzeCiCwEovu', N'JgsDglyABgvRpL', N'ZXKViMrlDTd', N'ewdPgnq-_', N'OpKdBkEN_VIN', '2023-06-13 14:09:08', '2024-12-04 04:58:36'),
  (189725, 934951, 2880214885797809.5, N'EmnT-Ke-iMMcoChSMhj', N'wMpKSYxuDQfsZlfYVfA', N'lc-Tz_PURu', N'caTr-qm', N'qnzrsqn kVXKZYALf', '2022-10-15 05:55:24', '2021-11-21 09:09:18'),
  (163904, 723537, 7601474075062528.0, N'OdDOj', N'CzTGpukDGd', N'IuQEgdMnmIWxncacLcd', N'nOivGUBPECvszxJAhE', N'JQtDPbpsrZ', '2024-03-21 01:24:03', '2022-06-24 12:21:27'),
  (230917, 192740, 7117378658580933.0, N'wPYWQA_Hs XevsVAV', N'vhDuFnuWe G', N'gYU-FzKRywT KxLA', N'YAacYOXoToCVujl', N'VrHqOifaKkliufUqv', '2023-08-22 16:39:18', '2024-09-19 17:49:47'),
  (962393, 616431, 6338975754996100.0, N'DPioFzAcres', N'BtndlN_Ec', N'oYFjlLJ', N'hbNXmxOWj', N'QmMjkMOxcfTRQt', '2025-06-19 13:19:05', '2023-12-28 01:34:33'),
  (941380, 139552, 5569919218145302.0, N'DZBRP', N'mMdIDInQQsWFzDR', N'dCGjt', N'zBzyMtSJoBR aR', N'nHAGkRVwUbHuvL', '2022-03-05 04:38:06', '2023-06-24 21:13:50'),
  (825366, 663971, 4271736455348681.5, N'YlyyKW_jnZXjuCV kFpO', N'T AI TMTkEdURr', N'lmXRRpqOqBAzgcwgtMU', N'fIdyGzkG JyWVVHSH', N'NkrqMqbWpRYWPRNxfHBN', '2023-05-24 05:31:19', '2024-03-08 09:57:35'),
  (838863, 90889, 2295479228140488.0, N'rd_JIoSPpgIpIb', N'zLVmrEAL', N'ZiP-YnF', N'MYpONJZafXRkkZbeyngG', N'lbaOjpLgxjnemp', '2023-12-30 17:19:24', '2022-06-25 07:12:21'),
  (711868, 69802, 2910887805225202.0, N'LJlfk', N'clphJMBElc-hlNwMb_pg', N'FOuzKSSaaSaSgPLOWVf', N'yv-n Wls_tHpqnYGXEh', N'eusUFtBNhhDOdTSJ', '2024-06-25 11:48:47', '2020-09-23 02:33:02');
INSERT INTO [carrieres] ([categorie_id], [echellon_id], [personnel_id], [dateEffet], [numReference], [dateSignature], [signataire], [created_at], [updated_at]) VALUES
  (139854, 506078, 147463, N'c_qdcNpQUU', N'IUmsO', N'l-nkhyQR', N'bxMTn', '2022-02-24 10:25:43', '2022-11-22 19:43:48'),
  (731795, 79776, 572926, N'iRVWwlTCykxj', N'kfohgB', N'KwUskHVnkyFRbgVWfzC', N'hZBDY-VI', '2024-02-19 20:24:39', '2021-10-16 04:06:37'),
  (999383, 626842, 7403, N'ugvmGzqWkB', N'oXbkkcNKtfERZvnP_bs', N'xYmeM', N'XedQvbCuYuaHq', '2024-11-26 14:35:42', '2023-05-11 11:51:03'),
  (171775, 574356, 305360, N'FCdoYFGqBCNFdUaJPU', N'bPCzrQs-cvGo', N'uTafFkCkDPMCpUi', N'Kbh_SJpiax', '2021-07-21 22:13:26', '2021-05-27 03:50:19'),
  (787907, 165309, 66282, N'qbBm_yIbeNM', N'xbltcz', N'eeREOT-r_EZeUfD', N'QzrIwZ', '2024-05-18 09:25:51', '2025-06-16 08:51:10'),
  (456792, 956678, 535000, N'mOQfkYYq-dCVQMbtO', N'IRfpIQHhKdhgW_', N'vSAFYSzDCAeL', N'irKzVbgEcKjYgCB', '2023-03-30 14:13:57', '2023-06-15 06:41:47'),
  (78750, 977259, 943191, N'DWZcijQnJaqTwotCGkCD', N'umUjdNwOL', N'IrHKJEYpxT', N'lDkNMmnOUvSERObkSqb', '2022-09-13 13:03:01', '2025-07-13 01:03:44'),
  (527465, 420358, 698329, N'mTMZHtXysIsriRDpLJ', N'uUWzYRwiTpMe', N'QDzkYjEpvo-p_tayOk', N'_gABmp', '2022-12-07 22:56:38', '2021-02-20 04:29:40');
INSERT INTO [cash_denominations] ([business_id], [amount], [total_count], [model_type], [model_id], [created_at], [updated_at]) VALUES
  (120, 2618032223817446.0, 899, N'fxzSmqSvl', 916106, '2024-03-03 19:11:16', '2022-06-09 13:07:39'),
  (411, 1713272765257282.0, 890, N'lnmxDcsrrxxZThVPtn', 284055, '2023-02-09 02:10:17', '2021-11-21 04:58:43'),
  (87, 774961643312341.9, 479, N'qKqsKvEPskW fOJ', 557296, '2023-03-08 09:45:38', '2022-03-01 15:57:02'),
  (877, 6254599449655072.0, 308, N'pGhxekNhhArWFPNlq', 692719, '2023-12-07 03:54:31', '2023-02-02 04:51:07'),
  (183, 5866358473616232.0, 900, N'lqCUnunPNNHFxWPKZhx', 251518, '2020-08-27 02:13:33', '2021-02-26 13:42:00'),
  (476, 3160843984001952.0, 123, N'xPeZHo_rEKlRp', 51084, '2023-07-11 16:21:58', '2024-08-05 22:37:41'),
  (833, 8886507418580735.0, 176, N'uVmebUGfiqztp', 778869, '2024-09-14 21:47:02', '2025-03-09 23:32:26'),
  (656, 6805544855139569.0, 394, N'tnVd OerOA', 13890, '2024-04-04 09:37:14', '2024-03-19 16:39:56');
INSERT INTO [cash_registers] ([business_id], [location_id], [user_id], [status], [closed_at], [closing_amount], [total_card_slips], [total_cheques], [denominations], [closing_note], [created_at], [updated_at]) VALUES
  (755, 762, 619015, N'hUbyZMOApVCtMgZjZ', '2021-03-06 23:29:22', 5188727223341288.0, 503, 613, N'yvaBe_', N'CfwLaggkuaiUm', '2021-04-30 11:00:17', '2024-03-02 21:45:12'),
  (46, 2, 953968, N'WdlEkJZNIAYGo', '2021-10-09 20:21:38', 1128200883083285.8, 177, 62, N'fqVSNJsjxc_DNzWyN', N'GqkcdPesfr-riqzaPEo', '2024-10-15 18:43:19', '2022-01-29 10:25:29'),
  (253, 723, 884937, N'eTwLxkHT-uVMTMrDuQ', '2024-08-21 11:29:10', 6975291478396715.0, 219, 917, N'SWMGkLobvuFEKEQ MPI_', N'yCBbEtUOgcx', '2025-08-17 03:56:24', '2022-06-30 04:04:10'),
  (620, 280, 765213, N'uaXr _oK', '2021-02-09 13:02:44', 9752407464115464.0, 350, 997, N'VbiHwXJOANOyBTa_NA', N'wtRDzbFu_fZ', '2022-02-04 03:07:11', '2021-05-18 02:13:55'),
  (59, 91, 524717, N'iykQiyt-PsgHbY', '2021-09-30 12:01:50', 8546053787873912.0, 354, 597, N'dGwYMOouzxpvkZ', N'PpEXDWULvc CU', '2024-03-09 05:58:23', '2023-09-20 21:11:38'),
  (793, 793, 338422, N'oFqJZVZUwUVjvekkv V', '2025-04-27 20:57:07', 8294497600975618.0, 430, 469, N'fQFZuX', N'_k_ELWOlNr', '2025-06-03 12:42:53', '2024-04-11 15:26:00'),
  (336, 899, 169984, N'YNzFqRLKNdj', '2021-02-23 15:59:59', 8199326561694631.0, 681, 530, N'rcCadJqWfvKTfis', N'AKVuEuo-S', '2025-04-04 17:19:23', '2023-07-15 02:42:53'),
  (71, 725, 211515, N'yTpvkNsAetiUBVkbrdGw', '2021-10-31 19:45:58', 224220111807613.7, 810, 252, N'qAeeHMFHFmC', N'HlPywM-mQ', '2022-06-30 11:04:13', '2024-12-14 14:11:34');
INSERT INTO [cash_register_transactions] ([cash_register_id], [amount], [pay_method], [type], [transaction_type], [transaction_id], [created_at], [updated_at]) VALUES
  (43, 2868554003716231.5, N'EfZZydp', N'-VZRodG xss', N'HPtpAPZ', 886, '2024-04-17 04:11:59', '2021-02-05 00:40:54'),
  (681, 1807343637718524.8, N'OMmfo', N'JIdUkRecLpAFUUAFDYDD', N'_AvWDytwwtvN', 907, '2021-02-17 07:17:32', '2022-05-28 21:16:19'),
  (257, 8995143544877952.0, N'NvZSqmwX', N'gdiyNnKu', N'np dINUWimSpmPfn', 374, '2021-03-25 12:45:31', '2023-04-14 19:47:00'),
  (998, 6548252144457513.0, N'vVYbDbjyqbBiZYB', N'yCsTg', N'OhV tt GEBkgAsJ', 251, '2022-10-21 17:58:58', '2021-10-16 12:20:27'),
  (465, 6972632622625698.0, N'pdlLsdBKu EkwkQckoV', N'GNnDDXhkxIlIqHXJ', N'LQ TLt-', 618, '2023-09-07 13:40:47', '2021-05-04 01:00:58'),
  (394, 6786983290704229.0, N'NLeVTSLru- zQst', N'qXujp Labqexktj_VH', N'FIxvqFaYeGLEWFMRw', 783, '2021-01-07 12:56:48', '2021-09-12 17:27:39'),
  (915, 6848556719814327.0, N'CcVNRWoBFjWPvcViG', N'dZStQ', N'DETc-OF', 248, '2022-12-06 23:05:01', '2024-03-27 21:28:00'),
  (44, 6729208100452277.0, N'AgoQtaVF', N'ZRVfyrwEu', N'FwsPlTGTQm', 891, '2021-09-14 11:44:46', '2025-05-31 05:42:57'),
  (773, 3996125794193587.0, N'fwRdBzHGewwVDhS', N'x-ARAfAAJLtcKpA', N'yqAOavKxuhSA', 120, '2021-03-31 11:47:46', '2022-07-02 05:41:02'),
  (213, 5870123903022796.0, N'mliqxeGjxzMzeLifjP', N'KC_VtJ-WSyLFJtHEKW', N'VmfKBodwkFOdqTnyK-', 188, '2022-03-04 03:32:10', '2023-08-05 08:26:11'),
  (834, 5633987838907144.0, N'Bqipahi', N'szLTXahFyngWMfK GBpD', N'-HxQw', 232, '2023-12-09 23:51:57', '2020-09-03 08:01:48'),
  (431, 7881168138228799.0, N'maAmwAEnPV', N'FDxzNUskXMHtZeaZ', N'a-Tcn_VkEnbnWi', 316, '2025-02-02 20:04:47', '2022-02-12 12:33:53'),
  (727, 4444892354652729.5, N'nVYuiRUoYv-AfhJGS', N'ap-IaR-B_', N'GQAiQeJvmPQeTgg', 672, '2022-01-10 18:58:49', '2024-11-28 19:59:01'),
  (781, 786020716028863.5, N'YMbZnOzByzozPUNtElGe', N'kA_uLGrvammR', N'NdTlQQMrb-oFxnwOSmQV', 111, '2022-05-06 15:30:25', '2021-12-16 01:40:06'),
  (728, 2509335036548928.5, N'i_SCSvAC-gLOvd', N'dxzGDJdDYeiS', N'vjs__NsYIMeGwkZUM', 980, '2024-12-07 13:53:44', '2022-08-29 21:07:45'),
  (520, 5027849443216695.0, N'aTeuhrLDCF', N'rKfpzUfA_wCA-wiGki', N'g-KPuQrTKQ b_iKtJ', 877, '2022-11-17 08:37:33', '2025-07-28 19:28:54'),
  (798, 2965025990434875.0, N'V_uDE-ZAzeUpI', N'vOvbXVcTL_fSxMwUzV', N'GmjnKSPVYWxWLWmyZah', 594, '2023-01-22 08:08:29', '2021-05-17 17:51:45'),
  (158, 6371177320158079.0, N'AygJX', N'QoAcTHFIcCiaQib', N'OTnJJgekaWKN', 438, '2024-01-02 22:52:29', '2024-09-09 17:37:34'),
  (439, 9785016046452486.0, N'kbmPCosXqGoyxAEaDOg', N'wzQ_u', N'Zs-_mLAFEcuqz CmMpez', 258, '2020-09-07 02:00:00', '2023-07-18 06:04:13'),
  (278, 9877334045298924.0, N'VpTQdWwHGBIhd_kvngiL', N'B-AiurFXGd', N'KuHdta', 870, '2021-05-29 03:00:37', '2023-02-19 15:00:01'),
  (396, 1221501889227539.8, N'MYDXUacbeLQdcCn', N'qzCWToOtUFsp_zW', N'KOcJMrgngKH', 326, '2025-07-12 18:39:41', '2023-11-07 20:36:02'),
  (510, 676835590874834.8, N'jgmawsiQIOqP', N'wOegfLPcmW', N'MtVaKskQKse luKC', 637, '2020-12-11 12:11:20', '2022-07-30 18:37:21'),
  (779, 7715999717974820.0, N'JITCRADy_BcO', N'-k-UHKu-emX-tbPnK', N'JnIDssQSPmbHgGmApkSW', 583, '2022-05-18 00:23:06', '2024-06-11 13:45:17'),
  (723, 85234729972520.9, N'WypGkaEhwtJfJuhoo', N'e EGAdvC', N'z-CFeLiTY QJJMiWcod', 944, '2021-12-18 12:12:30', '2025-02-24 06:57:44'),
  (994, 9825659170074176.0, N'uZCrcwGNWlpR-anAayC', N'HEhMPkrWMEQlyuvWDemz', N'K-AEqSxgSVtuoC', 365, '2022-02-23 15:45:37', '2023-08-29 21:27:44'),
  (455, 7191760487887886.0, N'RZ HIj_uiUAP-M', N'Th Hxg', N'huVBEpY', 238, '2025-04-04 23:54:34', '2023-07-26 07:54:25'),
  (77, 3197669793661462.0, N'sVAFcPxdQAW_IaMImG', N'eLoqBuSdlWF', N'GBdpOtVVwymSp_n', 797, '2025-03-26 18:44:59', '2025-07-21 14:40:59'),
  (155, 2442098505843677.5, N'irXuCdveuvUE_HOi', N'mIIa OmZkrRVjDfyh', N'XkTSGOyLDVqEAUZln', 648, '2024-08-17 22:06:17', '2020-11-04 22:51:19'),
  (215, 6845298376419338.0, N'PrEJWCWSlAHgKmhY', N'lUKrfXYTl', N'iGWSaW_zlwpR', 594, '2022-10-08 11:36:49', '2021-06-11 01:55:12'),
  (934, 5018001225630252.0, N'vxre-INkuIHpf', N'XadowzobmkGjB', N'muQtNatCL WIyxCgB-YG', 599, '2024-05-08 07:19:08', '2021-10-27 07:13:43'),
  (95, 1946989532393151.8, N'dHAl_IAIuysOntCy', N'RRH Il', N'bKk_xIClHMY', 667, '2023-02-05 22:48:21', '2023-12-30 23:27:32'),
  (479, 9329085936778888.0, N'znezmpb_Jsy', N'gEkVzj', N'pnSzt', 624, '2021-01-20 02:54:10', '2025-01-08 09:04:06'),
  (846, 8099412641225885.0, N'sKfOfBZpq_PTo_RcogdT', N'yApXyBlW', N'Hrx-utesW', 3, '2025-03-04 20:26:41', '2023-06-15 20:27:16'),
  (465, 6153214269413656.0, N'jkKweW-gOaGtHBfcy', N'VcVQYdlyasALbOgCqN', N'mG-ONg Uy itreb', 427, '2023-12-11 17:14:47', '2024-10-25 22:27:59'),
  (559, 5443474895349908.0, N'Eo_ jeBwdlRrjnX', N'wrVq_-aDeZe', N'RDWkN', 529, '2023-10-29 05:24:12', '2020-11-03 01:34:35'),
  (173, 2438828845413270.0, N'wOVb-', N'BCgqIvooQmXhFWfqDK', N'wqVZekKZJSksWWL', 183, '2021-12-20 03:37:41', '2020-09-07 13:06:23'),
  (841, 7830027876787088.0, N'wYPldGL', N'ih_CzJah kAMBkvc', N'WdEVoTirVMeoMsp', 56, '2022-09-27 04:07:18', '2022-01-26 21:42:48'),
  (375, 458274911483309.56, N'FqMz jYpJo', N'sdWR-oEPzwqnML', N'j-UJWwVHbmobH', 421, '2022-10-20 18:28:07', '2021-06-14 22:03:32'),
  (295, 5566251159568480.0, N'-iLPcGuZbvdW', N'QG_FQgvLb-uhJ', N'nDFkgdNdE', 260, '2023-02-04 06:34:51', '2022-10-28 12:32:29'),
  (482, 5723878643726741.0, N'KgSeEhFq_Tab', N'TqwzHRGSrHz', N'RFWnEsXrMyzyaCi', 225, '2023-12-26 22:21:34', '2023-11-09 08:34:36');
INSERT INTO [categories] ([name], [business_id], [short_code], [parent_id], [created_by], [category_type], [description], [slug], [deleted_at], [created_at], [updated_at]) VALUES
  (N'Xs_YEq', 107, N'aJgIamBHM', 216, 525411, N'w-_iYIRLO', N'atnLpXxhzbizMX', N'ECxiSBAJsJdnQVg', '2024-04-09 07:25:58', '2022-04-22 10:42:48', '2024-01-16 12:20:21'),
  (N'HeDujq-PJepvpFyrkN-G', 236, N'anNWwpMxiVS_', 407, 43796, N'mlMZJ-DpsTbffqNZ', N'-UtDvrUFmRPC_DcrWLNc', N'DIeMtx YyvKECoNygX', '2020-11-25 20:57:00', '2022-05-05 17:15:37', '2022-10-08 19:58:51'),
  (N'vEnzI', 926, N'dHVbsZhT', 691, 521051, N'BNOrncE_TkZgRGQ', N'QDZeRUBKLgyuGDloApt', N'hcqI_vC', '2025-05-13 18:54:10', '2024-03-16 03:43:45', '2024-06-16 08:25:09'),
  (N'jyuZESkJ', 852, N'Jj-XL-h', 171, 890762, N'WJNP_IGxPkqKRLeNzbOH', N'gUSwRJXvxmDTod', N'nDAnhHuxKzFbF', '2021-09-07 12:22:07', '2024-05-03 17:01:48', '2022-10-23 05:27:17'),
  (N'JT_grVtaadVUr', 38, N'xAcjpXhdUBtXcCXMFkL', 421, 549512, N'lUJGQvVYtj', N'nVrqLTFK VMjxhZ_PME', N'ZAAO urCUxG', '2024-07-24 05:13:49', '2025-05-27 08:02:47', '2022-09-15 17:55:19'),
  (N'ed-SumLVSjwPTLdYBSZF', 471, N'JumTzaXO', 110, 498561, N'oSbqdkwyYdcshm', N'ARz_FDwj', N'XaChjCKTVSDgCBnVuaAY', '2023-02-25 01:21:10', '2022-02-25 23:40:12', '2024-07-15 03:17:55'),
  (N'KUMbSsnGJO', 104, N'UADzik_CcjVwtpezOoKe', 327, 535063, N'ArEivAd syZDGk', N'RnBNbz', N'uTYSwcQ', '2022-03-17 16:04:00', '2023-12-24 04:13:00', '2021-03-09 11:32:20'),
  (N'qbSNEofijYXR', 57, N'yCBzusPauoVOlrkOPh', 709, 904329, N'KrovoSkGVBeDJQaxJe', N'HcvColhoyXZC', N'swv-xiAhuhbCaVwQx', '2024-11-13 22:46:05', '2020-09-15 15:53:22', '2023-09-26 00:07:19');
INSERT INTO [categories_salles] ([nom], [code], [description], [couleur], [actif], [created_at], [updated_at]) VALUES
  (N'NxcJzIFZrs', N'iXmvR', N'PluJzMjzpuBbcyPlvQ', N'exfEZW', 1, '2023-09-23 02:08:34', '2021-04-12 07:30:52'),
  (N'EHqLvne-lDZ', N'rWqZvH', N'QeNFB', N'khmrAWf', 1, '2022-12-29 21:31:17', '2023-11-03 22:56:29'),
  (N'ujSZBXv', N'jZji_R', N'XCcVRGgagrHSg', N'LUCeN', 1, '2021-01-02 21:42:58', '2025-05-12 14:55:26'),
  (N'pCXYtJQWPU Uh', N'zGhFWM', N'aUaH_buGIZLM', N'v_PGc', 0, '2022-11-30 12:03:44', '2020-10-09 12:33:40'),
  (N'nsT-bvcJ-Vh', N'UdvyTovPHU', N'ZZLLcOlgXpegASAKtA', N'iOeks', 1, '2024-06-12 12:12:33', '2024-03-23 18:07:34'),
  (N'jGhjTRUUwKHmz', N'dD ZrN', N'LSUuMe_lyaLja', N'ofU-q', 1, '2023-10-12 09:23:11', '2024-03-08 22:16:17'),
  (N'FThWAzwF_GOgnbsK', N'w_dtpGKRW', N'sPgzrwcHyjUTKumYi', N'_obEj', 1, '2025-05-03 09:16:44', '2024-10-18 10:50:15'),
  (N'qglAgnQKx -XxFquI', N'hGVaSu_G', N'KptcHoxrO r', N'ROEGH', 1, '2025-06-09 17:08:43', '2025-04-12 01:53:14');
INSERT INTO [categorie_comptables] ([code], [intitule], [type], [created_at], [updated_at]) VALUES
  (N'LlaBNyxy', N'lxQMAZjDBSk', N'pAIpfZlEv', '2022-08-07 07:34:01', '2022-10-19 16:52:07'),
  (N'InNVMTWw', N'OE-J VXckY __iG', N'fDFfR', '2020-11-11 15:11:39', '2024-03-18 23:59:38'),
  (N'KsxbiVyQW', N'rDoXxQnrg-PsSp', N'bVnlpVS', '2021-09-08 21:05:35', '2025-02-17 20:00:54'),
  (N'-QVBD_KOdBBOFVqEEP', N'WdTgfQdsa', N'GqpVD_JlzbYf', '2025-04-13 17:31:08', '2024-06-09 05:47:26'),
  (N'TEYNWwPomVsjiunLoNii', N'ixWFECXlDDqxC', N'dkgQZHHwlfgsHtB', '2020-12-06 19:53:29', '2022-07-27 16:25:47'),
  (N'mHoL zTXIFI-GtlZY', N'WVYQs', N'vSOSLXJpxQGYMtCWEdy', '2025-07-15 20:19:32', '2022-09-19 00:29:39'),
  (N'HvpiPOdjut', N'f_ATQTPELsAVCPCHQY', N'HWKHYBn', '2024-02-28 15:27:48', '2021-04-21 05:41:52'),
  (N'KuNTsXOuYLiT', N'hTJvVCl', N'OvOdfNrDnFFK', '2024-03-25 06:59:27', '2021-10-22 04:45:56');
INSERT INTO [categorie_examens] ([code_categorie], [libelle], [description], [created_at], [updated_at]) VALUES
  (N'RmGYLy-wsXKNFRDKf', N'JOOjZYibcJTPhbYbgVql', N'QAMdzlufuFuLvgqLXW', '2020-12-31 08:53:55', '2025-06-11 03:44:10'),
  (N'CgOSYQZaQGaaTqOwG', N'lrkQlE_RPsUSLzBwTQiN', N'Hm_cwhDhLDjVv', '2021-03-07 05:47:07', '2022-03-02 22:29:24'),
  (N'qnWpuoBDxRC', N'FCnqUY iyZ-XvI_EudnQ', N'atTPLCM', '2021-06-02 20:51:16', '2022-10-27 07:05:57'),
  (N'EEeOR', N'GbYAfQKMcE', N'zzTAMWF-QrEjY', '2021-05-27 12:09:18', '2024-07-18 01:42:37'),
  (N'WksXoxyB', N'YVdnjwWmy_Kx', N'xuICUVyFn', '2023-05-12 07:40:41', '2020-09-22 06:03:34'),
  (N'JWfVdQFlHSoPMtZD-yrU', N'VRelRyfqNSOYMnQzQp', N'XKzlCvzS', '2023-03-04 18:33:36', '2022-10-23 21:30:39'),
  (N'LWcLueOM-vzz', N'bdPzmyjThYd', N'ReyqdCGDVZT_Pdt-', '2024-11-25 10:55:29', '2021-07-22 09:43:04'),
  (N'nVPxWWm', N'VOQOpMAxkEOkWZMuLVIz', N'DESdvxtHLLTXcEflSLM', '2023-11-27 04:12:54', '2021-06-15 03:17:53');
INSERT INTO [categorie_products] ([name], [business_id], [short_code], [parent_id], [created_by], [category_type], [description], [slug], [deleted_at], [created_at], [updated_at]) VALUES
  (N'sTJl EadQiKpnXS', 846, N'nizGKmE', 269, 441129, N'kepBW', N'exFEfSiVMeHrlS', N'eULwYAWfEBQxvJMk', '2021-12-15 13:35:54', '2022-07-05 10:33:36', '2023-10-09 18:32:55'),
  (N'iSIuJFQbBmaYQjXj', 561, N'MoZpwjI_CH', 628, 522037, N'xUmwZMPA', N'FkAHQt_VFrArRx', N'cDRjHpgWahJwURd', '2025-02-10 20:02:25', '2025-04-13 23:00:57', '2021-01-20 04:06:39'),
  (N'uzVt wWbVRvIhPauHaga', 576, N'FMFZqqFBfLnCIZXUJB', 386, 203279, N'YOsyWvpoot CCrVKA', N'mEKjjYSBkGhN', N'walnFsn', '2025-04-23 12:59:43', '2024-11-17 02:07:55', '2022-09-20 08:44:34'),
  (N'udukhMsauOaqEi', 770, N'bNEPKBkMerwLFCpAyb', 586, 558507, N'LhMJfCWtFUoyBxn', N'PHHwHCZtGVMRRwPxChp', N'ZONIqqqY', '2023-12-16 04:44:17', '2021-03-09 00:35:59', '2024-05-03 12:04:23'),
  (N'_KulvEqEEErp', 450, N'fjoGrGDCxy', 925, 854401, N'Y_NfJWK', N'vxFLQI_oiUl McOXbduL', N'uswVh', '2024-05-12 20:28:28', '2022-08-05 12:13:43', '2023-11-13 12:22:53'),
  (N'JxscuUKeKortlsA', 129, N'gimNopdXWAvpmxYmTxNE', 322, 978010, N'KzZkG', N'UThMzaHFJF', N'OEGPJjXSYEmD_Bp', '2021-01-14 20:11:18', '2024-08-16 06:34:35', '2024-07-06 05:50:18'),
  (N'LP GUpB_yAbK', 512, N'GZuvaYWdRPsrxQcCTiMz', 161, 991067, N'RfbCN', N'TlSjzwjCHkws', N'pbvNtQfVwBFheDCun', '2025-08-09 03:49:48', '2025-04-28 22:01:30', '2024-05-25 17:59:41'),
  (N'rZOuJfTLY_', 868, N'QcGQGtaFvTuWmSJZaxm', 760, 410919, N'NOEjBHnNxcXDVSb', N'fZm_cAMACleXiIgu', N'JpJCYb lEHvoCK JX', '2021-12-16 23:25:28', '2021-08-02 10:02:41', '2023-02-03 19:01:57');
INSERT INTO [categorie_salles] ([name], [created_at], [updated_at]) VALUES
  (N'tfoEgEpaBS', '2022-04-09 18:18:15', '2025-06-15 04:23:00'),
  (N'-HxHnc', '2024-02-09 04:05:49', '2025-05-24 03:37:21'),
  (N'RGnBXWHhBCkmI', '2023-12-29 18:02:42', '2024-04-03 18:11:29'),
  (N'QAczEExwKwCYpVW', '2023-06-02 23:16:17', '2023-02-09 11:07:57'),
  (N'ZauVWOQC', '2024-09-24 04:43:57', '2021-10-01 01:39:50'),
  (N'asclvS ZVIPNVGJe', '2020-11-08 16:44:38', '2025-03-27 02:09:45'),
  (N'ZuHCjnvFGsWxYEO', '2021-11-26 10:17:52', '2021-01-11 22:18:54'),
  (N'jshbY', '2023-01-26 22:35:59', '2021-05-13 15:56:40');
INSERT INTO [certificats] ([dateDelivrance], [created_at], [updated_at]) VALUES
  (N'dYDVWtLphzyaHQhB', '2021-08-11 13:22:33', '2021-05-14 17:32:58'),
  (N'OxOyBfoPsbTrCQP', '2023-09-01 12:49:48', '2021-01-07 11:58:02'),
  (N'c-tvJt', '2020-12-03 22:39:02', '2025-05-06 22:47:38'),
  (N'iOEbzKNRc', '2023-11-27 22:35:03', '2023-04-11 05:30:33'),
  (N'NpvBPwVS_P GcR', '2022-07-21 10:33:12', '2023-12-26 21:07:23'),
  (N'JnzsFiktxuX', '2024-12-22 01:01:44', '2021-06-18 19:15:25'),
  (N'cHUopweYWXsPQlqrPOYN', '2024-02-05 23:37:51', '2024-01-19 14:30:51'),
  (N'QMcXcUcqwnLT', '2025-04-21 13:06:38', '2020-10-16 01:05:50');
INSERT INTO [chapitres] ([code], [libelle], [created_at], [updated_at]) VALUES
  (N'SUJWIZVAFOk-u', N'taRKyhVC', '2021-01-25 19:13:21', '2025-06-09 19:24:50'),
  (N'neF aLGhzAIJgobo_OI', N'yMgRlJgxdgyquq', '2024-02-11 19:58:54', '2023-11-29 21:26:00'),
  (N'xCohjwoAg', N'CzLGCzlXk', '2025-08-09 00:04:56', '2023-08-27 10:39:00'),
  (N'YVOLtFrxcJdOKPGNYChD', N'PofWvXFgBcrl', '2023-11-22 10:25:18', '2021-05-03 20:14:02'),
  (N'-XqCfAvc_qqXg', N'lBqswRQGVOjMYAVM', '2023-01-25 12:54:15', '2023-10-11 08:30:23'),
  (N'fQR-KZh-oU DJ', N'qMGF-B', '2021-10-14 02:43:04', '2020-10-24 13:23:19'),
  (N'ZJZmCpMzuVk', N'l EQAaTZFsQRht', '2024-05-07 21:46:21', '2022-11-11 02:41:14'),
  (N'aYkBShmwmsjuw', N'yfJmj BUj-fnIqh', '2023-09-13 07:32:03', '2023-07-27 10:38:56');
INSERT INTO [class_scolaires] ([intitule], [created_at], [updated_at]) VALUES
  (N'-aKQwri', '2023-09-19 08:22:48', '2021-11-02 18:25:45'),
  (N'vaxzIGOdGrPHlSaCkEej', '2023-12-19 06:26:50', '2022-03-28 02:54:54'),
  (N'tcSQlQNnFHg', '2022-09-30 19:03:02', '2021-12-04 02:16:29'),
  (N'EkCppjAiCCUBCsBNvG', '2024-12-18 00:52:27', '2021-09-08 15:29:22'),
  (N'WyICOTDWsLRjKs', '2022-12-02 17:25:14', '2022-04-14 22:33:19'),
  (N'mAFwOFk', '2024-01-25 12:49:55', '2024-02-11 21:09:03'),
  (N'T MaRvozPBCPG', '2022-06-01 15:29:54', '2022-03-23 16:53:50'),
  (N'mezhTT', '2022-05-23 19:25:27', '2021-07-19 22:43:49');
INSERT INTO [clients] ([user_id], [depot_id], [plan_comptable_id], [patient_id], [business_id], [code], [compte_collectif], [qualite], [en_cours_max], [n_Contribuable], [updated_by], [created_by], [created_at], [updated_at]) VALUES
  (507158, 472053, 625867, 15534, 350, N'tcnJRIommgPu', N'GbgzzrI', N'kpBiI', N'hMoGH-', N'mehwrXQpKEIgxFpq', 829, 89, '2023-05-04 01:42:05', '2025-07-26 22:48:13'),
  (842497, 88563, 22533, 706479, 387, N'aGA_lpTywdszcjAPlZ', N'tFJOMijvg', N'BPgYXpvcA', N'edHsceuE_', N'PbziTNHecKNEPwlBHzAx', 51, 547, '2022-06-17 18:13:43', '2024-03-13 13:43:27'),
  (579176, 97458, 799855, 410343, 571, N'hscCoEmdHR', N'frWmLbmNaMjbdv_YVQz', N'zYcEaOlPsF', N'G uPCNHTI-HNke', N'kDoIhvljMY n', 178, 139, '2025-07-11 17:02:52', '2024-06-29 14:04:38'),
  (703198, 711985, 183138, 808300, 336, N'chsLQ_RpJR_sF', N'spPfGIzYtxMrDIdd', N'O--KlVrWBnzAM-HpE-w', N'OPxPbr-vIpIFxcaV', N'VDcNLdUmhCYjgOeYoXxL', 724, 513, '2020-08-27 21:57:30', '2023-01-16 01:13:18'),
  (202319, 219654, 247964, 115335, 826, N'RALAqbhdftzbfNRm', N'ula_BklZydR', N'eyVriWyz-oo', N'ygsdJjmg', N'eEfSC', 124, 617, '2025-08-03 00:50:51', '2023-02-23 10:07:21'),
  (331807, 487704, 965991, 774344, 257, N'vWhMQO', N'bJeMTaa--W vAXCZ', N'OwkZAoxMxfEZ', N'pxlqhpPbjTlZHYWyEg', N'zAuVBb', 173, 302, '2025-07-31 01:02:33', '2022-01-23 07:30:24'),
  (202658, 384128, 926544, 467405, 451, N'sfQtLcxEfFvmjiTFRNN', N'SYRXwkzhuHDHNT_HMZTh', N'UJpgEguhfeqkUqhk', N'SZGtxtACneRnCe', N'-TqfKaRAzMutuPdIwEV', 6, 197, '2022-10-19 05:38:42', '2020-09-12 16:22:45'),
  (936149, 128185, 681081, 833667, 93, N'zfDbygnPchgRiCnIo_fQ', N'DkbpuEL', N'w-BqabeKeQX_PVus_', N'XzUdTCJ j', N'ehArnrWSltQT-e', 857, 126, '2022-10-17 02:23:13', '2024-08-29 05:02:55');
INSERT INTO [code_actions] ([code], [created_at], [updated_at]) VALUES
  (N'sQzBjrWHjio-dPB', '2023-02-19 12:51:05', '2021-09-16 22:56:25'),
  (N'YfBGqzd', '2022-07-18 11:50:01', '2025-01-17 13:14:30'),
  (N'gOSvNjprSBzuje_W', '2024-11-06 05:53:24', '2023-01-28 01:53:18'),
  (N'qumWogBWrLYuaBcXuP', '2023-02-01 07:55:05', '2021-07-07 19:42:22'),
  (N'SnEPgoPR', '2023-02-09 10:23:32', '2024-04-02 21:41:39'),
  (N'OgWRaFIM_RcO', '2024-09-30 20:17:05', '2025-03-11 09:32:45'),
  (N'K-RVuCVydhJZXHoarg', '2023-05-20 04:40:44', '2023-01-02 05:55:54'),
  (N'Ft-FpprSoxP-P_', '2024-08-16 01:42:37', '2022-10-01 23:17:26');
INSERT INTO [code_activites] ([code], [created_at], [updated_at]) VALUES
  (N'WMEcgQBGXxj-x-peQZ', '2024-10-01 07:58:02', '2023-05-11 01:24:13'),
  (N'qaYKnE', '2020-10-17 04:09:58', '2021-05-04 05:12:33'),
  (N'HuNzJKSC', '2022-12-03 06:47:32', '2020-10-15 00:35:15'),
  (N'kKbuUYQwcMwEKjGe', '2025-02-24 04:50:22', '2022-11-27 19:13:59'),
  (N'UjyzGdznVMMOlseBOgf', '2023-08-01 13:49:01', '2022-12-05 14:10:55'),
  (N'ZSUUO-', '2023-11-18 00:09:22', '2022-02-23 01:07:25'),
  (N'GPNbGIVVPdzGZmfWhjQ', '2021-08-21 09:42:14', '2024-07-20 19:48:35'),
  (N'MiJjX knpflvyFF', '2021-10-20 05:20:23', '2023-08-01 05:23:06');
INSERT INTO [code_journals] ([vente_id], [code], [type], [intitule], [numeroPiece], [compteTresorerie], [rapprochement], [created_at], [updated_at]) VALUES
  (2422, N'H_wWBhBlSDS', N'qfmrYlFP', N'mjmuPFoSFqlYgRtUjaMq', N'cCMpEqhxPG', N'eNTNsjvdQvKiQ_YvoPZ', N'XKxwS', '2025-04-17 06:33:49', '2024-10-26 05:10:19'),
  (518385, N'zsQYlFnDLwDj', N'HUOgBRYeiLjf', N'uggQOepPndgb', N'vmxWRclqzKrH-X sTUgk', N'i Uilo_kcJE', N'HWuTZEdXWWUK', '2023-03-24 07:49:18', '2022-05-26 07:32:58'),
  (613173, N'pEaHwJCH', N'ENkhohB VJl', N'yPdHaNZMn', N'exgNoeC-ItrTMIJYXZp', N'mCOrP', N'VZoIhgoYnCdQqKrzkt-', '2023-10-02 10:51:53', '2023-04-20 12:30:38'),
  (323577, N'C_Faa', N'owuPGHi_nqJUgQh', N'QJZlK', N'HudZiUIrFELJ', N'vGFVwoDexB', N'gu_ZpnVcCXbyAA', '2024-10-31 13:32:33', '2021-02-25 15:13:47'),
  (675946, N'nWofgKYeTBSfgLvvV', N'bMpFnUh-mqRd', N'FFNeDaXnFKOP', N'bAgZILidasx', N'cEjZgzl-r', N'StitBJrEpjxYudXBv-i', '2025-07-13 16:30:38', '2020-11-03 08:58:40'),
  (351576, N'yZCNOhib CkV', N'NwEJ Q', N'_ouSS', N'aIgKMWZY_AIZVqr', N'BuTCVSUIXf UCqs', N'cuqdOxfxSQ', '2023-05-29 21:20:13', '2024-03-16 22:13:05'),
  (507873, N'aKYldhUzPFZuM', N'cbeoqOftcwVO', N'yOEbKe', N'YYrBwtHqadacs', N'bsTAq_', N'qNDyHYnsUIZCwkxA', '2020-10-18 08:54:22', '2023-01-13 21:05:56'),
  (938665, N'szBiuCBdf', N'HcSEMvVffGh', N'QgY ywlRQx', N'JRhxKv', N'tpgvb', N'-_eXFqeOBRrEZE_XUQy', '2022-03-29 19:26:52', '2021-07-01 23:43:38'),
  (656245, N'SoX kS', N'hLDzEdkxtygA', N'sryLAsxWPGMWl', N'RtfQIolGXef_Z', N'COirVRRrXFTM', N'XLDVTuKfT_', '2022-11-25 11:33:51', '2023-03-08 13:50:09'),
  (556032, N'baKQtyv_WIqzpY', N'PVsJV-ZGF', N'PEWpE', N'QORZEAZq_KEnCHcup', N'_jwhKg_IDhBi_', N'tCBZDBBSzWdSNfLhMmx', '2022-01-11 02:37:59', '2023-11-15 21:20:19'),
  (879340, N'ivKQPNnhCBLF_', N'HYwAW', N'uKhbOx_PBUYnYULPQ A', N'cQt_rYCEE hrcwZC__Dd', N'xVbSfxxsq', N'cO-YNSNIuDZuix', '2023-12-13 12:34:57', '2022-06-24 02:46:27'),
  (514444, N'rVJrwvUvTQPEy', N'np vSrlaTvbKvnXaRC', N'EUEiHOTSXj', N'yKuRGJFdTJLr-kVPB zb', N'ABZNIbYOlXDB', N'qIlPXM ZsmSxcd', '2024-09-25 22:07:43', '2024-01-09 10:21:32'),
  (840925, N'BwoEFXDR', N'irFgAsKeLhymR', N'Lvb_-REZlvMlwcgyMe', N'BNEHdENGjndEQcbH', N'mnW_Vt', N'jnXEt', '2022-08-10 10:18:57', '2022-02-24 03:05:07'),
  (871579, N'KTlWXrNsgJafSyRKOw', N'hPSlK_tA', N'cpegIjJDMgqBw', N'gfPjbZm oK VdxMy', N'RBPLqjnKs mJRnUEwR', N'kHGtypEUEptOJO', '2023-05-25 18:22:30', '2021-02-03 10:35:50'),
  (770821, N'a UlCEYiRYfD', N'ezkwc-vwmk', N'CNMjr-POtRXSGpSDjz', N'WTFLpUGQHK-rMfZk_HB', N'kGFEqFYIyNfdsbCyT_Y', N'MyNYyul-Vs', '2021-06-28 06:55:20', '2023-05-01 15:44:33'),
  (509689, N'eQGdjbsbqeTa', N'ZgKeiMXZrpYSpDdlBxC', N'sNzoZwub', N'LnxneQf', N'hUuGt', N'zC-of oEdScUSTeQ', '2024-07-23 09:12:16', '2022-12-23 16:24:54'),
  (594781, N'fCxAbZFoalg', N'nDnp-MEZOQcf-agQsKk', N'ke ZJN_kkURqaaAenH', N'vr_SLBzdkPu_frpvI', N'-r-Efe', N'Yctvd', '2021-05-05 03:30:56', '2023-04-28 19:41:03'),
  (782616, N'eThKuN OAd-j', N'zMXmZSrYWFFMBAd_uqG-', N'yjuEwa-rkltzqWd', N'LqQVSGAWhXUWFv_qg', N'FXFgYhtJJ', N'ydxJbeKF', '2023-06-12 19:59:17', '2023-08-25 18:48:11'),
  (954717, N'cJkzFVJy_ucqrUsftrVi', N'XjVzFYObHIdSw', N'ev hoC', N'XlAGqNCcsjqeAUKQGh', N'jaCyQIfCPacBIe', N'oBxKEjQoMVPYD', '2023-12-19 17:03:29', '2024-02-18 20:41:20'),
  (773009, N'RduqhDYf', N'cbYFBafS-DwWhTV', N'aCEJq', N'GsxxDBgHOB', N'EZcBBFiSfMUkZ lJWotL', N'qnaOLYjh', '2023-09-20 10:40:01', '2021-12-25 19:47:49');
INSERT INTO [code_s_programmes] ([code], [created_at], [updated_at]) VALUES
  (N'lVxNFIomB-DrYSdHRKg', '2022-02-01 12:50:53', '2021-01-07 04:30:50'),
  (N'LLZrZsSDOXzLV_II', '2020-11-19 11:09:45', '2021-05-29 01:33:55'),
  (N'QXkvWzZidI', '2022-06-23 05:04:07', '2024-03-01 17:54:46'),
  (N'VaJIcjwF', '2020-12-18 03:16:09', '2021-03-25 15:01:52'),
  (N'PkTdVPzTpDdoxvNwN', '2021-07-14 16:24:04', '2023-05-05 16:23:26'),
  (N'zCyWeBTA', '2021-12-04 19:13:21', '2025-07-04 09:21:10'),
  (N'ZwIzVmy_diXxpyGFm', '2021-11-11 20:55:35', '2021-02-24 21:16:48'),
  (N'lurxcZJby', '2022-12-01 22:27:14', '2020-10-16 13:15:34');
INSERT INTO [code_taches] ([code], [created_at], [updated_at]) VALUES
  (N'JZD n PJFg -ImOshWd', '2021-01-25 16:32:14', '2020-09-03 10:37:35'),
  (N'yuIsGsp_TWZYKobWar', '2024-04-19 09:08:41', '2021-03-01 03:01:06'),
  (N'SZu-PTAaTIMS', '2024-11-10 03:16:54', '2020-12-17 02:23:52'),
  (N'rK_RpExNYassDNdO-', '2023-04-25 20:51:48', '2025-05-09 04:28:29'),
  (N'dqEaiFPHKbk_', '2024-07-05 14:04:44', '2024-04-03 09:41:37'),
  (N'xhmaRXduOYd_h', '2025-04-11 03:01:32', '2023-06-04 22:06:08'),
  (N'vtEnIGXaIslFtbykGkGu', '2020-08-28 20:37:08', '2024-06-01 07:24:32'),
  (N'wuolaxSiIx', '2021-04-04 06:22:42', '2023-05-10 12:56:54');
INSERT INTO [commandes] ([type], [code], [nom], [marque], [dure], [patient], [medecin], [fonction], [qualification], [tel], [formation], [taille], [date], [date_jour], [detail], [paye], [execute], [created_at], [updated_at]) VALUES
  (N'dhmvkqDffZCJGERW', N'aUxhnNVShHOrfGbw', N'sgibT', N'FqOcr', 753, N'evBLM-nnZXjEASNj', N'JKLqCoGD-NmcKjRxl', N'MdydxAmAZcC', N'jt- _hn', 489, N'N_tNfiPuI e', 582, '2021-11-17', '2023-01-18', N'LsmBtnBwRSmfQtVuS', 1, 1, '2024-03-19 16:15:32', '2025-05-01 08:01:02'),
  (N'xcWILugs', N'SoYPgICNJLEAXopRW', N'imarjZ', N'p oSHHOWpgQ', 584, N'aXjubNUTQjFbqabXt', N'X-IByBGtDcZF', N'ycVkDuEUG', N'BmAGbwnFmHd-JXHjmm', 905, N'KDbfMZ', 595, '2023-09-04', '2021-08-02', N'DFdORDxgHSziga', 1, 0, '2024-01-27 00:31:55', '2024-07-20 23:06:43'),
  (N'GPPeBIKyaa', N'Xz_YGRHekFLdtUkxk', N'yuGbBIXeRCMik', N'gQNNYDMCanhcJd', 544, N'qJUaNI_wUqq', N'JKc ZrIpmqAYuIySDVO', N'ydlgneQGS', N'BTBVU', 425, N'duOMKEORtoObHF', 743, '2023-10-02', '2020-09-06', N'CHlPXvT-pCg', 0, 1, '2025-02-09 10:25:27', '2025-02-14 11:05:55'),
  (N'bsfvYuFIOgpOUCmTes k', N'-EQvyirE', N'Uqpm-hFIkCoUZ', N'wPNEAB', 139, N'Ht aCH', N'TzqaWhvCCsAyi', N'MNSFGQu-', N'vOiuvQ_tjqvJYBzDlN', 183, N'DkiTAE', 631, '2022-02-26', '2020-11-17', N'QbguXqgoHkCToJAQIH', 0, 0, '2021-10-13 20:52:27', '2022-05-12 22:06:24'),
  (N'ijwPqBPGVAlKABfdo', N'zxFrPJdJtmFPfTt-', N'AjEoOxaPzc', N'Uej BA', 883, N'_yO cLZBesMYcK', N'adMgBzw', N'tvtUpcdgEHr_ziP', N'UtWPSkZ aPul TivQRJK', 519, N'R mdFXmkgAzx XzKgcV', 459, '2020-12-19', '2024-02-25', N'Weh FfnQqaOjwcbAr', 0, 0, '2024-07-14 17:05:24', '2024-03-19 02:24:09'),
  (N'pt-KPtWQAviBR', N'd_umsFFR_qffAakG', N'SKwmT-JIUFvwMOJF', N'KVldqUeRwukYHVY', 861, N'WodZgzrUob', N'OiMFDTrsPXso', N'XTjLStwRDHBF', N'Tds_EDiqOOWzUr', 936, N'jYYVZGnQXsgKYaACOYQe', 23, '2020-10-24', '2023-12-24', N'JsslNGkLKpeyOqihiGi', 1, 1, '2024-12-09 09:47:54', '2023-08-08 19:07:36'),
  (N'XdXlsHLeavPxEKKKfxX_', N'oqRwywhPjXosn', N'rdTDSbGXbA_Pn', N'UpLvNPs', 245, N'CIVYPr_uNbVEnSU', N'jHkeOgYe', N'ztOjgQGfuq', N'XFJGLnXDODdFd', 379, N'CbNxP', 739, '2020-09-29', '2024-03-19', N'iyQnlCzlqTQWmiBvC', 0, 0, '2024-11-08 16:29:00', '2025-02-07 13:02:17'),
  (N'qVFcEG', N'CMHFFQvkSPmN', N'--myKZgZHtxrrgRZLI', N'GxCTKjHkzZjV', 620, N'gAZwg', N'MUKukEsC_ZI-VFg', N'PvVomnePCKXoeYQn', N'FvyeN-BVg_Dyx', 646, N'jhZbZb', 805, '2020-11-16', '2021-08-06', N'HBtQNXKw  HQWDdXawhO', 0, 1, '2022-07-27 18:42:20', '2024-12-30 13:59:25');
INSERT INTO [comptes] ([agence_id], [numero], [cle], [nature], [created_at], [updated_at]) VALUES
  (941071, N'PYAmgN', N'vnF-y', N'kUJDOK RkTF', '2023-01-29 04:44:39', '2023-11-29 02:23:51'),
  (812341, N'lzGRNEumfe', N'kQqWYnIFi_QbCuCM', N'UgtPtqPMrZY', '2021-08-12 23:46:21', '2025-06-09 08:42:29'),
  (393854, N'uRKWWPylOqQmJ', N'aKT-jXFCQe_wC', N'QOAHvaPCduRh', '2025-03-30 09:01:48', '2021-12-18 09:55:23'),
  (366556, N'PhYbmfP', N'CibEwLgrr-VxABeNAZ', N'UDRyYafUvdTrpraXf', '2020-08-23 16:51:24', '2022-03-19 11:44:17'),
  (411264, N'vDyStDxA_P_X-zxV', N'mUiLPEEtfWdvaBHuNbY', N'ppdNYtBWS', '2022-03-20 21:18:05', '2021-08-19 22:35:36'),
  (325708, N'ObA-g-y-vo_-Do--Yaun', N'kIMaFTHeO-AjLm', N'KZPyhw', '2021-02-11 01:46:10', '2024-09-16 18:40:28'),
  (116972, N'BzhzMd', N'B_DdvKdrhhDQ', N'CMBRmgMKsACcKNyRdJDr', '2024-03-18 01:20:58', '2021-03-23 15:31:52'),
  (904919, N'jMGobGQWF', N'TEC_KIGGjqXnDw', N'HVzIRBlCqGlSoaXcK', '2024-05-19 10:52:45', '2021-03-09 21:39:37');
INSERT INTO [conditionnements] ([unites_id], [type_conditionnements_id], [code], [created_at], [updated_at]) VALUES
  (943071, 340214, N'F vLwbhZm_WZn', '2023-11-28 14:47:34', '2024-06-25 21:37:41'),
  (899569, 158742, N'e-uyCWU', '2025-01-28 00:01:27', '2021-03-14 00:59:51'),
  (290481, 18627, N'IlsW-ztMP-', '2021-08-25 08:26:40', '2022-09-05 03:31:38'),
  (471210, 83602, N'YudKrQOkQZYnQgxKAO', '2022-08-23 04:53:10', '2024-08-17 06:29:24'),
  (564852, 89961, N'hP-NexgGUeTp', '2023-11-17 22:30:12', '2025-07-28 05:34:44'),
  (842352, 24572, N'rCMdt', '2024-04-24 09:27:34', '2023-03-27 00:38:57'),
  (295093, 627495, N'dXwRZIevgMWoN', '2022-10-21 16:45:35', '2021-12-17 08:29:32'),
  (518536, 586914, N'TOeNRkB', '2025-03-09 11:02:22', '2021-02-05 10:03:04');
INSERT INTO [constante_vitales] ([patient_id], [user_id], [poids], [taille], [imc], [poul], [temperature], [frequence_cardiaque], [pression_arterielle], [date], [created_at], [updated_at]) VALUES
  (22135, 653925, N'RdOB He-stfBOBUygg', N'WDRj-MrkaAEdJbvVHVwJ', N'rRaqNPEFT', N'SElsacodmfxeVYH', N'fCwLJMBlXjRtNtODAq', N'NrL-wGnl', N'eMKcfaiZzonqN-ij', '2024-05-28 03:04:38', '2024-10-09 12:47:57', '2024-08-30 14:29:29'),
  (57531, 557323, N'Kt_RkBGlpNQVxVx', N'mSrqIYlfpHOah', N'uP_vEzMr', N'RxgnNIWx', N'ZpknExaGWnNFphDu', N'ujRTojrpq', N'gVnKwZVEY', '2025-07-15 11:07:47', '2024-04-25 03:30:33', '2023-05-30 02:11:55'),
  (988955, 458412, N'JaFmoxbaAT', N'_SuXuUHctYHkN', N'cE_RIkHylxVwHC', N'KmUVCbXBWk', N'GDUnybHdxwIi RiA', N'WmTQfADx_', N'efxm_', '2021-10-16 02:34:44', '2024-06-16 07:09:55', '2020-11-04 13:09:04'),
  (813108, 225473, N'Xg-sCEvWy_SIGS', N'nVFfpCLLIEaHbZS_vp', N'ILJVeZlTjP', N'QNyZ vCSVx_m', N'YWyrZsvhkOuyjkjaIQnY', N'XA-qRrZiLKRUy', N'nHdCeJRy', '2021-01-05 09:41:54', '2024-04-25 08:52:00', '2025-06-27 10:22:10'),
  (621409, 836183, N'MMqvecyQ_Hm', N'NjeyjLHUy', N'tSlFG', N'SFYZgWdpAPmOaxyM', N'PPWAluOcRLyNtei', N'ukJHINLRY a', N'WbHefaDgsMVlnTzbp', '2024-02-27 19:24:30', '2024-12-26 05:48:41', '2020-11-19 17:47:08'),
  (532251, 681736, N'JQGsqYXrnZ-FiXh', N'lB_YTTFF_An', N'XeTLeRGdZtoG', N'SpcXLEKFvXyGTY', N'lhJhJWceZH_VE', N'DkMfTSoghkywN', N'tyandiRngieFHhCYWbt', '2022-02-23 18:25:16', '2022-09-19 04:42:48', '2021-10-31 06:15:40'),
  (517924, 897598, N'HIJffIuNZkbAnb_', N'hywiDkzfJKgaK', N'ogcb eDMQ-lWueoz', N'jmIPbenQCc', N'b_KPJ_f-Mt', N'eWryN', N'fTp zcDFjFkcOVsxd', '2025-06-30 20:57:56', '2025-04-29 17:31:06', '2020-09-11 22:32:58'),
  (454983, 771565, N'SRwopnxbhzT', N'Aiuect--Kr', N'hFpcxQeZUvgnoQibL', N'CmdL- YjsaEtfO-mv', N'AvppKdoYyoQHxErmoM', N'LuGbSabY', N'gzjRyFxcfTtBHp', '2021-09-01 08:42:10', '2022-12-01 04:24:52', '2023-12-19 09:12:31');
INSERT INTO [consultations] ([business_id], [location_id], [vente_id], [patient_id], [personnel_id], [session_ticket_id], [acte_medical_id], [service_id], [code], [date_consultation], [diagnostic_initial], [traitement_initial], [diagnostic_confirmation], [traitemens], [conclusion], [commentaire], [status], [reference], [prise_en_charge], [motif_consultation], [antecedents], [sons_anormaux], [reflexes], [tonus_musculaire], [equilibre], [apparence], [etat_cutane], [ganglions], [douleur], [bruits_cardiaques], [bruits_pulmonaires], [updated_by], [created_by], [created_at], [updated_at], [observation]) VALUES
  (372, 6, 870703, 819541, 18656, 236086, 605601, 268094, N'-xGTRUTsyVsPkdgG', '2021-07-14 12:04:21', N'inkag', N'wgMHJMazVb-Mh_FXw', N'DvhVLk', N'DEOwZbrzgzPkQjRO', N'mUMRBwBIVOJ-WO', N'Ykajaq_JFfb-oyYRvosF', N'WsfqsYjUTVEhRLCsv', N'esxLxwaJddj', N'BULwt', N'muBqiZCSiLqnAOfcYNbK', N'qudPHhqTBQ', N'Ccj-mAaCshFdYB', N'klxkv', N'mQQfmqVfCAllIbK', N'teFxrRcgypCNcwXJ', N'JkJhCmNnnW_NV', N'NOgbWWIkZLBPQwBgi', N'Y-ysyr', N'-EyqDJ wykvdJqwdVR', N'PtpY-KL', N'wDaLLkGBh', 9, 148, '2025-01-25 03:44:56', '2023-07-26 10:19:33', N'W-gqpHR_juRvjap'),
  (191, 962, 970457, 705250, 911238, 760220, 567809, 798211, N'v-KhIWh-KY_HcXwlH_', '2022-05-19 23:18:06', N'_vmaBF', N'aUQIoZdoJHsb', N'VBOEDYzL', N'SSeLPhVbv', N'_FgLD', N'MwFsWt', N'Trb_BLhtpGDZBEnJ', N'phXSOuVZxAFBMu', N'NkKylVAokTEnkqoFWcm', N'KQcuAzW', N'RZgqeRotmbCzHP_', N'jKXGCyZSJfPO', N'cwZUOfLgEYakRrlpBV', N'CqUQnDpIcene', N'msemwREThZBVJ', N'AhegVsDyk', N'CnqDI', N'YWoUwthr uwYAtCmePgX', N'GIuLlzzoEOUbaIPHM', N'oJmchtJQxEGVg', N'xBaHHdRYqeGRNcWQi', 289, 292, '2024-01-21 23:51:51', '2022-03-17 01:09:18', N'BeDnqSycZI'),
  (469, 223, 801218, 847627, 455009, 875036, 211411, 81991, N'KmSfHfmCiWjLV', '2022-05-08 08:47:24', N'tvaPo', N'XPHYV', N'rKhPfzsFAqLl', N'mJSAJZgnoUEPiSkOFZSX', N'JexwnQLl', N'SGIpclfmzFeAdPpp', N'eUEWHDzajGFtMa', N'kASRqHGeavSbpLfAEIel', N'CNOoMPIvOKoW', N'XJjYlY', N'PHgrBKwpLup XALHUjp', N'cCkOt GAgR', N'vBZR-YX', N'od SyFJbeR', N'yFcfrTe_jJaqs', N'gkcJmWAisJCtGvzln C', N'SeEoZZiZCDAbTAWmNP', N'OeTpAJKLdBxXEse', N'LJqPoAzTpRpEV--xAX', N'GrwovEC', N'TFHxKiSNrvGoAeIRZGSm', 451, 299, '2023-04-17 02:06:48', '2025-03-29 09:52:41', N'mWNycsirru'),
  (5, 187, 368478, 873049, 888392, 408880, 520652, 671542, N'jhEZHl', '2023-06-20 17:57:24', N'zWgUaoC', N'nWkLsao-YG UbtnFqf', N'BN JaGUyuu', N'aHAX_gN', N'aF_UVGnNYnRfpiNtckR', N'YxLslwcezxCxxuEtHynO', N'JeaRQFQVW', N'Yvzdv', N'EnHTOW-shdKzaXb', N'y hAZReQvmfCyzbZSk', N'sSxyMDSLfGfsno', N'NCvDv_YxqzYbyJmrX', N'AbxmpHIk O', N'MTLBLzyUdITY_U', N'GDWuHJcs', N'sObmAotH', N'qvgiZVyhKpCNdkkPVMn', N'MPSss', N'eRkfYmr_Tuv', N'MNMbcElvzyY__WJFipd', N'PnAwCHmCSePRxgYds', 102, 242, '2024-01-12 00:25:39', '2024-10-07 12:41:47', N'EyFMxZLQSPmViUirMyE'),
  (224, 480, 83431, 617982, 442160, 494564, 328842, 344390, N'LhZib-MtvqQbkITNSrt', '2022-05-14 10:34:01', N'y-LCzKrhp', N'yFrXIHB-GMLzMaHXE', N'oKfthISpuLcVUNsNdR', N'YsqDrlDdCixtrv', N'EJAedMvqD', N'JErdDufNpN', N'qyZapCIk', N'ouAHM', N'RbJPPxIF', N'DaUEwbgmKPRNn-ZMOluz', N'-NESXtXRZz pfWEXEeH', N'lAAUCVW_HAezoYoWJ', N'nYIhpamjVZAitR NH', N'tbNqzzxZ rKFCbXuoz', N'rZp qKPvsgigPD', N'kdIPc_eSlHNpqGkIa', N'YRLk', N'wp_yu', N'sOwzH', N'NAMccfMknmfYuiZtar', N'uODuGSrS', 821, 149, '2024-07-26 11:29:27', '2024-03-27 06:20:41', N'_fPZlEC U-KV_mZpop'),
  (849, 337, 457064, 984243, 882306, 645454, 325807, 948444, N'bfJrqYuCz', '2023-11-08 14:41:51', N'A TQlK-', N'dUAseaneIteOPFpQ', N'OAx inqOBx', N'sBVei QZdoWWIrVA', N'RlBqtRdeM WGNlTGMht', N'vnv Oq lvO', N'i-IQBZVPaFSGf-WpYG', N'TDYv_epVWqXcDR', N'NfGVubxSIiQqd', N'QuXrATweidzNbQOP', N'ggNYUwXLDnOCjvpYao', N'uIrytoWM', N'r-WiJbSuqRbdL', N'XUWngKwdEJ', N'pa_vRmLb_cpWrOUWOnlV', N'yjbvRxXTxT', N'Uy jGtMFxyYwUCIS', N'-ZoMpMLXsneb', N'fIGGwWCJCHlYH_aR', N'ElU-GpMCHmaR_eJ', N'xOPL_XRHszWYOSUb-', 462, 772, '2023-02-14 19:32:51', '2023-07-17 11:40:06', N'kQuRVyODankCgIZOGC'),
  (366, 533, 473956, 862491, 344153, 56052, 833272, 607929, N'QicFvQ', '2021-09-18 18:00:46', N'qzYLdD', N'nLbOz qIqEFmNk', N'jtOYq', N'aREpOgKEfIPNV', N'heldW', N'WzFlNRPeVzN', N'iBfOXzAQArEeb', N'SKowlCvAxiSTbIpgRWWm', N'PaeVy', N'OHolfvk', N'd-FseZ', N'yTSrncJybZsjJ_Qpg', N'Fini_ty-VqrEhcydY', N'dBDPpFDHINkeqhIhc', N'DkZMbG', N'ENZ-IUcUgPgDd', N'XzrDORBVvIOxDWxC', N'oZUoz', N'UuOLWUrXFMf-b LWNTN', N'V EHsIT_zuk', N'XcIasu-nmqn', 26, 271, '2025-04-08 11:41:03', '2022-02-12 11:15:47', N'YD_ca'),
  (25, 158, 411723, 999253, 806622, 491375, 366492, 353949, N'CwmZTXNBZsYTf', '2024-03-31 02:13:33', N'HivfgE_ j O', N'dm-ZwGkfEZl', N'oRpbIXdYVqJ- OOaI', N'SfgkXxGbttSodzuR-X', N'EifgiCgSzHgaKHg_QDA', N'oxifvjAEm PCheaCWa', N'IAHPBrAV-tgsEpwM-', N'BJKvmODslvluDC', N'IL-KOSFTEZWoR-Kxf', N'OycoUkQPpQEV-bgqR', N'NwTPd', N'YPZewPXgNNyUQOVojod', N'FFjvTLAeSfxOPM', N'RRO_ooZXGXsfziWR', N'BlJVW', N'uUSUAzd', N'bKIdwfOHnqm', N'KnApuBHdSHFC', N'sFjsSqgTBDyj', N'ZIFVspbN', N'sFtiMOmizHpUtHEbMU', 973, 654, '2022-02-06 17:22:47', '2025-08-08 01:32:30', N'gARkJTLcJtwqHYj'),
  (387, 144, 459359, 499937, 949779, 215727, 234090, 107037, N'vHgiQX-JDz', '2024-01-22 20:46:03', N'raqZgNCVqqDB', N'Tl_Xitz_NzHZvWh', N'LleExeDgpxSQjOJtuq', N'bTO-uaObwZCqRvTHcFA', N'tIDHthoIQphlDBcFIX', N'mwMsIlOYiqxi', N'ZWIIhyaQmxZpt', N'FBS-wtAg', N'ggPXLPgcPgsRX', N'oKPQRfOk-KG PpZuHqs', N'RgiDE', N'iCFSguy', N'm -Ma-LgRCsrFKq', N'HaQmb', N'kKOczq gMN', N'uJVscjSKpDAqui AO', N'JCiHakpJyuAlAca', N'xLIbQ', N'HXJGaaSp', N'avmDI', N'IzHVEOkYU', 672, 868, '2021-12-13 20:15:10', '2021-01-26 09:07:27', N'aDed_IeWBKV'),
  (175, 963, 174382, 215030, 915511, 741977, 618993, 490081, N'Pzkhxrew_SeLJdCa-', '2021-09-18 19:07:19', N'UiNQk- SMt_ jQJAnvI', N'tLkTymJLXO I', N'PPrNuwMfdNjXXVopxx_H', N'D_jGPoqzPnPH MgB', N'QMbwuJF', N'nbSOjLAfrULMQWdY', N'eBDKuOQkPclDMX', N'rv_qIfZe', N'EOkGrvYH', N'IVErLqc-cKlAlJ', N'wVI-bFQlb-dJOQbwD', N'fKFsn', N'CuRjQNivw SWxOA', N'SSJrB', N'agvSP', N'iXny_jrT', N'sNPRsYERca', N'whKSczPCi', N'SrXBdNxZESFk-s', N'FsDypdRInvCiQIMbNg_Y', N'cTS-Ap', 274, 657, '2024-07-20 08:54:09', '2023-04-02 14:37:44', N'Ga qXic'),
  (695, 158, 164510, 204217, 16159, 331384, 818923, 910106, N'wDpnX BJXPWlG_EywCxU', '2023-09-04 10:37:29', N'ivGAJuyIxbUBWyrG', N'HkQztGEhocddlvwqzPqv', N'psCNGwiLqOOG', N'sDas hSStxcvQV', N'nWmEcBMvPg_eHgLzP', N'mIPC_xPN', N'uKrklKHgQmpPjseN', N'_DUffHagTSyCSYDs my', N'-qINaL', N'MjCgqoRAKXrEqMn', N'XEySHILnTGAfzO', N'SHQEZDy', N'UuHRdIsmfYNAOu', N'UeSC-KVcOY', N'umQei', N'bxuS_FtdiOZIWtvNxI', N'BKuxK-gOkAHfocFHpCn', N'YHSSpwLt', N'kVpWVquL', N'mlZxSHdVls', N'u-FegXylZSDrXnvg', 933, 803, '2023-01-16 19:10:57', '2021-09-14 16:04:26', N'miFSdjngDqOciHVecy'),
  (3, 800, 661990, 894604, 508136, 406712, 243706, 870754, N'rnnrRAalPVynpU', '2023-10-03 16:18:41', N'reTzOlLZJQFcZkvjg', N'UUfrROUow_gEiPmQ', N'GxcqUVYQtIxkydOWj', N'vsPEjkqcuUxZ', N'cWzehoNbarxP', N'Ex_OkmrdG', N'cWxAJYQoovxwzpGxLJeH', N'JqnNKXCtH', N'LJccwTxFTn -mHaDN', N'zOyaKRsat', N'DxbgDZuavAR-z', N'YuHMWNOVcPzuIzLF', N'kmkslcqpb', N'zpSeKg', N'B_KE-', N'V_pyWpvL', N'WQZZf_t', N'-d-jJzgi', N'nkJAR_Whr', N'TXiOs', N'tijqVMjkspbjoSi', 793, 720, '2021-02-09 16:50:23', '2020-10-06 09:46:14', N'gmiCH'),
  (961, 619, 179621, 571027, 691320, 704726, 168943, 277619, N'vdPL-FKgTovo', '2022-01-05 06:14:47', N'yhOFAlLrVSHrAVF', N'sdXIWMDDLxnyeraJm', N'PDcMd', N'ppydiFmhUvBE-UkAe', N'VXmBlLjsuZMQIKETCDmI', N'StmGjerBkM', N'klkH_omHUY', N'mGulUkn', N'MbyjFRbXLTs _cU', N'rtektvkl', N'qZxyCRbHQ', N'KToSPwcrAkSN', N'mPDrhwm_vJ', N'nTHCGPLxYNfU', N'vpWcL', N'vJExKwdGSlwZE', N'olVSRmaaE', N'JAeJB', N'G tzRDsDUOWwkV', N'rJpVxPyx', N'JOXyKi', 681, 859, '2021-10-27 15:59:47', '2024-07-13 18:08:15', N'Vlv i'),
  (694, 700, 386907, 841848, 840711, 665993, 700440, 741124, N'OgYhVQdWxwVAl', '2023-03-20 19:56:11', N'jBQACAP', N'YPK q', N'VuKztE', N'pmB rk', N'-XuWmTjbBur_UU', N'iAOesotdSQ-X', N'Eewj-TrmYhc', N'vR-AIpP', N'NVxpU', N'VlkxkVX', N'rLCsCJDdBCPOQyssk', N'OocDQVbDHfVcUeUcgi', N'-sHXaxzMOtighV', N'tTLPbbrqLe dQXUdCkSm', N'U-ZsKlb', N'KMnbTAsdqfiedD', N'Q_rRne', N'ZwxYa', N'fxUHGDJucyA', N'XBCZw', N'rhqHowev', 413, 22, '2025-06-16 13:52:34', '2023-08-16 15:32:47', N'rUiDEdRj'),
  (67, 351, 816251, 241523, 566109, 407143, 120438, 109805, N'hhfTBlUE_gqnWxN', '2022-04-11 14:26:33', N'hczgP_AuaOqSF', N'uwnh_ScFmF', N'ljaCjuU', N'IPtu U', N'tbJHBUYcVN', N'RLiuXo pAcgRaLVPNK', N'Ye-LgXT-rXdb', N'k-UNCThY', N'QS_YPlHHC', N'UevTLqNjZwqOmt', N'cjzBqPlEpITBOM', N'-BrJefcveXkKOUiSD', N'rmbVBFEF', N'QyDDGeaFaGSi', N'dGNYoOwfTSomV', N'wDKldJlQ', N'YByf-TyPkbfC', N'LZuUhRiyP', N'dRJALBXhf_bJraRpN', N'VKlQP', N'zEnWAbXHAoZnn LMPwcz', 401, 720, '2024-01-29 00:04:47', '2024-10-30 23:15:52', N'aYTvwbHPbPcv-dRMdJ'),
  (224, 45, 436302, 656130, 652108, 195894, 378229, 50286, N'wxBstZ', '2021-04-19 09:13:03', N'Xe_iqnAezdxaSl', N'CzfLhW', N'VtNInAFH', N'Napi-fCCrK-Sf', N'XEBCvxbS', N'rm FvP', N'Vgv CwPQilN', N'dTIp JzcmLdnBFs', N'C_xzEx_nXYueupqQSF', N'mMiFaHgkdDIcW', N'nFIf_', N'hapOj', N'Gj_pq', N'XzaMRNb', N'wFTHIZYwhzzfKbFzqtr', N'roYLsV', N'TeBPjiSkDS-CiBgbv', N'XPY_ckUybV_lH', N'_YAwUvLjfTHLuy', N'qNKn_mQLCrwmMeIcl', N'IsJCAfYOttqo', 750, 734, '2022-07-19 08:33:18', '2024-05-22 05:27:00', N'yXPPcN_dGvCv'),
  (229, 797, 774017, 490571, 632135, 320823, 464297, 411405, N'gHTnPqlTKba', '2021-12-25 20:21:41', N'LkPFIYvk_mszUQ', N'ueYkhW', N'FzVa HMAcfbyBuGNCG', N'TtiVx_AxJi', N'J vqSOcOQtU', N'OvbSoKJzmHmVqy', N'MWbHhqsMHzciMTzYv', N'lRJToewQmbEb', N'MZgNcYsTHSFHBbewdGT', N'prZuelMHjMPV', N'wrWfGnmXFJHgt', N'WTtjwbDZtoH_ic mMw R', N'PTZdCG', N'CCvvacXumVuEY_OO y', N'Poz_Cn', N'yerlqErfwW-', N'-BVojNu', N'ATePrGXYYSkSqPpAtI', N'eCHkSCRxVFEmdWy', N'qzbfFQq', N'MytbUdd', 846, 746, '2021-12-15 09:33:00', '2023-06-03 18:37:44', N'RGYm_RvMPB-iCHpOZJ'),
  (486, 490, 501787, 401003, 344441, 273372, 155, 140579, N'tEWhswhmCrQa', '2021-09-21 08:48:22', N'A wZ PXBvl', N'QyExylDxWqvR', N'aoXtLOGWKpMCx', N'vpzQtOklRd_LqCcv', N'qFzwGTSmNQXT_', N'eJUPD', N'XSMk-Cdr_pGIvUjHC', N'_wXSHor', N'obi LNSQDTpJu', N'r_lZrdjNXq IWa', N'SBGHySUONTJONc', N'zm-qQlFktCZDghwCJDm', N'YIfvAh-zkeVFnyE_fpVH', N'mesbSOneKS-hzBAXThBk', N'VRQzNUIHUKPUBE', N'lVeGiltDKOOliqFzP', N'CcRDgz-CfOrHQKwDNj', N'DIxSlmujMGdbYNm', N'WeoXCpqvrisE-', N'ewuHl_le', N'KvfCfYM', 992, 2, '2024-06-21 14:39:56', '2020-11-09 09:03:58', N'DEPBQMm hngY_ztupJ'),
  (202, 198, 419691, 932928, 310366, 169191, 365723, 338055, N'_oxpp', '2022-02-14 18:12:13', N'cgkvtSz', N'uX_MesLLQMw_KW_WCEc', N'gSZEaxBIQUix', N'lcerZnvtxyZ', N'YzENGGRZoBG', N'pAO_-tQtUtLGhbQzmW', N'YACWmKiOb', N'TYbriLsjNNiWefN-', N'rCqnPWYOvd', N'MQEIkdKLVnGEihgibn', N'ULNGmLW M', N'gxaXQX', N'NwtFBfBJWdUOyGcp', N'tU_bau', N'AHbfZSXmh rnp', N'awFqmlgVghwrKvNOVP', N'KfWREMVgM', N'-NZQdMepyseFPAuSK', N'b- xKtIOn', N'bKbeA HagWfv QnVA', N'NysnM', 307, 373, '2022-04-20 07:23:44', '2022-11-27 08:07:13', N'nida_LAchxmvmZOYbwol'),
  (814, 790, 360593, 453036, 781209, 181183, 972100, 323239, N'ZtMFc', '2022-11-21 01:13:41', N'rJSvuwgRzKUnkTsc-v', N'WYRYsgfOKnxmKgOapGP', N'Sz XzFC', N'NRxje', N'RG_yHTcqSmMqjLa', N'YGRQHL', N'uXYI-OuEG', N'MT IcmEbnCE', N'WfjdxJYJAKP', N'HwnSdDqHDJeZmq', N'ULwSP', N'raudVeJg', N'T_TyeFcacrG', N'tUQgU_XViRmQqGga', N'RukuupSKyju-xB', N'rrgjQTW', N'de-dNmQihvjLqgFZBhh', N'_tGokqWT', N'MzVvWi', N'eihy YATKtHfS_Oda', N'ekTnoSb', 126, 430, '2024-07-03 10:44:22', '2025-07-26 15:28:25', N'vxOyPDploJUPZmyGt');
INSERT INTO [consultation_diagnostics] ([consultation_id], [type], [description], [icd10_code], [created_at], [updated_at]) VALUES
  (104272, N'ptszklZGbVFqQM', N'umGRUK', N'vUNxa', '2022-12-08 10:39:56', '2022-01-05 07:06:41'),
  (550197, N'BIozjvC', N'lfbSGFlDshd-xLfwVDKG', N'xvvfJtL', '2023-09-04 14:59:52', '2023-10-08 01:28:37'),
  (175602, N'qpOuiigEmiJtjqXHEP', N'KIdQkbjNeP', N'lyuXgPPpUqjctOv-FHW', '2021-08-01 02:21:24', '2022-09-18 08:22:11'),
  (111873, N'xWyiUxodndir_e', N'bahhnesBt-tl', N'spDPEGR', '2020-11-14 21:33:15', '2023-10-18 04:26:53'),
  (352130, N'ViEEbQiBd', N'KDzNPENLVHCSlw', N'QLBPXteenwa_CSBYs', '2023-11-15 03:45:25', '2024-06-23 22:49:53'),
  (176049, N'TzmnKAGbcChgNsFudQX', N'Olicgej-Y-E ZaUs', N'iSxKUopPT', '2021-10-24 06:22:36', '2022-06-04 17:24:34'),
  (801068, N'ZtonhAe', N'zVNQEtRtALFcFhhMHZ', N'eYhhxFIDipLdmFh', '2023-05-17 21:10:23', '2023-10-10 20:25:27'),
  (981238, N'alztinzlU-tvZGIUs', N'VL_nCeZrDPJFwbHQb', N'PSDOee _FHqOtrdd', '2021-12-18 16:54:47', '2024-10-12 16:53:25'),
  (865390, N'XGMqkrtoCM nz', N'BdstIWzYVDhhIHeAe', N'VFTCPos CD', '2023-02-02 01:10:28', '2024-03-10 01:43:07'),
  (459439, N'xSiDpSpPOOgOH-', N'uAFu_sh', N'YvrOXOwvQCM', '2024-07-09 17:01:53', '2020-11-21 10:57:33'),
  (759044, N'MYUdECPd-tOOxvnbbeF', N'gXqgjElwLlg', N'KOJwyCSiqd', '2023-10-03 22:53:37', '2023-10-01 18:36:22'),
  (358540, N'u_-gFEsOIw', N'ujPztjWVrnCtjGViYj', N'lidre', '2020-08-31 12:42:38', '2024-03-12 10:57:19'),
  (306783, N'cDkyvkTd-RgUrGDAd', N'CoCkxcdKpkhVKvyU-N', N'YldxUaBUwcz', '2025-06-21 07:07:52', '2023-12-09 20:58:23'),
  (954625, N'RUXvIHqr', N'inzqLqegVbZcYRkc', N'FzVctdYAjplg-xhS-', '2024-08-08 03:35:59', '2023-04-26 09:07:10'),
  (130662, N'ELYlKAbvHBwofrRYn', N'llcF csnfYRcD', N'kkjJDqNMvGKmUzFskIU', '2024-01-07 13:49:07', '2020-12-01 00:40:30'),
  (86027, N'XzSPEQHCnGWHdhgeZncP', N'lRLjnHoxkjnDFvcr', N'YHZbzPpOlqrJRN', '2024-01-12 14:20:18', '2025-04-21 21:43:02'),
  (262508, N'cr_hTkAgzUVxuOtiDL', N'mQLKEdihtQye', N'N-VWctEQyedjN_BQW', '2023-10-03 23:59:05', '2022-11-17 08:25:22'),
  (308024, N'LVcWYqm', N'DckNQADcvanuAX -kpC', N'WrzQrXuZza', '2023-02-20 07:46:26', '2025-03-16 21:03:58'),
  (796951, N'ffLLczuWzUpllRzF', N'Whe FGv', N'lwMTkRDl', '2025-08-01 21:48:45', '2021-04-17 08:27:22'),
  (425115, N'iWji_MjwpIqeJC', N'YEyfFzxRFkkQqx-', N'BBaFLJnpQsdG', '2022-05-07 02:57:34', '2022-04-16 21:07:43'),
  (494828, N'z_Ohw-OKl_y', N'HzyPHbIbELxAvpdbdl', N'FxaNmSAQ', '2020-10-08 12:31:17', '2023-01-10 08:03:14'),
  (493187, N'NjJcp', N'CZfqjRhnZEsC', N'F KoLlOjRA', '2024-12-01 06:39:24', '2023-01-02 06:47:14'),
  (916492, N'qkF AViNpUUWpzU', N'jWtbRElZGfY', N'NGgOQAeQGbLZG Wb', '2025-03-07 10:55:45', '2025-05-30 11:43:37'),
  (758992, N'qbNnoz', N'CjrXtv-ilE', N'MqiyFoZiSTTTEllj', '2021-07-03 04:29:33', '2023-04-27 09:36:24'),
  (365227, N'judXgzNLmXlK', N'qxgfTQzv SXYeBaIzlX', N'-LYugomLBB UaV', '2023-07-16 02:23:22', '2024-08-02 01:32:54'),
  (339432, N'PKzzVtEeR', N'GfniQaD', N'mVKhLTfIq', '2024-01-14 03:05:10', '2023-06-10 15:36:00'),
  (971429, N'dXAnBLSQ_GvYeyDV', N'PxwNNWLeMy ALCzdVl', N'myrtKTKYZ', '2023-08-05 02:08:11', '2021-07-10 02:57:00'),
  (888717, N'pCQaVrmRqjsMg_', N'jBmhFDEWrTrjljg_lR', N'iPgZTYL-EmGfQU', '2025-07-16 04:37:44', '2020-11-16 08:30:49'),
  (961293, N'qCngDugcQlLx', N'UJuaGVnpkEgb', N'unVufnuPBUmRTs', '2022-07-21 03:44:27', '2021-03-11 21:04:22'),
  (730620, N'eMROeyoZmWwqCOfSwqn', N'OOGkutgFZAIK', N'SRjczIiKP', '2022-10-20 21:58:42', '2023-07-15 23:49:47'),
  (810021, N'lGtwDh', N'KRgWKQPGfBVlxsMMmg', N'upUAvgmnHBhYoA', '2024-08-07 05:03:59', '2023-02-10 00:16:53'),
  (889930, N'fBgB aurpoCRbEWQY', N'yEfiFSqEaAMW', N'pZelgDYH XMt_aQR', '2023-12-08 15:18:31', '2024-06-21 22:27:09'),
  (147249, N'Cj_drfJBkNmeNWgPyC', N'uVSJySqFqaXhM jOxwp', N'CvuZaqz-', '2021-07-05 23:28:09', '2024-05-01 09:02:41'),
  (117645, N'ToI_UrdoMDi_yE', N'swCA LOdLsfqiwQ', N'NwzmAR', '2021-02-11 05:56:15', '2022-06-29 01:58:35'),
  (534200, N'PukGWHlmhnjNNBF', N'tmwISRQxNL', N'MDXDApGx', '2024-12-27 17:15:29', '2023-12-20 20:59:37'),
  (737792, N'jvTPSroFS', N'mAzlGFgeDZhZBxnOvM', N'wmMrxZdBQKHNvGX', '2021-09-23 16:47:49', '2022-11-17 18:14:08'),
  (564259, N'pYZdMKUDTjHvuSOrhC', N'S-XNtoftKTh', N'kewqtUcLzD-yj', '2023-04-14 16:28:54', '2021-11-06 15:03:32'),
  (576975, N'FqctbXxkVQSFOSDY', N'mxqDB', N'Z odCYQCKZMFueQP', '2020-08-22 00:08:06', '2025-08-05 04:46:31'),
  (29527, N'TPwX gN_sbFk ZorZ', N'gxUcrhTVeFdGjKjidL', N'ufWSnNba', '2022-02-28 17:56:11', '2025-08-12 13:02:31'),
  (721689, N'ceYVftCqR-_ClNKd', N'xuipEGmSNbqNFwES', N'uyIssi yomn pX', '2025-05-20 12:47:47', '2025-04-06 19:56:33');
INSERT INTO [consultation_documents] ([consultation_id], [type], [path], [original_name], [created_at], [updated_at]) VALUES
  (934936, N'UAveKcnTsJmYdJ', N'sfnchBYdz', N'Q_VqZLcmxOVKp', '2023-02-09 14:39:31', '2021-08-24 12:56:05'),
  (508900, N'VOmnsTRPoWTOcWT-DhJU', N'-gO_IkfZy', N'BQmKk', '2022-07-04 06:45:22', '2021-03-16 19:38:44'),
  (553737, N'DOQHhRfQZ bIZdjpI', N'zKREaXRiZ-QY', N'CMupYwBtrQeeMPRm', '2023-08-08 21:04:01', '2023-02-13 17:18:25'),
  (954109, N'SlHzpLKSzktZbQkoGSq', N'doeEOwNeq', N'aMcMPbPmNRxXEiH', '2023-11-02 17:10:06', '2022-09-09 23:23:00'),
  (644735, N'pKOY-fby_TEoonH', N'Cyu nWsIQd', N'StKyzHNKTk', '2022-08-22 03:33:14', '2025-05-18 03:53:29'),
  (379788, N'UvVlbeaRhOSSZRxR', N'tXtJ_tFMjaCrdx', N'ZU SJ_Da', '2022-03-30 02:04:44', '2021-10-12 23:10:09'),
  (178323, N'UPCDvNNd', N'wXqVOMHpK', N'bnlaSrg', '2021-01-29 20:43:18', '2022-08-03 18:16:03'),
  (670989, N'iGWedjWMDlMv -CuwhjB', N'DdPdFWMBXPV', N'nSbYlkwgDyB', '2024-05-08 23:37:56', '2025-03-02 02:28:31'),
  (653256, N'hkFsAkg_nn', N'xKTwJlONxzwzke', N'MUu_McLUKt', '2023-03-01 06:46:33', '2021-04-10 20:23:33'),
  (787173, N'FxnWCB_mWCWJT', N'wAsXGwIBtF', N'ALwQuRFFUauhJAx-dz', '2024-08-01 00:55:44', '2025-07-30 21:21:57'),
  (433648, N'vegxLPauNi-vA', N'atkBqyNFNwc_UIdYXtS', N'A-aSOyoGTY -lGxcT', '2023-02-25 10:23:32', '2021-07-04 03:00:49'),
  (437812, N'WDva_ZOOk', N'ONklv', N'hlXX oJalL', '2023-01-12 19:15:24', '2022-11-23 07:21:00'),
  (733940, N'-iFypuUgsGDqL_EOf', N'QgiRMvrxWZJMpUI', N'oOovGQsKMO-MRN-', '2021-03-15 07:15:59', '2024-04-27 15:37:39'),
  (619069, N'owWPPMTvjiJTEPRu', N'iaKSceJ', N'FQtWKDp', '2021-03-05 03:24:27', '2021-09-05 03:55:05'),
  (83425, N'MBpnB_bKINTgdu', N'sRWuM', N'O_gNPCPrdb_TxNFxX', '2025-01-21 14:24:22', '2022-05-28 14:31:34'),
  (274439, N'wMVrkfbTtkbRGs', N'GlIOAur', N'-DJClu', '2023-06-08 13:55:27', '2020-12-06 18:41:32'),
  (740392, N'thvhMdKnDx-CWDa-', N'-YLyQb_RzfQBLrhnWx', N'k IqYJny', '2023-04-20 13:06:42', '2023-09-13 03:25:24'),
  (616529, N'IkFDVdSALN_iiAM-', N'xyKRQqM', N'Bb_HP', '2022-02-24 21:46:19', '2024-11-12 17:19:06'),
  (445349, N'bakTow e', N'bNWqxLTXy', N'vXEnTqMq', '2022-04-17 09:28:35', '2025-06-03 02:22:21'),
  (362901, N'mnEwKGSUrLSfpUIVET', N'ahJHfOYQS_TRfhUooYEN', N'QknmgrpkrfOCaQD', '2021-06-21 22:17:56', '2021-11-12 16:10:10'),
  (513459, N'XMAppVGFW NPc-GUemRl', N'Vd-GjldtsH', N'Q TpuhMFGXXJgA', '2022-10-23 02:27:56', '2025-08-15 14:34:37'),
  (370418, N'hZWcZsjQvNLbaTYOlGsk', N'rWgFcThIZ', N'_OYgpFFRrnqc', '2022-07-18 00:35:25', '2021-02-20 17:46:50'),
  (880414, N'VQEKkvTZOfFoopw', N'oAGkWkdf', N'_jNSFNAJxszlffy', '2024-06-23 21:35:29', '2020-09-16 13:43:15'),
  (664665, N'AkcGig', N'raD-XQyBs', N'Q nyj-KihWSpUvc', '2021-06-28 12:48:44', '2021-07-12 09:30:49'),
  (251472, N'qMyIS LubLi K', N'- HsGLL', N'wrQULrVMCjwsD', '2021-11-19 10:24:45', '2021-02-07 15:30:07'),
  (302876, N'qY-tiRgC-xAoKqLaq yu', N'stqtASZx', N'tHeZsVukuiTGWGIQZzty', '2023-05-05 13:34:10', '2020-10-12 22:15:03'),
  (927758, N'bqpfEJsjepMg', N'XBSMNFvqHoNn', N'FEiVXCVhxq-jkqhkuWYa', '2022-05-15 00:20:39', '2025-02-13 01:43:26'),
  (710306, N'rWglsEilo_D', N'cCteMEwn', N'dRd_BpkpMMJQOJFDnoxk', '2021-06-17 20:16:47', '2020-08-22 13:34:42'),
  (556771, N'HmODxwRIYYlAokf', N'ZXXxgUdJHwWGK', N'HhgZMNr', '2022-03-06 23:37:14', '2025-05-30 15:47:55'),
  (125940, N'TJpsiXPaAqmmQLVPuvm', N'mmsKRDTgXMCiOa', N'd-KRnlsjrXm O', '2020-11-27 18:51:36', '2020-11-04 10:26:57'),
  (642682, N'RVWDohy', N'oisPoaQHPYQ', N'WktqEGp-KVbFhifkxFNZ', '2025-03-24 07:52:59', '2024-04-22 17:35:47'),
  (979937, N'djt_hKG', N'EWkrsPNxlc', N'yKLO ewj InffXKDFGK', '2023-09-03 05:29:14', '2021-07-18 04:49:35'),
  (446933, N'w_dgIddxrsbWjDCyd', N'Qiogyiv-', N'xfbcbnyAWIwEtpLXEPpJ', '2022-12-07 20:04:25', '2024-06-21 20:46:00'),
  (669926, N'VSIrZxG', N'yodlglL', N'IkmAm_E', '2021-10-11 04:44:34', '2023-06-12 11:22:10'),
  (865472, N'fiMQHcVn', N'djyjoCb', N'cyYDRsJUlRwkjKku', '2023-01-11 16:41:39', '2023-12-25 13:20:19'),
  (353021, N'FyoZeBMftxwM-', N'nyvowV', N'k-nCkqBBCyV_ik', '2024-02-13 08:31:26', '2024-09-25 13:57:34'),
  (408778, N'FtPCLar', N'WvkWjsUWkScxMYBq', N'xsMCIdyro', '2024-09-26 23:31:19', '2021-05-05 18:30:21'),
  (647376, N'cSPms_WZGNFoegBch', N'y_vpKMxlfgXVOURu', N'ZlqafwbRVqn-O', '2024-08-05 05:42:29', '2021-02-25 11:37:13'),
  (737933, N'-JbHZGpvHTVxwGPoBq', N'qOJCxWNCKKXWTEq', N'wUskOLPdU', '2023-03-20 16:47:54', '2022-06-13 07:46:52'),
  (403275, N'ZEuzGqLFRH', N'dZSCHPBZElWuodW', N'vHaI_zCH', '2022-11-11 03:24:45', '2023-10-23 20:24:27');
INSERT INTO [consultation_parametre_patients] ([consultation_id], [parametre_patient_id], [valeur], [created_at], [updated_at]) VALUES
  (113569, 112744, N'R_kZsAEePTPK', '2021-12-12 23:16:22', '2024-08-01 15:57:29'),
  (352536, 179389, N'CgbaUjUYNYx', '2023-12-01 17:53:09', '2022-04-04 12:49:19'),
  (333624, 77321, N'wCdxn lcKTpyeoRObest', '2024-02-07 03:51:45', '2022-12-18 14:14:01'),
  (828785, 113614, N'kTK-QseQdnBFuHayKXUo', '2021-12-11 01:51:41', '2025-02-04 13:02:32'),
  (935812, 620147, N'cefDe-mcWpTFb', '2024-07-19 10:37:39', '2021-07-01 10:11:46'),
  (554725, 277327, N'-DLdJDEZSoEnOgAZKY', '2021-11-08 10:33:40', '2024-06-10 16:31:46'),
  (361797, 639231, N'FtAdfcbzOM', '2024-05-26 10:23:26', '2024-08-21 19:44:19'),
  (306244, 54041, N'MSDde', '2025-01-02 08:57:34', '2022-06-20 19:57:08'),
  (138691, 388386, N'yVeIaygaHvYpZDcaF', '2021-03-02 07:32:05', '2020-10-23 19:46:26'),
  (105105, 6471, N'WiiUhkSzJ', '2022-06-29 10:07:12', '2020-12-28 13:15:53'),
  (334109, 100452, N'h-eWIe', '2023-11-10 11:14:43', '2025-06-14 23:26:15'),
  (205450, 828068, N'ULhaYyDBNHE-e', '2020-12-21 19:21:02', '2021-07-27 23:07:48'),
  (295293, 643696, N'ffYZXBo-lJjVjx', '2021-08-03 18:27:13', '2025-06-18 11:31:02'),
  (399649, 269790, N'LvGOyhBCj', '2021-07-23 19:32:17', '2021-03-04 00:46:49'),
  (941876, 916815, N'bYj uq_tY MyuuckTrVk', '2021-05-07 09:25:16', '2025-01-16 17:33:06'),
  (695600, 831277, N'u-ZqOHdvS', '2024-08-09 06:13:59', '2023-07-29 08:21:44'),
  (647694, 877790, N'aksjqPXiAnpxloh', '2024-07-28 21:22:35', '2023-05-12 20:15:54'),
  (301448, 527630, N'Fh_RmjajbzfSnNZOiap', '2021-07-15 11:37:30', '2025-02-03 14:42:44'),
  (435496, 471453, N'-UY DrtHklGVFJaFmN', '2021-02-28 12:21:35', '2021-01-03 22:49:53'),
  (965922, 874590, N'NBocSLyAzCW-Bl', '2025-06-19 05:19:41', '2023-11-09 00:51:18'),
  (33184, 663505, N'YTM_BPt_NM', '2021-03-26 06:26:31', '2020-12-27 16:49:08'),
  (269504, 830482, N'hAt Muq-uOG_qUtAwDDT', '2021-08-22 07:11:06', '2022-09-21 02:54:27'),
  (721281, 854824, N'hwmqkDGVLnO-lH_DXnj', '2022-02-10 16:29:28', '2024-08-14 23:01:21'),
  (804794, 395964, N'uqWUIOsiFtXMXZsBSt', '2023-07-21 11:48:45', '2022-12-23 09:20:24'),
  (679100, 61450, N'UbUbjPg_toy', '2024-03-04 03:43:18', '2023-05-31 12:40:12'),
  (793569, 892496, N'wmJJlniptYvUpn', '2023-08-10 05:04:46', '2023-12-07 18:58:36'),
  (437503, 539697, N'iXWHMUWA x', '2024-10-03 03:50:08', '2023-10-09 17:31:57'),
  (317998, 634171, N'QaYo-SNJa', '2021-08-06 18:38:23', '2022-05-09 15:30:05'),
  (244067, 848797, N'OzeYNexRDEagtfhfwVX', '2025-02-17 00:35:31', '2021-07-21 23:21:31'),
  (667638, 398930, N'newpNrkJe', '2021-08-07 03:03:28', '2023-09-07 10:10:32'),
  (571850, 485121, N'vcKXeymMCOxbxC VM', '2021-10-20 13:03:45', '2021-08-30 18:40:01'),
  (914100, 841461, N'ecPMJ-fdbPL_qsoa', '2020-12-08 20:07:18', '2021-10-26 20:44:57'),
  (481748, 511833, N'iWaRyvzKsjCP', '2024-02-24 21:58:36', '2022-03-29 19:52:21'),
  (580502, 8935, N'ymkzZCAVoS', '2021-06-28 16:18:44', '2021-05-20 02:21:35'),
  (324426, 258458, N'VdDvoMG', '2024-09-06 15:16:37', '2021-04-21 03:01:59'),
  (289744, 114063, N'_lBUsiLobYyQZ', '2022-10-28 21:35:36', '2023-11-18 17:38:50'),
  (931776, 117459, N'mGUm-UGVeAFtTU', '2021-10-12 00:32:39', '2025-03-25 22:57:48'),
  (761539, 623974, N'tdwIsQEqpJYLsFv', '2021-10-09 14:17:14', '2024-12-16 19:11:59'),
  (994726, 618069, N'Z kPtv MDKJLIllZsvwS', '2023-02-23 09:41:16', '2020-11-10 12:42:05'),
  (763452, 682863, N'jhbahtOLNzhhW', '2024-08-29 19:41:54', '2024-06-04 18:14:49');
INSERT INTO [consultation_patient_plainte] ([consultation_id], [patient_plainte_id], [created_at], [updated_at]) VALUES
  (552334, 337352, '2023-01-06 18:27:28', '2023-10-19 14:25:35'),
  (218883, 593359, '2020-11-25 23:00:05', '2023-08-01 18:39:52'),
  (461568, 737636, '2025-04-14 03:38:28', '2023-11-15 01:06:46'),
  (403007, 978859, '2021-09-22 09:56:01', '2024-04-21 00:00:04'),
  (623437, 185311, '2022-06-19 09:42:34', '2022-08-26 15:15:17'),
  (594038, 354843, '2022-09-09 01:45:15', '2020-09-15 15:30:43'),
  (34110, 782297, '2021-09-21 18:52:07', '2023-08-01 19:46:25'),
  (774094, 368310, '2022-04-19 10:35:10', '2023-06-26 08:47:33'),
  (902462, 690768, '2022-03-13 01:36:39', '2023-10-11 17:36:04'),
  (419757, 726866, '2022-05-23 00:55:20', '2024-07-02 10:25:11'),
  (883604, 862227, '2024-10-13 03:26:11', '2022-06-29 11:30:48'),
  (110637, 184247, '2023-09-09 07:28:27', '2021-12-24 19:46:23'),
  (326585, 379743, '2025-02-24 19:33:08', '2024-10-19 09:08:12'),
  (845889, 33502, '2021-09-06 18:08:47', '2022-07-07 19:52:38'),
  (99585, 773944, '2021-08-18 23:44:28', '2021-03-02 18:45:40'),
  (466520, 368109, '2021-09-03 08:46:29', '2024-10-22 14:25:45'),
  (249159, 699438, '2022-05-23 07:55:14', '2023-09-28 02:01:57'),
  (584250, 205642, '2024-02-19 07:06:38', '2021-11-04 23:04:46'),
  (934925, 308265, '2025-06-05 02:15:44', '2022-02-19 11:51:27'),
  (130372, 353268, '2021-05-16 10:47:06', '2023-07-12 06:27:12'),
  (449567, 607276, '2023-04-07 16:14:30', '2023-04-15 06:11:30'),
  (230979, 580067, '2024-11-06 22:41:53', '2025-04-18 00:32:27'),
  (498700, 73313, '2024-07-12 07:29:01', '2021-03-21 04:48:24'),
  (242201, 339380, '2022-06-21 21:13:23', '2023-08-08 10:40:09'),
  (939573, 730136, '2025-01-01 22:55:11', '2025-08-10 11:33:33'),
  (87897, 957339, '2021-02-11 19:34:00', '2023-08-12 09:43:09'),
  (821517, 860769, '2023-01-03 03:57:44', '2025-03-20 16:22:05'),
  (940157, 808735, '2022-02-12 11:49:17', '2023-06-14 07:36:04'),
  (454263, 166776, '2024-10-02 00:32:37', '2022-06-13 02:26:22'),
  (640588, 445153, '2023-01-09 10:16:00', '2022-05-01 04:08:09'),
  (706023, 816574, '2022-05-10 11:18:55', '2021-09-11 21:28:29'),
  (451372, 86451, '2021-12-12 16:10:14', '2020-08-21 04:20:17'),
  (675407, 628585, '2021-11-02 06:14:03', '2025-04-23 11:12:11'),
  (441135, 693043, '2025-03-05 04:43:49', '2024-09-06 08:17:21'),
  (585478, 307505, '2021-12-09 10:48:54', '2024-08-26 09:10:33'),
  (504798, 346570, '2021-07-06 06:21:14', '2023-04-24 15:46:59'),
  (233028, 416303, '2024-05-17 18:56:49', '2021-10-19 12:02:59'),
  (49430, 726664, '2024-05-17 07:25:28', '2023-08-24 12:40:25'),
  (37885, 867054, '2023-11-26 01:54:24', '2023-10-31 04:58:56'),
  (645879, 621579, '2021-07-09 04:37:07', '2021-09-23 14:11:56');
INSERT INTO [consultation_suivis] ([consultation_id], [scheduled_for], [scheduled_by], [scheduled_at], [notes], [status], [created_at], [updated_at]) VALUES
  (768416, 573071, 328969, '2024-01-02 05:24:09', N'KrsfAs KpngXffu', N'WOTIutbkyV-igHczT', '2020-09-19 23:02:57', '2022-09-22 09:34:21'),
  (786637, 428682, 261959, '2022-01-30 01:26:54', N'RxVhJukjMQfB', N'zfmSd-CVZpZNGCfP', '2023-02-10 14:31:00', '2024-12-25 17:08:00'),
  (303175, 714726, 336921, '2022-12-10 08:43:19', N'mbaDPsYv RWCVF', N'shPsA -V YwgGngzpmWl', '2023-10-04 10:44:38', '2022-07-10 08:06:46'),
  (901109, 823408, 997824, '2022-09-12 03:15:44', N'mcvDVwDSG yzdDdl v', N'DUyBB', '2021-01-06 04:03:50', '2023-12-04 13:10:07'),
  (603539, 671861, 706512, '2023-09-04 02:41:59', N'GxTjB', N'dAGNAxw', '2022-06-01 11:34:46', '2021-10-16 22:25:47'),
  (404218, 800320, 267010, '2024-11-09 23:48:31', N'gPTqelRraRW-q', N'KBHsG_nuLYX', '2023-12-08 08:18:47', '2021-01-23 04:10:20'),
  (7470, 5606, 924704, '2021-03-17 12:31:15', N'aGFgyOnHJ', N'LnTRLOPj', '2024-09-09 19:04:01', '2021-04-29 22:06:11'),
  (593898, 99710, 530531, '2025-07-14 05:01:18', N'J-_gNIEMigAv', N'g_HeD', '2023-09-19 09:15:42', '2024-07-09 04:11:17'),
  (441433, 780631, 8352, '2021-07-05 04:01:44', N'HBTCR-', N'ViiAitMYfviRHNo', '2022-01-24 16:44:23', '2024-12-23 05:15:37'),
  (112569, 951037, 834663, '2024-01-26 19:55:57', N'vYVfFFmenf_NXZDsKp', N'puiTYVFR', '2024-04-07 08:37:39', '2022-03-10 03:47:32'),
  (821475, 840445, 361372, '2023-07-21 06:12:25', N'FBQxefHiuBWB', N'hynMhDkEgXvqISm', '2024-02-25 23:34:12', '2022-02-06 10:26:48'),
  (560993, 97520, 910634, '2022-04-19 02:27:09', N'hoYvbmmszaTEtL', N'_OGCuCtPVsBSutTqIj', '2021-08-12 13:13:21', '2025-01-07 11:50:32'),
  (888506, 932029, 896545, '2024-10-16 01:23:23', N'NJQlgWivuGI', N'Er cXwdnXeventWQyxdI', '2024-03-04 09:03:21', '2023-05-21 18:24:21'),
  (726988, 438434, 649760, '2025-06-03 16:22:18', N'SVoIFYrsEFfotfkvVp', N'q-fbBxXD iNU', '2024-06-04 19:09:15', '2024-03-22 09:00:27'),
  (879624, 401021, 384497, '2024-03-23 01:48:00', N'TXcA FOdpM', N'nyC_RFDqt_gc', '2025-05-22 08:00:36', '2022-10-12 06:39:49'),
  (212833, 613847, 491909, '2021-09-03 14:52:54', N'HlTdanQr', N'NVpvVW', '2024-12-25 15:08:30', '2022-03-12 16:16:40'),
  (500543, 771759, 717412, '2021-08-07 17:52:42', N'mRUi dnfQaBzzsBSxg-G', N'EGYGFTPNDHJGt', '2023-08-11 21:53:32', '2024-11-22 18:51:46'),
  (656121, 738764, 760559, '2024-10-25 22:01:25', N'DSLEfgsMfDM-sAeP', N'yLTlZo', '2025-06-29 19:36:08', '2023-08-26 11:55:33'),
  (101119, 21760, 565088, '2022-05-17 01:21:13', N'WFQHzzH_B', N'jbbolyZvdPodui', '2022-11-11 02:30:14', '2021-06-07 22:33:13'),
  (101335, 285823, 791577, '2022-01-25 18:25:21', N'UCAx_g', N'nvl-KsMxEBdp', '2025-06-25 14:41:55', '2024-03-09 22:44:47'),
  (904798, 722834, 74088, '2020-11-22 15:09:56', N'YORKkWTLEdtXu', N'HBICzejSWKC', '2024-02-19 01:08:44', '2024-10-23 18:49:38'),
  (395051, 159740, 119050, '2022-04-22 00:24:56', N'tOuzWerUo_hwVmQ', N'RtJ -PKLTxp', '2021-03-14 19:47:13', '2022-02-25 09:04:59'),
  (912412, 956566, 52978, '2020-11-27 15:13:29', N'KctdXblrgRCcnzT', N'lpZFUpnent Oj', '2023-04-14 19:26:05', '2021-03-03 01:53:31'),
  (306557, 927401, 656700, '2024-05-18 01:34:01', N'ZGKE zk_', N'WEYEM_Q', '2023-02-21 00:15:31', '2021-11-01 23:31:54'),
  (992426, 672967, 639316, '2022-02-23 12:34:31', N'c gFiFrI', N'fTvfEXvbU', '2024-10-21 23:47:01', '2025-06-18 12:23:28'),
  (442322, 247406, 84073, '2022-07-20 08:18:28', N'rRdQUrLy', N'NASPOuf', '2024-01-04 02:58:11', '2023-12-21 23:52:06'),
  (180041, 504810, 96371, '2022-12-27 03:55:09', N'EdBuSISBXGBk-X_n', N'GxSWCDgRDhleKLKm_SP', '2021-05-15 23:15:50', '2024-10-29 04:35:43'),
  (398128, 756352, 778964, '2024-09-14 12:26:10', N'QWFOa', N'ikPCK', '2024-03-29 13:25:03', '2022-01-02 05:41:58'),
  (772339, 290087, 320953, '2023-07-03 01:45:43', N'CG_smaSaoM', N'GOWcAYsBv-KtVMfQW_IA', '2025-04-02 23:36:13', '2023-03-23 03:35:58'),
  (630250, 682757, 536035, '2024-10-10 06:35:02', N'MTmSlanULjkyJ', N'GEbPRnExxVYFIxY_s', '2023-06-04 15:10:29', '2024-10-02 15:35:55'),
  (739428, 727347, 940589, '2023-12-04 10:46:02', N'naLjqVAsnbGhoij', N'wDxbqeikAz', '2023-03-28 23:51:14', '2022-08-31 15:45:36'),
  (725840, 836503, 391593, '2020-08-29 23:04:16', N'-uxVPPCogsXKj', N'BljZQqFCBamJjZRGdE', '2021-03-26 21:08:39', '2021-02-25 15:49:27'),
  (51335, 151507, 267458, '2023-04-29 17:38:49', N'rhODPLpMM-yNEMpQWY', N'WYNXmpGmUmHC', '2024-04-16 04:49:06', '2025-05-07 12:34:35'),
  (537258, 220465, 578500, '2024-01-10 20:13:58', N'wGhCnJUBI', N'ywlVjpvc', '2024-10-24 12:49:21', '2022-08-22 15:12:07'),
  (503236, 569818, 514315, '2022-08-13 23:45:33', N'ihLMHbyHqMzbQmns', N'M-XNUwdIzD', '2021-12-11 22:14:50', '2021-12-12 20:09:24'),
  (428161, 694856, 661838, '2024-04-29 17:04:05', N'IfdCzCDVCZ', N'CQToSMEeIeMcwPKCqB', '2024-11-25 07:02:32', '2025-07-09 10:01:58'),
  (938160, 596145, 238734, '2022-06-26 09:50:35', N'xnSFrc', N'kqiyhdTppjrJSEFmyw', '2021-07-24 05:08:32', '2025-02-16 11:27:52'),
  (562610, 287042, 817815, '2021-07-31 12:40:01', N'WzfnjLtbzpxElqDz_n', N'EWjZzQSHucaDiJRT', '2023-03-07 17:17:40', '2022-07-25 15:44:42'),
  (532805, 679830, 746639, '2023-08-28 05:34:18', N'bLNZL', N'BRSKkYSrPZuSbuerNb', '2023-04-12 03:09:41', '2024-12-01 00:28:29'),
  (792234, 489860, 783957, '2022-07-15 22:09:41', N'UMFxro-sYupy-sNK', N'gTdFFUKMOCDjjkjSB', '2023-04-02 20:39:50', '2023-11-10 15:39:51');
INSERT INTO [contacts] ([business_id], [type], [supplier_business_name], [name], [prefix], [first_name], [middle_name], [last_name], [email], [contact_id], [contact_status], [tax_number], [city], [state], [country], [address_line_1], [address_line_2], [zip_code], [dob], [mobile], [landline], [alternate_number], [pay_term_number], [pay_term_type], [credit_limit], [created_by], [balance], [total_rp], [total_rp_used], [total_rp_expired], [is_default], [shipping_address], [shipping_custom_field_details], [is_export], [export_custom_field_1], [export_custom_field_2], [export_custom_field_3], [export_custom_field_4], [export_custom_field_5], [export_custom_field_6], [position], [customer_group_id], [custom_field1], [custom_field2], [custom_field3], [custom_field4], [custom_field5], [custom_field6], [custom_field7], [custom_field8], [custom_field9], [custom_field10], [deleted_at], [created_at], [updated_at]) VALUES
  (748, N'Wuppcaj', N'aiDXxVd__E-AZNEWSBSK', N'_IScugqwpJyP', N'hBHej', N'Fvadbz', N'wxHwKoL', N'jqquwBvlnl', N'gtVINtrXf', N'NZXKKxPfCzK', N'ndpJfuBLuLc', N'awVQRWBMxTea-B  nAhP', N'ZiH_Fsc', N'eD mbRyK', N'-HjeruiICZHL', N'iGKpaXPlJsdxjeGwd', N'ydJmVgKgjPAdqSU', N'VHKAuqNJeJrraMpI', '2025-04-15', N'wtDeNXlFP_dRxqGDtH', N'cvzyjob_YUd-xzaLPtrO', N'gxa_gi-XRXUovdAzO', 384, N'B-d_-xbwNb-G_xPxS', 4577678697422071.0, 345851, 4847001696961121.0, 913, 589, 218, 1, N'LgMtFroDjK-L', N'TmujfS', 1, N'LhbiD', N'YrFeWXtlqRPokfge O', N'iBPAWR', N'pFCmOJgYo', N'aNIpgqxkpFIX', N'ntynZ', N'VlGCqOjZxAu', 414, N'AWIcVQvJccdTxJKQw', N'IhuE-xdf_ur', N'RISVZvDIgJOd', N'DNTZrNUgZsHHZhwQW-OY', N'srBAfMQM', N'qhDfca-AxA-jzzB', N's_YuQvpXORzoFZFB', N'xMNwNMckQorsXZioZJ', N'-BllyBrG', N'NPgHPzgtykJHoz', '2022-06-28 15:10:28', '2023-06-27 20:20:49', '2025-03-17 12:16:18'),
  (964, N'QxWnmf', N'fOmeRmwBh gCakFG', N'EmttD-KYmCkVlo', N'EWyeNSAJ', N'kwHIvQH rQ', N'hnOTWuSRRFt', N'HCtCr', N'CmNEj', N'gVFwAvCFLKZ_dyhGpV', N'qjvhfGcMuqvueL', N'sgxiGBptJ', N'aeB_XfQCd-PQy', N'MhttunpFSw-lb', N'xyNgrBR', N'yRtewEom', N'BHraUNfmreOFGeaNaFhK', N'EPgQtwgtLwgrL_SP', '2022-08-25', N'IXmIF_nyJcDlMzB', N'_HdIqpH', N'y ItHi_', 480, N'mPb MMcDbY', 3117303604145545.0, 982555, 3851678093930600.5, 257, 349, 4, 0, N'QayQa', N'wTUhRNNdGf-GE', 0, N'dblFO ypTiZ', N'lknYFo-BN_udq-njPyc', N'LdqDownu-jkAW Q', N'qLndY WwnKDmXt-x', N'mRQwZNLB', N'jAdOy dTbNJNTD', N'DqaSufqPSp', 118, N'sfYeMN_fSmBxAtTdP', N'Sxs lBccAi', N'kmHqnx_DMN', N'IPMuKtxJKkj', N'ePErFulMrNCDwzx', N'gkG_XZGRNQvBmIm', N'FABwXDdnfVafkiOepo', N'wYnPXRYqletsVGn YvsR', N'WYDsKGHTOoNBHmJ', N'xjxsncN_m', '2023-07-17 21:01:23', '2022-10-02 20:37:08', '2023-07-11 17:45:33'),
  (178, N'weFmRsY', N'A_bYBIUKOKZTVjVqE', N'wEXuAgbI', N'QecZn', N'klgTi', N'Lvxglg AMGo', N'mjJwqgqik', N'oOiAVVihsqumEgvPc', N'uh-NzFICFJGZc', N'RhOwWMg', N'lBItlmlTRzm', N'wYrANRcnmTy VKT', N'fc_vCfKDplm', N'wsvviDJU', N'BOXkOyalnvBsbRLoaNNW', N'GMfMUxaESJBFKzKKMK', N'QHgKPhOKsJ', '2024-06-16', N'ryhlpQfMSQacjsfxvhF', N'HWznCnvnmkEciGX', N'ABGBZIx I-Vrnefyk', 936, N'dTQSzw_', 7545256993489678.0, 319498, 7007734970431987.0, 260, 863, 473, 0, N'UxRYsVmfbvwCFeQcn', N'QXjDvK', 1, N'JOILWv', N'NCMmvHtnqkmgqKrXv', N'VgkwTJBcBi', N'WNGgJ', N'RrdPKU', N'uhZtVgsa', N'YdJwaQfTpRrEOrTk', 994, N'oYAqelkZAtCiuSrSo', N'svnMUza_si', N'bIfDsTOrixRpK', N'HPvWOlCY BG_lbKgJ', N'kjtYXyyh', N'kXXIcMZFakaMW', N'LTaMBRpwg--RuNeeEvP', N'phCdiQ_wnpF', N'aIydtPpDWEwJDlXxmDfF', N'cRhuopoba', '2022-05-03 00:15:06', '2022-03-22 13:43:14', '2023-07-02 13:09:54'),
  (974, N'KZArCWqempegwfMAG', N'NsIWYStkjAPB', N'fxtnbL-NbnP', N'SKhpew yOvm_ T', N'BFfnztATmvfVtuklG', N'niuRn-tGQ', N'Ul TMCWNKnTqM_A', N'CDuJpPowlhQMFaRy', N'aBsfjmSYVPeurc', N'tqDGnaCva', N'zmjFObmP', N'KhqgbRwiyMOzm', N'tkDjUelzqRusmyFAGP', N'NBEQtyEO_lyMGATmaYfS', N'noiFNXJVZUJi', N'-CakPAQE', N'MKyes_Ms', '2024-02-17', N'_IwhtVDw', N'hAVcYnIsLuSjzb AGl', N'GDKuTzetXf', 772, N'KyyeR', 9356331554696704.0, 644888, 1697229118693497.2, 902, 195, 162, 1, N'HMcJGvYcBKamd TXosV', N'V- UWVefldiEnb--PioH', 1, N'S gSRiLOjcDjjmc', N'pxVJjooKINR', N'egShpOWNLFWVEYpI', N'MkCJDyCI kpzaOJTsli', N'ZW_-AvgtqRqYGyvDr', N'bzj byHetRR', N'ZKNOhLGSCjdl-L', 527, N'enaWaHr', N'PnLhsfLTJhWe', N'LApmbOvaDWrKvdssp_k', N'g -LkKJPajTHrPqWhYY', N'fRyLnRAZlr-dHVHXvh', N'oipGgmFaVuETQsecpE', N'klA_UvMrhTuixYInHw', N'ZBouFHe', N'AsYXrTBA', N'ZEg mkRNdYgXd', '2022-02-23 20:08:32', '2021-06-30 08:47:39', '2023-07-08 01:06:02');
INSERT INTO [contrats] ([categorie_id], [echellon_id], [personnel_id], [referenceContrat], [typeContrat], [dateSignature], [created_at], [updated_at]) VALUES
  (546744, 809885, 900838, N'Rh-gJxHfh dgsyc', N'mXVxpvOYL', N'GkGLagYrdIh_iSpvB', '2022-07-29 08:04:02', '2021-05-01 00:42:26'),
  (418497, 519233, 856634, N'zdjCgzJLlDHOJJrDG', N'fIe_Nm_IotFQCVcwfaP', N'EoaOJblHkgnhT', '2021-04-21 20:31:10', '2023-03-04 15:00:21'),
  (879320, 536006, 181089, N'O_f-VtVobrWsty', N'IOLsjYuKAotL-WbWbfL', N'AHUUMoprxadqgNxfQfm', '2021-01-03 14:21:45', '2022-06-17 22:11:11'),
  (27608, 464828, 813756, N'_yeEaySgyRUzJUr_A', N'YSIRiYPbMHFiHt', N'GgIyKzM', '2021-10-28 13:26:34', '2022-07-24 17:35:36'),
  (818667, 294425, 266770, N'duxCj_tFWDkfY', N'XKA_mPzjbTLe', N'aQrLRshEVSkmeNbeCd', '2023-12-16 09:37:28', '2024-03-28 06:27:12'),
  (863848, 552630, 966444, N'p CigSIYxYJKn-wGq', N'ZZtEcX', N'SDf Zk-Auywy_Srg', '2024-04-12 12:29:31', '2023-04-27 21:03:09'),
  (414231, 408689, 439976, N'gvDXYhf hicFbgHSQbS', N'OHXKmWxKBFOLZlZ', N'lxUviwDAfwbTT_pmw', '2025-01-01 05:25:03', '2022-10-31 14:57:51'),
  (561526, 49462, 881305, N'eGBRWQSOHVmWa qnrj', N'LMQ-FIxni', N'SSaeTpoL', '2025-04-07 03:07:56', '2025-06-11 16:49:39');
INSERT INTO [corps_metiers] ([intitule], [details], [created_at], [updated_at]) VALUES
  (N'aKaradpF Aw', N'-VQKQ-bgtcvBvV', '2020-08-21 19:48:30', '2021-11-23 13:28:25'),
  (N'CJFcRV ZMcNuNdjR', N'VMKarzmzM_eXMWKhHWm', '2025-01-27 09:14:19', '2024-03-17 09:15:39'),
  (N'HWImyiALAfASm', N'CQEeDTDulMATRKTtR', '2022-03-02 13:26:51', '2023-11-28 21:11:21'),
  (N'w_rTIOND', N'QOqgSiq', '2023-06-05 06:41:22', '2022-01-11 15:36:51'),
  (N'W EcxcYIZEvvcuBkqs-', N'IVZVUII', '2023-12-01 03:08:03', '2024-05-24 12:22:22'),
  (N'bgoKhKmHDdCr-Tft', N'bgpr-N QYI', '2023-04-09 15:16:56', '2022-06-09 14:09:40'),
  (N'IQWetbsylt', N'IBRUmYw-CWlnAQkEoodG', '2025-06-27 22:48:25', '2020-09-25 07:50:54'),
  (N'tuXstzPGsZpW', N'-eVcMusMyJ', '2024-03-13 02:08:24', '2021-07-02 14:44:25');
INSERT INTO [cours] ([niveau_id], [matiere_id], [personnel_id], [enseignant_id], [class_scolaire_id], [created_at], [updated_at]) VALUES
  (510842, 482866, 841142, 752827, 697615, '2022-03-28 06:06:34', '2021-02-14 09:36:58'),
  (819798, 946462, 495194, 593783, 977230, '2020-08-29 20:02:42', '2025-07-05 11:51:43'),
  (650528, 79679, 728847, 912651, 756174, '2025-06-30 00:33:35', '2024-11-23 23:52:26'),
  (886242, 837451, 863899, 971985, 934221, '2023-01-04 04:12:07', '2024-01-05 08:49:28'),
  (467577, 439744, 71461, 487978, 20122, '2025-07-09 18:12:38', '2023-10-21 00:44:50'),
  (123840, 97175, 788901, 41559, 225849, '2023-08-16 09:19:19', '2024-01-27 15:39:53'),
  (764501, 170907, 333986, 505873, 726788, '2024-01-08 14:23:45', '2021-10-07 18:26:20'),
  (72311, 59510, 761496, 656239, 623991, '2020-12-03 04:16:57', '2021-11-06 06:29:40');
INSERT INTO [currencies] ([country], [currency], [code], [symbol], [thousand_separator], [decimal_separator], [created_at], [updated_at]) VALUES
  (N'wDWLS', N'xbbZdWqtrewB_--', N'RpcxUCkFxBjZlbkhC', N'IKl JnKSbumDbhV', N'PETzSV', N'QDlaQ', '2022-06-24 08:07:02', '2021-12-07 20:34:39'),
  (N'HMm-XjoPDExAF', N'NryyIun-lrhWsGsjAPJM', N'FCwEOs', N'YwHvRVCJxz txfXSLl', N'iCKpqyI', N'i_PNQJxfzw', '2021-11-12 04:07:28', '2022-03-13 23:04:13'),
  (N'nugfJDEHzpqOersJEQFC', N'CAXmLCQUebmeHI', N'_X lFFKAdAQIGYHQyCQ', N'UlavRSbQ -uEIs', N'lj eznqX', N'vfIUz_uX', '2021-08-07 12:49:37', '2023-07-31 23:35:35'),
  (N'fieseR_oTHiO', N'NdIV-UBQGBuYgOqB-AZd', N'FaZXVwKp', N'Dcg SvxSklyteViqyx', N'jSQVMxT', N'JCYmuhyI', '2022-08-31 12:17:13', '2021-10-28 05:00:13'),
  (N'lkZD', N'fnPfGddj', N'VrMHdcU', N'CRu _vxCRFpsR', N'njJloMemiQ', N'eJY OpAyLZ', '2022-11-14 13:06:57', '2025-01-14 11:30:37'),
  (N'wLGPaHryMH W', N'niKYDuGrWvBjEgPmDdOj', N'tz_NHrwKINUbM', N'yz bKt', N'Hmd Aj_B', N'zUvGIKL', '2025-05-05 21:21:41', '2024-11-20 01:56:56'),
  (N'rrWtypfjUH', N'YiRcLlDtLpRK', N'LHfRfj', N'clWevPgiP', N'GwfnyGrcus', N'TyQvk', '2022-08-04 22:24:59', '2024-10-16 10:55:30'),
  (N'aXICF', N'xeNdWcnlkUBbEpsWDGVs', N'kBDqItBrOoeX', N'Znino', N'QZwZqpCTB', N'pdVwJvIl', '2021-04-17 06:56:24', '2024-03-26 05:54:45');
INSERT INTO [customer_groups] ([business_id], [name], [amount], [price_calculation_type], [selling_price_group_id], [created_by], [updated_by], [created_at], [updated_at]) VALUES
  (907, N'WvMNAIjirnfiR', 6653.03, N'jwxGGNH', 201, 771174, 646709, '2022-01-25 18:33:20', '2022-05-22 14:17:52'),
  (22, N'IhrhiXXvDbQACdDF-NTR', 7305.0, N'--tqT vtV', 973, 491674, 341710, '2024-05-12 17:28:39', '2021-03-24 04:30:45'),
  (106, N'-hxZWSAZH-Fn', 1171.16, N'itkyZs', 325, 630600, 760435, '2024-04-15 05:05:51', '2022-08-07 17:46:53'),
  (586, N'BHsxGnTgZaZKa', 1923.76, N'JRwGTEiymRlSZEwc', 859, 196414, 514721, '2021-03-28 23:41:34', '2021-12-13 22:29:29'),
  (399, N'lhValpJXC k_H-', 5473.52, N'pBAVXTOtKFcyPN uLTNa', 746, 769592, 716463, '2021-08-19 01:47:09', '2025-06-05 08:51:43'),
  (842, N'QO roVQTpwAjmLvYb', 1721.62, N'hGEaRca', 42, 563696, 914375, '2021-10-29 13:06:56', '2022-02-27 00:32:03'),
  (131, N'wpiVkc', 5417.92, N'KTwyXdHKHbsB', 393, 74328, 890546, '2024-06-09 07:13:01', '2021-08-17 15:11:29'),
  (856, N'fsEIl', 2635.61, N'wKNUgXhFmKcYzAudVz', 528, 556640, 660170, '2024-11-29 06:34:48', '2023-09-28 18:57:42');
INSERT INTO [deces] ([patient_id], [personne_contacter_id], [personnel_id], [service_id], [personnel_id2], [dateDeces], [heureDeces], [genreDeMort], [auteur], [created_at], [updated_at]) VALUES
  (484493, 751799, 450478, 816675, 40612, N'DmhBbp-wdj', N'vaz miVDY-dSSR', N'j_rfQBM qXXOVuBt', N'IAyDzXOQUTqAN_hrk', '2024-12-06 15:12:13', '2023-03-26 05:02:23'),
  (8765, 18190, 5293, 979946, 947911, N'-ShnW', N'qmCGrFUgbWEpGZlmlju', N'oEBXXkPUjnUp', N'vchvrhEFzxDIA', '2024-05-09 13:25:21', '2021-04-21 11:32:51'),
  (44355, 732235, 683138, 52915, 37476, N'wMf_h', N'kPUrFMWpNnOntGQKf', N'dizLPRyofuSwOw', N'PbGExF', '2023-07-08 03:31:39', '2024-07-22 14:54:09'),
  (344452, 103298, 992931, 723099, 222288, N'GWoVUJim', N'dQVIrrqyIOubgQmOIfpG', N'TRt_gJtlNokzVruD', N'eEZCpo', '2024-10-12 02:29:29', '2020-12-16 16:13:03'),
  (70021, 49518, 442746, 378906, 201948, N'cwsYU KFflEKofOcI', N'ykPPEDuA_', N'BSbth', N'N yaNxyz-gf VJlJKi', '2021-05-17 17:21:27', '2020-10-13 15:13:41'),
  (504171, 328427, 527080, 451698, 318999, N'xJZpbLFuomSy', N'hqLiGOLALgH', N'hQEuPzIBnquQrZLyr', N'lbAZ XKWKQ', '2021-12-09 10:55:04', '2023-07-07 17:26:37'),
  (811344, 359795, 554392, 811387, 252290, N'amZ-wI', N'QSTJXD', N'zOpqVsNgU_cGHw-o', N'JIpfM-WlCUkC_Z', '2024-05-26 07:50:06', '2024-12-09 21:15:09'),
  (821455, 219895, 302574, 49371, 520829, N'iGfJfyQEfFC', N'haoscldF', N'BeFtuDWqgEON', N'GrOHabY', '2021-03-01 17:19:30', '2020-11-16 09:37:11');
INSERT INTO [dechets] ([code], [type_dechet], [quantite], [source], [toxicite], [num_bac], [type_cond], [date_col], [date_trans], [nom_agent], [tel_agent], [nom_emp], [observation], [valider], [traiter], [date_deb_trait], [date_fin_trait], [type_trait], [result_trait], [destination_result], [nom_agent_trait], [tel_agent_trait], [nom_emp_agent_trait], [obser_trait], [created_at], [updated_at]) VALUES
  (N'fopd', N'Uhr JLbqaf', 96, N'-YXPKkgwQOJU', N'LjDXFjr', 296, N'PCTAsuyeHUVt', '2023-01-10', '2023-10-12', N'xSOIV-mn', 934, N'vNWCtFcOLgsGDVShM', N'SRMWaGYooH', 0, 1, '2022-08-01', '2023-01-01', N'KEIOZXLy', N'iyzARNL', N'yU_K_KkU', N'CRbR-GZOBSYywDYsIUB', 381, N'CQuMDFBEnSQYZOGbcDu', N'U AHim', '2022-09-30 15:47:30', '2024-09-04 05:12:40'),
  (N'-oKprDXsSfQU', N'BFJGz vCdC', 252, N'q-zaVVWxjfDniepn', N'OvGZC', 697, N'ZOGHakTXRk', '2023-12-08', '2024-04-25', N'vXW FzNWndGHInF', 701, N'CMULUe', N'AimRQ', 0, 1, '2024-10-15', '2022-03-20', N'XtsNfK Ft_Da', N'IVzFhhTCWXksNH', N'-LypqmBx-YU_dNq', N'AjOSXSXz', 988, N'lraGMykJQFdfTpj_gx_', N'BCdeRNeGDhDharYvT', '2025-07-03 13:04:53', '2021-12-26 14:58:40'),
  (N'EZfHMJ', N'jlfpg', 569, N'cucmtygOfEpsfETqf', N'A-wxtufZlpnvx', 602, N'AYWtVNf', '2022-08-04', '2024-04-24', N'zmbSmymoGATtGzvbdC', 960, N'qnulZu_PaeKfAx', N'zqDbZzPBNB_Z', 1, 1, '2023-06-24', '2024-02-21', N'_nqetYv', N'r_rJBrXLe', N'nwbKbQqmwVWe-Hr', N'ynMjMT', 264, N'xgXnjDfdctNPLglBX', N'WpHqWETbUNJgK', '2021-12-25 04:13:33', '2020-10-12 23:31:49'),
  (N'dMgy_npKRVjQp Zz', N'uLoiJBxFV', 805, N'hSMkTsKV', N'iGXVXnab', 438, N'pWIhGnPNkr', '2022-09-04', '2021-04-14', N'FKfFCzhRTKBaFNZfgE', 145, N'poTuKhpUn', N'nfxpwBkTWI_DUiTt', 1, 0, '2024-12-16', '2022-03-01', N'KqgrY', N'QFfW-BJkIQNIleIPiss', N'Jk gzmyiMFanHB_Ps', N'ojTkniiqk_BmCJUnzGV', 81, N'vqgsviHXF', N'EwNarqDsSfCBt', '2022-06-19 00:30:27', '2022-12-17 00:36:22');
INSERT INTO [demandeur_sangs] ([dateDemande], [groupeSanguin], [nbrePoche], [montantParPoche], [objectif], [remarques], [created_at], [updated_at]) VALUES
  (N'eawDLtQUcySul', N'nlLpOirt-rQIWorU', N'hKLxuaWJPSMCEuZq', N'iTIYhVuQCbBBlwYTagTB', N'lbtmQ-CChq', N'JEksHqLiBhwlHW', '2022-08-28 23:40:29', '2020-09-07 14:33:50'),
  (N'WBJiUdJ_dGlbUEP', N'MGGlk', N'L iwlO', N'aPTZLrXj', N'OwRqFKfndUk', N'XLiL_LakufbaYRkkEMJZ', '2021-10-17 16:50:54', '2023-09-16 12:28:36'),
  (N'KYK-GHpvYNSZVQqnkBY', N'ol-ktd', N'_PDEP', N'aoEXIg', N'gYwdyIujsyaGGJYLx Kk', N'IuhwfX', '2022-03-23 21:27:30', '2021-10-30 10:24:14'),
  (N'ycbKLNTDSsKrhgXChx', N'pzs-GU', N'pEiSwNRZQXbWgjuMKBGr', N'rWoSiKRSCIQ', N'OFevtQlZ U KSWvRNM', N'ZFfYLtCQPFdcDfM', '2021-05-06 20:58:06', '2021-01-13 20:33:11'),
  (N'xmoz owNjhOE', N'mravWOfxuI', N'Ap hQPrQoIDdyhevtj', N'h_SHWGNZ', N'NqMThNjUTyuQLvh', N'nozPyBtJhrofnYCqbWVa', '2021-06-05 00:47:24', '2025-06-16 14:55:14'),
  (N'h gaAp', N'lr-rpkywXq', N'fQGMOQGhPLFGPQv', N'eCMhwspzLJYcPnr', N'MTqIMnbsNrdHcMec', N'ALuzN', '2025-03-28 04:36:20', '2021-06-06 17:01:46'),
  (N'mmfzELWkyZy', N'bW-SpTdCwavK K', N'PBrbH', N'dyChdKgC', N'xgbZZuMk--bIyvnUF', N'LrwSwTImMmfHx-', '2024-05-01 21:26:20', '2023-11-30 09:24:57'),
  (N'qKpqDGgYjXAHJGU', N'aEOZOVJy', N'ldfMDcO nbFO', N'DVBipTlu', N'HIhfPVT-NPhkVCD', N'gx_gIbCGrtiqyDBYSY', '2020-10-19 22:42:02', '2021-02-26 09:27:32');
INSERT INTO [demande_equipements] ([nom_dem], [email], [direction], [service], [unite], [nom], [type_eq], [quantite], [disponible], [date_dem], [duree], [date_remise], [valider], [created_at], [updated_at]) VALUES
  (N'QiZwMCAuFflvq', N'wItZCKQZwfMzeq', N'_e-QT', N'bSLbvtPtt_KBk', N'j-hAwpJ ND XZVnY', N'DzyVzF', N'Sj_qPtla-pg-XuEL', 608, 506, '2020-09-07', 415, '2022-07-31', 0, '2021-07-04 22:10:11', '2021-10-01 10:53:30'),
  (N'xWdYECJoBoucR', N'VGdgKijDhWXAAkn_MP', N'wlAafDOCl_Av', N'Ge-niYBgmvPYqi', N'_afQ-JinmPX_iPOddku', N'cr-UzEUtbXDg', N'oohWevzsSGou_Al-', 961, 757, '2023-10-01', 903, '2023-03-21', 1, '2022-04-13 05:06:46', '2021-07-17 10:41:00'),
  (N'I_ppysKjhwj T', N'qxHDWeyymPNnTdnikg', N'WJTYGcDagGjf-S -vv', N'qZ RfiZWxglgIImSmsa_', N'EKTeLtr', N'OxEBVyLWTyjwmAC', N'gFhVicot', 999, 376, '2024-07-03', 995, '2023-04-29', 1, '2021-09-04 01:08:29', '2024-06-01 03:46:31'),
  (N'ywZNUlnadilslio', N'fzytonQUmVZ_SwfZMNN', N'OVkeeeuiNkCW_a-YNRL', N'UdAZEBOqidO', N'UXfFW-Sp', N'cecNhbR', N'zcd vlPctLv y', 921, 428, '2023-08-20', 831, '2022-11-18', 1, '2021-05-23 21:56:17', '2020-10-24 09:43:46'),
  (N'J-MwnEROliD', N'KlVMakvYnlt', N'HIIbFXAM UTBw', N'EYzutnKwMkJKgqBpWek', N'vRpqDqLTReezcU', N'RZDIRhJkjknPT', N'RrOKZsrDYZQYt', 549, 312, '2023-07-31', 364, '2025-01-14', 1, '2023-04-11 21:56:10', '2023-03-14 09:43:26'),
  (N'fSqlhOxDiNVLfqi', N'TdEeomYLfroIiCzYs', N'hXinUMwuqxVOjvUKX', N'-nCl-a A', N'COQndNRDJbp_NNUnqzJ', N'kdTEvnKh MfWQYOLm', N'HRK fG-UnU', 329, 14, '2023-02-12', 242, '2024-02-15', 1, '2025-03-01 02:53:04', '2023-05-17 12:04:04'),
  (N'axczGhwgRfqAiDG', N'zXOAkeETWzkRDTl', N'o G-htrxA wfT_', N'LMCvnPcesqyVn', N'IquusvZafiPj', N'eNRZHPGtJ', N'nfidwMpd', 567, 588, '2023-07-21', 633, '2024-08-18', 0, '2020-11-02 12:20:47', '2025-06-13 16:38:43'),
  (N'PljTckTte', N'BAYLCc Z RzHmSJkJkyT', N'CsdRbQaMQEFouS_sLQ', N'lxQ-MwLbUhjfnxvmdh', N'voqRmBUqyB', N'DdBEOvBtsbnO', N'rGllheN', 745, 267, '2025-02-17', 339, '2024-11-12', 1, '2022-03-04 11:51:57', '2020-10-18 00:11:37');
INSERT INTO [departements] ([business_id], [nom], [shortcut], [color], [created_at], [updated_at]) VALUES
  (912, N'xuokgzZVVPXXJ-u', N'uajy MsZxawH nUz', N'DkjJGs', '2025-07-22 01:22:40', '2025-07-17 00:22:47'),
  (205, N'YU IOJUTT', N'yGLHagbzORvXUlHwst', N'culQnVBgqWg', '2024-04-24 06:31:54', '2022-08-16 04:48:10'),
  (669, N'bDOkFqTibcQ O_wdlPN', N'ZYaCKNoMCEUJG_', N'dqGxLgw', '2020-11-05 09:30:39', '2023-09-09 06:12:16'),
  (886, N'k sJWCHsOctgX', N'FgqaRGWYHDF KW', N'_YeuSzNL-kiLhPmD', '2025-08-03 18:32:24', '2020-12-03 19:12:40'),
  (644, N'zJHsRat', N'_zSpoaXNSLtEXPMgtguP', N'XGtiDyF -D', '2023-01-01 18:59:51', '2021-07-04 21:56:49'),
  (444, N'pXCrAVyWCJv AnR', N'gyspzePThgzZHxLZxit', N'FhBHFtF', '2025-04-18 00:32:26', '2022-01-11 21:44:41'),
  (323, N'OprUVnlufah_fbkQZJ', N'ShYrKQXered', N'fVicZfP', '2024-06-29 02:36:20', '2023-03-27 17:40:18'),
  (479, N'SJfuREKBgLZri', N'XGdlVelquZS', N'q_XEVaGbV', '2024-11-14 23:03:55', '2021-01-01 18:50:57');
INSERT INTO [depots] ([personnel_id], [code], [intitule], [responsable], [bp], [type], [emplacement], [created_at], [updated_at]) VALUES
  (613066, N'DHPYxCrUmA', N'kvrlRtRDdlyNgO', N'YQszzBMOiaEXSl', N'jiYWXpShUHPCbGASpn', N'WUrwoLCxcJlKPb', N'GUuyS_MGciJ', '2023-03-20 10:45:20', '2023-01-02 20:16:13'),
  (2020, N'CHmASiQyJ', N'NsgRRsZDMdqsD', N'fwpFOMkzOb-WBbI', N'pRHjaRbaR', N'MEIaAOEUYJ', N'OrBuOumaN', '2021-11-21 15:52:09', '2021-11-27 05:24:09'),
  (189775, N'hiGJgzNbnY', N'I nXlTjokFjotq', N'reXz_dHnJ', N'qWILPMr', N'QknRmilGUt', N'W_zhMLKCfcGTgXGzmj', '2021-07-31 04:55:50', '2022-09-04 20:55:27'),
  (674415, N'CWSuTR_lfXqw', N'tqCijEbTdqHNRON', N'ZqXqklQvNRCmcnFqGZxP', N'HnYC-r', N'jUdWdzQa-PYJ', N'aODFpBVQyEWx', '2024-12-15 02:17:40', '2023-08-30 18:42:16'),
  (609810, N'FfUUVuD-ooovoGnFXLc', N'pIUVLsYRdu', N'MUsR-DyWgNkDVHhjVR', N'DMOzjr', N'KZNwkk', N'QiWDuBhCTpCjd', '2021-04-22 14:38:01', '2024-09-07 03:49:55'),
  (892431, N'ehCuO', N'vSzDDsEpxhcADTt', N'qSMYMYGKcYTFhS', N'FOFH-VTGdpbZksWK_', N'oRRUaaJno', N'hIEZhXuTuYRbZm', '2022-04-15 16:13:27', '2021-02-06 17:47:32'),
  (815056, N'G_amWxrng pC', N'gjTKxYSbYXrJ', N'XNIFSxK_', N'oiSlPLi-EHcNLjHpZSQ', N'nKgOcAlbrB-DJAmcX', N'Ie_yLeKWqIzE', '2020-12-19 22:37:28', '2024-08-12 15:21:06'),
  (680561, N'SNIVA_ qr rLehIwf', N'gvqQkC', N'uvDoaVgGVc', N'ivGtl_obikPUEZlFS-xk', N'Rw-kFXUQ', N'pehSroseU', '2023-12-03 03:15:19', '2023-11-25 16:56:10');
INSERT INTO [depot_caisses] ([patient_id], [fournisseur_id], [type_compte_id], [created_at], [updated_at]) VALUES
  (905602, 245218, 568475, '2021-12-26 14:09:31', '2024-03-11 02:05:57'),
  (484456, 460458, 793870, '2023-09-29 19:17:34', '2025-08-05 01:32:22'),
  (460505, 138258, 487718, '2024-05-20 22:20:55', '2024-08-07 20:56:01'),
  (114924, 685233, 599610, '2024-12-18 18:05:34', '2022-12-23 07:21:47'),
  (427182, 27857, 369664, '2022-03-29 19:30:03', '2023-03-14 09:07:43'),
  (998919, 413215, 963160, '2023-06-16 01:44:55', '2024-05-19 17:49:42'),
  (300352, 940149, 796451, '2021-02-25 20:17:36', '2023-11-17 05:57:26'),
  (830885, 564384, 243550, '2022-11-05 00:05:13', '2025-03-06 13:21:00');
INSERT INTO [destinataires] ([service_id], [chapitre_id], [code], [libelle], [codeCategorie], [numeroOrdre], [codeRegion], [abreviation], [desactiver], [created_by], [updated_by], [created_at], [updated_at]) VALUES
  (457863, 819246, N'gBSsWzYkNiKfWFEWmyXb', N'pW MaIefYabcE_S', N'Iph-H-kUAnEOqeLIFRVd', N'lludUGfNmoN', N'kEqPsxqQS', N'UsXsEkCHFTM-lssZ', 1, N'eDtbAzJyCKXKVqiaRX', N'hnEBMIkmCyf JiuUM', '2022-05-17 07:41:03', '2020-11-20 21:58:53'),
  (571061, 516257, N'KbMelGelfkznuZTYJhxB', N'eclykkTuW-VgMmmuAiZX', N'soFRlZIlGqbUgk', N'SidcqplcKeIkGWPh', N'sENzQABZQ', N'GnbmgFkMVrdNNnEwfnF', 1, N'HhtVPgTMVyFKN', N'Js ueNja', '2024-12-18 04:54:10', '2022-12-13 01:41:57'),
  (651761, 785711, N'wpYGvfKqcxzIsWRwOZ', N'Sqdgd-DxlJC', N'kivEYUQTudilvNpTZhQk', N'EkxrsRXKZx', N'OapRaCKuIivqYBE', N'jpNyCQFHmKaCufAmIaz', 1, N'zWENtaMSL-', N'DnDUik', '2021-08-01 13:29:05', '2024-11-19 13:33:01'),
  (409123, 287544, N'nzesO', N'tqbRTlMfNxyvbQ-u', N'JteOrKlZiIo-u', N'cTii-LowefQFXtGOz', N'ANpIVcwIqzc', N'aQY_qovQSgFxMmfCkBec', 1, N'zmPeWqCRLzgXlAv', N'HITMMF', '2023-09-13 13:12:55', '2023-06-27 09:45:16'),
  (530197, 853895, N'mELMQEIG-fBTAGO', N'NzvegK', N'sPtTEmYlfEOCGWusuDs', N'RDbzcHXOYvVvJUGQmtIY', N'AsWUok_DTxtfeU u', N'xjEDdfPw ykyzWNKIf', 0, N'iCZLjbcJuqzp gBU', N'TAczRzOtKXmkp', '2024-10-04 22:53:13', '2023-06-26 12:59:20'),
  (344924, 728262, N'GHmUZooPfqL', N'Pjw_sGuKRkGZ', N'VaZzBBunqF', N'SXfcKbbj_IfacbnkVAz', N'_fDJaGTG zYqtSNTLe', N'jFSFXAwajUMWsWkwd', 0, N'i KhxmxmD', N'LkEeLDzVzhyksiM', '2022-04-02 16:19:55', '2022-06-12 02:19:23'),
  (556292, 26089, N'QdWWERc', N'CDWstzbI', N'sJyqKhFVuaDJ', N'ginoh_u_Ror', N'ylg-FseOb-WOoCwgtgyr', N'SyHRKJlmNTDRmPiCHz', 0, N'ZHsSN-XAnx', N'wPQbejeQMQZKZfqR', '2023-08-06 19:32:54', '2021-09-25 22:36:03'),
  (337199, 200615, N'KxpafXKyxrKUFdv', N'qxRQLKgqujXeai', N'OWnGIQ', N'aOCep-VOBb_siejgZacs', N'IFMEwjfcdHsJButlwR', N'TBTHy jlkNdVPuZ', 1, N'ZgDfbwyFnMUjNn', N'WK-cDa-yqRHPFjTpvW', '2025-02-05 00:12:49', '2022-03-27 09:16:26');
INSERT INTO [discounts] ([business_id], [location_id], [brand_id], [category_id], [spg], [priority], [discount_type], [discount_amount], [starts_at], [ends_at], [is_active], [applicable_in_cg], [created_at], [updated_at]) VALUES
  (970, 576, 648, 928, N'fDxOidtDEbctHmS', 8, N'ziDpkxvnIkD-UtnJojS', 8190109386642128.0, '2022-01-03 16:22:35', '2021-09-20 16:30:19', 1, 0, '2024-04-03 22:43:13', '2022-05-29 13:51:56'),
  (312, 543, 216, 467, N'VRVio_aeqAqB', 495, N'XbpHdYMuVsfIuSkd', 2120927839340385.2, '2024-11-05 10:59:16', '2021-07-13 04:03:22', 0, 0, '2020-10-20 12:03:28', '2022-12-26 20:21:11'),
  (774, 277, 222, 224, N'xWcLId', 838, N'qcQL-ASbdUH', 9230811780746528.0, '2024-01-28 07:11:27', '2024-12-02 21:32:58', 1, 1, '2023-10-25 02:36:44', '2023-06-03 15:01:16'),
  (534, 687, 311, 160, N'wl_DCyHwDv', 376, N'-XstjLlFFvbfMnjZxi', 7079878107295747.0, '2024-05-22 09:43:06', '2023-04-17 08:07:44', 1, 0, '2022-03-24 15:19:53', '2022-02-09 07:55:28'),
  (93, 435, 395, 60, N'lmGYgrMJCeSslVbU', 938, N'QuDFCNohlqds', 5895885843439710.0, '2025-01-13 21:03:25', '2023-11-24 06:59:59', 0, 1, '2021-11-18 21:11:10', '2022-08-02 04:01:09'),
  (70, 942, 503, 347, N'nnUDmOtEDPBndXTB', 328, N'GjDZBwtZOYy_NLew', 6758605810759836.0, '2025-05-08 11:40:18', '2025-06-26 10:41:08', 1, 0, '2020-11-17 05:10:55', '2022-09-20 06:30:01'),
  (730, 504, 772, 523, N'HgrQXRSPtOiKH_T', 205, N'IDAhNbDubuzfgTwXwx', 8032377592986617.0, '2021-01-02 07:24:28', '2024-11-01 12:45:09', 1, 0, '2025-06-02 21:26:10', '2025-01-25 20:29:41'),
  (412, 815, 774, 621, N'gfxJHMbeFeUGC-iLD', 926, N'fUlA', 5070123315885878.0, '2021-08-18 16:32:43', '2023-09-01 00:06:06', 1, 0, '2022-11-08 21:25:38', '2022-03-21 19:33:34');
INSERT INTO [discount_variations] ([discount_id], [variation_id]) VALUES
  (63191, 400),
  (50924, 384),
  (670043, 898),
  (72518, 797),
  (101212, 414),
  (655348, 787),
  (504848, 428),
  (639740, 11);
INSERT INTO [donneurs] ([nom], [prenom], [adresse], [age], [sexe], [created_at], [updated_at]) VALUES
  (N'rpvWj_zJYiVXeM', N'TCfLUaSiQplFTg', N'SEYpi', N'CxN-ihlpZcZmtGN', N'uATqZn', '2021-05-01 05:10:44', '2024-05-27 11:34:02'),
  (N'XfVdPPr-z', N'X eYeHSyWUD', N'PeKIF', N'wbRutsxNmgJ', N'ogjwsCaK', '2025-07-28 02:15:03', '2024-11-19 20:37:30'),
  (N'q gpwP_Zbvr', N'C_AqW', N'hPJ-RySiOLrmAJShmfsv', N'WNsJPaXD-iXb', N'WI_qUwQHrvItdlikCUE', '2023-11-10 15:29:08', '2020-09-07 13:26:47'),
  (N'gJdBWBFiv', N'CLmWUU sqr', N'hTZLczCFtPjeU-a_', N'aAnUrsm-UFg', N'RQHqk', '2023-06-17 01:43:54', '2024-06-01 03:40:32'),
  (N'rlZoDpvnSqK_DitH', N'HNG-PPVmkkv__Xovbl', N'CCqPzOLamo', N'FhoEavHFRTFUv', N'klYf_ROQk', '2021-01-07 19:22:36', '2020-12-02 19:14:57'),
  (N'aOjnQridmoR IE', N'JtxX-nw-cYd', N'guQUApImz', N'AKrOWmAvGyUNtNeMK', N'ISu_Sh-oTPtsZuUupSkM', '2023-12-14 20:48:22', '2024-11-14 19:15:17'),
  (N'mF_uLtjInfGPIHQzgzAz', N'p tlYGZcMfgv', N'UhyGlsMYDDaWw', N'QKheRRqcBxPrF', N'wglBEROZPUrMbDwZo', '2023-08-08 02:15:09', '2021-07-01 11:45:16'),
  (N'GpqxAk Knot', N'B_vgvSIjjTn_dM', N'FzcvKBCAV xQWB', N'krKJRno', N'qgtyFZL-yLUVXn', '2024-12-19 18:02:36', '2025-08-18 13:44:16');
INSERT INTO [echantillons_laboratoires] ([code_echantillon], [patient_id], [medecin_prescripteur_id], [type_echantillon], [date_prelevement], [statut], [informations_cliniques], [parametres_analyse], [created_at], [updated_at], [service_id], [examen_id]) VALUES
  (N'xRk_NgZsP', 624335, 234594, N'nWvOPQkNdHofWUfSzSQG', '2024-03-23 02:04:05', N'Sq qX CHB-HCmiaDeIf', N'zNqq-hQJ', N'zWMFQfGTW', '2024-08-10 07:04:25', '2021-02-13 06:30:51', 748165, 119436),
  (N'oUKJRDr bwWreKe', 611284, 845174, N'TSMIOuQYh_hEsk', '2023-12-16 17:39:02', N'tijCtbs', N'fk-kHRv_-_ZGKPXn', N'bJhdVpwCRrofJKhcbtP', '2025-08-03 23:59:46', '2022-03-01 01:19:36', 267616, 421547),
  (N'-WhjIO', 376198, 272164, N'lzXogPvdGeaJBBC-drR', '2021-09-26 07:07:04', N'RCMbnurQc--yrjV', N'o_xK_GrZIG', N'zNQfITZAsWHSselfjpsK', '2023-11-12 21:04:06', '2020-12-07 02:24:04', 367180, 631512),
  (N'WFcTzjDjovi', 410368, 283497, N'yfhp_HYIEdT', '2023-05-12 18:41:52', N'g_Bk-NGrFUxtGFcVZdKB', N'AhryKNrGpZYGO', N'zUchBZBGvJWADYCH', '2023-06-20 23:21:46', '2022-08-07 16:31:44', 768937, 143796),
  (N'NCXvZnNncoPzeN', 598382, 590500, N'iyUbpYISVzh', '2023-10-17 16:05:11', N'PYsi-VmzImCVHaRnCfD', N'JBuIIbD', N'zYhSjcq-Avtuyu', '2024-04-30 06:45:23', '2023-12-14 17:36:32', 231823, 723899),
  (N'VWnzmTJQWhnNjYQZi', 927511, 184539, N'dsWlgdoFMVK', '2025-04-22 05:07:49', N'btPICKTVnF', N'Wflomv', N'-SKZVnVFOETVwMaflMi', '2021-09-27 19:09:48', '2021-12-14 10:06:09', 931131, 25227),
  (N'onCaVsu', 926309, 497339, N'TaQJudUETsMOf', '2021-04-28 16:42:36', N'MjIimALBVtNp', N'XBJofpJaS', N'TRnpJ', '2022-04-26 19:35:25', '2022-08-21 05:16:36', 962414, 454780),
  (N'VX-mSzetUdsFRAeMsxA', 91470, 950226, N'IgGhPeazSNMsQjZ', '2025-07-22 22:06:41', N'kpeVNFVGLT', N'TRHLnPPjceYcRJM', N'aEkojUZ', '2021-11-03 17:19:50', '2024-11-13 22:05:55', 314572, 776336),
  (N'HpZcfNWtrhaGIntWrqj', 355772, 260209, N'sirMWtfZFGvJqEVFcjnL', '2021-09-30 07:08:44', N'fdMexCeMfas', N'VLCXKTZlptfb', N'_tjwcuMRy', '2022-05-14 08:27:59', '2021-07-17 02:18:48', 58710, 961524),
  (N'WkB-JsseJDYYDYB-R', 965745, 566230, N'fSEBOICSlKAiUbtkXL', '2024-10-28 10:18:01', N'YTIOfdfStedUbHUj', N'LOlndywghEAJk_-u', N'ujY-GGbc', '2023-04-10 16:35:26', '2024-03-06 17:48:43', 987381, 25824),
  (N'rAKbx-cGtPPLVvQf', 497786, 784490, N'qiZdW', '2023-01-16 06:18:57', N'n-bH-CJI CviyokkVHqs', N'ooRmuJPd', N'RednEVEabj', '2022-09-01 04:54:35', '2022-06-18 02:39:39', 333089, 569075),
  (N'mvZ_bBlDt', 701741, 86697, N'EdG_ HmkGz_cqgyg', '2023-04-15 16:32:28', N'v-roZTtLhTWP', N'-t wQuCUs', N'OsUomodr bncQQ-SvJ', '2021-04-30 06:04:59', '2024-11-23 18:06:07', 124039, 377825),
  (N'pva_BiMjx-IQcUVM', 842864, 625984, N'NeKP_XqXpCmpn', '2021-03-17 09:14:54', N'-NnSHyV_w', N'zXJvQd_kiaOIbxm', N'WF RRKSjCMxen_', '2022-03-15 17:58:58', '2023-01-07 10:56:19', 415450, 341096),
  (N'ImRxMgq', 455888, 118806, N'chUqcUDLGo', '2022-12-21 13:05:53', N'aC CY', N'ZRPAOdg', N'JUZUo', '2021-07-27 15:29:21', '2024-05-22 14:13:14', 844255, 253331),
  (N'-MUKBmlgxxoPWp', 891067, 646616, N'umgFui  IygYlQkqbPQ', '2021-01-13 18:14:21', N'iuKmF-', N'_IfIovcOcljJEVr', N'QHLFx', '2024-10-15 13:26:30', '2025-01-12 05:08:24', 757604, 273874),
  (N'owfOJRcT-', 167870, 843659, N'tlhOtLiITGteyUoTrs', '2024-10-24 16:39:35', N'PLlFPNANY- V_mNQ_ j', N'wx-f-', N'VPDaYq wTmVVoaso', '2022-10-06 18:01:11', '2022-12-15 01:03:00', 582228, 117042),
  (N'KJG-jSyHEssopRFn', 116805, 275944, N'jMbob', '2021-01-24 22:29:40', N'YRYaoMfe', N'PtaFwxKD', N'ke_AnqGtVVsodvntqW', '2024-09-16 00:58:26', '2023-07-02 12:24:13', 935840, 371756),
  (N'YGjoJ', 152554, 553902, N'zfoDPfLu', '2025-01-07 20:43:00', N'FoY-', N'Fhtyowvsj', N'B H AnWOTX ICl', '2021-01-30 21:45:17', '2022-06-01 18:39:55', 908381, 174931),
  (N'HoWjWiEdtNq', 250679, 919211, N'ESsbkywvJ', '2023-05-23 08:13:05', N'qxJdkpUUph', N'GgGwP', N'UIUb uVRYfqpQ', '2025-01-10 08:38:23', '2025-01-28 06:17:08', 744899, 184368),
  (N'oFOX-rLcLKqQrFfIPXeU', 211684, 866939, N'sWcAjeUsA', '2021-06-11 12:30:24', N'nwqCmYUpEdkX', N'uwW WSzmsOJhqh_', N'DDQhJdVCqKijWQPm', '2024-04-13 17:43:49', '2024-02-28 01:44:30', 378155, 143259),
  (N'SgOqgLaGW-lXCruQ', 474606, 288520, N'Aw_LPWMjxbFBmoE-', '2022-08-06 20:59:34', N's_XmxWoFhlgszpdFdP', N'MvHnZb', N'kXWIznjpedlzw', '2023-05-11 03:29:46', '2024-11-12 05:04:59', 295021, 500235),
  (N'RsMmzzFoujgzb', 545576, 259164, N'ck-GLDZrXaNnW-', '2025-08-12 12:33:23', N'rNSSzrEZYMm', N'oNTZvykZgVusjTZA', N'-AD_fHIM', '2021-12-24 10:14:16', '2024-02-13 20:06:48', 770298, 500828),
  (N'fnBeLf', 432415, 406247, N'olYjhSVPDPXCwLrZetq', '2024-10-10 04:44:43', N'VlbXrvooCUYyLYDMgSBi', N'zjY rpKAQdWzoccDLHl', N'TnOX UJLeEG', '2024-10-22 22:36:34', '2022-05-18 02:13:46', 696590, 657759),
  (N'AoNlegGDJWgVyjyP', 902571, 601459, N'CovVRhdw_RYZONDnttXA', '2025-02-01 11:16:43', N'ZacNsCNRqDWQWLk', N'_PzX_Pgy_AjU', N'ICKiKz', '2025-03-24 07:18:37', '2023-11-24 09:13:07', 243611, 678851),
  (N'UVFC BoNyyoxiEpzab', 828802, 840992, N'xxaqaPJrhTmGoXGKdge', '2024-07-18 00:05:54', N'jYIPiaZPEMaFE_P', N'hHlxATeABqckJPaiJ', N'jklRt', '2023-02-20 13:30:29', '2023-12-08 20:13:51', 454164, 87447),
  (N'ufES xJBzAl_zwF dt', 950986, 229002, N'mWKlmRUHqbN', '2025-07-21 01:53:23', N'lXzMeDzX', N'KJxCCskCn-uKJ', N'dRRRDbU utDjd', '2021-10-09 01:27:04', '2024-04-27 21:50:46', 280891, 889289),
  (N'SuZjLADTM qEhGM-e', 735744, 450275, N'IcFoThUcbfCKEEzyQc', '2021-01-30 07:19:20', N'kabPpSSBtX', N'nGkipvulj', N'Mtgkq', '2023-07-01 01:29:17', '2024-01-19 17:41:15', 194972, 664139),
  (N'jVbkxq P', 860246, 27618, N'gfmKYzvqwkvSu', '2021-06-19 14:38:50', N'XyuATNJoAt_Mub-MPlA', N'GNZExRFjd', N'TgsSm_azgtp', '2022-02-22 12:58:41', '2024-12-22 16:51:11', 524711, 993187),
  (N'HKNsCcMQL bAMKUV', 573748, 119179, N'oY-EedqtL', '2021-02-19 09:04:38', N'gQgoQBqBINdyTIHDGuIb', N'MgjPZDY_ENY', N'vmQIVF', '2023-06-20 18:59:34', '2021-04-13 05:39:48', 753847, 726263),
  (N'nUWql-KCPdoKVDU', 798626, 823420, N'moGabqfqQ mkPXSAURPN', '2023-04-18 05:22:33', N'hYa qXin jacSR', N'xIylSSmoqJFHeNot_', N'fesCPszDu_', '2024-10-09 13:35:05', '2022-07-03 09:30:38', 177178, 735859),
  (N'fTOqgvAeDmflroj', 121429, 764714, N'KjqEZSSzhDrdouOTnTc', '2020-12-20 00:17:16', N'yHrh_CjFnrdzK-F', N'qhoXlymTTa__QgZ', N'dJPWLiiNGmcLjje', '2022-07-19 01:30:23', '2022-05-25 07:34:15', 921126, 487219),
  (N'qQuYS', 43537, 227099, N'bFkNtmcAiGDmXrvhiK', '2023-10-11 11:36:01', N'NCRRjIUv', N'IyFNUphycPjEGBm', N'IC AXxUzVgiH-d', '2024-02-09 21:26:29', '2023-08-08 15:28:52', 975081, 333392),
  (N'hgcS MWvnf', 417031, 898245, N'vyZzETJR', '2023-07-04 22:41:49', N'Wgnreh-iMjOIR-Heark', N'JOQuOlqCNzu', N'swcZGuuqIHvMG_ O', '2021-01-03 22:51:04', '2023-12-05 21:33:23', 601606, 52745),
  (N'pLYJEGHIMLKsNO', 873134, 571180, N'Xr_azcjYyLWcKO', '2023-10-01 00:48:48', N'dwRPigKHKNblaY', N'DFmdIGfvobkLonmyZDCd', N'jKFLiwoItgTXj-SC', '2021-07-09 13:15:39', '2022-07-18 14:48:25', 150413, 391919),
  (N'piSwHWJGYqXP', 818323, 723460, N'tWfBl', '2024-10-09 04:58:05', N'ligiQ hfV-W-u', N'PrtPGWwajRtWAS', N'bRSey-I', '2021-06-07 09:43:00', '2020-08-31 13:00:39', 518791, 107259),
  (N'EFRL_VFoaNOO', 351123, 985749, N'TtOYzaCm', '2024-10-31 13:23:54', N'dtcpOlRYta', N'tbgkeCJvBTOnPW', N'mzervx cfkMbqp', '2021-05-05 04:30:10', '2021-12-29 00:06:07', 554584, 455880),
  (N'BDCwyszNZ GXQmypnW', 158021, 36472, N'HVgAG-wmfLLQMa', '2025-02-07 02:25:01', N'ceWtyhGEdYOTkES oNi', N'ZyDIXoftSYyrk', N'XbGZHUlpjXqOmNA', '2025-06-30 10:07:09', '2024-04-23 07:10:03', 892963, 657210),
  (N'TQCR FnjpFkqLT', 750084, 172682, N'PfpoitazeH', '2024-01-24 08:03:43', N'zbwzL jCqxbxUS', N'NwQHkyf_BVLgmroOWH', N'jWvJdlu', '2023-12-21 05:53:45', '2022-01-28 08:03:10', 87420, 628683),
  (N'rEBdtUtdtjrgsjSRAuy', 162501, 442921, N'zdqztpb', '2020-11-12 16:05:17', N'ktDzySawXTne-nNTEWH', N'DsEyyYUMYoF', N'UEYltXVlqkEGtYSel_IQ', '2024-10-25 19:35:45', '2024-02-22 07:12:59', 807806, 963987),
  (N'iWVGjBgk', 293169, 875072, N'CMKM_sQ--GeLtS_cATJ', '2021-09-02 22:04:01', N'_DwzfUascJ', N'E-mjuYHzGrHeby_krD', N'ywzNmO_', '2025-03-11 04:48:47', '2024-03-15 11:19:49', 935929, 332328);
INSERT INTO [echellons] ([intitule], [created_at], [updated_at]) VALUES
  (N'lbvqhwY', '2021-09-24 16:20:39', '2024-11-28 05:42:46'),
  (N'UEGAW', '2023-03-08 17:21:48', '2024-08-02 22:32:10'),
  (N'ahALyibVjQpmyiFbzxXp', '2025-05-25 19:48:52', '2021-04-01 18:04:28'),
  (N'ZEILvySimus', '2022-07-23 06:54:47', '2023-09-29 21:28:02'),
  (N'kLbtxIZ', '2025-06-13 16:48:37', '2024-03-03 18:32:22'),
  (N'TJw-Mxis _dv', '2020-12-20 01:11:37', '2021-02-14 04:43:04'),
  (N'uYfVYbUzPyWA', '2020-09-28 23:19:26', '2023-10-24 16:14:38'),
  (N'LuKkPq', '2022-06-07 13:33:20', '2025-07-25 00:50:29');
INSERT INTO [element_salaires] ([intitule], [codeElement], [sens], [montant], [created_at], [updated_at]) VALUES
  (N'vHOGpkj', N'FdkhgAIVyzQ ck', N'H_fqNGMzwB', N'TEJhWxq', '2025-05-02 17:26:06', '2022-03-27 18:51:28'),
  (N'ZfVXeupJooyyWO_Xt', N'LmsDSsodosPjBD', N'ZvZzBUegXvwzJ', N'AaMytQd', '2023-10-14 07:24:14', '2024-05-14 16:05:45'),
  (N'_BAbWXUeEIkRNy_g_sVO', N'obCsIUbjDMFUTSiFmah', N'NYLtz-xYYZjgEsxPzu', N'mZJBJs t-oSJb', '2023-12-20 17:37:56', '2025-01-29 22:56:59'),
  (N'g txDKwwVZUZY', N'mJevOBTCKMEPiHfwBfm', N'iYOo_', N'YEznMfzTOX', '2023-01-20 02:51:40', '2024-11-19 00:07:32'),
  (N'X KCzHDRSyx', N's_FgIY-fREworcLBgO', N'XO-whfZFuAn Zs rdAd', N'hcLgy YlB', '2024-03-02 21:44:19', '2024-03-16 12:07:13'),
  (N'kXXDYGS--pnlZZlynFme', N'YHltmALGeWiccBEJSN', N'kBDhxBLfOtUTDZaekN', N'RXLVXqRwsfY', '2023-11-19 23:07:49', '2022-12-25 01:58:28'),
  (N'bFRgwcaBOSRzwkJvm', N'cquxES', N'IZvNljjiVdbXyYwUR', N'PCtPhtriOdfGQansjaTy', '2025-04-23 15:37:44', '2024-08-11 04:16:26'),
  (N'eFbr-UBAHE', N'QZTQJ', N'ZFNyjhfB', N'gjpcqySvGozZxMMIaVVR', '2021-06-14 23:44:42', '2024-02-04 02:53:18');
INSERT INTO [eleves] ([personne_contacter_id], [class_scolaire_id], [certificat_id], [patient_id], [nom], [prenom], [age], [sexe], [email], [anneeEntree], [dossier], [created_at], [updated_at]) VALUES
  (702686, 435295, 375354, 572331, N'-oBZASkk', N'-cIyeRbig', N'_bTSxbKy-pMK', N'FJmsHJeSrzaWR', N'qSCtaVDKS', N'nttsZhQD xyB_y', N'-Mzlfok', '2022-08-23 06:15:50', '2025-08-08 01:08:56'),
  (981453, 189347, 650697, 391647, N'hR_LE', N'fcWmiZgzv_ZGTaJDj', N'QERcSvQeUhNo_HInR', N'MbrvOG', N'zQE-lMf', N'ariXcfJxLdXw', N'EohfWJCzwA', '2024-10-24 22:07:02', '2022-03-20 11:16:00'),
  (194791, 287952, 112693, 164219, N'vUbSp_HthdgRKwZLM', N'klqLlSrqY_', N'bTVzBf_wKOlSi', N'dLF ySRr', N'eJmVJkwZvSLhsolZe', N'TEkrwyVd', N'eGldHOcJAhZCGaHF', '2021-07-31 08:42:27', '2022-05-03 02:14:42'),
  (356660, 234840, 543445, 753380, N'CmjqjdSwDdVoBx', N'LluEbFUlYE-PVKkM', N'SqTBV', N'-eUCjfP', N'EdlSBUeyFfyS', N'l FdjjUsfcYkAkgbInaJ', N'-lbWYLftToO', '2021-09-03 22:32:40', '2025-07-18 18:47:01'),
  (249326, 561947, 846892, 872283, N'-eYvZ-pfReTHM', N'odE ofoLDj', N'lHCDenVctj_oGEQzGbV', N'aVE R', N'NBskTDDVcMDHYxjxp-X', N'mHu_teo', N'TDOPqqIR', '2023-06-27 18:06:10', '2021-09-01 21:20:57'),
  (833776, 610710, 376064, 265028, N'kQonqqclxTJPG', N'YveaHHMjO gCgaHQ', N'rIupfvM-OYYVMBsR zS', N'JVCRi', N'qFFFvpGWJhVCYBI', N'xmirEHfZ-Tha', N'YBjhMHKY', '2024-09-20 22:13:50', '2022-10-23 05:19:11'),
  (818859, 298804, 441877, 608849, N'fAJSfZ-SwRR', N'ysNhTNb', N'dOrrvhMSys-KlpVbySBe', N'hEPrY', N'kukr_A-DhMndyT', N'FmSLbXHEwmvIP', N'kUrnvQMU xh', '2022-08-22 22:12:33', '2022-04-05 06:41:39'),
  (237428, 72542, 947181, 750316, N'VMxrmiplrAKowwhANF', N'QFZ EEYkWdt', N'KF_hGGJRrjD_', N'VyUNBuAs', N'xUnYM_kHqbnrFBMz', N'VxSr-taAzHMLUt', N'vnkGmzLoa', '2025-05-05 15:55:13', '2020-11-22 01:45:56');
INSERT INTO [emplois] ([fonction_id], [personnel_id], [service_id], [date], [created_at], [updated_at]) VALUES
  (77010, 102805, 679105, N'lhPmKIUmUbkcSbZwBOPv', '2024-06-10 16:17:38', '2022-01-13 06:34:57'),
  (697929, 212803, 562999, N'QhAUdeI BeLg_p XU_', '2024-04-21 05:16:32', '2022-12-09 14:35:49'),
  (62089, 723784, 433176, N'IcYxVeG tcsPFFp', '2023-08-25 23:21:00', '2020-12-09 20:31:45'),
  (246998, 846702, 126820, N'LD-seyolkHuwA_', '2022-07-16 03:41:42', '2022-08-05 15:47:13'),
  (442898, 427430, 865649, N'lovj', '2021-06-04 17:25:44', '2024-11-14 05:43:49'),
  (661274, 601601, 689563, N'gh_JlIKep', '2020-11-13 13:12:10', '2023-05-19 15:27:07'),
  (77801, 21262, 162562, N'fNbwPHfqDOKAQdTvyip', '2022-06-25 13:12:12', '2020-12-07 22:44:22'),
  (619443, 268000, 480983, N'zGHvUrmqYPyZ-ruGjNu', '2022-11-02 07:07:33', '2024-01-24 08:37:19');
INSERT INTO [enabled_modules] ([created_at], [updated_at]) VALUES
  ('2022-05-21 23:54:11', '2024-09-10 02:04:49'),
  ('2022-05-28 01:32:09', '2022-09-30 23:51:25'),
  ('2022-07-03 21:05:45', '2020-09-20 04:51:46'),
  ('2020-12-28 13:03:53', '2022-07-13 13:20:50'),
  ('2020-09-10 23:50:53', '2022-12-14 22:26:27'),
  ('2024-07-08 06:19:39', '2021-06-24 10:38:56'),
  ('2023-11-17 17:48:32', '2024-01-30 22:30:41'),
  ('2021-12-04 12:01:51', '2022-08-22 10:53:37');
INSERT INTO [engagements] ([ordonnateur_id], [destinataire_id], [imputation_id], [numEngagement], [procedure], [codeDepense], [reference], [objet], [modePaiement], [dateVisaOrdonnateur], [dateReservationCredit], [nomReservCredit], [dateVisaCFS], [etat], [actif], [desactiver], [montantTTC], [tauxTVA], [tauxIR], [irpp], [cac], [tc], [cfc], [crtv], [cnps], [pvid], [iprcm], [ptp], [created_by], [updated_by], [created_at], [updated_at]) VALUES
  (298242, 683860, 185175, N'pVP-chiOHZOZfLsa', N'gfiLw', N'dFQUGgIFU', N'gtywA APpCcFcO', N'XSpOQEmWDTxfq', N'xpuwVqBVkijR', N'DWzycdNFtYXKaK', N'PjygMox', N'xgtgIYxN', N'ddtGMZzvBaJqyK', N'rQrM_uyVSK DDxxB', N'kpsbcfW', 1, N'lNbsbOfwb', N'BkLTZrkbgjVgDiXlcLto', N'llbHitfRMJPxD', N'UGEnshQTpCjncTSDouF', N'OnyVeGCD', N'KFG_LxnVRxkuI', N'pZuuOVNKvhurgsp', N'dspJFispaIGsJWzUcB', N'PhttVjxVZSdKR', N'LmpXFvSFKRdguwbHI', N'BmKvH', N'vrwaOuTQPlMywp', N'c_qEAUGdMJwzJpudwg H', N'rtblDxxqOFRd', '2021-09-11 07:28:54', '2022-12-25 20:32:23'),
  (186029, 928362, 963460, N'bpOmBKpyIotcjgh', N'rwtWK', N'OO-XOs', N'bzxmtOLnbNBABmtMh', N'ydxVuFCm_UKcqwvOsm', N'lZomfMOYneSjReTcJh', N'RcnIFEmU', N'cCVFY', N'_KSzJXCa', N'yBGQGtm mfBucMInoI', N'QlFiYsM', N'g_rdxt', 0, N'ryNHMHqEQpGs', N'Lu n_FlxUHaf', N'XoQxHsKAjbcnl-o', N'kahUMi', N'QIzd_hFoGwuSxxwdw', N'OIf TD_R', N'ftkyYAistoAFEWTa', N'OXSffbGcdOlPz', N'NgmuQLEq_HLwz', N'ixjFvVnfCFWLe', N'xXoCl', N'AwyonFmqm_tIJMeN', N'bW- Wb', N'kqlbY', '2021-04-02 01:57:45', '2021-10-06 08:57:04'),
  (471066, 484639, 393741, N'yzixQ', N'WEIEsthgiUGtGslf', N'VlYFqXOjeTNqdQVsEJUK', N'mBEhBeO', N'HsWLQ_GOVKMPeOjypS', N'CMtftwPYw', N'LDpWn', N'cMHEco_GkTr', N'LIxVjFdsNC', N'rtt ynZQsyqE', N'KB_vKhpgfaeXx', N'-kUeOHfwW', 1, N'kmBZUJH', N'ycGQJlojpxgepQLvTk', N'uUqKRYsxCb', N'fEzIQgd - f', N'-krEd_EmdGg', N'frloCwCrTvRr-W', N'PhCWoWPmaeAvSq-G', N'zxCHf-xVKeAzYwvORfY', N'jYJyqjeXnBdhEftE-kl', N'MYSZsvmgK', N'TZufysYs gJQaYvr_', N'bHuUo', N'QQMrX', N'bXDWNzSgSN', '2020-12-14 10:38:19', '2024-07-29 04:36:04'),
  (619747, 568262, 832146, N'vVKSfoggJFb_QHDHVe', N'CqSLRhB_FeBuBEd', N'BFZ-IIvhUBJlbmJ-xj', N'DNtZdevsSfQxbzGY', N'fgIJPffyRYX_F_I', N'mrGdJXuhSqNzACxDQgSy', N'sbimgYmWUslRyJm', N'LNwDgo OON wDbcgB', N'weOjkUrOdloHWC', N'cmIhsUDz dr', N'KzSlV', N'jKkjwXKYTwmCBkh_aU', 1, N'lTCiCZiZcBz', N'xrLPaxKFnbpDuQpEXqx', N'GXTHna', N'J iKqHh_CdrLSAFjL', N'iCUNWfLeBnCSNH', N'crWCj', N'kSUHI', N'nLCKYFaXJC', N'ceuQkVtRlrspfciNKnZj', N'bnzEP_q', N'cLlUv', N'jFbYLGngSG_hI', N'pXrmbD', N't IYJPnc', '2023-06-13 11:39:35', '2023-04-01 22:57:49');
INSERT INTO [enseignants] ([personnel_id], [region_id], [specialite_id], [nom], [prenom], [age], [sexe], [lieuNaissance], [dateEmploi], [created_at], [updated_at]) VALUES
  (362040, 26121, 828211, N'FOwRMIZTz', N'JgMFrGJRSYtAPCqI', N'kmkYIzqk', N'atArDfS-VSYFsiy', N'IIZtdABYfjrwbf', N'BQcZgkZ', '2022-12-08 22:29:35', '2021-08-11 21:49:47'),
  (874398, 581500, 110195, N'SAdDzlVg', N'L zNP', N'AUlfyJrElU', N'kdyme', N'eZcLirqnlLwVta', N'ZB_HSysjKZzVhTFl', '2022-12-29 10:05:13', '2024-07-13 08:29:41'),
  (951524, 819291, 144187, N'RneHJKFcBdtryjbnCssU', N'EeKNeQBREmsSj_Oe', N'jfgrbDPJXeoBQ', N'tMi LaFdmHZo_Ksl', N'h_VoUqjtFdAQtQQKii-', N'uSCZ WgAU', '2023-02-10 00:05:23', '2021-01-21 13:13:38'),
  (832227, 29656, 293781, N'kqhroOrY-TTSxBt', N'znMEf Gc-fiUcynpwF', N'OLNTENrMDuzDwAry', N'FyzCZqKTfotSGgzLWY', N'anktXjkhBSqVw', N'SiRsUsSOiht', '2024-01-12 13:18:54', '2021-06-11 23:41:17'),
  (13840, 17116, 297853, N'uNc-dv-GgWN', N'BxeWszLduMQ', N'IoEAwnN', N'KWccuDInWqfbIdFwcLv', N'Qnurxh', N'BrciUSMtlUj', '2021-01-02 23:38:50', '2025-05-29 08:13:31'),
  (348767, 614156, 336925, N'mYgjY', N'xvKwKN_V', N'KXlreMSChBzvuZny', N'hIfgPE', N'niJcQ', N'jSwmImzesr S', '2021-08-31 20:47:21', '2024-08-19 00:13:53'),
  (607697, 163642, 863207, N'PAvet-_', N'egsAJFly', N'hFpEalhx', N'I-WqwcnxuOL', N'DofmQgjhmZZXeU_lt', N'qTQyySyi-Mh', '2022-05-08 01:46:46', '2023-11-05 07:18:13'),
  (186998, 82072, 350869, N'LrqaWyae-sAU', N'SiavTJrM', N'qCxoNmBdbEsHgm', N'xpnSpBNreCw', N'GbRaCQwy', N'IjvuqGVpGBJV_Zyf', '2021-11-01 07:30:21', '2022-04-29 23:32:00');
INSERT INTO [equipements] ([code], [nom], [marque], [categorie], [numero_serie], [quantite], [created_at], [updated_at]) VALUES
  (N'XHFNavaEZncSVMd', N'iKqRRHuyYpyBzCmgnWMV', N'VlSHzpnIKDvtFbhQf', N'fsm_TwM ZV', 196, 918, '2022-07-27 21:19:09', '2025-06-26 14:32:44'),
  (N'kCkG VXjYIGhX', N'AxVNWZyasdlJQDst', N'DbyrIfnpvFHkN_LYjrV', N'iouXczIHtnWLpL', 819, 229, '2023-12-13 07:43:50', '2020-11-10 22:20:41'),
  (N'SjBmITjoNhMiLsESV', N'rwYqZxATRTZamQhPO-IA', N'xLlEM MtHh OlMPAs', N'sH-iDFhKUUwMfOh', 639, 768, '2025-08-19 09:58:47', '2022-11-16 14:14:21'),
  (N'-UozttRC', N'kLghIGstcUXhZqCXSaJl', N'fRLYyhEPjwG', N'RQHqSqUkC', 997, 121, '2024-12-12 20:23:45', '2020-11-19 02:05:41'),
  (N'xuNflIMKxhkgO', N'tWOtZCxBWUVozvh_GnYX', N'btDcTkmDWhPSkxbyYGlh', N'ao_xGhXpX', 950, 632, '2024-06-01 15:45:55', '2023-06-15 02:27:49'),
  (N'NY_RBOl', N'xjqcxxGKDlo W', N'MeYKQNGZHuXwk_kM', N'NCEYclxOL', 813, 565, '2023-01-18 06:53:02', '2023-08-28 22:22:28'),
  (N'u-sik-cusUGUCl-', N'lMGQSRKz', N'ppPxRRpDb_OBVnjndaO', N'CfMVww-', 489, 814, '2024-04-18 01:31:29', '2022-03-30 12:41:40'),
  (N'MxP-hz_Ai', N'wSBO_-E', N'YJVynFs FdpPb', N'Azp_HBQTdiy', 642, 524, '2024-07-04 04:18:58', '2021-08-17 17:17:38');
INSERT INTO [etat_caisses] ([caisse_id], [user_id], [status], [montantFermeture], [dateFermeture], [dateOuverture], [dateVidage], [created_at], [updated_at]) VALUES
  (713908, 478549, N'GqbvoWeIOJAvIul', N'GGOEyUhCkD', N'AdapsfaWxJYJl', N'b-pxfEfLLrQVSKCqva_', N'MEdBr', '2022-10-30 19:45:57', '2021-01-24 00:31:45'),
  (840798, 725778, N'QeOlRuoZsAggu__vOvl-', N'ObYiCJZRUldhx', N'hobGPoM', N'mheXBONuOR-ZhwZi', N'WnquYXd-', '2025-04-26 22:41:26', '2025-06-10 04:20:59'),
  (443153, 30570, N'YeV_nF_XyyZDaQJdyWaB', N'vTdTAs', N'wgfIo', N'JUrb SVgQs', N'cDNbrmHKW muo', '2021-07-01 03:52:05', '2024-07-02 16:47:24'),
  (199387, 774559, N'sBgwQwkjs', N'epqfsJ', N'iAUJKi y', N'ISouOlEpIn_UPNAY', N'AbTANruWzGO_rCd', '2022-06-20 05:53:47', '2021-04-28 01:21:06'),
  (649603, 393011, N'KQLBvKglOpMVqq ZPXMq', N'aDPSJtvD_-G', N'qMPUdVZkZWodE', N'hYtPy vRcPRjJBa-eeGp', N'A-NecGeYITMIgSPWoEH', '2021-02-07 12:34:43', '2021-08-05 05:07:02'),
  (116195, 46082, N'DaGPPrrSYqqu_o', N'wzEif SeK', N'efaKrxURRYizwWH', N'eAvwftZBl', N'_aaIG', '2025-04-01 00:06:19', '2025-01-25 11:36:36'),
  (684453, 963415, N'PAtVYgtpDCkklGxuBYLU', N'f-WrKowsIJe', N'UFmjDA', N'LRMUcpC', N'CpfgaYk -uSZmYDQu_Lo', '2022-05-30 02:43:24', '2023-06-12 10:59:15'),
  (984988, 570214, N'hSwQeOsKrcQbFq', N'_EioLDXN -HIfgHGjg', N'Cy_XWR', N'uQXKxu', N'XcqjxoSCDALTAETpi-x', '2022-12-11 05:19:40', '2023-12-22 12:43:24');
INSERT INTO [examens] ([libelle], [valeurs_reference], [duree_traitement], [type_examen_id], [departement_id], [code_examen], [valeur_normale], [montant], [created_at], [updated_at], [categorie_id], [montant_maximum], [montant_minimum]) VALUES
  (N'b FYalJOEnWYF-inJ', N'xDhjh', N'_-V  BlMyRyHOXSlE', 239970, 277990, N'HKdPZqkzIu', N'sz aOPOTQzGHKv', N'jeNeQ  VomUc', '2023-01-01 00:39:12', '2023-03-02 09:03:20', 132620, 949512681243371.9, 6049967357913926.0),
  (N'tSIXwAqwVas', N'Akqb_XtRXWPsgz', N'fBUQTUWyXWs', 884293, 99843, N'dddooCLbq-CrZihiVcBZ', N'bxRWGbS-IXuALaWiU', N'OFdGGGaC', '2021-10-31 19:08:44', '2022-12-24 13:00:23', 157671, 9509474118204588.0, 4773714715950594.0),
  (N'bWJSCDjjy-MB', N'CorNuHSYBdfVuTccH', N'YJuWrKeTsSyweBFY', 884761, 612945, N'hjCeUM_ujz', N'EhGAEdQ', N'Gp_STVZEibeXBqIPuq', '2024-07-27 19:51:38', '2021-04-20 14:50:03', 258421, 2187654386019305.5, 6659068862061617.0),
  (N'SLTAnqJ', N'ob-ctRp', N'jxPzKhQvpVPUMRpav', 583646, 826359, N'IFSyksa', N'Byfb-ecBRSeKw', N'YyfHNmT', '2021-11-24 23:43:45', '2025-07-08 16:46:55', 730016, 5419635283276074.0, 3242292940093371.0),
  (N'yXhtwbQeJeJEJxdo D', N'WTmyPelveskWQQ', N'gHMRfiteu TkejfYP', 828565, 655440, N'YZnIDnbcRycY', N'Pk ZGLCMYSwD', N'DVDxBVVSOsPg', '2020-10-26 18:54:44', '2025-04-25 15:32:14', 618972, 8573660351933677.0, 3699400882266426.0),
  (N'EiXvMr', N'mFyqL', N'SfmpbLGqUuxjTi', 862793, 392667, N'sNTqZikGveqfpWz', N'jwuHXB_gpnV', N'PnawBgZOoge', '2021-09-09 08:16:17', '2022-09-18 01:04:27', 516578, 1396793271745260.2, 2066351003685209.5),
  (N'ETSNdGlVhnVxUOlVje', N'egHLbKJn', N'GELKno', 216647, 48978, N'mHZPMfO', N'bkb_W GjJKAQQUGOh', N'rpnWuPZH', '2024-03-22 14:42:29', '2022-02-28 10:29:27', 568687, 2481452292435444.5, 9426124495957524.0),
  (N'xIHXC', N'Q LBGcDAJFKdlrsAqrkm', N'KHUOUyrGrbSUXLlR', 810026, 494717, N'jKcZF', N'qjY-jOqJLJcftDyI', N'zmPRMWgvNz', '2023-09-03 23:46:06', '2024-12-20 12:25:33', 393414, 4165799966241333.5, 5248121300371061.0);
INSERT INTO [examens_imagerie_fichiers] ([examen_imagerie_id], [nom_fichier], [chemin_fichier], [type_fichier], [taille_fichier], [serie], [numero_image], [description], [metadata], [image_principale], [created_at], [updated_at]) VALUES
  (993441, N'rdXp-rI_', N'vrupADK -mPWl', N'mnqwRCdGQeeEw-LyAZ', 91098, N'tQByxHQrLdHSMZ', 949, N'EhdEcyhgqalkQn O', N'-LAaywHv_wllWLY', 1, '2020-10-30 16:21:52', '2023-03-13 10:02:36'),
  (302728, N'BbZVrIGZsIQ', N'UWeIgFsuCVuCzHiBP', N'YBMSRaOcGLQ', 499573, N'PYdoBwNSWcDD', 282, N'CZqnmtaKTRDduvvYbh', N'nm XsoVfXEU', 0, '2024-10-11 01:53:26', '2023-02-03 14:31:27'),
  (652630, N'SogGGwpVqbWjzh Rdh', N'VH_ujynknfcCSYH', N'EEGSJsAjcx-sibV', 730855, N'fHAzGlE', 169, N'oVtcfXGIfsKCZTCUq', N'Je GSiDf', 1, '2021-07-07 08:20:23', '2022-04-13 22:45:05'),
  (786508, N'LrHkVIJW', N'DASornYMq', N'oxCUgIZSZHzOIWmurE', 242106, N'svDht-SYClCqRVDMmhS', 667, N'Ceipm', N'CGgRjUgvwrZWk-oCpL', 1, '2024-06-25 03:26:51', '2020-10-22 11:38:02'),
  (284268, N'q-SvIIAf', N'zrmjpxKWczp', N'GDCuWvqUG', 299894, N'-asjeZ', 4, N'LSHHvDATaeRKzTAQyRCK', N'LKVlFIRmyO', 0, '2024-11-02 02:13:30', '2025-08-01 10:49:47'),
  (544262, N'T_KFVR', N'bFQUKGpSp', N'agWmzir', 5727, N'fNvYRjTTyqX', 405, N'squASmUU-ljPVvbxtPyD', N'GJ-- aW-xKvqEs', 0, '2020-09-12 11:52:30', '2020-11-16 22:56:13'),
  (133807, N'otZoQCgsl', N'mRGQGdYhpUDlQr', N'IJs cYVYKz', 636406, N'uFoHRvoODu-gljaFif', 845, N'YKRIOdvyalljrFP', N'okPSfp', 0, '2024-08-01 00:38:37', '2025-03-08 02:53:04'),
  (918792, N'dyIta', N'rjK oJ_xuxcCOLmlXW', N'cSTUH', 139867, N'ZtrRYTLho', 41, N'-gaGxuQZFdrhLmAqa', N'rgx-ghGilkshoQTkV', 1, '2021-02-28 08:49:09', '2021-04-19 15:13:52');
INSERT INTO [examens_imagerie_resultats] ([code_examen_imagerie], [patient_id], [medecin_prescripteur_id], [technicien_id], [radiologue_id], [service_id], [examen_id], [source_type], [source_id], [type_imagerie], [priorite], [statut], [indication_clinique], [technique_utilisee], [parametres_acquisition], [description_images], [conclusion], [recommandations], [images_paths], [contraste_utilise], [type_contraste], [effets_indesirables], [debut_examen], [fin_examen], [valide], [date_validation], [observations_techniques], [dose_radiation], [necessite_reexamen], [motif_reexamen], [created_at], [updated_at]) VALUES
  (N'iplmV', 165754, 756263, 790158, 850884, 126955, 227841, N'TIu-GhslF', 244795, N'cligTrYZNfz_fdS', N'M _LvoR', N'favNEGPtQ', N'_QIfZsPpO', N'-hTPNPtSThN_KDM', N'FApbQgM', N'gwrZnUh', N'SCdfQshatR JHi bAq', N'yjPObObNJmOlTFmB', N'jPSQKnNDixOUSidV', 1, N'wASUDNTgWBC-ejD Z', N'ZrTbgobwKCiuZm', '2022-09-30 07:09:26', '2022-01-15 10:43:45', 1, '2025-08-06 20:08:44', N'ZcDQmbzJBJGEJ-B hKl', 9419273058435650.0, 0, N'SjISwscr', '2020-10-03 00:55:34', '2021-11-03 06:28:15'),
  (N'WfByYHQquRdguYBVP', 136315, 174026, 359089, 836034, 566961, 274621, N'NWbAasv-', 676210, N'TCJesEcvQV', N'tNXDRg-EjLhkzKGgu', N'orwomIt nbNO', N'AMDGGPmnh', N'TlXdGv', N'cPxzqvNHa', N'qqdvIZwBwUN', N'fL EVqSpXMXwcqsW', N'TSKUYiWRbLxrux', N'MflWHne-gZCSK', 1, N'ril-GpjNOKvQGD', N'jCM AVoa_rN_u', '2023-07-16 06:25:48', '2020-10-31 18:42:59', 1, '2024-05-23 04:08:03', N'TseBmIJ-kGQeaUvU-', 5636931043789178.0, 0, N'gkghGLUsykpgfByx', '2023-10-10 12:24:29', '2023-12-15 20:36:22'),
  (N'OBoadRs R mm', 335278, 609183, 894348, 914725, 42506, 82670, N'z saDQOx-WvTzKs_', 96222, N'yUCnvNjSGmUR-', N'ZjxWEDqSgQzhZ B x', N'RzWuDztaznpywvGzhC', N'fdBK ADK', N'MoNlrLPAjotsmBMlG', N'fwAlTHnFMXsCCOs', N'FVnoSpA', N'hdEIBE', N'XRcxnsVvcnvJ-SXgB', N'tNUIOOdORzgG_tyt', 1, N'aHQx_CztBZ-bn_ymQ', N'siIXBzljFg', '2021-11-03 21:42:55', '2021-05-18 10:33:35', 1, '2022-07-16 14:36:31', N'yVvBADoMdyRX-cFkFR', 4948174190354597.0, 0, N'AxTCAeqDSBA', '2023-08-21 03:55:36', '2024-08-18 12:43:54'),
  (N'AqbkkzhT', 691263, 777026, 133359, 857408, 205286, 267806, N'vUClrSqMfDBr', 564153, N'BgtZHOebLM', N'PEGZeJpnHOWbFao', N'VhwzWAEavm p', N'IXvfMI', N'IRydzKzSltN', N'AVKfec-maI-LCwHy', N'JSPWbqdZsXr', N'yezzOPRg', N'ZazmusHwmKA', N'OZWY-as', 0, N'u_PEq', N'xHTqYU_dktWLpGDe nIM', '2021-11-05 15:18:00', '2024-07-14 22:42:54', 0, '2023-07-07 17:01:11', N'W-qRrvYIVXNbvV', 4376528926701991.5, 0, N'hLVMui', '2024-01-02 07:34:09', '2021-04-10 09:43:16');
INSERT INTO [examens_valeurs_normales] ([examen_id], [age_min], [age_max], [sexe], [valeur_min], [valeur_max], [unite], [texte_valeur], [created_at], [updated_at]) VALUES
  (803611, 284, 717, N'YRCOHk-sxUOzBoBn', 470005226039491.56, 1105098883679062.0, N'Am-CNLB', N'fDpmWmJ-wzJO', '2022-10-05 22:45:42', '2023-12-29 03:29:30'),
  (598853, 783, 650, N'CcUUOdYhvRc-Tpr', 2042541661819085.0, 9951489705497338.0, N'jNlmUuzlh_pq mpxCf', N'buFtNi eoO', '2025-03-09 03:28:09', '2024-04-01 10:08:20'),
  (2732, 390, 517, N'HNCXiYQQGC', 332295085640388.3, 9830078128895984.0, N'ztZSuWohR-dEzOLS', N'EbaXRK', '2023-12-01 16:33:49', '2020-12-24 23:05:02'),
  (575824, 588, 447, N'tqoPuZLXorxPFeASRhx', 8786801371745925.0, 6431220906896699.0, N'npybARfbWSRf_pRkne', N'mbozFkBGsC', '2022-08-01 08:10:09', '2020-12-20 14:08:29'),
  (568839, 89, 421, N'mvbnUV', 2718289566755169.0, 1279346424630115.5, N'jGUNvUHVarisJv gO', N'QBHUJVo', '2025-08-11 05:39:57', '2021-12-30 15:57:58'),
  (76504, 833, 67, N'YpOyFJwHComZVR', 9758203570871304.0, 3867170764396264.0, N'BVzHiNndbVFnEapGCYFs', N'_roGQvbHH_kxRCbsrV', '2023-07-03 18:40:46', '2023-08-07 22:51:31'),
  (266044, 168, 572, N'xOGIEOqlgdLr', 2334062446459822.5, 5439397174477401.0, N'XsRYD-ZLPUqVGLGo', N'hHW-B', '2021-01-21 11:02:09', '2025-03-11 22:02:03'),
  (30049, 791, 733, N'xYToKoQTULJxXyCWWBY', 89397650723781.47, 288368602226801.7, N'lEcLGpMAWvsV', N'OmRWnYWGPaUxnA', '2022-08-09 05:11:37', '2022-10-11 19:19:40');
INSERT INTO [exercice_budgetaires] ([code], [etat], [debut], [fin], [libelle], [created_at], [updated_at]) VALUES
  (N'YOfSyFGcqX XCPQZJdw', N'qwYiLkxGlqLgsI', N'JCquK', N'gPGKmgXTcw', N'yXHzZMUqZyeJr_fyuUFe', '2022-11-06 16:06:18', '2021-07-08 19:21:38'),
  (N'JRCWtXQThbuzAmiAl_rB', N'clXvWVROFIV', N'v_ovEJyAzDnB-Xbojg', N'ORTkruJB', N'wrENKG_', '2023-03-05 16:49:30', '2022-11-23 10:49:25'),
  (N'IRweMMAG', N'SkEVAjY--IL', N'GjoFhb', N'LAakmoSMGbrCTpjF', N'irmSWFuIVT', '2021-06-20 15:42:00', '2021-07-05 09:30:01'),
  (N'iwKyVN-V_CeGxehrQC', N'D-hymhSuNmHdMYzjPVD', N'XhfHVKeKkJoRTrXXT', N'c-iBPT cQGovQ', N'sOOnxPtd_XGYuXJsk_a', '2023-03-09 05:17:10', '2023-09-20 12:02:26'),
  (N'NlGFyDQvBCuoW', N'AJHetvPnWL iRt fYm', N'FnmZlzQt-dH', N'MOttsJKd', N'bHsiYDowN', '2025-08-01 09:43:24', '2021-07-25 16:22:34'),
  (N'fuEQGB qT', N'TH WkKBfZkaYu', N'RGCbchKdy', N'sBWxjeOQYi', N'wzjqsoDAZ', '2021-12-09 20:29:38', '2021-12-18 23:50:17'),
  (N'BAwqxA', N'YFdmCdCde dKxTxEXw', N'GHUivXSCJqSn', N'fgEPXe-RSJw_SPzNgSe', N'- IfGJFZvYGWfxJLYhHO', '2024-04-15 11:17:41', '2021-10-26 10:39:52'),
  (N'MnDHrdGPDeKx', N'fw_z-lWgad-bqFTYeYKW', N'cBPvBHvZLcZdmC', N'IAetB', N'LfdjYDOslnE', '2024-12-10 13:50:12', '2022-04-15 14:28:36');
INSERT INTO [expense_categories] ([name], [business_id], [code], [parent_id], [deleted_at], [created_at], [updated_at]) VALUES
  (N'PBiphUrEafjzRbVxATS', 929, N'NizyLkoyid', 97, '2022-08-11 16:36:07', '2023-02-04 18:48:28', '2021-11-03 02:13:37'),
  (N'qTG FBob', 151, N'iGhfJbmhLzSHIvmxL', 71, '2022-04-08 15:38:35', '2023-08-10 07:58:15', '2024-12-05 05:11:29'),
  (N'RBpFUsCHHS', 543, N'tvRNhMHFI', 116, '2022-06-24 09:50:47', '2022-06-14 10:20:08', '2025-06-20 11:24:45'),
  (N'YFjmWiJH', 162, N'NlTS-DutfXnH', 484, '2021-01-21 12:16:15', '2023-10-21 17:41:06', '2023-05-08 08:19:27'),
  (N'ZsbZvStFuwmlsh', 944, N'A-NcZEcY_kU', 657, '2023-03-08 16:23:12', '2025-08-08 14:08:50', '2021-08-19 23:26:47'),
  (N'RgaSEgE JDGKA', 508, N'VnSyaar-XuWtvFMs', 144, '2024-11-09 07:47:26', '2023-10-13 07:04:49', '2022-08-05 21:33:25'),
  (N'nDnkz_SKwmCjqtrKEUh', 168, N'yLuesPOpAM', 167, '2021-01-12 01:43:32', '2021-02-23 09:19:16', '2025-07-26 22:00:50'),
  (N'XjwTZGxp', 885, N'VdiMFbGKwpGYTM', 484, '2020-10-28 03:21:20', '2024-05-03 22:36:13', '2022-11-06 06:55:24');
INSERT INTO [facturations] ([code], [patient_id], [departement_id], [panier], [user_id], [quantite_totale], [prix_total], [date_facturation], [created_by], [updated_by], [created_at], [updated_at]) VALUES
  (N'enFrJK', 411059, 873788, N'JZiB-oFyMiqzeavUKOMP', 255491, 115, 5457.69, '2020-10-31 01:13:54', 302, 684, '2023-03-10 23:56:27', '2024-10-03 11:17:25'),
  (N'bucZVSuYgvLrMa', 429018, 798335, N'pvAOYk', 483710, 11, 8910.09, '2021-04-11 21:46:56', 19, 673, '2023-09-19 05:50:46', '2020-12-21 13:46:14'),
  (N'XMgFZg', 981978, 650224, N'pCjJgDEVqaJNJHtE', 605493, 453, 3635.11, '2022-06-10 21:17:57', 77, 803, '2021-08-20 13:55:38', '2023-09-20 22:32:03'),
  (N'uVeAtnVpSPLHiH', 560521, 246311, N'_Y-DacLDq_g_ JJAJ', 823176, 141, 7693.58, '2024-10-24 15:40:50', 748, 362, '2024-10-19 12:31:03', '2021-06-14 18:59:24'),
  (N'lOXRmdRCvSw-E-JA P', 98698, 397983, N'JqgVZm-acU_Nnkk', 22803, 418, 2923.05, '2022-02-24 07:24:47', 23, 431, '2024-04-11 21:00:38', '2024-10-15 01:56:58'),
  (N'NGpAXfLOtT', 86379, 758715, N'l_GSQ', 731976, 946, 1775.54, '2024-01-25 14:53:35', 207, 740, '2024-12-24 22:59:15', '2020-09-03 18:02:35'),
  (N'BtWMPVj-XJ', 57191, 242129, N'wgOkkVB', 330738, 658, 7831.68, '2021-05-12 02:15:43', 717, 803, '2024-05-23 18:17:00', '2024-07-28 06:02:49'),
  (N'LPPlwDHmBo', 435575, 557020, N'iobuSoj-', 343221, 142, 4256.13, '2020-12-25 05:30:02', 71, 651, '2021-05-23 01:03:46', '2025-03-23 13:26:28');
INSERT INTO [familles] ([code], [type], [intitule], [tauxMargeMin], [tauxMargeMax], [description], [created_at], [updated_at]) VALUES
  (N'lpbEnHH', N'eOjkf', N'qOmVXWRY', N'wi gdecCZOrvldUwTd', N'LKfeMO', N'huGbGZxOhfSe-_ubQSt', '2021-07-19 20:49:23', '2022-01-16 21:20:41'),
  (N'U_vd-ehkGD', N'dHlzDZcmKdLFpJa', N'NLgsMpFgMfcrxhthqyT', N'YFuWAecK', N'JoYsIUpvMe kDvoA', N'tENNVdwlWo', '2022-04-11 22:16:36', '2023-04-04 01:51:35'),
  (N'vaZXW K_eEJmwUAmPy-r', N'OOQxHv', N'gIxwCEf', N'bC-CxEBBiDed_ZTygcsl', N'pbEnTU', N'oJyHj_GeuN-DIbaU', '2024-08-10 07:04:13', '2025-05-30 10:51:09'),
  (N'hBMad HupqTDuudVC', N'HgqttpWLqrAVMk', N'zlAXnMwgLSHgT oIo', N'rSNPtfuvlKV', N'DDERDfmxIN', N'hZzbdfnghp YROFGCe', '2025-03-28 06:12:55', '2024-08-24 14:36:59'),
  (N'QTHP_LkK_pdKdXCEj u', N'd YdMPa_AlOvbL', N'ATyQzavaAHKbZ', N'xVxUkGHXW', N'mDOJqbCQaqhLblr hAR', N'FCimFKOC', '2022-08-02 07:24:44', '2020-11-28 12:27:07'),
  (N'voZ-m', N'hRLkvh', N'sCbqHxVXucknfpXCWX', N'Tr-Fh_wywdn Eg', N'VTbaEqJGoGjBIj', N'fjcjTY', '2021-07-20 15:51:02', '2023-05-07 18:15:07'),
  (N'z_ldEQRXB', N'KxTZFuRDgUWGBMYCjxbZ', N'B_MDp', N'vYGCZTPTLqLSj_QnhO', N'ghaOJfZFGmfov_De', N'LSmSXA', '2024-04-02 21:42:03', '2021-07-29 17:27:55'),
  (N'AxGGfHYGZ pZD-ybAePS', N'eiwvSdCwIqKmNhZQEIk', N'rdYJmrQrtnrdlHHvS_', N'LMfdGDCgFu-ByUR', N'uFLa-m-VGeIB', N'kdaDUnJURzv', '2023-02-07 03:36:52', '2022-08-15 12:21:34');
INSERT INTO [fiche_detenteurs] ([exercice_budgetaire_id], [personnel_id], [unite_id], [type_conditionnement_id], [produit_id], [famille_id], [ordre_entree_id], [quantiteDemande], [quantiteServie], [dateComptable], [created_at], [updated_at]) VALUES
  (466532, 3504, 110674, 128477, 138612, 412775, 851910, N'HMDPiiqKCA', N'NXRot I', N'EPRycgogbTNIBiqxmfhu', '2024-10-28 12:52:52', '2021-07-16 13:54:06'),
  (571461, 990593, 146082, 809550, 409491, 351907, 140985, N'DhSazHqAB-', N'w_AxIqcslOT-LfPdn', N'rLCmBtxAFek fSktMJU', '2024-06-05 10:57:44', '2024-04-25 13:38:55'),
  (671020, 935045, 315440, 78405, 337121, 368848, 497231, N'hRpeSNfpL', N'HpZLSdkYZGkKCBFUl', N'XbFZfXPenx', '2020-11-14 16:02:03', '2022-07-28 09:56:56'),
  (198088, 426559, 432754, 544581, 787858, 899582, 618992, N'MsMjFJnBEErsF', N'ksvChKv_xrK', N'IqEkDRzcqeUlIfEFhF', '2021-05-27 15:48:53', '2023-11-30 09:22:36'),
  (614380, 618660, 883128, 873648, 300561, 284886, 325031, N'PJmLyn-lrF', N'atkLRQ', N'uUTrEhkdcCofyJcI', '2021-01-03 08:39:24', '2023-11-16 04:19:58'),
  (830329, 587896, 190075, 283075, 147868, 257152, 648726, N'OCzSEumiNKKIoKgJESvM', N'xGHthL', N'GlrA sRXheHHa-', '2022-08-12 09:02:17', '2022-12-06 05:01:16'),
  (420848, 473777, 47878, 736287, 18862, 443183, 112274, N'MnIYqFpGebWSzpF_aR', N'keJxcJiizezptcvsysN', N'NbWhEwk tdSaeDx', '2023-09-19 18:55:48', '2020-11-04 22:13:47'),
  (307125, 620825, 697554, 249721, 341380, 471749, 574827, N'sfjEFbe-', N'pmHFMiQIp-LkMhj', N'GRhUfPJFrPYc', '2021-02-08 12:57:33', '2024-11-07 18:51:13');
INSERT INTO [fonctions] ([prime_id], [intitule], [created_at], [updated_at]) VALUES
  (264269, N'WjykIUOqnkoQ', '2024-10-09 14:38:48', '2023-11-28 00:07:51'),
  (43490, N'uyEiLrrjs E', '2022-02-06 16:29:24', '2021-10-24 14:06:11'),
  (164876, N'sEjGpPpotVpkOycXRR', '2022-06-25 06:54:56', '2022-03-03 12:07:29'),
  (142753, N'QCvygFPwH', '2022-06-16 19:09:35', '2023-03-26 19:19:48'),
  (714902, N'Qe DobN ZGZSf', '2025-01-08 07:21:50', '2021-05-06 16:56:03'),
  (753222, N'sUQjrhZ_k', '2024-05-10 06:53:30', '2022-07-25 00:45:26'),
  (373505, N'xkiGSGojbWNoLFXqNJc', '2020-11-11 01:26:09', '2022-02-19 00:23:46'),
  (640687, N'ACCIx-frwvrX', '2023-04-15 22:14:07', '2023-01-20 06:38:20');
INSERT INTO [formes] ([intitule], [created_at], [updated_at]) VALUES
  (N'UtjYMPDoFjBJm', '2022-01-10 18:57:34', '2022-08-08 16:17:16'),
  (N'ZqInmFRwxSC', '2022-07-01 14:51:53', '2024-10-28 23:17:22'),
  (N'foMmegyvnhjAqwy', '2023-11-08 13:23:27', '2024-06-02 13:16:20'),
  (N'-CcwEg EfxNPfPIo', '2022-08-05 03:11:30', '2022-07-25 07:14:37'),
  (N'xzkXOPZxvbhn', '2023-06-28 02:04:39', '2025-04-28 14:23:14'),
  (N'hWXdTUpUqfeoCm', '2021-10-26 00:35:22', '2020-11-01 23:24:55'),
  (N'icfDo Il_', '2021-09-16 07:40:52', '2024-04-17 20:00:57'),
  (N'ZzIzOJ', '2024-02-27 07:36:10', '2024-03-21 04:36:33');
INSERT INTO [fournisseurs] ([villes_id], [depots_id], [plan_comptables_id], [code], [personne], [nom], [raisonSocial], [sigle], [compteCOllectif], [qualite], [enCoursMax], [nContribuable], [nCNI], [adresse], [desactiver], [telephone], [quartier], [created_by], [updated_by], [created_at], [updated_at]) VALUES
  (241554, 770, 786485, N'bNNAZsIIAZoMVNG_CuBJ', N'KkNKWvKY', N'fbiNHtL', N'Hmua KpjCxm', N'NUyMs_GVz', N'RQidSf_pUWa', N'-uXmmkpMSz-Me gQJ', N'ytRWhevfVys-SXQ q', N'ZvMjmNAXxMEJjBLbdH', N'asDam', N'kAcVa HGXI', 1, N'KfmSrNDph b', N'nJHHPQMogWkNTatV', N'kG- jpVAhBcWf', N'QNFjV', '2025-05-22 08:46:18', '2022-05-25 03:17:07'),
  (747025, 557464, 179745, N'i_V Ogc', N'xWgaAd_V', N'ZGtKERbsROjScLCR_D-R', N'_BQ pgcdMtvmeMU_Y', N'iinyuVZpkEfqE', N'PRwaEyZjmo', N'XDxcLQrt', N'GofFXYQsVL_nA', N'ZezfB', N'VY TyoVbFmDkj-QuExIq', N'znMhC cg nYG', 0, N'jKu C', N'lRnoR__vH', N'inrjQio sWijAtebhq', N'Zjmaxy yYvWCC', '2024-03-21 03:22:53', '2020-09-28 14:26:25'),
  (763358, 802085, 423454, N'OOjwhFqp', N'lhbItpNI-GKmSK', N'pTgBM', N'qyBHaXj -zQUJEsVJw', N'OOgC BQT', N'hjrFZZRyPJuYSLDyBt', N'KkBxMROclJkE-DStAN', N'TIlvTsZuDypss', N'QJkcdgmFQyGpxkUVRHe', N'FiRqlWcsAVxo', N'kePFOdvZ_ EiyYF', 1, N'cZ_djUVdmcr', N'mdYFDK-bUbO', N'if-xmlp', N'd_KNvxvaZB-kFh', '2025-05-17 14:51:13', '2021-09-08 01:27:52'),
  (53261, 402881, 209584, N'MIxsrVI', N'ByCUyr', N'iONYRcQXTAuezwfizu', N'E-mEcrkYPeYth', N'jpJCCZWHFZdXbaKH', N'rwdAOMnZvOEzpQn', N'lmu-tPmP', N'BczjanFAdiO', N'OFcCpE', N'zA IcpfB-MPC', N'bCTMaryPBbcvvLWpVe', 1, N'rrNTMePPyfx', N'lYJCNS', N'APliuvvCt', N'NqUwO_cH', '2020-12-17 05:25:24', '2024-04-29 12:52:26'),
  (402481, 26252, 243413, N'oraLPfTWyfAKnhpmpy', N'suYYlIbrQom', N'VWyqrr xYG', N'ztLrAgYv', N'OGAJhuNgxA', N'tPWbOFS LqKgCPSNSbB', N'QUIgi', N'C_dzbjSNHUkjqJLS', N'etEdAFwMz vcYZbXRQb', N'-hRKVCNCXW', N'tYPCaPtSJAQbfzvzej', 1, N'AivALwej_xeBYZiGUO', N'lygYZ', N'lj HQsFsyLFHw', N'nBHeMrXI', '2020-10-27 12:44:12', '2022-12-22 21:08:02'),
  (279527, 769461, 394438, N'vRJc cVOPiYC', N'NfCgrhgig', N'NcwHGUGseL', N'zOOUkyO_XSn', N'XoStLqB', N'DGeUG', N'NvigLQpIvk', N'kNnhetl_o', N'fxtE LS', N'OU aqNUORKXIQGQofYT', N'byQcu oLvY', 1, N'WTkGrw-Pei-M', N'IDSHGrmeaCs', N'qHCA-rl', N'naaLkd-WgIJFdXAO-MV', '2025-04-07 02:07:31', '2022-04-24 22:33:41'),
  (154950, 787209, 598470, N'rdfhyl-G', N'fXAIY', N'DpkHg', N'xOPPUcDFjeG-JNbBAwP', N'QvBxxo', N'bdZjBRFfAeDiZ', N'CuoRN_KvqnRfSOOPBg-', N'IALHhrX', N'PhGxKlKpdb', N'RrMjkLrAZJNDzO', N'A AXhhIx', 1, N'Vdf-b_', N'd-ZEoCJSBz', N'wQZEhMvvEkKcmqe', N'IAZueDyFRQPS', '2022-08-05 07:55:09', '2024-09-12 00:34:52'),
  (155855, 835688, 508615, N'w-LZTbzmwN', N'hkXhSxeQcbMM', N'lNLHlU r', N'gnRfgamuHbDDSfdLfk', N'RqTv-R', N'GEMxMyoHQtup', N'UrzIhNAyl m URd', N'mCozm', N'XR-wEW cHeveSI-TaUY', N'FIonXBHlAesS-TtzqX-', N'xCwoedciABJMTCt_', 0, N'uCerHMelxwiNgRzwmYM', N'KqrCqaeQUvJPA AH_sK', N'CZkxqv_XkH', N'-ZU jrb _im', '2020-11-29 01:53:53', '2025-01-26 15:39:43');
INSERT INTO [grilles] ([categorie_id], [echellon_id], [salaireBase], [classe], [indice], [created_at], [updated_at]) VALUES
  (770297, 612101, N'ikVLsmN', N'gVucgdj-QpKthtQiRSL', N'dKtchC', '2024-09-28 17:28:22', '2022-11-07 01:15:05'),
  (654179, 664832, N'KlGmisKx', N'haLTBS-T', N'bRZlsNeeWAKMoYtUDPJ', '2024-06-27 23:53:22', '2024-07-29 21:54:08'),
  (434336, 149984, N'rVyCMnaSDjhXVF-JlePL', N'EMYbTZdzV', N'_zslIFptxQCym', '2023-09-29 10:54:54', '2024-12-31 03:49:47'),
  (893093, 764770, N'mgffnxsUNluJyEruAYs', N'ohnkIhVxyemAGl', N'pQUjNTcTsBa_', '2025-01-14 02:22:50', '2023-02-16 13:10:33'),
  (404930, 716038, N'tcEis XH cWTgGENNME', N'YFMbIZqJ', N'uSkFCSg', '2021-04-02 07:06:37', '2023-09-09 18:33:27'),
  (770561, 951996, N'FuSaDOUnWB', N'_ plctd', N'-pXk-kmylPGgP-TVL', '2024-07-08 14:05:09', '2025-06-04 17:39:49'),
  (653262, 981618, N'ZgYfnbE', N'AyfZWXMTzDhL', N'LBYMCHeylzyFgWreBYI', '2022-02-11 07:38:31', '2024-02-06 01:26:02'),
  (696285, 723049, N'LFcdCnkhZiCeQUif', N'hXNZCPbM-zWjDogY', N'En-qKNjJ-qjBFHAVf', '2024-06-10 22:14:14', '2024-11-21 16:32:47');
INSERT INTO [group_sub_taxes] ([group_tax_id], [tax_id]) VALUES
  (865, 287),
  (10, 332),
  (308, 555),
  (357, 948),
  (666, 116),
  (132, 18),
  (418, 109),
  (130, 755);
INSERT INTO [hospitalisations] ([code_hospitalisation], [medecin_referent_id], [infirmier_referent_id], [patient_id], [hospitalisation_type_id], [lit_id], [service_id], [business_id], [business_location_id], [statut], [options], [detail], [auteur], [date_entree], [date_sortie_prevue], [date_sortie_effective], [date_init_hosp], [motif_admission], [diagnostic_entree], [diagnostic_principal], [diagnostics_secondaires], [mode_entree], [mode_sortie], [observations_entree], [observations_sortie], [facture_generee], [created_by], [updated_by], [created_at], [updated_at]) VALUES
  (N'G EpEagrrNR_-GDEg', 951731, 735199, 724052, 384839, 551931, 679581, 879, 984, N'WFJZgUjRw', N'nTKRKeLFUQLn', N'GA rkhuefUiTZzeaLU', N'UiHTjEF', '2023-04-27 01:12:30', '2023-11-06 14:04:04', '2023-08-17 07:59:59', '2022-04-06 08:08:14', N'FBTOODoZkAW', N'kBQAXCCnbfqi m', N'QiFRNRrpscDeSVV', N'jXUFzBqEHTStHBbPu', N'qhofTbzzzXcUjNSFj', N'vhmUwAaMLdeQqY', N'zJedB', N'L-VxRanPz-nRYjB', 0, 237769, 497894, '2023-05-19 03:38:04', '2020-10-26 21:01:03'),
  (N'V-OsnjlUAakEJry', 990009, 735374, 966600, 191184, 296995, 899100, 57, 385, N'C vMVqTwHE_', N'ZjnWbE', N'cVvytcV', N'ACtgx', '2025-02-05 21:57:19', '2023-11-29 13:47:17', '2024-11-06 00:18:11', '2023-05-06 05:22:46', N'sUbOIFSr-', N'uW_P-Pxb', N'vFAqtKyOpXKlgtJZhKz', N'k_rTd_sXmzxsVu', N'LeT_Bdd', N'TijBRvTBFM', N'Ayito_rTUV', N'DYIQe_tH', 0, 563287, 639993, '2023-12-12 22:47:43', '2023-09-14 19:50:33'),
  (N'gtANjQ hSe_Lo RyI', 486886, 787046, 379984, 502172, 288635, 94577, 175, 929, N'TGEBFaRqrt', N'ZeIyKsQeoMdqcIdGAiTU', N'uUSuOEgslDcL', N'fMfUlTejvYP', '2025-08-05 08:56:13', '2023-06-27 08:13:15', '2022-08-02 13:32:51', '2023-06-27 11:34:52', N'OiUshkBAzSl', N'BJuzAY', N'-WNaTj', N'Ytee-eThOibfwcj', N'f_vxYqUjDSCQfPred', N'wiHIEAsUBGGbZN', N'TRqNS', N'jybvTgVVGx-sUVy', 1, 98366, 908844, '2022-05-09 23:32:44', '2024-10-09 07:43:52'),
  (N'XJggikne', 317659, 274866, 585721, 559134, 425745, 991600, 235, 426, N'GclMuxrIvWKTVXOMCv', N'_AwZWFc dw', N'iHSssmYZjNPcTIfTfB', N'T-MAlN', '2022-09-24 08:16:59', '2025-06-12 04:05:22', '2023-06-01 01:20:01', '2024-04-28 19:41:56', N'myfuYga', N'nFqOO', N'hZjaNANGX', N'cdSTFD_RuCfxxYvyi', N'KRsFAtA_TNe', N'-vDGYxN-SQUaLv', N'MUJ-bLuM', N'wyb_n', 0, 408684, 880602, '2024-02-02 09:04:36', '2021-10-10 22:19:45');
INSERT INTO [hospitalisation_actes] ([hospitalisation_id], [acte_medical_id], [personnel_id], [date], [commentaire], [created_at], [updated_at]) VALUES
  (763101, 728135, 356611, '2021-06-18 12:27:29', N'ogx_pb', '2024-12-19 13:07:36', '2024-08-14 00:05:29'),
  (851946, 35097, 250395, '2022-07-26 12:53:08', N'_krAE', '2024-09-21 03:31:01', '2024-03-14 02:00:02'),
  (696797, 654645, 781815, '2024-03-17 09:03:36', N'UaBsfdGdNQeaEPjKNUB', '2024-11-06 23:10:05', '2022-02-03 04:07:46'),
  (184515, 297561, 807291, '2025-02-13 11:29:39', N'whv_OCcmqmsYKfC', '2021-04-15 21:16:41', '2021-01-23 01:27:33'),
  (55420, 244575, 684480, '2023-07-21 10:00:23', N'OcvIoPoPYt-LrpOFsFxd', '2024-04-16 08:32:43', '2022-05-29 04:36:45'),
  (421779, 943488, 585637, '2023-07-04 01:53:15', N'KNSlGzUnyLP', '2022-08-12 18:47:35', '2022-10-11 19:52:08'),
  (706966, 83877, 66922, '2023-09-25 02:33:39', N'wArYgPzwd', '2024-04-22 03:02:25', '2023-02-28 20:51:47'),
  (221761, 740230, 238483, '2020-11-08 15:50:59', N'sdWUzKBxgrGjy_Jl', '2024-07-07 14:11:00', '2021-11-02 09:51:23'),
  (355491, 426129, 799522, '2022-09-25 07:55:15', N'cdLZOjRjrXef', '2024-09-01 16:52:05', '2024-08-31 06:58:34'),
  (123966, 385507, 369060, '2022-04-09 03:06:42', N'FphTEYskYegvigXSY_', '2025-07-28 09:05:29', '2021-12-27 12:49:46'),
  (859091, 454429, 782001, '2022-08-28 06:16:03', N'aKLFcEmNNxxgofbZpO', '2025-06-21 18:44:19', '2025-03-20 18:49:28'),
  (449208, 807279, 567496, '2025-01-23 07:42:40', N'mvMsgjoaQYEwyWCtup', '2024-08-05 19:57:16', '2024-10-19 06:19:21'),
  (37803, 636961, 414602, '2022-10-17 09:30:40', N'ixAnGXxeB', '2020-11-17 06:32:46', '2022-04-28 19:02:46'),
  (114803, 161860, 66718, '2021-04-29 20:11:55', N'qiVmIftv-rdpiE', '2022-12-13 02:44:21', '2021-07-05 11:09:44'),
  (359256, 267257, 454191, '2022-10-09 23:59:12', N'jxxKiiFeNl', '2020-09-18 21:25:40', '2024-08-20 18:19:58'),
  (317336, 288177, 82003, '2021-07-14 11:21:50', N'RHykM QTFG-miO', '2024-12-03 19:05:20', '2023-01-25 04:41:41'),
  (338830, 201788, 546072, '2021-08-14 03:40:15', N'WKVhOBBZd_', '2022-12-05 22:09:01', '2020-09-26 17:21:32'),
  (940877, 721557, 910386, '2020-11-13 15:39:26', N'VBIUCceEjexS', '2021-05-17 06:45:46', '2025-03-04 00:03:32'),
  (903283, 277073, 677701, '2024-08-07 18:12:13', N'qYcdduqRpPfQki', '2022-01-10 02:22:31', '2024-03-09 14:19:09'),
  (313674, 611435, 194796, '2022-07-10 05:23:19', N'CktOtXROQ', '2023-09-09 22:22:36', '2020-12-04 18:47:47'),
  (921841, 232528, 528128, '2025-07-21 08:49:15', N'tEBPrNLulTm', '2021-12-03 11:51:06', '2023-05-09 03:04:22'),
  (208914, 763416, 495907, '2024-09-05 11:11:54', N'XlkOAWCeysJqpW', '2023-07-25 07:09:34', '2021-09-03 01:51:27'),
  (300597, 376825, 955052, '2023-01-27 20:47:06', N'iycuvoGxwwIGvKLgU', '2025-02-20 09:18:19', '2025-06-14 15:55:58'),
  (795174, 957740, 65448, '2022-07-04 05:59:53', N'EDRqrVNKwYJvn', '2021-07-12 12:44:32', '2021-09-08 19:25:20'),
  (790013, 905617, 835549, '2021-03-26 21:40:23', N'dZI njV-flg_', '2024-04-07 12:50:40', '2021-06-30 23:38:13'),
  (936143, 962990, 950238, '2024-06-26 05:57:50', N'iwfWYKDn-RgObjYOQM', '2025-01-13 19:20:55', '2022-10-01 16:00:16'),
  (229102, 98798, 150452, '2024-05-09 11:49:24', N'ZjPGgadCsZ_WNIJ', '2025-03-20 09:20:39', '2024-09-17 07:20:22'),
  (79194, 943416, 10026, '2023-09-01 10:14:25', N'HscrYpZJddIyA', '2024-02-17 04:37:33', '2023-06-14 04:09:53'),
  (544275, 687533, 81022, '2023-04-24 20:47:26', N'NpyjjpXpNny', '2022-12-26 02:08:17', '2024-04-15 16:18:57'),
  (600845, 366474, 280503, '2025-06-18 09:16:28', N'BxSK_jaxtHJHxd', '2024-08-12 02:32:32', '2022-06-11 08:51:07'),
  (157575, 386103, 485777, '2021-05-19 16:29:59', N'lQPNRdEEkAMixlnicM', '2024-01-30 05:17:32', '2024-03-10 21:49:47'),
  (153469, 474072, 935902, '2021-10-08 19:38:35', N'YcFaeiXca_JscEx', '2025-01-18 16:31:40', '2024-12-27 15:10:22'),
  (168676, 136664, 152816, '2024-09-16 16:45:07', N'RtGuLNoeF', '2025-01-03 14:46:25', '2023-06-25 09:19:25'),
  (529597, 493581, 529654, '2024-09-30 14:43:02', N'rdwoIzESzCD', '2020-09-27 10:20:44', '2022-03-29 03:20:58'),
  (917495, 504135, 932566, '2022-04-02 07:01:21', N'K zE jJ-cmAChTKKKqR', '2024-01-28 04:56:58', '2023-10-11 13:51:47'),
  (866066, 34627, 92496, '2022-03-22 09:15:29', N'vEHjlmONrNV', '2024-07-22 17:51:52', '2020-12-12 05:50:42'),
  (969638, 568493, 230858, '2023-03-29 12:28:33', N'BjyjNx', '2022-08-10 00:55:34', '2024-01-04 07:02:34'),
  (327610, 323945, 76799, '2022-12-11 02:23:42', N'YFCOsvKUKrhGIoyGWUaI', '2025-07-27 22:10:31', '2025-02-09 08:16:19'),
  (966266, 549477, 958866, '2021-02-28 17:51:27', N'kbCMyssUHWe', '2024-09-06 20:48:26', '2023-08-29 14:08:17'),
  (997078, 867060, 372169, '2021-09-27 03:49:41', N'-ToMeOlWwuiubbW', '2022-04-10 12:12:11', '2021-01-25 08:31:03');
INSERT INTO [hospitalisation_suivis] ([hospitalisation_id], [personnel_id], [date_suivi], [type_suivi], [created_at], [updated_at], [temperature], [tension_systolique], [tension_diastolique], [frequence_cardiaque], [frequence_respiratoire], [saturation_oxygene], [glycemie], [poids], [etat_general], [niveau_douleur], [observations], [soins_realises], [complications]) VALUES
  (570525, 603773, '2024-08-07 10:40:26', N'UEAdQlEHEdm', '2022-10-06 00:00:23', '2021-10-08 13:04:20', 8833534180482986.0, 117, 859, 660, 347, 896, 9196716211803810.0, 7731106743916725.0, N'ncmTNiG wHVBDroOy', N'sGRNH', N'pziVJRPhCUua', N'_cSLsTDeIZGHaRQyRN', N'e_ofLhXrkKACmXaC'),
  (265177, 410052, '2025-04-20 00:54:26', N'VnIysy-edVDJSWgkC', '2024-07-10 02:09:17', '2022-10-28 04:14:28', 6197018036425778.0, 483, 435, 334, 872, 889, 3199230354625516.5, 5123708836130655.0, N'oMeATjEcs', N'sPhHWZxA', N'ppnI-Rphz', N'lLdcpCi RtPFdVQLQqhU', N'fmdFtuxjMcOamwNk'),
  (671205, 21126, '2023-10-03 12:26:14', N'Pc_JmLRi QjApZUandFG', '2022-08-17 19:47:02', '2024-11-11 15:03:54', 662775623840301.5, 658, 420, 806, 267, 152, 7273897499329651.0, 2754327936420850.5, N'gjOwPZFNIQQh_Skmm', N'RAb mdIT', N'RWRxzpRffs', N'_kUgw', N'dGZaZsdkD-A'),
  (75606, 489419, '2024-10-17 06:49:08', N'k SGLppi', '2022-07-02 13:42:50', '2022-12-24 22:57:24', 9373803464552026.0, 263, 141, 678, 150, 777, 7333089352067488.0, 6693103064608014.0, N'VERFHhy', N'ZhUrkEAxPB', N'C-bEBjeSqhAnudR', N'eslfbyPhh', N'ecVysuvGlabRK'),
  (267090, 793268, '2021-03-08 09:46:16', N'YrqwhygMt', '2024-02-07 18:52:21', '2023-06-19 23:40:09', 2474287061611773.0, 476, 3, 640, 156, 224, 7455139496295617.0, 6684856077354820.0, N'ZlOokWV-pTyC', N'-bMJK xntjwSXeFdhmZ', N'GI_fRkhxxWwiqJK', N'aWGEhnaWgzfJ', N'tXW-e'),
  (108627, 737035, '2022-03-07 00:17:33', N'QiyhdLQ', '2020-09-03 15:09:28', '2024-04-02 08:29:21', 6897828587769446.0, 50, 725, 807, 141, 743, 5715221895091919.0, 9118923871955314.0, N'rATMECGbmsKYmgBZoUMn', N'IpxxCtKbIvCtFf', N'CguvAsHKSyqpjjTqXzLy', N'gZIOguIMNAaL', N'TPOkymqmdMj'),
  (451599, 165124, '2020-10-20 02:41:41', N'GiqbhZwjeCXnIh', '2021-01-25 04:03:47', '2021-03-18 02:58:33', 6586947852507540.0, 840, 630, 999, 456, 245, 7419233784504461.0, 6943545164562797.0, N'sYEgvQkvJL', N'XE oNdmgWyKCXl-Hg', N'PIqcDpY_sofKbYRJ', N'OCSnrzNWHTBTDvRJ', N'dfvTSUsjQiQOFcNU_xxE'),
  (477367, 919910, '2021-12-20 07:21:03', N'_dUuSo', '2024-03-01 23:14:38', '2025-04-21 19:33:09', 8101397419332079.0, 738, 797, 611, 54, 568, 5762574630389979.0, 2733949066750419.5, N'TWp-IlcgIEFACSf', N'YKrPqUeexo', N'NgjSF', N'ZCmyzl', N'APZXjF');
INSERT INTO [hospitalisation_types] ([libelle], [description], [created_at], [updated_at]) VALUES
  (N'qrDa KLWB', N'qxaDeBjoLjwiBRwRZxvS', '2024-05-31 09:09:47', '2023-07-09 07:49:12'),
  (N'AQGhhk-_-acwA-uRuwp', N'VQqbEZ', '2023-01-01 17:46:04', '2022-05-01 11:46:55'),
  (N'HDkQC_aEPxM', N'owNP lskmJt', '2022-10-08 06:48:35', '2025-05-08 06:08:05'),
  (N'pSjILagVE', N'czmFHeS', '2021-09-04 04:56:30', '2025-04-11 09:20:24'),
  (N'HZLZpInLRT-UvXqmrO', N'XFSSei-JsdZnWGq', '2021-03-01 12:09:06', '2023-10-08 05:44:42'),
  (N'YaqNVfKmZhJPDoioVmu', N'KvdNAim-', '2022-09-25 02:46:37', '2023-03-25 05:33:28'),
  (N'bRx_VUKWVVUQp', N'pmnCRHFnQQou', '2025-02-04 16:28:29', '2021-02-19 20:44:40'),
  (N'-JkNO-ZLHMSvKVG', N'sHIauNv', '2021-03-16 09:12:42', '2023-08-12 22:56:13');
INSERT INTO [hosp_administrations_medicaments] ([id_prescription], [id_personnel], [date_administration], [quantite_administree], [observations], [statut], [created_at], [updated_at]) VALUES
  (358830, 430478, '2024-10-15 04:52:23', 2741812125099287.5, N'i_lDmdcApzsDcr', N'ds-iHOcrQINgMjNsOrCB', '2022-06-17 22:26:25', '2022-04-20 07:06:19'),
  (666436, 690622, '2024-07-05 05:01:08', 4885996488637990.0, N'GbqXCYchp-am', N'BarLgLgVFMKDbYvDL_R', '2024-06-11 20:21:20', '2022-06-24 04:01:06'),
  (104537, 21450, '2024-12-03 23:26:36', 521991307414224.6, N'FVeoBk lux', N'HseKapjiieho SGGBNPV', '2021-03-19 21:07:04', '2025-05-10 12:43:30'),
  (424483, 454425, '2020-11-22 11:19:54', 8806460981984768.0, N'NYtfS', N'FkXqfAJvVGQOqwS', '2022-05-30 18:25:02', '2023-12-15 05:15:51'),
  (594076, 533273, '2021-04-07 14:07:37', 6258886310366968.0, N'mUtaxosF-sKl O Z', N'cRIeXdEUNLY', '2022-08-12 09:01:21', '2022-12-08 07:25:09'),
  (371288, 425866, '2023-09-05 18:57:05', 715245892769702.5, N'LQb-EQkyD-t_', N'_pUoNyiuUKLKfCJ', '2020-11-19 15:40:13', '2022-03-09 20:58:36'),
  (504224, 103208, '2023-05-03 11:47:10', 1860105832831930.8, N'CpE__SkUi', N'mWHBhDhyJemWJ-mvHg', '2024-10-27 18:32:24', '2024-12-12 10:56:28'),
  (99343, 30591, '2023-09-09 16:33:56', 1533792339122814.8, N'amuDPInxtleWhTm', N'ENYzftqsbdvDLKF', '2025-04-21 01:26:14', '2023-03-19 13:17:00');
INSERT INTO [hosp_indicateurs_qualite] ([id_hospitalisation], [type_indicateur], [valeur_mesuree], [valeur_cible], [date_mesure], [conforme], [observations], [created_at], [updated_at]) VALUES
  (231302, N'vkkFTNf', 1102074981703654.6, 6786203791669470.0, '2022-05-06', 1, N'vczxW palPabBIVz', '2023-08-03 14:44:06', '2022-01-08 01:39:42'),
  (197870, N'dti-bPskjr', 4649216674321122.0, 8249273151874889.0, '2022-02-06', 0, N'GudemzEisvbJNp', '2021-10-31 23:31:50', '2021-02-02 12:34:37'),
  (887131, N'HuVSJ', 6797119738421250.0, 8871985632383133.0, '2022-06-12', 0, N'KokyMtr', '2023-10-29 15:42:18', '2023-03-30 12:50:29'),
  (230383, N'biLhVibK', 4893758701957099.0, 6529220889623658.0, '2023-07-20', 0, N'FhPSEHWBiaHVMlDL', '2025-07-17 20:50:13', '2024-11-04 23:45:58'),
  (645963, N'qJnlKqHbFqj', 4020904414563655.0, 6246006712974158.0, '2021-04-21', 1, N'dgDEwrC_wcoPeAOZ', '2025-01-07 00:18:50', '2021-09-05 07:57:18'),
  (375057, N'mBBtUaQMVAJahlbbnKb', 9617333923535788.0, 5300912756537951.0, '2021-04-26', 1, N'QtCzvN', '2023-06-18 20:19:54', '2023-02-28 16:15:50'),
  (916547, N'cJIJGvamZFkeZK', 2049606518974034.2, 3070479099670813.0, '2021-02-24', 0, N'JiLXAbTTsAkdZY', '2025-04-26 13:26:37', '2024-11-18 22:32:32'),
  (243209, N'oikgxWzoYsmMTF', 4206758949901470.0, 5038065846460446.0, '2024-02-28', 1, N'pGgvXsEt', '2022-06-03 00:58:22', '2022-02-02 19:45:15');
INSERT INTO [hosp_interventions] ([id_hospitalisation], [id_acte], [id_medecin], [id_personnel_assistant], [date_intervention], [lieu_intervention], [duree_reelle], [anesthesie], [complications], [compte_rendu], [statut], [created_at], [updated_at]) VALUES
  (827726, 675966, 636189, 628536, '2023-09-01 13:06:50', N'ZCwupY-HoxbBwSq', 74, N'YK bEO-rqpi', N'KiSXalWilhXjpRVCQaQo', N'O PSiHGIM', N'YdRlRVBbdOwidB_WhbW-', '2025-02-04 08:18:05', '2023-01-29 23:58:50'),
  (114551, 921582, 25352, 848821, '2023-12-02 07:31:20', N'ERPDvmipJzmQOEEnzUsj', 120, N'IvT_QEk_kGUQb UrTSo', N'MfCVs-lVnJdWPIBMf', N'HdKIgEt', N'vSiTCXuOmFabqhc', '2022-02-09 22:40:46', '2022-05-05 11:56:54'),
  (229864, 887260, 405395, 810656, '2021-12-31 02:07:18', N'sfezMiFEPdpJMoRUe', 687, N'SQBPqLbZpBTu', N'eBHHMFjLPoeMbecfIww', N'axWFWqsHFboJf', N'gE rEsMbY-XENlpjHxmp', '2024-09-30 18:23:54', '2022-10-01 10:31:36'),
  (415859, 153521, 208455, 25905, '2023-06-14 07:37:53', N'zjZSdS_DkyA MphITxZ', 513, N'lTPgHBjxoMwynLq', N'sliqnUsLdL-mZqjyWXLX', N'AotqtJnaqh', N'_xtvP', '2025-02-21 13:39:09', '2023-12-14 19:40:32'),
  (11407, 73577, 624529, 236402, '2024-06-29 10:57:23', N'YkJyFuPWBzVIbYFmtvSS', 763, N'-hbDgDGbAwu_clBtEii', N'eqARsYjcjaC', N'wFKBzWDwHfSntoXsS', N'D_C-VyVkozTSK', '2023-11-29 02:10:49', '2024-02-08 19:43:48'),
  (705862, 259819, 468145, 576309, '2024-04-09 17:32:08', N'la-qwNFF', 793, N'E_UPYqdqNwZbzYPMkw', N'VMQhfwQ', N'BvYZlNjDQJhOmzjq', N'XTrBE', '2024-08-18 12:24:22', '2022-07-01 05:57:06'),
  (945008, 208724, 583167, 248204, '2025-08-06 03:28:30', N'YUdjODJyQkRym_R', 890, N'qfouVcmS', N'H_uft elb-eeXLbyFFo', N'IulRpDXPtDAhhvvIUs', N'XmGtaaHhe-dw_jfkqbQE', '2024-03-27 03:14:09', '2024-02-22 18:50:54'),
  (505255, 548246, 396549, 735560, '2021-07-01 16:13:07', N'WyswmpHmDonhcZC O', 848, N'CzbmfcECDmPxpp', N'qfrtfkEYWxE -KIJal', N'WidNM_RmvkxejaNHD-w', N'tVzFTdasEwRJDc', '2021-06-24 14:36:19', '2021-10-07 01:58:28');
INSERT INTO [hosp_parametres_vitaux] ([id_suivi], [nom_parametre], [valeur], [unite], [commentaire], [created_at], [updated_at]) VALUES
  (825738, N'JDcmr', N'hzmIAecf', N'Hmdgx', N'vWROiYCJbcZ', '2023-06-01 23:54:45', '2024-02-10 21:30:07'),
  (936486, N'GIAmYJ', N'fMyiItZgZMqqCs', N'NbUxFLkpkQUeXImKu', N'ATIwmHMomuyiSrhMwfDW', '2025-05-10 18:02:44', '2024-01-20 13:42:40'),
  (246153, N'IPLlDHyN', N'AGEU_KySDSmDSMU-', N'yIHZcUHuVSMQABwj', N'y_nSOOtH', '2024-09-07 09:56:09', '2025-05-03 02:16:41'),
  (857525, N'VrHbhdvhPfGsZiQVZ', N'thVakjZdxIpuL-uOE', N'SIowi', N'_lUCpQIlCz bBTSDc', '2024-01-08 22:51:15', '2021-11-14 19:02:23'),
  (383948, N'NfQEU', N'zggNTITdMY', N'BSdYyPKNpUlpiVm', N'FSpzSvRqUdfWKUEnhe', '2021-05-26 11:26:16', '2022-01-31 04:25:21'),
  (23682, N'DklhzpeFs', N'NM_oJKiQ', N'por bMTvIzpusBLlpYi', N'XZBiqjLULVBy oLb_', '2024-06-13 18:44:06', '2022-12-29 20:54:15'),
  (137989, N'BnnGONfljHbal oPE', N'OX WRU', N'bNZXRmeseDQpSpyhko', N'mJfJLqvOrQP', '2025-08-06 05:11:58', '2024-05-23 22:37:32'),
  (368339, N'SYRvkpX', N'JKCjwbYXyDTeoji', N'C TVbLbpgptz', N'soMaSfvR_ooKvJ', '2022-07-18 21:58:26', '2022-03-30 22:39:18');
INSERT INTO [hosp_plannings_soins] ([id_hospitalisation], [id_personnel_assigne], [date_prevue], [type_soin], [description], [duree_estimee], [priorite], [statut], [date_realisation], [observations], [created_at], [updated_at]) VALUES
  (725812, 140092, '2024-03-28 15:02:37', N'c NahlHeGtPYINoO', N'tvMZdp_RdWdyDYKLe', 669, N'sAJVcyOZbyw', N'ejhRF-tEiAFlnt_cB', '2025-03-23 12:57:54', N'FjEXvOmJAyJMSFTdCn', '2023-03-09 06:13:06', '2021-09-13 08:37:00'),
  (107179, 563517, '2020-10-09 23:18:57', N'gzMGi_YmUFK', N'pTtiRObvAzGbDowZ', 847, N'zCuywlN_WR', N'xpPcZ', '2022-04-16 23:28:41', N'ha brOBOb UvgabgK', '2023-07-17 18:05:13', '2020-08-30 17:26:12'),
  (48737, 654709, '2025-05-19 03:51:02', N'kzrAjCgADwZi_axKpWU-', N'-qfx-FUkpLFqlqY', 475, N'jPuILgN_LTuNFW', N'BufKIsBR xynVh', '2024-01-02 15:49:48', N'YnlPJ', '2025-05-07 09:38:14', '2024-12-26 13:30:17'),
  (617783, 944841, '2022-10-31 08:17:46', N'J-NtgSFiBWoSTwiHJiGa', N'ngtmQTcQjw', 153, N'aPiXKW', N'skQAK', '2025-04-17 03:43:21', N'IEIlup', '2022-11-10 22:17:03', '2023-11-05 07:45:45'),
  (519188, 688785, '2020-08-22 01:00:09', N'QGVvPcWBeyephPjhDHI', N'BPlzBzN', 521, N'rWikp_oHZsttzefDKUWu', N'MUxVD eR fCXas', '2022-10-25 02:45:14', N'POexmyhqv_eRQP', '2025-03-30 13:33:22', '2022-06-30 05:17:29'),
  (77688, 958861, '2022-08-02 19:06:04', N'g-RHhSyZE', N't Lgxz', 856, N'adFiBdDy', N'eAsVdP-BscdvJWVT', '2023-01-31 23:13:09', N'wgUZiGkEYiNqYk', '2025-03-10 17:26:11', '2025-04-07 12:47:05'),
  (79047, 115497, '2024-03-25 22:52:49', N'ZWsZMEkQrHVpYjuYMu', N'tSJxNgWonFwLLXmoqxYJ', 192, N'JIfGFhzLqyV', N'XwBJXNQWiWMO ltPZDA', '2025-01-19 12:27:56', N'EivEQK', '2024-05-26 09:34:45', '2023-09-02 00:37:30'),
  (882957, 663198, '2021-04-03 17:13:42', N'fuVrAmBFPBj', N'nRB aBjN', 292, N'rDOlYFitwuQFy', N'uegNsHL_pRmTozWnNK B', '2020-11-22 05:18:48', N'trFhxRV', '2025-07-20 20:14:26', '2025-07-07 10:58:34');
INSERT INTO [hosp_transmissions] ([id_hospitalisation], [id_personnel_emetteur], [id_personnel_recepteur], [date_transmission], [type_transmission], [objet], [message], [priorite], [statut], [date_lecture], [reponse], [created_at], [updated_at]) VALUES
  (720018, 480669, 519793, '2021-04-11 06:19:52', N'OrvNxSNzfqcN_', N'D tfGsg-jyq bu_pxiM', N'-liDzLSFmSQd', N'YDlhGBrv RoiQBf', N'NeDZqKKoOTNrwPkkC', '2021-06-27 11:16:47', N'wuYq_', '2024-10-25 05:49:31', '2021-01-25 11:10:44'),
  (58333, 742013, 902491, '2024-03-05 01:18:19', N'pZTaOiZKAPib wVAPpoz', N'dXLCAjWIkCfQk', N'W XAphbUKz', N'lxtcCFXVqI_HUW_eAGj', N'rnk-H', '2021-06-01 08:39:12', N'DFnhWDWDs', '2022-01-25 11:59:06', '2024-09-24 06:13:06'),
  (562114, 633841, 672295, '2022-11-21 11:14:04', N'EIRJEkriDwG', N'rbSyu-d', N'Ia UKOxngBtCdxN', N'JYJDvmSrcEPOO', N'lIOswy IGRK', '2022-08-21 06:03:50', N'i-HeOEf-c', '2025-04-21 02:39:01', '2022-03-23 21:26:10'),
  (149974, 981349, 869905, '2025-04-11 04:52:54', N'KrdnmqKS', N'DwOONYpnyCXIowGJ_svr', N'RIAFOH', N'nGRZjWoS', N'TUgNAZTF', '2024-01-07 08:14:40', N'CuQHV_ppwyypH', '2025-01-08 16:19:21', '2022-01-19 11:35:36'),
  (949227, 534963, 173471, '2022-03-05 19:25:48', N'azROLEFDFpcI tlLYGu', N'C-CcOi', N'BIfRdUQqBYo', N'QpjVbfw tyeieqUL_', N'UlOlIPO', '2024-03-01 02:15:03', N'mgQLqUh-OPKq KjPAUR', '2023-05-08 15:19:40', '2021-07-08 12:07:49'),
  (123842, 557387, 347221, '2024-12-03 05:34:34', N'-lalPn', N'uOXPkgQ', N'KAejt', N'dhJU tVou', N'YoaXNHdAuEjEmHdgASvJ', '2023-03-31 08:27:40', N'AmlRq-wsVaVxoBaz', '2023-06-03 03:29:28', '2024-03-23 20:21:58'),
  (531198, 105117, 789156, '2023-05-14 12:51:54', N'Oa-MHXxRkgCTE', N'O_KBijLloU', N'VYAEgItrAeQCmi', N'tpbQCzUQOQTyC_PqOaa', N'OHUTtDZQ', '2024-04-06 17:40:02', N'LM VxmwKybCfjr_dJ', '2022-10-10 06:34:32', '2024-09-03 10:43:17'),
  (401201, 376090, 734678, '2021-12-13 17:43:37', N'XRwyl', N'RtWDhIdmOY', N'ZO-sO-p', N'gdsTuPHlydLzVcbUDud', N'SXKDvXjk eDGaAAFC t', '2024-11-23 18:27:52', N'GLmaTOe', '2024-01-11 15:58:20', '2022-05-12 19:19:22');
INSERT INTO [imputations] ([source_financement_id], [exercice_budgetaire_id], [numImputation], [codeArticle], [dotation], [dotationRevisee], [bloquage], [engagement], [liquidation], [reservation], [dotationPartenaire], [desactiver], [created_by], [updated_by], [created_at], [updated_at]) VALUES
  (723191, 701460, N'Gri_BpnBfJ_LgpuvMW', N'xDkDjJF-JhQUGYqRhU', N'_DylZYRpGckz W', N'dY_MsAeJBDREfVAWreHh', N'AdqQRKLfjLQoB', N'XjjHbVQkMCM', N'Y-enW', N'FjV cKBFpIUByE', N'eNBxnC yDbpNUlEt', 0, N'oIpNCRu avoaJO', N'n yWcgsB--F', '2021-08-03 01:41:23', '2023-08-14 09:09:08'),
  (79419, 86896, N'FdpkV-ksUG', N'pyctmCr', N'xCPzBXUpKtbIfKiF', N'GY_rTHkFCxLt-CM', N'_kDQZdfLjq', N'DwNuE-NOynpEhSeMm', N'hDbJDhAudHZhDdn', N'zenuksjJgBLrvpZSTIq', N'vtkOOZPDirrOCwW', 0, N'OPLSViQcfsHjNkmEN-Y', N'xRKURMyIAQ', '2023-05-17 01:06:45', '2020-09-15 10:11:29'),
  (397944, 437756, N'h_fzw', N'HzwgfwbpuxxJgZ_', N'RRRWdA', N'PbwB_RWEEQZlOgmBb', N'IYrUU_', N'IcbUBpUMMoF', N'X_pBLShaM', N'QHCk-eKgZymQaSQWNhBv', N'AIcbr E', 0, N'umvEQcbN', N'vGCfFdladQU', '2023-08-17 04:13:23', '2023-06-04 09:28:27'),
  (986760, 692486, N'aPgVICHLadPulLMX', N'joiwwQqZmPmqM', N'RXnlPYflRt', N'YajvGQOmpSb', N'zOepiiFBULa', N'PRSEPqtFPoaM', N'h-b-VCOU', N'ZU-JF', N'yEHtvnmsOPmUpwRXD', 1, N'DcXeReGWRcmm', N'fnznETubAbudopUxg', '2021-08-05 13:48:44', '2023-12-31 01:43:18'),
  (247792, 838413, N'JW-swRCOpAZkw_paprQP', N'ZBYakC-pl', N'zNMiCiOHD', N'ilMtV', N'bLTFv', N'_eaXlKp', N'aKXYKAwAD_-JK', N'OyrVwMRHQfW-Cenc', N'kLjYJstlUkgn', 1, N'nifXp-oWcdP', N'sUkNvy', '2020-08-25 02:36:16', '2022-04-02 12:37:06'),
  (30291, 788590, N'MmRaLvGFP', N'bkbXCwjdb-', N'uwzMnfGBaB', N'o OYhrpHEs', N'oF_pawowNAiFAp', N'cVLFy', N'XOluiDQpMCyF', N'JJfoLgrjaoFxX', N'NteYtpe-tbgpLHJES', 1, N'NxpTXmUDgG', N'WlIsaYISOIWX_', '2024-12-11 01:32:41', '2023-10-04 05:56:54'),
  (431584, 705818, N'GalQIXvjejWd', N'sPfzr', N'TfxwK_zqIE cm-ih', N'apNxUcUQJYJJHrkYoQ_', N'NqaiUZeAKIScBJeo', N'OynRTyjjrRsBXlB', N'xAhxQFQCi ZovQw', N'EiDrSJs', N'MRlDcwLMqrygCouozdA', 1, N'FURaBUSFtaMVeR', N'ybjOGDOdbU', '2024-06-10 20:52:24', '2021-03-10 08:27:02'),
  (112847, 27124, N'sGdWjXmjwRWGzKNZOG', N'dXII_', N'sHtIOMty', N'qeSelrTljMAdBXN', N'pYJlYUh', N'TkVXNu jSeJABCH_jnZQ', N'EuBUDATxLsRJzoCJE', N'vLUCh fXHNESisTH', N'HUCbBmnE', 1, N'CjTAXXCUnk-yV', N'oAevQUNo', '2024-01-12 00:37:32', '2023-04-06 03:19:50');
INSERT INTO [indicateursps] ([sous_programme_id], [indicateur], [unite], [source], [desactiver], [created_by], [updated_by], [created_at], [updated_at]) VALUES
  (49691, N'SzicSO lRIj TbEtOLuT', N'lV_rfPpXjrvMUgUipR', N'sQRfrkf', 1, N'v__qXvVXR', N'qotnIjwd', '2021-02-12 10:13:18', '2025-02-13 13:13:20'),
  (970557, N'RMXLicwedmqSXexLt', N'TImsLsjHp', N'-iCdAaCEPUPerM-E', 1, N'jozNgF-PcpXitl', N'oseDPDLTXj', '2021-04-25 10:01:46', '2021-07-13 13:04:12'),
  (480190, N'cxksuN', N'aNbgkWE_hEk-cKRIs', N'kCXcP', 1, N'fwkhfWYM WN', N'hEH AUlwPzS_fxApBJIz', '2022-12-15 18:06:21', '2023-12-02 10:13:25'),
  (666412, N'PbsWuyKyaXVAkHw', N'y WOQUF tMkJ', N'HEeZWe', 0, N'owXsmhophfSjRFVdBU', N'utEHYnZKVPK-br', '2025-07-23 06:27:58', '2024-08-31 22:02:22'),
  (636573, N'bpcUno-', N'LMhzeGvTakNDzCdXBqs_', N'MnWbS', 1, N'CB-TPfsayLVjzbcwsjJA', N'wFrc JGQvgC', '2023-04-02 01:33:12', '2022-11-23 13:22:30'),
  (311328, N'epWHI-iuIPlUpX', N'vjzoDnpIXd_yWgFE', N's_WnIS', 0, N'azngau', N'bDYzhqaQqGBGDhQB', '2021-02-21 01:40:08', '2024-09-23 15:28:40'),
  (985319, N'_oJjZgdMldcN', N'hrMUHMih', N'JwbKG-MrDNmNH-PoQ', 1, N'zMaOAOhaNBcoo', N'XWjR_nJOT', '2022-01-17 17:30:24', '2022-03-11 05:27:48'),
  (251337, N'nDuuRFiDScvNiWOu', N'PeI_O', N'jcANzxX YCFzFUXDIYG', 1, N'm_aGOq G', N'MFiaczTBniN', '2023-06-26 03:53:43', '2024-04-09 06:20:54');
INSERT INTO [indicateur_actions] ([sous_programme_id], [action_id], [indicateur], [unite], [source], [desactiver], [created_by], [updated_by], [created_at], [updated_at]) VALUES
  (532808, 590730, N'wCtGXLWXpzD_ ObBV', N'KS_VFwa', N'nHeZU', 1, N'qnJIaf', N'_newaaWxSInxQmtS', '2025-03-30 23:04:03', '2023-05-14 07:10:30'),
  (684363, 935208, N'YlvvzereVCHtnZ', N'ybgXHVmlXwERKGhSyMw', N'P xjqRUAW Lm', 1, N'qWTluK', N'qVZRR', '2020-09-11 23:43:18', '2021-03-22 19:31:20'),
  (644226, 975829, N'KYuUZJKGfTVG', N'pTlr tYxFTt ot', N'uLwOekjJzW', 1, N'LWToVUOGk', N'dBjIyJYw', '2021-10-15 22:02:41', '2021-06-22 23:57:44'),
  (716587, 45014, N'TDovMc', N'mlU Ow_', N'bPWtsZ_fYqGjjrWnYbl', 1, N'GHJx uCnM_oMFrk', N'aIwwciQzkW-xY_LNh', '2022-11-24 12:42:15', '2022-08-28 19:00:24'),
  (883491, 810778, N'nYK xMZuAM-hDka', N'dpBSFNJ YGMYnEmyo dg', N'PlEEmDsTIYfhItrI', 1, N'wjKgI', N'sdKbd_kvZuHDGj', '2023-05-24 07:18:53', '2024-07-30 15:34:54'),
  (208730, 114699, N'blkZboCW-pO', N'tc_YxOomRRqXYaZg', N'rY-RDIUxQd TAcNUom', 1, N'NIywGue', N'iTSVe', '2023-02-04 02:40:18', '2024-01-17 12:08:57'),
  (338264, 272807, N'KZXQnlZk', N'YZzew', N'RubfMZfCEM', 1, N'b_tDOScazliu -c', N'C FvNeD', '2023-01-13 07:33:58', '2025-04-14 05:05:39'),
  (676310, 622256, N'Mlm_KY', N'AbStPrFbDUWO', N'ABdUw', 1, N'uiEnK_YYJpeUgkU_u', N'i fGTMICYa', '2021-07-28 02:30:39', '2024-04-23 05:40:10');
INSERT INTO [indicateur_activites] ([sous_programme_id], [activite_id], [indicateur], [unite], [source], [desactiver], [created_by], [updated_by], [created_at], [updated_at]) VALUES
  (999334, 163505, N'RqrwezMAfnFapq', N'IQsM', N'HuohuTcZiODOspKpMTh_', 0, N'wruLrIbAidKQuZiVW', N'NvGO zdCkwd-MmmOQToY', '2020-10-26 10:13:00', '2021-11-24 17:44:36'),
  (52642, 850691, N'XJlZjaunYZGsvYkJhn', N'KDGu  Cuj-_oj', N'yfcnJjhhHAlaWuYWc', 0, N'Y_uepdKWOLNz lMt', N'YYQAsPNFWF', '2020-10-10 23:21:36', '2024-09-04 03:28:37'),
  (21404, 229374, N'vylewwviFqj_hz', N'LwWFw KY', N'hQKUaquq_KdBut', 1, N'MjtdPNGHy', N'zeQgH_Cd_aCrNXWJMZ', '2020-09-28 23:22:14', '2020-10-01 04:30:03'),
  (435733, 95811, N'jcmhxx', N'DDZulhAmxNZkOqUrtX', N'bCButDHGKgZuYxNp', 1, N'xRQhtiuTGbFVsjkhkaXm', N'VnZAaagtulplpiWNgWsi', '2020-12-03 17:02:25', '2022-11-19 01:36:08'),
  (789054, 105466, N'LnTKuoGsmaEeSGtABaMb', N'TvhPrMdPnnog', N'KmyVcZwSEjUW', 0, N'mfex-RWTAFARlpG_BwI', N'zobYgTyeG', '2021-02-12 12:11:50', '2022-03-30 12:27:07'),
  (36083, 828536, N'HCZLWWrkznR', N'aUwsWFwxev-WQz', N'klM LeSZJekG', 0, N'ZKfDESb', N'K-SHl-F', '2024-07-29 05:23:30', '2021-08-14 20:57:35'),
  (478730, 619419, N'zFHvOJC zBhjfTC', N'TVVsUqtgw-yxCsn_ZEvM', N'sIenjIYhGa', 0, N'NRxwGrQruC', N'ukyqcZCgSUt', '2025-06-29 10:29:22', '2021-05-07 22:23:04'),
  (207233, 112848, N'qBUxjF', N'dUqwBqurYneOlK', N'pH lBu', 0, N'WLqClKLiz', N'mCcPcMwhen R', '2021-05-05 18:04:05', '2022-03-16 18:05:07');
INSERT INTO [info_societes] ([code], [type], [raisonSociale], [nom], [activite], [registreCmrce], [contribuable], [capitalSocial], [adresse], [ville], [commentaire], [telephone], [email], [siteInternet], [created_at], [updated_at]) VALUES
  (N'jCUBgwJqX', N'wSffIWESs', N'kphJvGnfSW', N'kNEwFbmsbNC', N'UIfr Ixt', N'zjOXCPrH_UgJ', N'mhEUJXuiLEBsk GqPWy', N'hLjzeFSQXwRI  z', N'CSTskQNd-', N'oN_hzh', N'iGfggg', N'ctbsTFIPQZEoEtGdxihU', N'UaicFpK_EXdOfARohBi', N'Ged-CEhLzQFBFVq', '2021-03-14 13:19:28', '2024-01-22 19:18:14'),
  (N'-dzrJvJR VWHIPsYO', N'rQisvdrUNVGGzs', N'oGBJVsuglAvlFAAC', N'gvxlu-rfSD-I', N'lffjyIgJAHx', N'_zntu', N'AVSLFFeasxPyG-V', N'BSptl tlnx', N'HHOEabviwf', N'zlE_luIzhGl', N'eOqaTJrU', N'qjAhwOYtDhZkeXUyiEx', N'OmpTlcbAghPRNYoBJNw', N'NSQZEXsZX', '2025-03-24 02:28:01', '2020-09-20 00:19:45'),
  (N'TmoO-wkpuH', N'RxMBpZJnQPHtz', N'CsLezV', N'uuuBgmYM', N'WSdYQtEPuWh_OaslrY', N'uJqzxHLLn', N'pYZvEfCBJYT', N'mG rLNYrbHVrVCDj', N'NCjGbNiFDVetab_RsYyq', N'HFMIgE', N'BhGHvCVvjrxk', N'yskPcSfh', N'HkXR-P', N'qOJPuifUfPihZSx', '2025-07-16 19:49:00', '2023-04-14 07:46:05'),
  (N'pmpJgWVEKQIqjCALcg', N'DbyNPdSZvomDdRhMOpy', N'MXVNHZYSAVve', N'OnAqBlKyTSKdw', N'TvleLcYLkzEhlu', N'asZFAZdGQpZVb', N'pvrAdaVFLDTqdOEY BH', N'Wyrq-WMSjuYvKopq', N'KutAIdailaQNCBryx', N'eTUFQxSNvKA', N'RQOEqi no', N'Qh-jISps pOEbp', N'vlzNZAGxEwoMeyPMgmN', N'yJYMopiEzz fy', '2022-06-27 23:58:21', '2024-11-26 22:33:22'),
  (N'HgYhDjXXjvhlZ', N'EtHhwYnltBOdOy_', N'MGgOHaHvwrlc', N'aNOMTpNZOzddTFJKV', N'KXWnvXazgFDln', N'cDwehptJX', N'vCLATJhapldikqagFo', N'JfuNSOuWSt', N'ejqOAFqaSaN', N'atpCJgsehLxHDT', N'AdASoqcxZfmc', N'wDloKx', N'lCKhGkoo hA', N'hAiMLAVSJeQDXvtJfss', '2021-09-26 07:55:15', '2022-09-24 09:32:00'),
  (N'w jQguzdjnQO', N'tZ_- YFtzH', N'KiFfJwwVeoDdnSwTZVLC', N'-IUbJFGOsgDGAENPYoN', N'BMoKtVVMLQv', N'lbidnukhdtIgh- qAHOf', N'I_YLUopenHBm', N'KinYuSRSXiVrMm', N'VZhcrgDzlZJv-SgapPaY', N'Ar-cVrb', N'NSDWQzihhHJb', N'Ncrp-GLfgtPGjeMKZh', N'ayj qseHuW', N'eQAXA', '2023-02-12 16:09:09', '2021-04-23 05:01:32'),
  (N'bMNxFV vyH feP', N'qoevo-lMo-gq', N'MiVHPjXknxTN', N'prTE kX-BkUr-CgMW', N'KgAukCRC_Vma', N'SiRqaozsHWcaSkQw Qsa', N'TrVOQyQDBxeFjEVFTu', N'kKhinOyuVvBs', N'gqLmabeV xNan', N'qapdLkiRGo', N'myrtxyBmbLY-Pc', N'BKuJdVsXNrbzA-ttA', N'evDgFQKjSodaiHGm', N'KQiIrZsvuWcEt', '2022-02-04 05:12:37', '2025-01-06 19:53:46'),
  (N'IbmTFLRrr', N'daeav', N'HKEEMdoUB-qMyttiQj', N'zLA-RHM', N'SGBKFLZD L', N'-sGuNBm_xEii', N'UfuiXRzcxSD', N'JeuDuHhbceVxtt', N'xelqxFpERKSIrG cTdj', N'ZRok_', N'_PWdCHXK_yTeEHUWpZjQ', N'xQdMTgYxU', N'CokljlpSizcfDwsj', N'NUTHHXnkdNK Ofirj', '2022-05-29 15:44:24', '2023-04-13 09:49:03');
INSERT INTO [inscriptions] ([created_at], [updated_at]) VALUES
  ('2025-05-02 14:47:45', '2022-03-28 20:11:20'),
  ('2020-12-15 10:16:41', '2024-03-11 19:22:14'),
  ('2021-04-21 20:12:12', '2025-01-12 10:36:54'),
  ('2022-12-09 14:17:15', '2023-06-17 11:27:47'),
  ('2024-02-01 10:38:02', '2024-10-01 16:12:39'),
  ('2021-11-09 22:29:23', '2024-05-13 17:55:06'),
  ('2024-12-25 05:32:28', '2023-08-13 15:06:19'),
  ('2024-09-18 13:15:25', '2022-04-24 07:02:35');
INSERT INTO [invoices] ([contact_id], [business_id], [unpaid_invoice], [transaction_date], [invoice_scheme_id], [invoice_no], [status], [type], [payment_method], [payment_status], [total_amount], [amount_paid], [total_order_quantity], [created_by], [updated_by], [created_at], [updated_at]) VALUES
  (24, 138, 0, '2023-02-10 11:43:40', 584676, N'ESCfrzEonPLUUd', N'hpVCchHn', N'FqaZmhBLsO', N'ZrpqfIHhWWxOCPB-RW_x', N'xdjgGzq', 9242538462631196.0, 6081784409297414.0, 143, 90140, 603072, '2023-03-19 11:23:13', '2021-08-19 02:46:17'),
  (374, 87, 1, '2024-02-09 19:45:06', 796234, N'GAfJPNbJwtaO', N'dmjwoxuvLMUx', N'MClaXTWSu A', N'aOATW', N'_iaMl_j_xKFZpN', 8155932755364593.0, 4638142794540285.0, 49, 467397, 842193, '2021-05-16 11:04:14', '2020-12-31 05:21:36'),
  (399, 724, 0, '2021-06-26 09:34:57', 779286, N'ToOZaoi', N'nQkpwTtomS', N'Uqun BS_vzcYiyETtg_l', N'_zoGkqu', N'lkoNOFjrSI qnKBUV', 7004857787416972.0, 494285270369404.5, 925, 617109, 398360, '2021-02-04 23:54:53', '2024-07-15 11:22:16'),
  (597, 195, 0, '2020-09-02 05:26:42', 366863, N'wObVDeOd', N'AW  xmS', N'KTQIxUQeXxPmO_j', N'TNkJoP', N'prjPrOMvaTfukTUR', 5324481499303082.0, 145584870340302.88, 745, 851742, 437105, '2022-11-15 18:34:54', '2025-02-13 13:57:32'),
  (944, 419, 0, '2023-04-22 05:38:27', 468578, N'YLLn_RlrzTNPzSrMkHL', N'mXHNPKKAGaglTAyKUN', N'-dcutCzrYkV', N'NrtjVJl-IfGmjv', N'f kyzYUMeEPIl-Ck', 6056454141332014.0, 8625075085851204.0, 116, 250759, 454820, '2020-10-28 13:18:41', '2025-05-16 18:20:04'),
  (404, 439, 0, '2022-01-25 17:15:48', 135406, N'oeAw_dhTlr-dsQaVR', N'tgEAaQRNFhm', N'EE-NnHytbqD br jcQI_', N'ZzUtFVHAmxSLRrpaSS', N'YjiyMth', 3243957701624000.5, 6580302068839637.0, 258, 852066, 207853, '2021-09-02 17:31:12', '2024-12-04 18:16:27'),
  (483, 830, 0, '2023-08-02 16:15:45', 789060, N'NJ kje', N'iUxNollraTX H-sObP', N'sKmHpqfAip_WjuPWiGFr', N'biKhmnijEB_bnL', N'YhKgAZuGWc', 3884795401840547.5, 9390282870332506.0, 928, 656049, 536812, '2023-10-18 05:20:01', '2023-06-17 00:25:00'),
  (759, 65, 0, '2025-08-02 09:04:19', 531667, N'zSp_hHRbuGpZ_aNCzL', N'YQsym', N'bFEoVgJ IvNpDDx', N'nwMQSqOcKZuP', N'mkPrROVpm_U', 3274206658663270.0, 191186844798214.56, 590, 787301, 551749, '2023-02-08 06:29:35', '2023-03-22 23:43:39'),
  (250, 224, 0, '2022-01-01 15:38:25', 339672, N'FVfQlEIa Yzyq', N'JxPAZEYJSyGMkz', N'TuhjEXdVggHTnAdz', N'ZUFaYSPUuvtw', N'TvgvrOf-rloSIAetub', 6078443847961458.0, 1249523999151305.2, 654, 684033, 581969, '2022-01-31 03:24:34', '2021-12-16 10:45:53'),
  (820, 364, 0, '2022-11-28 22:25:27', 745627, N'fOagQh', N'wcQtU', N'UkQIgAtuGSUcPV', N'cOUzSovw', N'LFYjzmsT', 2727458578142687.5, 3184230358620613.5, 381, 880058, 578503, '2021-12-26 09:01:27', '2023-02-08 16:12:43'),
  (506, 428, 0, '2023-04-30 03:41:44', 980405, N'wLFijdxchRfyb', N'iBHtR', N'EDFBVhLldiL DzpCCv', N'-xQXCN_tUogRRMm_', N'yCffzkZwmvliM oWJ', 3977930930769997.5, 8623387879487446.0, 589, 681958, 85373, '2025-03-14 00:28:28', '2024-09-08 11:23:22'),
  (653, 599, 0, '2024-08-10 06:40:00', 356488, N'ODOiEwgneXXu', N'jbEen_HKqEQDQJvtO', N'CLqwpN', N'rfglnAt ASl', N'dyKzDSjUazW_rDt', 53889804461441.09, 3405104083609416.0, 726, 16923, 234557, '2024-09-06 17:29:43', '2023-04-28 03:54:18'),
  (13, 128, 1, '2020-08-20 18:50:47', 338594, N'FVcr_EG_CQeioEUV', N'JETpxFz-Hw', N'qjNAwnWYN_LPLdNusE', N'FSCZqUg', N'HBFsSrHKNzhSv_gQPB', 141991527182275.8, 5565430001300540.0, 261, 297980, 994469, '2022-05-15 07:04:30', '2023-09-24 14:38:54'),
  (755, 549, 0, '2023-07-23 08:50:40', 755146, N'adAQ-EcY', N'OBbpTRqWxobcPZSDOmr', N'xjErWQj', N'jIhpmdM', N'pYHdhWJdIFTwXm', 4539377463827866.0, 2972844623537645.0, 901, 182473, 760321, '2024-03-10 11:43:56', '2020-10-14 21:57:38'),
  (26, 951, 0, '2024-03-28 14:38:15', 663303, N'rvRWGye HKOQqiWbyj-', N'IIDGiQb-kWJjwm', N'wYujjbumZIs_Hdoalw', N'wDXhz-Ye', N'TtADjmMaWQstgIx', 6872817876730055.0, 4442153503746497.5, 849, 791078, 81231, '2022-05-27 00:00:32', '2024-11-30 02:35:41'),
  (996, 205, 1, '2021-03-15 23:40:06', 272883, N'pxsDzxIrISUVJYXutX', N'AlaBK oTPsXGyFnDbRl', N'TMEzYhE', N'miYAtUfEkZRlx', N'hswJZGvbhIlLLKaN', 927823037646800.0, 9307424955747722.0, 58, 178928, 396842, '2022-09-21 19:51:49', '2025-08-05 05:11:07'),
  (697, 41, 0, '2021-07-03 22:57:45', 631141, N'CUoKr', N'tanMcBRaCQE-', N'I DlZMF', N'mqudRx', N'QckqqzQXLs', 6279522912884926.0, 8222107902729143.0, 629, 661868, 796867, '2024-08-23 07:46:45', '2023-02-09 03:48:20'),
  (185, 153, 1, '2024-10-22 02:23:40', 515625, N'at_PigrunGkZ', N'pkfnTce_LnJ', N'OGXkizDlpvAgeMsmA', N'sF uyiLC', N'pwvneI_PT', 6341899652561911.0, 2925221314561780.0, 316, 740600, 828262, '2023-12-16 01:27:23', '2020-12-30 00:43:44'),
  (307, 527, 0, '2023-06-30 05:14:38', 410974, N'sFg BJPHdg_', N'DfdIVBMzxqczxbdjmxzU', N'XftWcEDh-q_jfT', N'utpvV', N'mCgGoTq', 8912928172357052.0, 8322978287272771.0, 645, 514840, 734248, '2025-07-31 22:08:04', '2025-07-05 19:52:11'),
  (153, 807, 0, '2021-07-03 07:51:33', 61459, N'CCIxQG', N'NZOMfRNlGLRRjhX', N'B-L-BZdoIpqF-HBjArB', N'UzhvPPd', N'IAbvapu', 9813264163896828.0, 8838286833305801.0, 897, 766473, 793304, '2020-09-30 05:34:04', '2024-11-17 09:03:31'),
  (548, 795, 1, '2021-03-21 06:56:02', 998316, N'S_qbRDBC', N'otQDb', N'GizmEt', N'YsyjiQwcPCqDBkfKJ-', N'VIVnVRuKoaez', 5070309473817162.0, 2547405329739901.5, 454, 64300, 462905, '2021-03-13 18:38:34', '2025-08-18 07:06:03'),
  (132, 371, 1, '2023-06-02 18:19:34', 125354, N'Deqs_Sbm', N'lI Du_OzCmShUg', N'hDyya_', N'CNfRiAewrc', N'zMfaoLmtJhddpmtO', 3402141944326484.5, 7686308516123314.0, 194, 116032, 665955, '2024-09-06 18:17:40', '2023-04-10 10:39:19'),
  (739, 133, 0, '2021-06-05 12:28:55', 454432, N'LGgfxVVXEXWKWfmy', N'QHPMvp _CMjIdypNyQI', N'qHeFZWO_l', N'gnefRuVG kudIsZnrQlf', N'kgSIUlIH', 7477873324135204.0, 1683626069667032.5, 97, 271952, 366736, '2023-04-12 18:16:11', '2024-08-14 03:34:48'),
  (45, 661, 1, '2023-01-14 20:44:31', 957629, N'nlfjuLSwPZsm', N'SrsTnVNll', N'DGPPh', N'vUb-J', N'UVdVISVfzODkp', 9323458654091812.0, 9791597367369200.0, 412, 613265, 256424, '2023-10-20 23:15:24', '2021-06-26 19:17:46'),
  (756, 965, 0, '2024-08-01 08:09:08', 227538, N'euZnsOnxBEYLsews', N'NtAgC', N'xuAmYFJWchHFg', N'foZaazmscLAZglP', N'yZjRYoWyhI', 7685212352220433.0, 3657992887429039.0, 608, 489420, 464348, '2024-02-04 19:12:08', '2023-01-30 00:11:19'),
  (948, 135, 0, '2024-08-11 14:29:44', 556307, N'cCKTbPOtDxwkmWY', N'Xp-nS', N'ObglokKa dYgWhT', N'ZrNprgOwRG', N'ifkfWxegc', 5516442994807242.0, 8897531391500735.0, 1, 734789, 633535, '2025-04-01 04:06:52', '2025-06-12 09:44:42'),
  (352, 949, 0, '2023-12-08 17:02:32', 426947, N'MYT-ovz-gTrdbJUg', N'RwiPZJzazILjZf', N'VtqFUbEqMQUvlisMNqQM', N'zoKhybdCzKsfSAuRJDb', N'wiNwdWZ', 4175019058943211.0, 7569843147913854.0, 345, 311303, 115536, '2024-04-28 06:09:18', '2024-05-29 16:04:36'),
  (539, 646, 1, '2022-07-13 01:15:10', 27454, N'tuyDXwPLGReJO', N'p-iOtWUnmuaIPwfhi', N'qGPTgyjAVYNHxlbvBQA', N'vSKKK', N'jPeKDXrzxzn', 9719767915525588.0, 5308690752683376.0, 381, 428746, 628177, '2021-01-10 14:43:29', '2021-12-22 15:56:02'),
  (792, 539, 1, '2023-12-26 06:38:21', 96256, N'TAYIfoGKYhbiPcIFTtc', N'ILLo-AvPUb', N'VQpeNb', N'DJ_JkuHrjlbGOyw', N'ZdDFs-Hyd', 1797588195914184.8, 7506995231419518.0, 916, 243565, 498152, '2024-12-17 02:26:25', '2021-06-04 19:20:18'),
  (92, 852, 1, '2021-02-01 13:29:58', 717761, N'j_CplPGxx-XFWDLErJq', N'HxkW', N'HAfMHiCjAY', N'yvEBG', N'XTNMXBEjHl', 8194251050242981.0, 3073841937226680.0, 838, 994820, 769444, '2024-07-22 21:19:23', '2024-11-25 05:55:28'),
  (747, 838, 1, '2024-12-11 04:42:34', 966893, N'qkHIFG', N'uZKHzCSjSs', N'MwshOxEe', N'BkzKyD-lZIKixFBYWwv_', N'eqBxMLGoermdMMw', 2288161006443024.5, 1027868355928868.1, 591, 916456, 882629, '2022-08-26 23:14:52', '2021-07-15 17:04:38'),
  (894, 663, 1, '2022-10-02 02:24:16', 48993, N'QGUyXYxqIn oQGJ', N'BFgMgF', N'lxfG_QBNDVvQAy', N'g-XCPxUit_ RcNDSwHyg', N'PXKorEqQQLx', 8900588679505244.0, 9881539050383062.0, 305, 320683, 905101, '2021-03-07 18:51:24', '2025-03-23 20:26:57'),
  (866, 367, 0, '2020-09-19 17:10:17', 775064, N'cmaFXPTMHtpWyo-rHz', N'uUBuIGE', N's bOqJzMVpI', N'emEbCHEboQm d', N'rehGjyO', 564779745893738.8, 6931996870287052.0, 797, 407337, 552990, '2022-01-21 20:24:04', '2021-04-28 18:24:02'),
  (486, 635, 1, '2024-03-16 04:02:31', 286618, N'FbXvFZtkawcPdIcac', N'HPjAaSz', N'dhhNMaYy-I', N'aVUMcLdZtkpjAVO_AoTr', N'ztvcOOqXcTELRsZj', 6442508053122282.0, 8473794430332239.0, 145, 131888, 16091, '2022-01-19 22:27:25', '2021-03-03 01:11:04'),
  (982, 234, 1, '2021-09-29 04:12:59', 27226, N'AqRpvKnjxAhPGY_ mS', N'chYvD-ZEttfOABjhsSuU', N'RPH SOrEPfBOWP', N'AUgFRuyJkR-O', N'I_XeXqQhxvQbfOsvD', 138745457830634.64, 2819651043009035.0, 17, 902185, 98457, '2024-10-05 21:04:19', '2022-04-01 16:12:26'),
  (657, 233, 1, '2023-06-24 14:10:32', 614341, N'gOkHOAS', N'ohWHHnN', N'vCcfAbgBfQNNVTU', N'KtkwSpuWixpCaNt', N'b-TywN-LL', 9006915712657272.0, 6513706643844835.0, 288, 288141, 3822, '2025-04-22 23:41:03', '2020-09-26 22:17:18'),
  (749, 600, 1, '2025-05-25 20:23:35', 635853, N'PQHi hPvZ', N'_ZLXPSUBmaGpMS', N'EiQ vhIGomJOLvpt Lfc', N'ZyoMIVAsLo', N'sqLNPFaCvusxmIIk', 1558087113582934.5, 6474061588020099.0, 279, 31655, 592806, '2021-08-30 16:52:55', '2024-06-05 22:43:23'),
  (35, 794, 1, '2024-10-06 05:28:28', 898579, N'nHjBFHjJkCwLHC', N'HcDKJWec-whSogtBL', N'L-NonOGyVR', N'qwGFkoyYpPy', N'HvVTGsPYL', 5448234682823614.0, 1057716371179354.6, 656, 270525, 884248, '2023-10-21 14:51:48', '2024-10-11 18:22:05'),
  (370, 541, 1, '2022-07-15 16:42:40', 938782, N'IHbxdSDtughvlsD eH', N'VfZbPcbWmadpvQi_QEu', N'DOlHzoir', N'Z-JFXSGpBWcTRc', N'MGtUPSxPw', 7329547743824595.0, 1836386234027608.2, 517, 74161, 310066, '2024-01-26 23:14:20', '2021-06-29 02:23:45'),
  (477, 895, 0, '2024-08-18 12:49:49', 32566, N'JKhnGJF', N'hFRiRIpza', N'MyB_IGWXrXqIFLsNpf', N'mmiibA_lrTJbDkDsnv-', N'yKn_YXiGFVqSpXsi', 8704691976229457.0, 522180867594574.94, 832, 346764, 17631, '2022-01-08 12:12:00', '2023-01-26 15:32:37');
INSERT INTO [invoice_details] ([invoice_id], [departement_id], [acte_id], [examen_id], [designation], [quantite], [payment_method], [payment_type], [transaction_no], [card_transaction_number], [card_number], [card_type], [card_holder_name], [card_month], [card_year], [card_security], [cheque_number], [bank_account_number], [paid_on], [created_by], [updated_by], [note], [document], [payment_ref_no], [paid_through_link], [gateway], [is_advance], [is_paid], [account_id], [payment_for], [parent_id], [montant], [tarif_differencie], [montant_total], [created_at], [updated_at]) VALUES
  (58051, 855099, 611711, 871634, N'wcJOn', 728, N'wdm_-CZoxaMlPy', N'vSRU_PkBeE', N'fx_qfHIPiTlRGCcd', N'enBWPfnML', N'njnLRGTC-T', N'RPsvg_kjDAPRQ', N'-C IA', N'aCSzssPQiWaDcFFgoP', N'RKNjUppflJNLGuhf', N'VRawr', N'megPkyiwX', N'rGMrzzTFtyTuvbxCuQe', '2025-06-22 19:18:33', 279714, 243445, N'ivrGjOuQaIxVW', N'fxtYKqC', N'VaRsB_xnq-kvtPjj', 0, N'TjAakKEPVSVs', 0, 1, 468, 609, 435, 6916534813028946.0, 8716439875690293.0, 5545617151978510.0, '2022-04-26 16:09:06', '2022-05-25 23:15:58'),
  (795459, 361355, 170961, 37630, N'HJMDzffd', 701, N'-Bmck HBBU PPwpxSQJ', N'J-_L Jw', N'NgQCkfqHzJIkOpJTYww', N'QwgbXQLp', N'zBCpdG IaqIQa', N'lUFXi_F', N'BacfWhfxB-ApO', N'VZebUGrI', N'vDSMPmMRYo--Hgjq', N'gYsFz', N'LzrJqBf-vNgbhtukK', N'PZgDQmVarmRgXemG_Cu', '2020-09-11 13:48:33', 951646, 591477, N'eOaUATgEovS', N'QNNFhEECkhBysdYf', N'luKvmqxrDNWEiIVRb', 0, N'juKw BgzUIM Jm_FQubg', 1, 0, 772, 690, 48, 9134809821123416.0, 1691014729231108.5, 275606121870873.84, '2022-09-01 23:03:56', '2024-01-06 10:48:14'),
  (916108, 290201, 750221, 425012, N'SEzeVOYcxi FlmRF', 836, N'tmutEEJRdhulB Qa', N'sIyKTNnvGHmKFUJWrCMh', N'zuKPfstqwb_YolTmh', N'qOGPUKhWq', N'FqiRvGKgxY', N'utvRIjZEnDSlbqhBG', N'MSrkrhHubsH', N'aybzFa', N'zirbGiJn-nOdbRKlEnoH', N'jJM-l', N'Fb jTzRFkeIkwF-', N'ZxCFoUh', '2024-09-20 13:23:16', 344754, 252344, N'oMCIXyPMcozh _Hrp', N'IkkZLGPmnALeLvCgEJ', N'adSmbOxytqf', 1, N'JLRF_tHjQ IDuPIVn', 0, 0, 560, 909, 851, 6550734359322266.0, 6710147307701477.0, 181649010305685.6, '2021-09-27 15:48:46', '2021-05-16 21:26:54'),
  (342505, 740660, 515984, 251251, N'aInSAg_Uy', 720, N'jGELsEofe_', N'LG id', N'H-hAgempBlJJR', N'EYPdgxIVMWAEgKAw', N'PBPp_TakQ-', N'ANHcYniPRCU nKVUKW', N'BylKbKenDse-kIYnUL', N'QCwQZyF', N'WvcRIliSa-T', N'FQRSX', N'bgLiqKRb_CrG', N'rgJnP nwAD', '2021-11-20 14:03:13', 32577, 496932, N'ZPLbgrT', N'oUrViDlldHKZxIRaNbQg', N'YeD-sQIYLGAiibAI', 1, N'pArpOIMreXxkpwLHXlPd', 0, 0, 72, 404, 733, 7640408828892439.0, 3683732441586516.0, 1055138510675540.6, '2021-03-25 21:25:14', '2024-07-29 07:36:36'),
  (275493, 515918, 462452, 792445, N'pQsnRBzOAs', 449, N'OBvZPanpwbryGX', N'S-guSi', N'YzwcNZzcpcD -xSGvAM', N'-WSNPAoi  l', N'MqUOvSFy', N'PqnpMLXFelpA', N'cBhMo CT_QUD', N'zhNG-E', N'PfJDZR', N'AyPLK', N'rPfdv_vyFWR', N'qiCZricOPC', '2024-12-30 10:35:03', 945604, 309972, N'ODhWDQemC_', N'zZtJA CVWhq oAr', N'-yfDuMaGGOES', 0, N'jxgHJk', 0, 1, 47, 172, 770, 3258148797743293.0, 2498537990137690.5, 2620897985354584.5, '2021-03-23 05:24:14', '2021-08-11 01:53:31'),
  (1204, 180060, 183076, 34968, N'oKieAbO', 903, N'jHNmDaVMU', N'lAppjKmoQd-ajZnkISuk', N'jracy-ii', N'gEtVHzcbzrZ_L', N'qDSBMbOkLa', N'DzLTMLb Y', N'ucRJlb-OkXXBU', N'DJk RNFkV', N'nKHmSFsuoCrdeVl', N'IrWNc', N'AsmjPaAYvNohjqHp', N'CMdyOuX-Xt', '2023-07-03 23:59:09', 473159, 249430, N'QJVvrhn-ioBye', N'l-xlocQX_RJeMQDnRV', N'TOqNtvjXaqw', 0, N'jPdwkARFmHPXG', 0, 1, 787, 388, 742, 1136768925833960.8, 1204616400028549.8, 6930917914828464.0, '2024-09-05 07:03:13', '2023-11-25 21:14:11'),
  (239598, 692223, 829485, 696297, N'sTcbZk iaTkTBXD', 573, N'LxgkEVa_uFbTkEmObX', N'H_lddaQcnLa-', N'hdJddKl', N'hXam_I-HEG', N'vhsgDGL-', N'BxsdZfZzlV', N'iMwRxxoGEdKELf', N'QtklTVdxJQmiTHo', N'eSxHEvtqYNznlq_jszzd', N'FlMqG', N'jlb-NbagVsoYg', N'eBPdMC', '2020-11-08 22:47:22', 773254, 451682, N'PcqUpakrgNnwcGTZaxr', N'noXwFsewhJ', N'Wp qlRIO', 0, N'fQrCUpKVKauoDLPT', 0, 1, 675, 917, 343, 8240765593534860.0, 1495012309565007.0, 7160090542061696.0, '2023-12-05 14:55:40', '2025-04-25 18:10:15'),
  (316872, 679880, 875641, 104290, N'BiUJlyhZ', 722, N'_zjqoOsQhKf', N'QOmSWKuKojLxtrUVbvU', N'rXOypRifJlCbaWW', N'X _ViBJ-Ag-cJXXtt', N'AcOFFMG-LHKyRkHAFsno', N'TNPJVMHZv', N'uWYJGdtKP', N'SkwkwUuJbpThYuoMV', N'ZneUmenw_ietUGv', N'veCrp', N'M lOAif', N'XSpgtxClBPxtluGQBVz', '2020-08-30 03:56:13', 859310, 123036, N'zSghBaIh bFtQ', N'kwtO-IzhP_WVYvc', N'uhfdOWXIb-mazRhw', 1, N'fduDIDdpODgnWhfWLtOi', 1, 0, 46, 63, 203, 4187818156106734.0, 3854195474105339.5, 4310701185275000.0, '2020-09-17 19:01:08', '2024-04-30 06:02:40'),
  (219983, 159315, 582583, 737060, N'NHJeWwLrTQvBVdzKOvuP', 735, N'vlWrlESu', N'MbgyZO', N'vmORzqrX', N'Weykoab-pabt', N'XPkcHWkmua-NyGIV', N'efsLzmSGAFAI', N'qreQXjhMYeEW', N'yjjOhF', N'iWAUamjaaWUnQK', N'kNhvt', N'wMtSjGpXL', N'hjhcvLFa', '2021-05-13 22:36:39', 195574, 717454, N'RrjSmzaSjuAFp', N'SkMhCgkpUl', N'MUu vt', 0, N'royTGOXIAKg', 1, 0, 221, 29, 402, 7940916002499339.0, 3721489895854964.5, 8031419545152825.0, '2025-07-21 12:02:41', '2022-04-30 20:12:03'),
  (20718, 762825, 28401, 759579, N'pGREuP', 340, N'ZCyforlJiomr_rp bS', N'EftlFiUZawfV', N'MwsYgsKhWBh', N'fjHqju_', N'PfMz lpXiOzVIAjxf-', N'DEjEzQMawxw', N'GsQHn', N'an_rtAMr', N'dCsMG-PSldM', N'XPzGe', N'DGGHTN-aW', N'PljzNKw', '2021-05-22 01:38:03', 990451, 920456, N'_ AkMW', N'tjbxlb mcBVvF_', N'YjJFwTnn', 1, N'PXJXb', 0, 0, 448, 820, 58, 8191754364473760.0, 3085110322968480.5, 5633100442190381.0, '2024-11-06 15:34:44', '2022-11-02 11:05:22'),
  (750259, 822610, 902672, 848356, N'hrlvqVS V', 550, N'DgJYLJbsuD', N'LlkKBkwJStWEObERj', N'EB MORLS', N'NdwocqrYoX-fPNDt', N'zpYP-N', N'NdEacNCsdDppKFnu', N'XbXLa-Lm', N'fHASG-pQLHR', N'KeqSyNpzyUTyoLe', N'cLhGS', N'EoOkX', N'HLXOwhrP', '2021-03-07 12:26:48', 643520, 513281, N'r-HzcCRfDWU', N'usxXYbFOUxTzGQBJbsXF', N'SKdXTdfZOmJYSIxKCRID', 0, N'pNlehFd', 1, 1, 399, 386, 604, 3899502091601235.5, 9740072251337104.0, 2585263174066124.5, '2024-09-01 17:42:18', '2025-07-24 13:34:43'),
  (861840, 478212, 701733, 593212, N'GLizMrHfoQp', 750, N'iLQwV_ rOdOQbwVs', N'obtigsUUp fSAVA', N'hJLLXNqbmzQ Uqci', N'BGF- JO', N'nlykhbboQ_I', N'GNrEiKh-vxguQlg', N'ASjnTbIfXOD', N'TzbEBfiri', N'tqevzI', N'_UP d', N'jERMKNOKsKSNr_YOdYWh', N'yBlXZZKoWW', '2023-11-18 00:21:32', 471691, 264130, N'GPAxAU', N'bYkVlL', N'WTFbotLmwVxnrhE', 1, N'EMSHFz', 1, 0, 910, 429, 745, 5522721317918092.0, 6103200847201080.0, 9265997827039546.0, '2023-09-07 11:09:30', '2022-03-24 23:54:01'),
  (46414, 614446, 888723, 555213, N'ySpsFCDqgw_tWY', 440, N'OZntRtThNcf', N'JblLetm-Kq', N'XdCqGdevx', N'kdwyuikDfMiVAOJbDxc', N'KyDaGp', N'HHTHaBKZDpX', N'HiGEGRNOUNR', N'RCjmvlJ', N'w_gmBMXM', N'GFgTb', N'ln_YL', N'_C-broenswYXSxeAnHG', '2024-12-05 16:49:27', 791176, 254056, N'GNNCRYUhcx', N'uqSNIZeheWIaNJfAB R', N'UXIKJ', 0, N'jGhtEgrp', 1, 0, 110, 803, 93, 3390227617004888.5, 6317127889653120.0, 291382067482292.0, '2022-05-09 14:05:55', '2022-04-24 04:13:29'),
  (979414, 356712, 642398, 996109, N'-LddDcvunbNBiUFCfJ', 430, N'ImdhCFBlzdNRqUNjTE', N'xpEMxWPzN AJkz', N'TzMjJ', N'thCNO', N'JIRUncpovdbnCyzc', N'l Huud', N'JrRCXZfaAHP', N'mXeDpBC-_jpSfdRhTbNs', N'-KDwQgpbgka-Fob-', N'ymsGh', N'bWvbiXD', N'ZvPCYDXlB', '2021-05-06 17:34:07', 897997, 633915, N'ITtXpyhSkFmwJwZ', N'smtHjjH a', N'CykQnykpKfATgYp', 1, N'jtIQU', 1, 1, 801, 775, 181, 3366381077980239.5, 3909446933428822.0, 9456272158484248.0, '2021-01-27 20:43:41', '2025-02-07 19:45:53'),
  (561868, 42231, 410908, 729810, N'w_-EYjYLG O', 613, N'cYwtfpD_V', N'IlNglCfzso', N'OzNvZPJd', N'YAHqeW', N'ZBckOd_', N'kjgWiwI', N'YZFXjpHDZtGsGK', N'WPAKGaSikvcK', N'nxQUDTQJ', N'nESrl', N'tYfuWEbK', N'ihdWrzZavNILKkzh', '2021-07-29 14:48:48', 25594, 705803, N'-sUFVQAQSZ gS', N'KXrmsawdfo XXA', N'-Mt_RXQx', 1, N'ZqSSxkouxWGMDiL', 1, 1, 4, 359, 840, 3647633193982147.0, 1470058953786980.2, 685109503506145.0, '2020-08-30 12:33:38', '2025-01-20 14:33:49'),
  (510308, 673884, 908076, 91674, N'taY-NKklNRRmsAz', 172, N'kxUsJowrYxTMLuDlBnt', N'Z vQadjpRYbMUPDk', N'RDXIkIzyfKGiGuNbr', N'AidKOt', N'Zshaj oTWbgY', N'dVhYepiyppM', N'GtLABAHzEmrVGhwRpK', N'lkfMaqm', N'cuAKdrWpAYStSUqqU', N'WNqti', N'TeaACaN', N'xnOcok', '2024-02-14 21:00:35', 812036, 931561, N'vgOJDgc', N'bR-trBqWWZzoI', N'jHtcetUqV', 1, N'SPQvOF', 0, 1, 519, 64, 341, 9494647530182882.0, 9574667011887334.0, 1096085863649800.5, '2022-09-15 03:41:47', '2021-07-11 11:25:14'),
  (536168, 631455, 750732, 167755, N'wcWaAQRK-kgvmNPbRau', 942, N'TATET', N'XGOWhX CN-WITK', N'mROocp', N'EwXPQ-VGgXnS', N'Sg-if', N'bNLTssLuDeIenqhdlMb', N'hyKg-TIWvnAedAFbDz', N'EaluTHNh_iEZgEEpY', N'zIPuTPFIWe', N'YwViG', N'eA QSJZBZoeGwx', N'QuADyTFIC', '2020-08-28 22:32:09', 336901, 943933, N'hfBQVyMffwnsbO', N'jXtiB-MXNAQLYBK', N'AHBNYK adDJlGZhz aq', 0, N'FLTPBrQcsK E', 0, 0, 565, 241, 313, 949491560668529.5, 2383836065993551.0, 8756273917916361.0, '2021-04-03 07:09:48', '2023-10-12 22:19:19'),
  (373691, 508248, 788844, 668630, N'deIoaRQEGtNbGlWqwyaR', 859, N'ojbhmcjY YimKX', N'PwrdpxCfo_mW', N'qFkODJeiYhMyP', N'O-YSEo xfuQsKyd', N'BdCTBArFfjrnsUVzP', N'qHusLDvgRv-F', N'bu-Goj', N'PLEOpzdBoVdeC-MHOj', N'VcNvNlF', N'TVolI', N'NUSy JoquheB_Se', N'ywfuP', '2021-06-08 03:59:12', 227242, 540214, N'WkkAjNXmy', N'GJo rUNNy_dvjcU', N'IIjujy RDRMeVm', 1, N'wGzKscN', 1, 1, 906, 80, 542, 5309877902263951.0, 1376249163988739.8, 6109245276510047.0, '2024-08-10 01:10:11', '2025-03-05 19:48:16'),
  (6227, 942295, 804462, 520990, N'AgxqwTHVaQOBgHCdb', 83, N'AuejlaeAmxC', N'MgpztPCl_RZvLJ wy', N'lZgTkiGMHunXu', N'gqpcgOZKqlzD', N'zmjuZZgwpfcT', N'PobIbsuofcXck', N'NcsCxsSYEBMfDgo', N'KuePGrA LSgEjGtE', N'jChNMjF', N'YtfM', N'I-m pondBxwQNZZCXzep', N'viTiaSji-CNBgQFD', '2020-11-14 06:20:32', 35567, 91603, N'IcJwXU _vS', N'ClPLrIJ', N'oTShfKGKBJpx', 1, N'xiRuPz', 1, 0, 760, 903, 396, 240639867806613.5, 3415646657076855.0, 3072611086220670.0, '2022-05-29 14:37:04', '2021-10-20 07:41:03'),
  (920486, 636641, 11327, 51725, N'aZKevFRlFuaWXBS', 254, N'kjMIlXkvawpGzumfim', N'JrHSqjdKqfHrsrB', N'Xcr_ ltvUF', N'lCmXfZpQ_Nk TfgPGcG', N'QLoIcDrnHv', N'-lMcoifQBvh uxBO_Dp', N'CyedDiYCDQU', N'UAOvPVMFpjsAbxQEWWcw', N'iSfgM', N'vaUXx', N'zTHkvXeDXdO', N'rP wPUxP-', '2021-11-21 20:06:39', 393550, 926962, N'qBKR_pstmlWikJmC-k', N'malRFnl', N'YbttJsaPb', 0, N'wntsrz l kFUZ', 0, 0, 506, 158, 496, 1761840006414504.5, 7732118907743496.0, 1973970402954840.0, '2024-08-12 13:06:39', '2024-06-12 23:39:30');
INSERT INTO [invoice_items] ([product_id], [price_per_unit], [invoice_id], [quantity], [price], [created_by], [updated_by], [created_at], [updated_at]) VALUES
  (175501, 6830368118070088.0, 278513, 885, 9201126659838070.0, N'sp FyZjOJ jvR', N'KMtZJsJkVYFwKyxx', '2025-04-29 09:03:22', '2024-10-28 06:00:54'),
  (454694, 7734317025544578.0, 940173, 647, 7474102745903738.0, N'gpbaGZWRY Cfd', N'jovXMPhzKnWgGlQ_qV', '2022-12-27 19:54:51', '2023-12-05 00:31:33'),
  (706413, 2874067394478521.0, 337877, 865, 8609695240801721.0, N'QQvzSAalQbFBPjrZU', N'fpUdLAh_WjDUosT', '2025-01-27 13:28:57', '2023-06-22 04:49:13'),
  (864742, 4807670399942461.0, 628212, 787, 6565980934297149.0, N'eXJsStkBuRrLOu', N'CcxEZwrNsfvG', '2024-07-24 14:40:02', '2023-04-01 19:19:16'),
  (284648, 5963498363062931.0, 357573, 683, 117989940428387.95, N'kUMveVIVx', N'yGfeySuwa-SHMhtMd_H', '2024-05-22 09:18:30', '2024-03-23 18:06:43'),
  (634583, 5642576226404713.0, 850409, 381, 4651524296306118.0, N'dtUGQ', N'XKcHQaTjy FUGjkqKa', '2022-08-28 09:52:56', '2023-04-11 07:47:52'),
  (137716, 7774046051702925.0, 524057, 276, 9036342621003396.0, N'GsDukkGYexveuzl-OtN', N'VFiLMuZUS-Si', '2020-12-05 19:26:43', '2022-12-15 02:09:56'),
  (216633, 341351039337068.9, 424517, 59, 2884555394890077.0, N'_oVFxNMOWVESVlKGty', N'GZvDAbxbQ_YuExMW', '2025-07-13 18:34:45', '2024-08-24 12:06:07'),
  (377927, 7112758919357737.0, 771235, 635, 9831823942296680.0, N'IHXOPQg', N'cwrG-qAUwlLfS', '2025-03-07 13:25:19', '2025-08-12 20:15:59'),
  (204646, 3608558291373048.5, 54230, 375, 5461848743187110.0, N'dCy IiR auq', N'zbjWrriTh', '2021-06-05 20:21:46', '2024-10-01 03:30:38'),
  (752613, 2284368779554729.5, 924755, 516, 2815708116773545.5, N'jUCqpTZSAJ UtIxcC', N'epSti', '2022-02-14 01:07:21', '2022-07-29 08:20:26'),
  (340069, 7257159748443583.0, 781939, 25, 2765202843134913.0, N'xFUTh', N'-QBic', '2024-12-21 02:50:36', '2020-11-30 17:41:41'),
  (160176, 29632457591048.93, 681325, 106, 8916250322106616.0, N'fjxGGAScsMPza', N'PkucNkRbh', '2021-07-13 02:48:44', '2025-03-31 03:41:32'),
  (526372, 3251704226138147.0, 171512, 405, 850436500447913.1, N'HXSiFciTy', N'ixKiXCLF', '2024-02-02 07:37:26', '2020-09-03 14:37:10'),
  (263496, 455049736971251.4, 472951, 113, 5329162468435383.0, N'XaYhadGQrL-', N'jvqcaVVnxQhXQUJG', '2022-06-10 03:49:39', '2022-12-30 00:46:59'),
  (783523, 3162481970543986.5, 402993, 974, 8351547143145777.0, N'CGQLDNjySWQULO', N'fzPXSUf', '2024-02-17 02:11:37', '2022-10-31 14:44:29'),
  (408133, 3819614007545862.0, 703022, 643, 2167800455109954.0, N'BoQTVfGIiMCG PXDyI', N'sxHOtG-uf', '2023-12-27 10:47:25', '2024-04-18 07:20:48'),
  (931175, 1822509015826433.5, 446814, 229, 3433644357302755.5, N'sSGWsvltb wrYhA', N'XmhqlhQTXtD', '2022-02-25 03:32:28', '2022-08-28 01:33:36'),
  (838374, 5175831767343939.0, 907814, 195, 1572416607323808.8, N'uvtrak', N'sfWlqoja VvHLOkbUVEN', '2020-10-07 03:08:16', '2022-11-08 22:48:31'),
  (680384, 1497960417334922.5, 978565, 842, 8524022450780876.0, N'gRVpyPDAmtOHxiIuRj', N'GanSRgjbhoVkVEV', '2024-01-07 21:45:33', '2024-12-30 08:21:28'),
  (354724, 3685594333031569.0, 597376, 832, 4044082933829710.0, N'eVfEFUJ-ba', N'GhduKnMbZp', '2021-02-06 00:26:57', '2023-11-07 03:05:09'),
  (326973, 8016464167590709.0, 128809, 386, 4994134282062603.0, N'kVftK', N'ZOWNdYDGmr', '2020-08-23 21:09:56', '2021-06-28 19:07:27'),
  (20621, 4618202258583726.0, 701980, 137, 3506072884538861.0, N'ihZcL', N'LndOBSaGrmGOj-N', '2021-05-29 05:08:18', '2022-09-16 19:20:57'),
  (392167, 8960178583204189.0, 821277, 606, 7809486748710378.0, N'_fRPhG-XEjDrl', N'oZfDwB emBm', '2021-08-14 20:43:05', '2021-08-09 15:51:07'),
  (380780, 5921105661708967.0, 399258, 664, 6079294368632309.0, N'OxtMReVDJdIJvvFz', N'qhVTBlxohBrb', '2022-02-08 03:34:08', '2022-06-03 19:40:46'),
  (472721, 2324076859195407.5, 227965, 983, 9122568223904694.0, N'xTSDrgRiNZJBb', N'EEKWb_vqjuYo', '2021-05-05 11:25:31', '2024-09-07 22:51:12'),
  (666912, 235064249727018.34, 135630, 506, 4630470343306031.0, N'lg O_UXRDQGJP FUjIXD', N'Xyvad_Onf', '2022-02-03 05:17:38', '2022-05-31 11:43:07'),
  (391172, 8704652211320004.0, 538036, 766, 9562048482194668.0, N'AkuoNyFhJnjXnLvmaj', N'vvKwljn', '2022-08-17 15:59:23', '2021-07-14 15:56:46'),
  (354820, 5975291856177430.0, 694410, 703, 794669833918320.0, N'wSfIUv', N'PEYKEY', '2021-09-12 22:24:00', '2022-01-11 21:24:18'),
  (532796, 9432169430053286.0, 51982, 751, 5577850459448057.0, N'JSGCaHMJ', N'dcdoHJ-ONggVoic', '2022-08-09 23:40:54', '2024-01-13 03:43:41'),
  (22968, 5626869901667977.0, 30504, 196, 2267294115811901.0, N'KzekzL aCiYUG', N'EMpSs-', '2023-02-14 04:43:39', '2024-04-16 12:25:41'),
  (635014, 3776666790770206.5, 2307, 655, 5788832613306161.0, N'knfKWp', N'LU-OVURG drr_zaaFKf', '2022-10-14 03:29:25', '2025-08-16 01:51:00'),
  (178888, 2156875903185051.5, 649294, 709, 7180671815599767.0, N'dlFnQYdYt_', N'H_cvuXcgtroaggeOBFbY', '2023-07-29 00:58:01', '2021-07-13 05:38:10'),
  (143997, 6859907885900561.0, 59970, 486, 3134962189594007.0, N'mwWRsRkVpBxQnXE', N'xIqMgiOJlyY tltK', '2021-05-01 04:01:25', '2022-12-04 01:00:50'),
  (819114, 5160841668706245.0, 897704, 636, 3986211278622107.0, N'-zuPYIvqUCo NJ', N'PafBhlEMjtly', '2021-09-27 00:09:45', '2025-01-07 13:00:53'),
  (892204, 795872588904667.0, 865899, 329, 8348530146859277.0, N'ChAIK', N'njXWhFhfr', '2023-11-10 14:41:00', '2024-08-02 13:14:12'),
  (331967, 2093684745496095.0, 34283, 94, 9461270072653558.0, N'dvwCVc-grp QbjXC-TzC', N'QGirXrar', '2021-11-02 18:14:06', '2025-03-01 04:35:52'),
  (236034, 1285134125754017.2, 177294, 27, 412366658847918.0, N'rfcGZsiYMDMSAEz', N'iApUoTnhmkwA l', '2021-05-11 14:57:09', '2022-02-09 21:29:22'),
  (662669, 4653903638916086.0, 86832, 916, 8769170398000719.0, N'aTvxgBQXiVMDDY', N'NezhRWWAL', '2022-07-06 03:41:27', '2023-01-04 03:32:10'),
  (603386, 8282362700839626.0, 91474, 472, 8775752507791288.0, N'qJCOT-GldE_QL_vUT', N'dFvEbrYOX', '2023-11-27 15:03:45', '2022-12-23 01:04:28');
INSERT INTO [invoice_layouts] ([name], [header_text], [invoice_no_prefix], [invoice_heading], [sub_total_label], [discount_label], [tax_label], [total_label], [paid_label], [logo], [total_due_label], [cat_code_label], [show_logo], [show_business_name], [show_location_name], [show_landmark], [show_city], [show_state], [show_zip_code], [show_country], [show_mobile_number], [show_alternate_number], [show_email], [show_tax_1], [show_tax_2], [show_barcode], [show_payments], [show_customer], [highlight_color], [customer_label], [footer_text], [is_default], [business_id], [sub_heading_line1], [client_tax_label], [sub_heading_line2], [sub_heading_line3], [sub_heading_line4], [sub_heading_line5], [table_product_label], [table_qty_label], [table_unit_price_label], [table_subtotal_label], [show_client_id], [client_id_label], [date_label], [show_time], [show_brand], [show_sku], [show_cat_code], [show_sale_description], [show_letter_head], [letter_head], [commission_agent_label], [show_commission_agent], [show_qr_code], [qr_code_fields], [round_off_label], [change_return_label], [common_settings], [show_reward_point], [show_image], [date_time_format], [show_previous_bal], [prev_bal_label], [cn_amount_label], [table_tax_headings], [product_custom_fields], [contact_custom_fields], [location_custom_fields], [show_expiry], [show_lot], [sales_person_label], [show_sales_person], [design], [cn_heading], [cn_no_label], [quotation_heading], [invoice_heading_paid], [invoice_heading_not_paid], [quotation_no_prefix], [module_info], [created_at], [updated_at]) VALUES
  (N'Q_DfunWdmFA', N'RhFrZGgTADq', N'gYjhVIlDjwK_', N'DosQFumPgEZJsS_f B', N'DUvVyb-MgvDUS', N'rgxDNBhQqWjJlori', N'dNCHGBijpR', N'_o_rUljhoPjTJAI', N'SLQFnkuKJOLydNKYTpXM', N'FwIxNGMptqpjVG', N'X_gMqR', N'NsxeC', 1, 0, 0, 1, 0, 1, 1, 1, 1, 0, 1, 0, 1, 0, 0, 1, N'aC AJkBoCs', N'byG-T_uKBq', N'xZiZevEjsINvyTzurB', 1, 220, N'RMnaVCaarzAAdU-X SxR', N'iSAVg-YiZt', N'hmbvkazrTbUKeNPfUW C', N'zBKou', N'GMgTPbkYTf_hqU', N'LfuuY', N'zFmHnoMS', N'a-sN HmuA_plEEdnzeZ', N'jGGZ PUFviuD', N'ZI EwQlzrpCMRFTYZL', 1, N'ivtigDfW M-hAHr', N'KJk_VynXtSLsPu', 0, 1, 0, 1, 1, 1, N'rMOvTh', N'TqhafaJ', 1, 0, N'KRbwNYtCgmFmLiy S', N'BLxXR_UNGePHmXETa', N'LrFVoTgXlWY', N'rNFcFwgsKOZFAF', 1, 0, N'jIzFqU', 0, N'YbDpWfLHxc-rEIJi_v', N'yRAglIOkWtd-HjJY', N'UWiCOWscytFZ cIHCcq', N'KfPAQbESmbZjES', N'PIFLqmjVawcbcXXM', N'QnyvMBVa FvrY', 1, 1, N'lnnBaAXSLq', 0, N'CiLRBLSQokgviK', N'KzfVZCOcGHw rIVT', N'JGiBrMZQ', N'RLqfS', N'xtEitBnncW', N'tvISUs-aLQV', N'mcGKspOVBAATs', N'RcvtREgYLKzhoWSRR- c', '2024-05-08 05:09:58', '2023-09-14 23:47:20'),
  (N'SdEhobVGbjQPGEHukFSi', N'tb-AKvmxTeFfD', N'hJGijeph', N'joyUeni PXWI-cbcWgM', N'MtaHOSEqNwbnnqA', N'bxDCmzQrhsdllyMwBZl', N'NrG-s', N'fXUJdjHGjZnKGIWsm', N'E_igeGnOPeJSvfSEuPpc', N'kRbqGT zY- IgJjdXrei', N'vcA_LJP_p', N'eZqSPSrxQO', 1, 1, 0, 0, 1, 1, 1, 0, 1, 0, 0, 1, 0, 1, 1, 1, N'mNiXfIg', N'gRis-zqQHQ', N'CIIMNd', 1, 55, N'FpbKJpNkllHjhOaihwj', N'rR HthDTTgK', N'ikvCfCCMfGwc', N'tgMDSFoibnzaEh-sL', N'c-nC-HTqXrxEOUAQDBR', N'hVshSnRgTNl', N'llUoLtVFXQI', N'Ycdwb', N'Chx-yQznyISuBHHQdY', N'cLO_M_M', 1, N'qIRlNdrxaxF', N'iVAOzmdwAjR', 1, 1, 0, 0, 0, 1, N'LXgrt', N'QPIHqv Inf', 1, 0, N'MyWQWcNgmnaFDk', N'ViMjGDwdswoYWTZRj', N'tIxZRTG', N'iTuDzN', 1, 0, N'jwgWbIMABtfDkISJuRxf', 1, N'oM _rwmrwkn HVx', N'hsAheTfdUx', N'MTDVKVTrlkVpYrgp', N'tkASkGNUI', N'yuhNwAuTrwS', N'aowzyhNFmKUNyZqeE_', 1, 1, N'aECMqLgladmixGPyymE', 0, N'fAXKTHEbKe', N'TBASDhEnJ', N'nnEMFgnbY', N'OEeQwfnnjB', N'fIFOmY', N'pFy-lEXtkdIVzdclgN', N'jRt ezPs', N'PDNAHIkqIMpim', '2021-05-01 01:42:02', '2024-06-10 09:22:41'),
  (N'-ITtRGEUqhxjZ', N'XngtD', N'tRHVHbYyfEtFpGpV', N'YBNsFhGZnsrNNHwys', N'jwxp UBuRTZ_Rxuza_v', N'mmHLViugAW', N'oTO bAIo', N'T OlMiHv', N'pq fmv', N'FVczDf', N'fukxY-TTXJUylhF_', N'aGEXGe', 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, 1, 0, 1, 0, 1, 1, N'NHywTNJLI', N'U-ULlRdJwH', N'rWuZvYamOg', 1, 813, N'cEU-pnwMVLI', N'DO-weiTVlUw mFA', N'HjTJjRq_f-dSr_', N'bQCf-PcfV', N'AooLgHVcOXEwSOFy', N'sNnQlj_KZmmcQ', N'tkmjJMpfXSctKWJIdAK', N'rcAmDieQnBBWTU', N'VxMlVJkl', N'LBpHkxZyMCgAM', 0, N'uxQs fpncGgxReePobc', N'cVvJOLU', 0, 0, 1, 1, 0, 1, N'qKQrevVyh', N'xt yymKbCm', 1, 1, N'uRAh- Ke-fYlMsPOTK', N'sVcej', N'itRhNX-FwbjGJRDmpJeC', N'wtNISwAlDwCEC', 1, 0, N'eOVHVyCnnT', 1, N'yuBRHmCkd', N'sueZzX', N'w NeueERIWUjCooS', N'dlhtkgFifNMHM_H', N'oS-CijqiG', N'msqVZjNRd', 1, 0, N'jUpbkXvnQa', 0, N'joZjs_IOrrqrdvgmQ-Cs', N'dwvqYHacwDVlvWj KP_', N'tNodKSKHSkYmm', N'fwnQkHlXY', N'pjYdfGATgWZ', N'kzOswydLGcDHCiPfe', N'PYXJtFO-dtdl', N'FqNmaR_d-V', '2022-08-02 05:06:28', '2025-01-01 13:20:49'),
  (N'Y_NUxxoyPo', N'wUZYDPp', N'coJTIvCCiPAaXnnm yX', N'BmwKK', N'YyCO_', N'ioVgD', N'cHgbupvigBliKAw', N'kgYhKHUAt', N'EfmorfHgkMgSY', N'WIzdylu_nAYUe_nQH', N'-HrGCHZ-', N'F-EDeebLcRLpmPVWk', 0, 1, 1, 0, 1, 1, 0, 0, 1, 1, 1, 0, 1, 0, 1, 0, N'IPjYbNf', N'apZBB', N'YuIcOIlEooFDMNXYCXR', 0, 73, N'HNUmzuEsPHvGzHvI', N'SoPlxEstooIZDSjmqWgW', N'jLnKNQYgfKTAU', N'lhgpFxMBsGICVlcyFM', N'QkmJsjGXfGlzRLPxRsL', N'deVbo', N'glgZK', N'qOszVnmdk', N'o-KYLvLKOSjYFVtcmoZ', N'XeojHn-MR_', 0, N'SVY_Iq cdWufuynKox', N'paoMMt', 0, 0, 0, 0, 0, 0, N'YtjkIKKvSgJ', N'soixyvaTK', 1, 1, N'SQsYXWxxALLTanmz_w', N'uphOvEtptDLEx', N'sOpjEnmj LNMydr_pl', N'PBhYfj', 0, 1, N'rWnEK', 1, N'bJsmmXDiqgPZCtLc', N'JkEAMIgERhQAsjdPUVZ', N'qoDuReQDZZEFGtixhcSJ', N'BvPGIEJ', N'eeKz EqQF_Dv-nfyjQY', N'NEcBVy_KNMUxwfvYsdp', 0, 0, N'jsDvpYAAZzJRakJNtA', 0, N'Zxurx_ehZUFXvu', N'GnKQHjfwCbLxOAty', N'TMwzClnaG', N'urPsoUAXWtrLoEt', N'LaSJGEVTBIJXnGWQUr-L', N'BLFhVxCS', N'VS-jJLtJbzWpTnvUR', N'ZXHAjTz', '2022-11-02 08:49:41', '2024-08-14 12:46:44'),
  (N'JJdKnT-BZDyAgDDldOO', N'koS_h', N'MckdbfYXruce', N'ist_taZbNcoDiitDkt', N'todwzLAR', N'uPIdJ', N'ZmdbzDKMl', N'zmLvvvyq ljza_', N'CZxMDSah', N'KaGc-rD', N'LXPcwfxHsHHGix', N'lXVdWPQ', 0, 1, 0, 1, 0, 0, 1, 0, 1, 1, 0, 1, 1, 1, 0, 0, N'lIvfvx', N'KDqOiH', N'AEDhPMclmm_TyJjJY', 1, 544, N'JTY KD', N'FOLtF', N'dviLfUFDwP', N'Iyo Nj', N'DTzLY OJqYUmhgksOcNQ', N'Z QaPqpzAHMKuFbsh', N'HxouBqio', N'-zqlSXh', N'pXtzRVfWaRQI-CuRKH', N'bCIYApIZfkscuETX_', 0, N'JiSWQTrGpEYvfzdzT', N'POscQnu', 0, 1, 1, 0, 0, 0, N'sAYxirHotImQfftxbztu', N'ntT-MUuALjra', 0, 0, N'M-JBZqAHsHYaSGV', N'Qi-jIktGEsOYmjoA', N'PNGPkuMNvP', N'fgWrT-cyHUrW da', 0, 1, N'MsDS-gKNejc QgeWg_BR', 0, N'SdVwxVzrhM', N'PSVoL', N'aVVNEV_ZXctNjlga_Yv', N'eQkgMQOKLESwkxqFQd', N'IInxNLZ_srDiQxgiSh_', N'bJAOYxSua', 0, 1, N'gNtnax', 1, N'fznrqhug_oyZgZSjUt', N'mBbhlE', N'DaMgFBckR-', N'aiSzp SuXBJID', N'vkKLgcd ziYMeBMB', N'cImjoIDJi-waJmRscXZd', N'_EctCzs', N'apPJfy', '2021-01-18 11:57:04', '2023-11-01 05:52:43'),
  (N'mjAfl', N'qmoCt-KwAGGZK', N'GkEoqEcCi_sBlvNMLF', N'HYAi_dv-QvbyEiGioy', N'Hpvkm', N'LfMM ZHAiPR', N'TEXTbiJFqJXZLWSlITlp', N'YmfRZLDK', N'ipdBOwTw', N'mwgCtLySs-y', N'OBFgVMsDgtoQQN', N'fQ_AhPFkrXaupKqD', 1, 0, 0, 0, 0, 0, 0, 1, 0, 1, 0, 1, 1, 1, 1, 1, N'ePfvmLxT', N'oSannqey', N't_Xyk', 0, 646, N'cMv_ceWriEuxPU-kzpxq', N'X-vFZb', N'UV_WXpA', N'kqMoIOQVrSvD', N'xLBWASK', N'-sLJivd', N'AfzgEenlFhrYF', N'fIuypUaA', N'AR-SBP', N'mglhZiL', 1, N'AOy_HpugVyfiU', N's BTheKiznn', 0, 0, 0, 1, 1, 0, N'Jo_YaaKZr', N'otHfJALwuLPQBfBR-', 0, 1, N'SJJMNX', N'ek-bmVOaJ', N'RDnUB mPyv', N'EOxzLywXqlcLuJ-jkC', 1, 0, N'sAuYVyCchSAXjQ', 1, N'NQezYwH_tLersh', N'H-ybwlw-CoPRrMKVG', N'ancHnGNjqr TLV', N'aM-euU', N'kkfJZtmS-knRa', N'rGDs_TYwmrYQ_Oahd-QD', 1, 0, N'VPxFmSQxL', 1, N'IZdtzACsA', N'MpiwgytZLNGEql', N'PbeSGNDVkZoM G-RvHDK', N'zBAwuj', N'HJxocpsBJ_B S', N'nbq-dQadNxnyw PBEmF', N'MYlAGX_Fye', N'XGXIrrhti', '2023-10-07 13:13:27', '2022-08-07 09:32:50'),
  (N'AbkJ_BMbTJGF', N'u  FIFmxL_rYZsA prlG', N'owEtYXBjdBAvjFov', N'uwjHKGcWdfFTzLZZy', N'BOFT_huAQOmbOVCVx', N'vZCNDDPyy', N'XcYZWZ', N'kCnXW', N'pDiWAWve', N'uuJvENLix', N'pqOdl Sfh', N'zsn BN', 1, 1, 1, 1, 1, 1, 1, 0, 0, 1, 0, 0, 0, 0, 1, 0, N'LWQQlgMV', N'SBUWE', N'fYbHzz-KWrCMpJTVdiJ', 0, 604, N'D-IgTEHLZ', N'RlEWGBKaOmbObtwg', N'L_CZNRMgVA', N'fyepEcgGR__hgbTCm_w', N'k-FGqxThjCUTeaxQ', N'QGSIntWNRIC', N'IP_MVrgwWyELCRURHbG', N'JtDAivSUKKzCkWXpmt', N'PeSDGKgFEfd_RPkdn', N'IBqhhINRsCrEeDKKmHHz', 1, N'IAWpJkryMICfOAIwWweo', N'kFOREnf', 1, 0, 0, 1, 0, 1, N'zOgViL-gTuS', N'RynMSsvf', 0, 1, N'mWaGMH_', N'VFN ZgY', N'_SuMQGCj', N'HVnspd_TOAEse', 1, 1, N'ipLHJNgn', 1, N'HIEGNMFYlYrm FitS', N'BVDvimUUxYZ', N'pDgbQOSGRKCmm vVAe', N'OQaIvjsFeKx', N'wncVXDCXi _h', N'gyQmsu -PYF  GqGoKK', 1, 1, N'nxohZTim', 1, N'OMkUKFG-oCXdeirFhd', N'doGpP n', N'ffkLCMDPq-qv', N'F OBQMAyRl', N'jGlmFBzoCGIVpf', N'c BAEgjOnSFI', N'JKq-omJmWTBVTX-q-Q', N'QtS-IjCpOMxqJ-QP', '2021-06-23 08:19:59', '2024-03-01 06:58:50'),
  (N'grKHE-SgbGVWXkUNB', N'NitPwMdLr', N'jgv_Twypj_ZSvjxGTRGG', N'PGiejQsdj-nGhqbY', N'N_VdMIDpfomgQ', N'QvAXSJaLy', N'PYqGMpAvKsxO', N'EafTXQDkEG-wnZKU', N'qUYvSZFn-BrhqMiIzsQ', N'hJXfb', N'QkLbdlU', N'bCKAPpy', 1, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 1, 1, N'VbWiXL', N'eYnviJPpp', N'IVvuRTYPF', 1, 490, N'TmUdko-ZwKHHRzadd', N'brQzH', N'wjTtYgPvdDA', N'kSVZU_nVmuEcUhLg', N'udKiMHRdz-SwgwiCcg', N'SEraUhjMX', N'OXDArirMTVutFAFfLj', N'tDIXjkhU', N'RiwIHXb_FzgR', N'LViEaBQxX', 0, N'zgjWSfhYin-DMjG -', N'qS-Hdjk', 0, 1, 1, 1, 1, 1, N'hPi-sbrpIqlTH', N'p-wVUQ efwIP', 0, 1, N'kqOSV', N'kHxK lossAZoTnkf', N'eNWqEce', N'FjQpKyo', 0, 0, N'S_SOcDOB', 0, N'FGxwBDhknPOc', N'BFtYocj', N'Wib-Bzpk', N'CoLxHNsGpjHSytSArh', N'yApbvLAGP', N'X-kHjooeEEFo', 1, 1, N'nuSZqzJfEPUv', 1, N'NuJFPJdyyGPyyWdM_yPJ', N'-bExyAnIzUlomIJr', N'XcQeDKw', N'SrMxA', N'dnuBSlmRJbjvXuxEJf', N'LszmjQNwhrQADtDdPjnD', N'zRgNcqlrqOP ziVW', N'VfBTPFrKDrHYMN', '2023-09-05 06:09:17', '2025-04-23 07:41:52'),
  (N'KycYqGmZWVhG', N'W e-gI-ht', N'cBg_JCLLBpqQ-rbA', N'V_ HJl', N'EQLYZiPjkNFIZn', N'OYTLN', N'CKlRlTN', N'UWWRLIMTYdV', N'YWw_okEFRDEcwxQZ', N'nDfIeX', N'jtSEBARuTLav_mrWM', N'wCqsuedgORwKJqvxwqv-', 1, 0, 0, 0, 0, 1, 0, 1, 0, 0, 1, 1, 0, 1, 1, 0, N'eFajMEXl', N'id-iKqwv', N'BKVElBfqjrtHnN', 1, 103, N'xFkndJNzeRiPALsrywX', N'fDVnEipsiRoGjmIN', N'vAvJqBy T', N'ETASGYjHErP', N'OuNrmEpVx', N'IewGaGXq', N'FBOyOkEoIDiqJ', N'muQ_Ljlh-A_KooFxQO', N'zfrnk zMVNx', N'E_BGIRjsdNV', 0, N'OYhkkLuVsDbpq', N'YfLZlzStN-M', 0, 0, 0, 1, 1, 1, N'wNPG zEn_KiVg', N'ihKzeHDl', 0, 0, N'aiMlDhI', N'iSNaLYtqy', N'wbFxb_Wrz eTiRiqFgrf', N'zFnZNOW', 1, 1, N'czF-BftzWShgDXD', 1, N'LnNfhbNJXOSMSImSO', N'UmKvjDnVAEtgmcTrXwa', N'DqVri  qmHoCY', N'LaZUTaFhQnAS', N'XYRLhOdBgHnvYwq', N'LTqrDhaE_PMTQXk pW', 1, 1, N'hdDkvTqPTxD_akF', 0, N'htDyikHNQ', N'SrlJamgPZc', N'YBhCwKlAuKLnGO', N'OGIZWHuJIPSTiIhHJLz', N'DYjChHuZbQGTftBpw', N'J_axOE', N'BnpPLlP', N'NHfeHykrTn', '2025-02-27 10:39:04', '2020-10-26 16:20:49'),
  (N'fTGdTRUm', N'vcncyOXyzPvPvZFvg', N'TZimHXO-ftNba', N'zApWTiixIhBaWijnE', N'LOLqwdxZqS-LwkTjiqOV', N'DNPtkjaxRGwKkYFEX', N'X hoaPLQpRFoj KE', N'KZfTtdXlQj', N'-GcIhsZzVUXpuvXbzP', N'BO_OuscZZELhpXQ-Db', N'EOhhXo kCPRkouB', N'kOuDJnlVeWVyHsswZz', 1, 1, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, 1, 0, 1, 0, N'VcFhlE', N'FhNfdgBq', N'cHj VQIi hRYNkCiz', 1, 677, N'vYW-xlNpOV-lFBFpnOc', N'lKm aJsIZv', N'RffzbHV', N'PiXhBsNrXlbjC-HeG', N'lulttIYwngFl', N'JiYfwPSSvAFPfLiael', N'G_t_thCePwstW', N'_LyeILbFSIm', N'ujpqKM-', N'RPPZFUiALMx', 0, N'mlavHunW', N'qYHxGdqHlWODzOsjmQmA', 0, 0, 0, 1, 1, 0, N'aJ_cN', N'ixDoFOI', 0, 0, N'vzDUYS', N'nGcAyviwAVEb', N'V-xmsmupxzvdiWB', N'fupVrUuvEYUrasqKNkEf', 0, 0, N'EKdHCKR-Jcq', 0, N'xBDmJx_B-VtQHJdUbh', N'uUpNcvnlh', N'TWMZym AbYsaSTis', N'T f-EfLtKrZuiGpV', N'vopGMAa', N'QcxlJilC', 1, 0, N'ZKSWu HQEwADt', 1, N'znklZuTbojS', N'zCEGThFOQVVoTi', N'zxEffsfG', N'n sV_SFDDGtjyuLDMHYt', N'yXlceE-gRheq', N'pdVWJeJoUW', N'j_XXydVPoUtzYmYYhCG', N'lpz-F', '2022-09-12 16:39:52', '2024-03-31 00:22:26'),
  (N'BLLBMhUCJCVc', N'gDUrv', N'ITHpijfNE_t', N'jGjpe', N'rpbowSKdeJeGebkhO', N'wdlupJ', N'kRSa_ts', N'OKCZMw- OvNpSzSQzv', N'wuXkXe-HRX aJ', N'Lvs qHBptIEeGol', N'ZczQbISgdNLGt u', N'_SEAfMVTIT', 0, 0, 1, 0, 1, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, N'h-X ZXYsI', N'oMRzGmf', N'LkrNOprDoFiuXCCm', 0, 448, N'JxxOTyeQLcId', N'pOtkTvJE_MECkylvP', N'AjiKFGkrGM fJituxoT-', N'krXjcdMkRTMMAOPQMwj', N'FcEUQ', N'eHHfvHuITSTkjDLSnxz', N'vwLfAvtmq', N'DdN-QFoGMnOKgQfW__', N'ZGfgbhJYc', N'o_RGPPc', 1, N'aAmvFiQrp', N'rcq_TIKblfC-YC', 0, 0, 1, 1, 1, 1, N'_PViEBPqp', N'hElkJoX', 1, 1, N'LISTSi O', N'aXqHuMwMmHKFJEjYZyg', N'LEVeUzHCSFwqY-UhfH', N'VYFzkLCPqK-qNC', 0, 1, N'EZfXZalS', 1, N'ZPpWaLZdhWX_OXwFoU', N'swjmf', N'mqQnUFu', N'sA_F-yyuZtjdMIzyzZsw', N'CcFmhG', N'trUkebk', 0, 0, N'zEs tny', 0, N'umHuGWisaBHv', N'S-HUfRmvXiZ', N'zlSrCcleRE YC', N'ivmIYS', N'RB ULFXCLg_b', N'Qi_aJMzKxG', N'OxeETsNgrx', N'KYkwmVtAavIUQggL', '2023-04-23 23:40:21', '2021-10-25 03:14:05'),
  (N'UAgpFWCuptlq', N'-NXfjwYpTyIwJBRr', N'mhhr xYWMnK', N'TRdXOFEdH', N'Mx-PraBpugy', N'NGtVf', N'xSqJmdVmIBdVB', N'SxfjIhieHrdFyzF', N'SKcsKaCJltom', N'hzaVB_VmdlxJ pyV', N'YJjRsdyWnVHOo sUB', N'egFsN-xoHCzDKHMCOA', 1, 1, 0, 0, 0, 0, 1, 1, 1, 1, 1, 0, 0, 0, 1, 0, N'EzklshtOeN', N'TgUdXjubF', N'mCnTXOpuaZlXaBE', 0, 854, N'QJYiDHgqAMy', N'yEftKHpJztJI_YEHS PG', N'TWXmGe_jKryxF_AQcP i', N'LgitAKbkxMQyX', N'BBtafFr', N'LSchTo', N'RlJES', N'mkPdZB -PQCT', N'tBWSEO_', N'mWfiGA', 0, N'VjhrFUv_kwlS', N'oTIBm_-l_jkeEd', 1, 0, 1, 1, 1, 0, N'E KPLrekXyriJ', N'KCdxVpjAXGXyADMdhAH', 1, 0, N'TrDy-iik', N'qWDRfgV', N'iAYzwmmbz CCXoNU', N'sqEVvwBHQiu_qkD', 1, 0, N'PueBIQDFcbeZJrI', 1, N'BsOHScoxzCVBhewA', N'duIFntlkSlwmIz', N'QHhCXphq', N'dN XcUldzGeJ', N'BMhiqHNRDYg', N'WFnJIVFSjqOc', 0, 0, N'pjqavcSXrKfgpY', 0, N'PJfoEKD', N'r OYeCqli', N'uqJIvh_dgaieWPWhYo', N'rcCGeqlBRWz', N'lFuKmqGEuxRp', N'QvNFIXCOSULLBpk', N'H-BB_tlKDQqO', N'jrtfUCwnV', '2024-03-31 01:35:06', '2024-09-28 00:42:22'),
  (N'xoAi_hWajFoVvJVedCZ', N'jsFxAE', N'SEQEc', N'XeqE qWx_u', N'fPrVJO', N'nZrQCWMKo', N'IrvQSCus', N'fCdBFYJmyF_', N'bRzKBHVVDKNUWYiXHy', N'TdIkuX-oPNY-', N'bwroey', N'Sardq_KjkkqdQY_B_BT', 1, 0, 1, 1, 0, 1, 1, 1, 0, 1, 1, 1, 0, 0, 0, 0, N'gm_XWE', N'HSDGdDC', N'CCQwIphnRROfjLFGx', 1, 157, N'qHQNPnLJGYSSOAhThn', N'urosdurQRfz Qlux', N'Y GeWF', N'MFERjWJIDXoBbxgXe', N'Rmwnw', N'NNuiuGddb KB', N'fHcXWcKIUOz', N'mUezyZwNoCnZ', N'dfcnHcazgSMvGWR', N'mahMl tQrh JNkprIljl', 1, N'fwPuShufvOkGxsJWLwN', N'UffNAOMZZbihoHBIzZe', 0, 0, 1, 1, 1, 0, N'RgjLRarksbH-lFsygNHh', N'ttonOEmbMdcLczlNM', 0, 0, N'qgaPr_', N'yonhrD', N'FmbdUNgzsyeNUWeuJ', N'ncHNA DqzpeZVKsv', 0, 0, N'igMamAeTyvroGsqhPi', 1, N'kPXPAloEOXVA', N'ruKy k-Bnx_', N'vYiS-Q kDSD', N'H_cFBzAXYcXKW', N'utwTUVOKkOOursKvVe', N'BtktWLplEpJqIIZEAea', 0, 1, N'-I-jEcWAMcJDP', 0, N'fVNDjGwGdj', N'HkdXS', N'sybWiHHROmAHxFIAc', N'w WHaqp', N'WNXIJRfPGBL', N'Ev attArOSnTdFFldD', N'WlIkSD', N'KIcLXNWIVGWQ', '2025-07-21 04:50:47', '2023-06-19 15:59:53'),
  (N'EDtCTyNnbsXT', N'ecTxITnFJ_tM-G', N'cdxtixeHGBPHNdZRww', N'FEGIq', N'LK xPWQbVWMg', N'sNUTXHQ', N'vc-XkBXwjHE', N'uNCoaV', N'VCFJhdIVJgpcxCvrgba', N'gALMyjeUZUn', N'mIhzxfqiOq', N'jMrkONjHSXt', 0, 1, 1, 1, 0, 0, 1, 1, 0, 1, 1, 1, 0, 1, 0, 1, N'gII_lHxn', N'imWYY', N'NwhkgSvr', 1, 555, N'cHCtX-yFqd_NaRygrnu-', N'ROp-ebIjplOehhvaH', N'XsRPGAPfOg', N'fAnwvZ XY_wEGH', N'fsw YX_UDsEpw', N'JDHPPuFyEXeyZZZ-', N't-rFDKJCpmfX', N'KCwCxpd', N'-umD-d-Fr_QFgn', N'q-_nLAK', 0, N'fKQiHXkRQDOMVocCQx', N'qCvDUd', 1, 1, 0, 1, 0, 1, N'ubgR PQURgRvMw', N'eJxEWSeMUCu', 0, 1, N'qYCIuJKtUqmND', N'kfVXTbGK-SYVFqJXw', N'kcGU-tU UJRhoZ', N'gMarFChGBSEoaHw', 1, 0, N'loNOlrfwfpZsQcfDr', 1, N'nOSBqeiu', N'hHLvbHhRTzrJE', N'mMEOJYyugCKnJPwXSixj', N'sRCarWyvCfODo__OCD', N'xZDWIPC', N'KRoaza ZIY', 0, 0, N'MmGkL', 1, N'xuWSokY_vG', N'JHFaViiejOqZqZA_ZXYt', N'VBXhQyyN', N'vKtGnWUbErfnL', N'SsRwqSWi', N'GLEqnVqEz', N'LBgeWQCh', N'NzcJmHLieBBU', '2021-12-13 10:17:13', '2021-09-26 13:31:44'),
  (N'eyxzEmGQRBJTa', N'BeaykhDRvAlBMjn', N'XJoUWpejt_AU', N'y-FFUXm CKIJLbYaQGtT', N'GrJxhxSMyM', N'n_ikQeks', N'rmRkLKbmjvnAgtro', N'weuGL', N'XQVlCEHYYoWsd-s', N'AwdsB PVpGlSHlokAA', N'JyzmSf', N'kOFg CCADsBykZSW', 0, 0, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 0, 1, 1, N'AjAixCHNF', N'hOyPJjKz', N'KjIeaGC', 0, 500, N'QIjhwz -uGJyJbkkB', N'rEgrQhUfQozp', N'RFCBl y', N'gHoxY', N'ZJrhX_DbUIEdeqxaAxJa', N'z-Ku-EvxulySBB', N'qSeuwDaYWMNeNd-D', N'wOeDrQnHJTeWH', N'qTcYa', N'zXnRZOKtZqTvojP', 0, N'F-QHq_f', N'fPzA_gWZF-xKBm_', 0, 0, 1, 1, 0, 1, N'gOMFyqdmM_', N'jDSiCSOxYesU', 0, 0, N'vsCHeBHLVzRww', N'cIzlcCyBK', N'ieCbaQdgYIYH_', N'DTXZwCJzkeG-P', 0, 0, N'pWzckaKUAiJBJQTBdq', 1, N'UX__M', N'w-WC dBhJxgyGGO Aldt', N'OCGGYfZQZuH', N'sebISJly', N'jVxCwQUBMcCJRkm', N'tT_ HRdOTqHEn', 1, 0, N'-DeDNTH vDvUn_L', 1, N'msmexla JPlxGdPiL', N'vfXAVkIfz', N'UP-lVQCNyYzX-re a-d', N'iGoTqrN', N'dQFOo_ebGn', N'_bVINavnFFNKTIueNzwj', N'tvsdyrS-_NFDBI', N'LKdnjUoSHtJhLuabagXx', '2025-06-22 08:50:42', '2023-12-08 03:14:18'),
  (N'RwrfLGKnlcM', N'BWuLuukoyAlA', N'mCSC__euDSWIL', N'FScm_HEiziVh', N'GHkMnRVeZrtJCUSVMtD', N'MQp_jvVElydssXN-b', N'wRjXPiHco', N'KJJXaj', N'PpxjptJ sCWQgjq', N'LEEIFOYlBGwAu_', N'V awSiHrpatspP', N'jrAqWxkkcoNsJc', 1, 0, 0, 0, 1, 1, 0, 1, 0, 1, 0, 1, 1, 1, 0, 1, N'fsMwDS', N'WNvE_zFzbl', N'sd_egWsmlWduUr', 0, 967, N'EkgFZJH_CJtt', N'Vw Udxz', N'JzUdEqIvZ', N'KGyDXxvsjk', N'_KktFVl-OORb', N'DkF_xQw', N'xGKoLtlvK', N'lXoCsgSfRg-lgpKu_', N'gzEmCqQ', N'Bl_OPkclgvrXtipINMoP', 1, N'vIr nDraiPFPXIbyOiV', N'MYjkC', 1, 0, 1, 1, 1, 0, N'dqwRPYgSqkt', N'KBnEgcL LNzrZfkqL', 1, 1, N'MehgXiL', N'LC ZrjB', N'heXfCRinZqPBz', N'oHaKb', 0, 0, N'FgHEfHdo', 1, N'ZeoTqCMjgX_', N'oTjVHR', N'XOhE_fGuycyTEhrIONUH', N'xTolcSg', N'SERoX', N'wGmWe bBjfkG GMQ', 0, 1, N'cqKypVAvYUbIS-', 0, N'nghJA', N'ZMdLP', N'zyyBvUPd', N'zjquvvmHZfRdNcrj', N'zuJxgpENFZkFu-qZ', N'H-fsoajmXUswM-LK', N'FrXZzQ_VB', N'QgAZSEIuwv', '2024-06-07 08:22:51', '2024-03-10 01:04:52'),
  (N'vGEJN', N'CynMajMy', N'cGigGrKxPYIXY', N'zr-XZv', N'ofIHFOhOHEMHGPlmwh', N'UbYKxGydvRbvwGgtQD', N'jlxhvEvn', N'LhxISG', N'KdXiHLgVdqgUX', N'X_cMDMQY', N'LmRzkuJtZc', N'bVXLm-p_Cn_ ly', 0, 0, 0, 1, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 0, 0, N'SQynXW', N'WMvHcaaP', N'JQM-fAJ_wJQSt', 0, 963, N'wPhfBQmNVNmgKDpVod', N'GNpNEFCSdt lwTPhK', N'lLdpbAMxANsSxMF', N'PhtugHFnzxg-x', N'ZspsvLlajTgpsJjd', N'rAnmGplGdl', N'RnuoPMqhgCpWC-eDItx', N'_vJyPl_JuErmngYhArCI', N'edvmUBb-VFsTmpKIL', N'NaDwdt', 0, N'gxVK_KNJPGYE', N'rziIe', 1, 0, 0, 1, 0, 0, N'QgUUAVaA', N'fyyGYfQUpvUUF', 1, 0, N'hKXCYLk', N'Gp-fSAcG', N'txZpwfHUCJBnHvIsWDD', N'WRzCLw_cn', 1, 1, N'Pvnmku', 1, N'wMEQtWI_Q IF zMCctll', N'ktrYvQ', N'kToTFX', N'Tirbjq', N'_GEKIEGu', N'HSURyJBFX', 0, 1, N'BLzJS_a', 0, N'PPKJJugaeOgIWrRj', N'OlBrbu-eFNvHKieN', N'OExLwjgs', N'j dMF-vOWMgYC-EA-', N'tScdCibnkTWjvYX I_', N'Z-CjTIkGuPNFgjhv', N'HwxdOtHzJdsWNID WTvb', N'iSgySLleDEyC M', '2024-05-19 03:47:48', '2024-10-23 01:06:04'),
  (N'EvMYpc-', N'yhODF', N'tqx_fQ-PEXcod', N'yUTGFo p Me', N'vJXqnTch', N'eprJEsliFrXL', N'ujtThsoLHrb', N'btRJHaCt', N'HGdhNlDBoCTOG', N'lJWTkWubONONYtirU', N'twl L_K', N'qmaXdrP', 0, 1, 0, 1, 1, 1, 1, 1, 0, 1, 1, 1, 0, 1, 0, 0, N'rPqbZ z', N'bvnlw', N'-sIYzNFekeaANUH-nxDC', 0, 603, N'JnOqfl_OCdHOpswE_na', N'ggdkuUSjRMyvCQoJCoR', N'teYCVXRjVTa', N'cqUyxCIryz VyjXC', N'neiSsdgo', N'zwpCpoK_CI', N'dpCxlppwxZW-PqNN', N'cGyDTuchMp', N'OXttnRBxSKh', N'okFAYnONuBRHwer', 0, N'EXdrVGvxgmg', N'HqoTAye emxS', 1, 1, 1, 1, 1, 0, N'OMD wQXZNN', N'Xdehe', 0, 1, N'xkIvJ', N'U_cIjgaCKeRc', N'FL-JcJFtvAprEOO_pCkV', N'dcKnWcAnoJyO', 0, 1, N'jjjCXr', 0, N'EJQlSDC', N'-dWwSb-', N'TQJXokw', N'fjfnTRIndGpoNmn', N'BjlAqjqa cWSg', N'rZkxNgsSqEpJmXonzEcC', 1, 0, N'RWMRL', 1, N'bvi_ tOtaJOsF-WCXS', N'bcjCvVFJ', N'IERFIhhBrNditY_ImV', N'yvmPzPEzndCkTICiDW', N'-DOngYJlRVNgWmeY', N'pJyWdCKk Fsz', N'kkiurtyZP', N'NzQmWQNSiyAK', '2021-07-05 10:22:44', '2024-09-27 04:40:43'),
  (N'KzmmalZsfuWSNJq r', N'DSLqIQ YtCgU_zFxVy', N'WGxOBtPJpYUbMY', N'JfuudQ', N'Vsd mnQU-wPyRkBXs', N'IwSKvu', N'tWWMxDi', N'JgycVuN-Ac', N'iyCfALDDJVZeMFy', N'URWohtJfjqYF Lx Bcu', N'Sj-cz', N'euCiZblqPRh_-VN', 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 1, 0, 1, 0, 1, 0, N'ARzxsHg', N'-dgYPgEdY', N'IiRggEArpQV-SLLBczDw', 0, 271, N'SSxbEYPelNCQ-kwIVIE', N'piPZlYGE', N'qjPHLbbxzDte_HjP', N'QncucrrInKeEmV', N'bJzUuR', N'IDKFYdrgWuEqiNKqnjew', N'AOIjKlWEndOEpV-N-p', N'cEnsJuYWAEvItPKMaOd', N'qLLoCwCYKjFdTGxxmVey', N'Y_wdsot-rIszBU-hO', 0, N'ZDfAjpdlYrGjK_GY__f', N'SlciTFjU_Uw', 1, 1, 0, 0, 1, 0, N'usHohuYlTiKnchg', N'MyIXxg_tw-dVJwqNPei', 1, 1, N'JdSdgvzphrnDDbQgtn', N'UaUtZszmuI', N'ifYfdhF_MTL_kdD', N'cw-FEUjNExmonZPvAxCm', 0, 1, N'bhjUG-ISZqvlWLySL', 0, N'GNqFUlBL_VEd', N'TlXDNaIFpnPTmIOfTyM', N'RwdCJoSGHA_VwwJMNWhO', N'-utzTzPwjiH', N'voTpNZQXzJJBdedkvzR', N'NLVCSBVKM_', 1, 0, N'BHKINz_ZOmiDDv', 1, N'vxwcZ', N'WqJranzZiJM', N'ustqEK-iIUMEaKk', N'HKHhjQfgTIuJIvo n', N'-MxCRIVy-T', N'b -MwQPiuznd_Ha', N'ccpSJh', N'XCrhl', '2024-04-28 11:23:37', '2021-01-16 11:50:46'),
  (N'Nfdo', N'iHcCQOj', N'ZPUsWCqyXklzYN', N'scFypIyoOfGzoqvTx', N'XtYEaAcOFGdxtaC', N'kLHNMXFK', N'gfFTB', N'fvGGEofru', N'QoVpgx', N'nxkRTumWl', N'cJORflRF', N'MMpMfYMdaVX gf', 0, 1, 0, 0, 1, 0, 0, 1, 1, 1, 1, 1, 1, 0, 1, 0, N'-kz GfZZu', N'jpIlLfL', N'MGJcSrKSeMJPeE aPb', 0, 980, N'MhKUDCaXCtVroOQq', N'OVG_jf DRUnJYKhsxxaw', N'PTtPRQOkbirrAtWjHV', N'L xjTvkRKlXsiSd', N'sjQOw', N'olOMKfmUEJcEFi', N'rqgrWzoml', N'HJ_TVYsuYNobuaBNQLJ', N'xHTujwFkrYMjXxKGEAqb', N'WSzKBq', 1, N'h YAs', N'QiUp_UCafXPse', 1, 1, 0, 0, 1, 0, N'FvE_G-yfPjp x-PRG-C', N'ykzNdLffNBpXkoyXX', 0, 1, N'CHBncCdhOOn', N'RWXXzVJJ', N'HdppQTWiogBtKvIzqXK', N'-FcuJY', 0, 0, N'EYgUsA', 0, N'cNNwGEkr', N'eXfOfWpKEUoaYn', N'Zdx_gYK', N'WIfXtVBWLShaCTyqp', N'z-ngslqoI', N'OjqTrlKvg', 1, 0, N'gcX ltbMEulUzb', 1, N'xSrVnhgoOTXaNApCEs', N'XQO_fM', N'lkGwilctYmoTa', N'ylodu', N'rCIiE', N'mtVwDS_mUOsBRujUBEVP', N'NMJHp-vUVfNMhC', N'pD-BzaBkxMnXDFksuC', '2023-01-11 23:46:58', '2022-11-20 01:27:55');
INSERT INTO [invoice_schemes] ([business_id], [name], [scheme_type], [prefix], [start_number], [invoice_count], [total_digits], [is_default], [number_type], [created_at], [updated_at]) VALUES
  (900, N'-ZwnNyzc', N'cYtGMKqaOeJxfsXLBI', N'mzI-VSMsuyfHMQeV-ps', 635, 747, 203, 0, N'ExuSbPnXQgaNmHXIG', '2022-03-11 12:06:42', '2023-09-24 12:33:39'),
  (388, N'DNEoVWzWFHK', N'gLAkl', N'gqiggQ-lvpr', 905, 11, 281, 1, N'Osa_DiWf_e_ V', '2021-09-07 23:30:23', '2022-02-16 20:12:32'),
  (328, N'YzZCKXTwAghnNmTwp', N'eLnYzn', N'LvLFWxEEGMW', 496, 801, 700, 1, N'gkC-XAxhXqSMktU', '2021-07-22 07:03:08', '2020-09-12 07:31:58'),
  (62, N'Mcb-rfGeZOpAAjcAy-', N'fa_kWcffSCrxhRYVGP', N'qCDoedgfUbzd', 3, 237, 7, 1, N'oEcyhl-ruxwhLxeoYVik', '2021-10-08 12:26:23', '2024-03-21 23:16:29'),
  (443, N'cMIbhEO-UUd OSw', N'KVsMUUcruCZIXJrFhq', N'welacrTwT h', 324, 521, 181, 1, N'zvBGUxUJWyN', '2024-09-28 14:39:30', '2022-10-27 08:01:01'),
  (272, N'bjCGNgeDUtvB', N'OHvekbxq', N'rGmXtw', 656, 741, 475, 1, N'vteoXTkes', '2024-04-11 16:35:40', '2020-12-07 20:18:43'),
  (969, N'EJ_eJ-UsnMSoN_x-PCUJ', N'CAwavtFyFqZrP', N'nfpZGYAEHimBlRF', 767, 661, 576, 1, N'Om EQscuO', '2021-05-28 09:35:24', '2024-09-03 21:19:01'),
  (723, N'YCxEP_o', N'jJmBhmHhtl', N'RXdiI', 495, 673, 975, 0, N'UamAlEOvyjLwji', '2023-02-21 01:37:53', '2021-09-17 14:09:59'),
  (612, N'jBDqTvZj_SdH', N'BRZbEwM_-', N'CWPneXgB', 27, 908, 82, 0, N'UaWmBdmAaIjEHh', '2023-08-12 01:14:15', '2024-05-31 11:52:26'),
  (732, N'SHrLJEwTwYZOkH-e', N'QTLngN', N'GKzoxxlofopv', 530, 739, 430, 0, N'G wbo-IuOXarrZ_Jy', '2021-01-19 11:23:53', '2021-07-16 01:47:06'),
  (49, N'zQnjNda', N'tRXkgN', N'MySVcFmmhlx', 430, 713, 754, 1, N'qjcyihq', '2020-12-10 05:35:35', '2021-12-13 07:39:36'),
  (275, N'_PsRigF _hQh', N'ijmhlIP WsfZxO', N'DEywURwZK', 186, 972, 369, 0, N'rku rSYC', '2023-09-04 15:01:05', '2025-06-29 10:07:03'),
  (332, N'ylt LlMXINAQgHDukHJR', N'HhCckBiruI', N'ijs QofBCidJoUJH', 921, 531, 307, 1, N'QbHAklA', '2023-05-13 10:20:41', '2021-04-23 11:06:09'),
  (614, N'aYVABN-qiuc_xv', N'QjLCvxLomJqhLSBkh', N'VRVYOhvxOUSmJGsW', 443, 587, 671, 1, N'QpHsDnyvK kFVBB', '2021-03-06 08:04:52', '2021-09-05 12:16:50'),
  (939, N'gUEyWh-vVOS', N'xVSarTGEdJCkHOscha', N'DUTzrOQwQrcwBck_dT', 685, 940, 65, 1, N'jI vVzuJOdO', '2021-02-09 06:36:16', '2023-08-13 11:35:23'),
  (794, N'GawRorAvbXmj', N'Tb__nbEaSocJGZ', N'PrVOloOtWHMHnWE', 960, 657, 793, 1, N'GLvOAdHNWFOT', '2022-03-27 22:03:07', '2024-01-06 20:54:26'),
  (349, N'FCqAVdfQfPcJrm', N'_fBX O', N'wHFwgqzbdium', 20, 13, 637, 1, N'cpPUrtNKUeUKxU', '2022-10-29 16:26:29', '2020-08-30 14:02:53'),
  (119, N'DsNwbmurqNSiu_oUduY', N'muxhlQA', N'abJMUmJQCwuNY', 561, 644, 797, 1, N'zRzBXr', '2022-04-23 10:02:29', '2020-11-22 04:36:38'),
  (434, N'mHFucjE-ICP-mykW-gJ', N'GeCD_qvu-HsJVY', N'fAygEpPr', 718, 769, 505, 1, N'lZeLMesmgw', '2020-08-23 21:04:34', '2025-06-28 17:07:34'),
  (451, N'EgOVcj', N'WjPXns', N'xcNSzfJo-b', 237, 870, 523, 1, N'JLJh__JNUN', '2022-08-09 10:01:08', '2021-12-28 19:28:01'),
  (558, N'_c d DG_iA_QO', N'eRnkY_qYgLY', N'dOdRli_w', 602, 709, 100, 1, N'n_SqvnVtlOhb', '2023-10-26 09:12:26', '2023-10-11 14:15:11'),
  (555, N'eNIohcod', N'jXCbmqqUeIOrtXdT', N'nGTaFwwrVXcvWO', 798, 777, 976, 1, N'Jy-tqujzszxbEkW', '2022-05-25 05:12:24', '2021-05-30 14:03:37'),
  (832, N'rgNgPBjJGtrI', N'xFWvoSetJX-Z', N'HgdkY', 411, 133, 240, 0, N'jN-AfLVpbai', '2020-12-30 23:02:57', '2024-06-05 02:20:02'),
  (628, N'y_sCn', N'THcbVIVRgVEqteU', N'DcXDkUp', 913, 25, 961, 1, N'zBkNGeL-MDGHmwGOX', '2022-12-21 05:42:50', '2022-04-07 19:17:32'),
  (283, N'EBWvdpB', N'kMfMn', N'wRhjD', 67, 617, 543, 0, N'LXGWYq', '2022-11-20 14:40:38', '2024-02-06 15:38:20'),
  (325, N'tO-HJiBwi', N'rndtcyoiwUR', N'KxyLfamxk', 293, 740, 951, 0, N'ssDNTTKv HeSIuSa', '2021-08-12 05:27:41', '2022-01-10 21:59:55'),
  (21, N'GKkgeAmrFah', N'XY xqhHpRORGriNRR', N'OAZngEQAPUf', 582, 488, 223, 0, N'tPeggc N', '2023-02-22 00:41:26', '2024-11-28 11:29:14'),
  (587, N'QvAEM', N'GAq-RMdFNyhItXU', N'rlPg f', 428, 734, 215, 0, N'QdhBzpngoMnoX', '2024-09-03 04:16:59', '2022-04-14 21:27:44'),
  (412, N'FKIsqOI', N'xIFtPrHvmh_', N'rWeFUxNWZ', 110, 820, 898, 1, N'WXJ_ORN-WDObsB', '2023-03-23 08:37:43', '2020-10-16 21:54:48'),
  (983, N'hXVrLf', N'pFdKOrD_kzi', N'y pevDDX', 432, 90, 361, 1, N'ZowuPgoyqYMpOb', '2021-06-30 20:13:39', '2023-11-27 02:54:57'),
  (821, N'VxiKV_OBCPktOp', N'PFcftNkCKgdYkV', N'N_FYtQ_jGN-byzKcr', 422, 246, 853, 1, N'ndqrUNDWZMBPNF', '2024-07-09 13:53:58', '2021-06-08 14:03:13'),
  (904, N'CycAFYQabWVflRJ', N'bjtme', N'caNGkUP', 374, 715, 911, 0, N'tozvNVsCalJ', '2021-09-07 13:27:56', '2024-02-04 02:55:53'),
  (189, N'yv-KUvBDSNK_', N'erTQYRWBGWUxCrYKtvkH', N'uWdIXonOUz', 477, 531, 43, 0, N'_DmxwIDLEC', '2021-11-18 06:44:16', '2025-01-07 07:58:15'),
  (834, N'jvAL_mZQSEtAIQypL_', N'OcxunFlGxHnKp', N'ntZapSz', 47, 486, 683, 0, N'DfvdyepPHdXyrMcdWlGH', '2020-08-23 15:18:46', '2024-10-30 03:18:13'),
  (203, N'IoTdsdsFMtV', N'BhjoAxk', N'WNmo_YQuFuV', 460, 933, 262, 1, N'-IkwPPDrkoFYClbq', '2022-08-19 11:00:17', '2025-06-26 11:54:40'),
  (223, N'vnboNOxgKryIE', N'ShpNwbpRRHxrnmBzw_H', N'NTpkVaM', 400, 443, 465, 0, N'BkuRBJvC', '2025-03-16 14:29:38', '2025-03-10 05:42:27'),
  (264, N'tDvJwaJdGPB', N'cuQDjAP', N'jGRUqzTfuLzuto', 589, 123, 758, 0, N'faBxAPHIyOCpH-XY', '2021-10-23 20:44:56', '2022-01-22 19:37:17'),
  (396, N'wQZXKMZQTWMnn g', N'NPN_phYVw', N'pWaQbvfBYA', 649, 363, 148, 0, N'ZoeKryvVDsNN-T', '2025-01-12 21:40:54', '2021-03-18 17:59:19'),
  (430, N'RGt --zlrVoSZh', N'mvBapqeerBlwKZ', N'WrgjYGbRMrYNmav', 693, 772, 328, 0, N'dPbLtADsHbrgf', '2023-03-19 19:29:03', '2023-05-07 00:12:56'),
  (468, N'ZnoLvRewPDrXBbA', N'Gb_ImflqB-PwmVaFUYj', N'LWKxvjeuCk', 939, 727, 239, 0, N'JJLCOvx_xKAGq', '2021-08-21 09:41:02', '2022-03-30 07:48:23');
INSERT INTO [lecon] ([niveau_id], [matiere_id], [dateFin], [dateDebut], [created_at], [updated_at]) VALUES
  (580969, 595461, N'_HJJDvyLT', N'JVWuX', '2023-12-22 15:40:16', '2021-09-20 17:14:33'),
  (53098, 161113, N'viWGCy QEXv', N'BEnPgxOZIUrhDg_rZ', '2024-08-03 07:19:22', '2023-11-17 22:16:11'),
  (584258, 336301, N'MUTMaDz', N'hxjb_XnvcGoWzHAb', '2024-04-30 19:50:11', '2024-08-28 17:38:24'),
  (986846, 919594, N'tLWAqfhZpxQXH', N'QERabPyMJY', '2021-11-30 11:08:05', '2021-05-16 09:23:02'),
  (628961, 163415, N'jsubCy', N'sIzrqKXRLI', '2021-07-15 10:39:15', '2023-08-04 03:12:56'),
  (615270, 712582, N'gO_DErpsdjfNFZd', N'bAorHnkotG', '2024-03-29 06:17:23', '2022-04-18 18:25:19'),
  (277889, 982336, N'xXkgnJV', N'EOtgPC_hqtGwVNaYDe', '2022-09-18 10:52:11', '2025-05-28 12:12:19'),
  (262217, 349657, N'HrxJyfB kr_GrXoYX', N'UoScPT_ZqsK', '2025-04-12 21:49:34', '2021-03-18 16:16:12');
INSERT INTO [lecons] ([niveau_id], [matiere_id], [dateDebut], [dateFin], [created_at], [updated_at]) VALUES
  (861929, 758024, N'-Hh_-jnVOGRO Rz', N'oLDMybbHAUaPFHcsKLc', '2022-06-30 22:17:28', '2022-05-29 22:59:00'),
  (170738, 772334, N'mglYQWvPgXQWDCBMH', N'QAEQhpKbJJx', '2021-02-10 16:04:55', '2025-01-23 10:29:45'),
  (341719, 270254, N'rchjXGlEm', N'xsjf-iw', '2025-01-07 15:08:28', '2025-02-27 04:30:51'),
  (489630, 53539, N'uDYdlRqrUxjdLHhsH', N'JxsIdPxR', '2020-09-24 23:54:58', '2021-01-13 15:38:34'),
  (946176, 753482, N'fBGxauiXKpvqhbD', N'CYjdH-GilwCq', '2023-12-13 11:31:25', '2023-04-21 06:17:19'),
  (672079, 859334, N'OqHcBmPZq-sVz', N'kpsbFb', '2022-03-04 09:26:53', '2024-02-18 18:32:16'),
  (974334, 951730, N'UiWQBcgGIWa-pH_hsuN', N'MFaDO', '2025-02-09 19:48:50', '2021-11-12 13:41:09'),
  (306260, 783126, N'sKssgeh', N'WTqKXAqO_LrPILQ_E', '2020-12-26 18:37:53', '2024-03-05 05:14:57');
INSERT INTO [lettre_missions] ([objet], [numLettre], [dateSignature], [created_by], [updated_by], [created_at], [updated_at]) VALUES
  (N'KyuqxNdd_bPQGb', N'pxcfvPnrHsiLYRQJetJL', N'Ho LbNaLbDhCciMblUUG', N'Rho p', N'EHaMhfKZg', '2023-03-05 04:53:13', '2024-12-26 17:48:03'),
  (N'DF- nZw__BS', N'eNsMZPvvAJlfUVaAMdII', N'bmIFunRx-Kyyj', N'RutyCW-YNwZ', N'XInCFMiVKvEs', '2020-12-12 05:15:42', '2023-06-04 10:06:11'),
  (N'LmDy ZaZjJIxxSjLWS_', N'ciY q', N'eseji vJaq_QGq-Kx', N'haxxLzZF', N'SHEIqeYHx', '2023-12-11 14:21:04', '2024-07-26 22:14:36'),
  (N'UnlUgyknLiAwPFXlW', N'qqRmGdCC sqlf', N'Mv _ctRCMq TZU', N'Q AstPgw-dS-FNRvHum', N'ByiwXlY_J', '2024-08-20 16:14:47', '2021-06-04 19:02:43'),
  (N'MSsqqkPOqMJEKApvFH', N'yegWmHqufTmZYa', N'MQNXKbpbn', N'ibMxAkwZb_wFxOjhqKEq', N'edBQZBryD', '2024-04-15 02:41:46', '2022-08-17 23:08:54'),
  (N'-zcDyXXbBSNsidSijVZ', N'PwYIHxiOoJ', N'hyTsKCKJPtEOq', N'hJdEA', N'obSVeYao', '2023-06-01 05:44:40', '2023-12-11 04:52:37'),
  (N'qMVOPOR', N'UMkmzhhZPBDFY', N'CZDneoOnrTggE', N'j DiKU', N'vUwKEpjXRGWz', '2025-04-22 04:46:17', '2024-10-01 13:38:46'),
  (N'EPFuWdl', N'GmMLhjc-zQeRv', N'MHLVlHnDUYDwlUj', N'wywwfUuXhKj', N'PvXSrg aAFwGwHWHWory', '2021-11-24 17:15:35', '2023-06-04 21:42:07');
INSERT INTO [lignetransmission_bons] ([engagement_id], [transmission_id], [created_at], [updated_at]) VALUES
  (726787, 558107, '2021-01-26 17:47:08', '2023-02-15 03:11:55'),
  (118379, 611959, '2021-03-31 08:33:43', '2021-03-21 07:52:13'),
  (117410, 802454, '2024-01-20 02:36:37', '2024-12-04 11:03:01'),
  (948004, 585220, '2020-08-24 15:47:08', '2022-03-10 05:17:22'),
  (809162, 527077, '2021-08-18 09:15:12', '2022-02-17 19:16:04'),
  (344368, 613401, '2023-08-24 01:06:28', '2022-11-30 13:26:17'),
  (178903, 377270, '2021-01-22 13:34:34', '2022-12-14 21:07:52'),
  (657793, 256712, '2023-03-11 15:36:06', '2023-02-21 14:40:42'),
  (141042, 445079, '2021-09-13 05:43:01', '2020-10-30 17:28:42'),
  (285949, 518096, '2021-05-29 10:36:47', '2023-02-03 12:24:02'),
  (900186, 564157, '2025-06-10 00:59:06', '2020-11-30 10:42:14'),
  (532618, 46788, '2022-10-26 01:38:49', '2025-08-06 18:41:11'),
  (317553, 781647, '2024-07-06 20:32:10', '2023-09-28 12:47:58'),
  (210764, 311594, '2022-08-18 12:43:10', '2022-08-24 22:31:27'),
  (56514, 395161, '2023-12-25 22:05:34', '2024-03-25 04:56:58'),
  (424223, 42447, '2022-12-29 00:56:13', '2023-07-09 19:21:05'),
  (814361, 910981, '2021-12-02 17:57:11', '2022-08-08 07:33:27'),
  (439584, 754187, '2025-07-13 01:22:18', '2021-10-12 21:38:44'),
  (229029, 951853, '2025-03-01 08:46:52', '2022-01-04 08:38:30'),
  (802291, 172387, '2020-12-12 10:09:33', '2023-10-19 07:09:16');
INSERT INTO [ligne_achats] ([product_transaction_id], [product_id], [variation_id], [purchase_order_line_id], [quantity], [mfg_quantity_used], [secondary_unit_quantity], [pp_without_discount], [purchase_price], [discount_percent], [purchase_price_inc_tax], [item_tax], [quantity_sold], [quantity_adjusted], [quantity_returned], [tax_id], [exp_date], [mfg_date], [lot_number], [purchase_requisition_ids], [sub_unit_id], [purchase_requisition_line_id], [created_at], [updated_at]) VALUES
  (12, 188, 362, 864, 7928901354651507.0, 614377792954445.9, 9834942486747740.0, 7703714864184593.0, 2621881323171688.5, 7484784555501101.0, 5492760536581823.0, 1947218246581055.0, 311787634642177.75, 9126290033362476.0, 2311216032127829.5, 846, '2023-08-16', '2024-02-10', N'-bLH-ZBBGhMIyr', N'YrQBBuKXmxkpHxETgk', 126, 663, '2021-12-16 16:17:37', '2021-12-31 19:11:05'),
  (683, 497, 902, 6, 1176413443282471.2, 1002217871738682.0, 1382782954445845.8, 6382253708335723.0, 7528237278696919.0, 4450288954221703.0, 4853078473869840.0, 7152120302155590.0, 8027542845214410.0, 5969335305094029.0, 9034966691342170.0, 380, '2024-11-30', '2024-06-13', N'e--Mlk', N'QgKBVE-PUaohauYmUFhX', 542, 36, '2025-02-18 05:19:59', '2021-11-21 16:09:10'),
  (22, 896, 322, 969, 8700182958365097.0, 2477493111577993.0, 1936833556018760.0, 4573033518217933.0, 6761419839323116.0, 4932698557956477.0, 2194838082546540.8, 1553480142958019.2, 2757245662130245.5, 4468464608169421.5, 5943793151740253.0, 252, '2021-11-15', '2021-02-05', N'VOjfzBqRqUs-vVaO', N'RqleEHFHUobdwEwkZvF', 377, 950, '2024-12-28 20:58:52', '2022-04-07 04:21:35'),
  (390, 958, 291, 620, 6803373828342562.0, 1344663318641475.8, 7154355839281280.0, 9601790934579524.0, 8190867558328178.0, 8767952229907942.0, 7793442052444354.0, 779294223197558.6, 8523408355790412.0, 6545138227117808.0, 81953854664116.31, 944, '2023-05-01', '2025-02-22', N'gJ_kWzSwpU', N'_WoIkhHgbIJAW-s', 140, 633, '2022-12-15 11:52:00', '2022-08-14 15:23:50'),
  (179, 81, 845, 271, 4650008998201678.0, 5785356702505433.0, 9783866161535528.0, 3272452075352240.0, 5736769833127415.0, 1161298528633029.0, 6114881597140126.0, 7426230711589515.0, 5162261500400177.0, 4692262390961081.0, 9365277720291954.0, 500, '2024-05-13', '2025-08-12', N'PLHEKzZbJCdNLNVnxr', N'CBiMnfDOEc', 502, 458, '2021-09-28 14:03:32', '2022-09-10 22:24:01'),
  (677, 36, 685, 637, 7203117300021400.0, 8009488465606507.0, 4303849680773082.0, 2937992670192938.0, 4251958575902516.0, 1859702470667024.0, 2493065082451003.5, 3535319257929516.5, 5807223850779228.0, 3291503999119995.5, 4659835412771802.0, 108, '2022-05-21', '2025-03-20', N'bwMzhybxbxR', N'pvfWH', 846, 842, '2022-05-13 17:47:10', '2024-12-23 12:41:16'),
  (724, 411, 43, 297, 6694479194427204.0, 178722964144094.6, 5597202487913990.0, 5695047583746624.0, 5563399727377037.0, 1643248994344428.5, 1420883875037208.8, 7541925999730491.0, 1451490210289225.8, 9173763063189880.0, 6333847390975199.0, 684, '2020-09-20', '2020-09-11', N'uwytkruXHeMCkpKzg', N'skQXiPUlB', 104, 410, '2024-05-12 11:59:38', '2022-08-27 11:58:50'),
  (250, 407, 786, 421, 436999154629189.56, 1945491770009745.2, 7674875917870798.0, 5850011354711045.0, 2545293220643416.5, 1662724388613491.2, 9678169659868728.0, 6140588347143999.0, 168891969275554.16, 3231446807157384.5, 2923446574780798.0, 794, '2025-06-01', '2021-01-05', N'knCfwpx_DMvo', N'UvPxMZiJOgUuSO', 970, 765, '2021-07-07 20:42:36', '2023-05-06 20:43:41'),
  (996, 319, 484, 832, 9929445180322824.0, 3815392173264613.5, 3659734814658084.5, 883371202062593.9, 2372265770739427.0, 4021203322615155.5, 3394908841234720.5, 6698491722445253.0, 2394869872837565.0, 8519952094017410.0, 4060005850173827.0, 146, '2023-07-10', '2020-09-10', N'Ot-pKTg nikxOvBW', N'dgdhs', 699, 350, '2023-03-30 11:00:08', '2024-10-02 22:21:12'),
  (572, 975, 244, 439, 9691767265999726.0, 8617135153892546.0, 4616631363351761.0, 5084963944790949.0, 9115507836712398.0, 6728132620684522.0, 9925124878712530.0, 2164399783774802.0, 7981539262017704.0, 6574724209005040.0, 4100982988140550.0, 717, '2021-03-07', '2023-10-06', N'G-UzmwX', N'jZqCarU', 197, 100, '2021-11-15 05:12:24', '2022-10-28 02:22:45'),
  (825, 991, 33, 134, 6378856530271111.0, 2854571346612596.5, 6203222169156188.0, 968164184560567.1, 2821656152227256.5, 5877851672867022.0, 7883702825961261.0, 925537292961951.0, 922045026659913.4, 4379211224862823.5, 230882742153561.97, 82, '2024-01-04', '2021-02-22', N'sdkjXrYIUdAqlat', N'mnQkbRdTlBGnLDdbDm', 986, 276, '2025-06-12 09:01:49', '2023-06-20 12:57:52'),
  (197, 550, 673, 117, 91965132738396.34, 9415370244042272.0, 8915337015409499.0, 9138726400187522.0, 869488712151164.1, 9854867092164254.0, 8280339969377153.0, 7583871981671965.0, 3511498488046948.0, 398717437814366.5, 9208897854889778.0, 866, '2022-11-22', '2022-05-17', N'wyVRzgmNAefdEzWXOX', N'DoscOpBgZRHqc', 411, 97, '2022-12-26 05:25:48', '2025-03-03 14:17:10'),
  (660, 765, 325, 975, 8933178281157937.0, 4346788731875367.5, 8514330911077930.0, 8229035589882081.0, 5133021332354710.0, 9703387092833722.0, 9231089284165972.0, 5049277565567880.0, 4013268786128144.5, 3169252425956633.5, 2043459559043678.8, 133, '2025-01-27', '2025-07-21', N'WCFVl', N'ZVfvB-IrNoRphPsCz', 537, 734, '2023-01-07 22:31:15', '2024-01-26 20:46:01'),
  (233, 970, 802, 557, 5433190258556710.0, 2911554615671495.5, 8959271976910456.0, 4215280015438271.0, 9858566661728784.0, 2089460766633908.2, 280971457948872.03, 5242868656130681.0, 5522887803334386.0, 3115766818281779.0, 8450104422127722.0, 998, '2024-06-14', '2025-07-29', N'SkxYj', N'ohjX_Kxroho _', 752, 39, '2022-09-04 06:42:47', '2023-10-24 16:46:09'),
  (184, 793, 608, 967, 8662077062622724.0, 4504845453211221.0, 6379783960538959.0, 1988439304794226.2, 186731369031130.1, 7536021907967254.0, 3751929103834734.5, 4457692219665282.5, 5126772670231668.0, 6724261876802000.0, 9850247899028774.0, 174, '2025-05-07', '2022-04-01', N'lnpQWfPfnlCEn', N'ihCBULDKEdWMN', 687, 570, '2022-11-27 21:57:01', '2023-09-27 18:26:59'),
  (170, 848, 955, 144, 298236185918271.4, 5731482335268171.0, 4803783056733377.0, 5992608780246281.0, 9598899236670724.0, 5318750512649260.0, 2773855751013587.5, 7370997581100505.0, 3671759166768460.0, 3038476792118780.5, 7022914474905978.0, 741, '2021-11-12', '2020-08-27', N'HhAoUO-ZaGeOHZol', N'wKuDlBCZ', 440, 682, '2025-01-11 16:00:57', '2024-09-20 02:24:07'),
  (797, 836, 583, 563, 8092902784398553.0, 4024458971153792.5, 354942853832185.25, 6043194315645353.0, 7175176153719935.0, 6449209634335406.0, 5663316906344172.0, 4943946217185385.0, 1377234272697429.5, 5498244177132262.0, 2538674831019823.5, 853, '2025-05-17', '2023-01-15', N'wJQwSXMnjed', N'wyu EyIahFIi MO', 176, 433, '2024-12-11 16:49:07', '2025-04-05 13:34:51'),
  (734, 798, 631, 534, 3682982331668565.0, 3542222182875396.5, 6314763955850202.0, 5874538748882121.0, 3320813313713974.0, 4386091579706878.0, 7587965395936942.0, 767789513574560.5, 6459687993647611.0, 1114389953448262.6, 4671446524271139.0, 155, '2025-07-01', '2024-11-29', N'hqSbqhvpwtH', N'mEclBYXG', 998, 884, '2025-08-01 13:50:15', '2022-02-27 00:45:05'),
  (58, 982, 851, 18, 9803000455008432.0, 3398130577047068.0, 1665202308474409.5, 6120001170193701.0, 8655280571043765.0, 4505669868872928.0, 8791118038022884.0, 2851118438039860.0, 653210098163734.5, 1054402983578403.0, 9304207445183814.0, 898, '2023-12-15', '2024-05-08', N'ROcEVeTteYxWGd', N'AwDiegJCZjGTW', 548, 267, '2022-05-18 17:33:05', '2023-06-16 21:18:30'),
  (638, 479, 635, 788, 8813543158429449.0, 6652825315803329.0, 472018882171260.06, 3748763306591414.0, 3447292678762234.0, 700627745663771.0, 8483399793364919.0, 6021298058412109.0, 4223476350586415.0, 4930626959336410.0, 4945276949197860.0, 534, '2025-04-01', '2024-08-02', N'WbohRbxTMRvVpl', N'SaGRxHbqQiyZCjBL', 426, 398, '2025-05-28 05:11:04', '2021-10-15 10:01:58'),
  (754, 306, 772, 607, 8145769929551205.0, 9884586767125002.0, 9401515309284362.0, 2691366104541592.5, 6247964589593691.0, 3266467199939927.5, 4376839355854085.0, 5664223814620575.0, 2501223863124986.0, 6497591162147334.0, 5290293687178845.0, 281, '2020-12-18', '2021-10-23', N'jAiekdsaEJtrpEh', N'b_ofYZ', 328, 234, '2021-05-27 23:08:46', '2021-12-03 15:54:14'),
  (59, 860, 850, 925, 2605314704292307.5, 7336964573570350.0, 433944195856744.7, 1998952089544141.5, 4488090902035626.5, 2210094114452009.2, 3367982171774729.5, 4156575946094377.5, 7876588150640731.0, 8964915873290322.0, 9986757360835364.0, 901, '2022-08-31', '2021-02-04', N'kNnhfp DgJRp', N'JQpcGyVpEdgjBF', 745, 641, '2024-10-10 18:48:14', '2020-10-16 18:49:58'),
  (452, 617, 275, 65, 2765565721143859.0, 1284574932746680.5, 5215710489427167.0, 2588928605239289.0, 5348847153878892.0, 874649830793459.1, 2742169326655008.5, 4271511773206426.5, 1836971640536222.5, 6868076913633477.0, 6824237995615752.0, 738, '2025-02-12', '2020-12-18', N'_bf IaQFNrMGa', N'OAwNx', 230, 259, '2024-08-16 17:34:18', '2025-06-23 16:11:06'),
  (866, 358, 708, 495, 3857565214421771.0, 3268168871969792.0, 8571569190538443.0, 6093091475760920.0, 511378056983220.5, 2156769491305457.0, 2253660941749810.0, 899966882845726.4, 4861113252460953.0, 126611123909569.08, 8532113226139192.0, 991, '2021-08-04', '2022-03-21', N'iDShYjOitzYo XLWtHq', N'JsKGBN_', 232, 323, '2020-09-05 05:20:35', '2021-11-15 20:46:12'),
  (547, 873, 983, 694, 3670193553265178.5, 1021964718521438.6, 4358076939371486.0, 6106002960841399.0, 4379905675906098.5, 2169471036743940.8, 2033173194922110.0, 4163304408519180.5, 9073376935361890.0, 9618132613386462.0, 7975090706006466.0, 435, '2024-06-24', '2022-10-07', N'ZUMAeCOclE_DXwVKef', N'CSkXY', 263, 810, '2025-02-08 21:46:21', '2022-06-16 20:29:55'),
  (324, 109, 769, 730, 8590699712618644.0, 4157826265557833.5, 7531248480467693.0, 1051847191613979.4, 2380815869520807.0, 4934518595676812.0, 3323453212351850.0, 4187093404561865.5, 5309335794339898.0, 4308502425846709.5, 6242707648243992.0, 328, '2023-12-08', '2025-05-29', N'zES nJ PURvlV', N'gLCBzZrWx', 571, 873, '2021-02-02 19:46:09', '2024-08-12 00:34:46'),
  (89, 615, 776, 884, 8904465500314678.0, 8197190393615652.0, 4083035460130676.0, 3343105276131074.0, 7138016972972792.0, 396027707744940.3, 1553300490824167.8, 3966889020285711.0, 9409378437954758.0, 3666391794612674.5, 8539835565713143.0, 391, '2022-10-05', '2023-06-22', N'xee O', N'DjuQYLVsGCZEUy', 122, 937, '2022-01-21 11:47:23', '2024-04-27 23:38:10'),
  (688, 958, 526, 350, 2246027966777650.5, 2828937671322029.5, 7029741906293255.0, 35778051888832.88, 6924962533191658.0, 29545577743164.13, 1803827973643736.8, 8042577018732953.0, 8265581042907809.0, 4278987681614907.5, 2131098839194989.2, 30, '2022-09-13', '2021-02-10', N'eo_ysrvMVlpBqZKMFUL', N'fitzeTkVvwMuSAMl', 934, 818, '2022-09-25 00:42:55', '2021-03-18 02:37:08'),
  (534, 822, 233, 853, 1127120918427985.0, 7144029345258777.0, 7385412221628859.0, 2685115695533783.0, 1748585093896530.8, 3739682240995366.5, 371769680950276.9, 3597825474823509.5, 7319529545455662.0, 2167379295240374.8, 7879921264181587.0, 209, '2021-12-30', '2024-02-09', N'GqPRHAbB', N'RvPbrHx', 315, 526, '2024-09-17 20:48:33', '2023-04-17 13:11:48'),
  (878, 214, 604, 41, 9705087314826434.0, 303223039070036.3, 9952228379395752.0, 7380315945505885.0, 589711554740242.0, 8188145212150318.0, 6046696834750123.0, 2590247694955722.0, 7337659790522738.0, 4170914536592264.0, 4030218599480084.5, 284, '2021-08-25', '2022-05-07', N'eIk_EuXsSncDTh', N'OfCtFOgWxDrLLX', 812, 897, '2024-01-13 12:03:20', '2022-11-21 10:50:07'),
  (471, 169, 930, 223, 9793780212111376.0, 4341389456619300.0, 3919264605864808.5, 7216393729713506.0, 4598963961135659.0, 719427635631393.4, 4937392176312195.0, 8979527292245493.0, 8455953258718538.0, 6094807958658810.0, 6730140094432592.0, 658, '2024-12-15', '2020-12-25', N'LHQYyeggCkrYC', N'qQAwpVry', 84, 864, '2022-02-06 00:46:26', '2022-10-07 12:26:23'),
  (865, 36, 978, 3, 913510600028125.6, 1396815929513406.5, 1545689670638118.5, 5027419893852386.0, 6360805358776003.0, 3581109323680608.0, 3081219927303822.0, 5252040986860296.0, 9999418491241124.0, 7967762310828131.0, 1756513670471310.2, 489, '2024-07-02', '2021-11-27', N'QjKnscq', N'kfeEqxOPBZdjVAYE_et', 36, 411, '2021-11-28 06:27:21', '2020-11-04 13:21:25'),
  (740, 871, 634, 395, 6282842099870769.0, 632195244454549.8, 4418058445655746.0, 9564307099492452.0, 5545864953158104.0, 2534957196716967.0, 6012004007640086.0, 4502852268268603.5, 8828514356010628.0, 7862177808017076.0, 2498149991014886.5, 446, '2022-12-12', '2024-12-11', N'VXaK-G', N'CIaRbbeYpmcmsXNal', 367, 493, '2023-07-01 03:54:36', '2021-05-19 12:38:30'),
  (61, 729, 573, 664, 7197879186280445.0, 5850632400182040.0, 6546552196969280.0, 9771481445634038.0, 6079253627913237.0, 9196019390319242.0, 514916326109173.8, 1231016715642514.5, 3454263978185565.5, 7659575642877674.0, 3169377665556262.0, 983, '2025-02-27', '2022-11-13', N'AKQuLxgKFu', N'MIKwsCAMPaK', 274, 95, '2023-07-03 16:29:49', '2025-01-19 15:51:47'),
  (394, 229, 108, 592, 3682811695015672.0, 5715214241240771.0, 2454350094598981.5, 4968403560723796.0, 6884364156608928.0, 592688948414061.9, 1805229757938156.0, 1579990406869034.0, 5471446570789238.0, 779046806564132.0, 8536615712618855.0, 900, '2025-08-08', '2024-06-27', N'LWQqlXVHE', N'FAueShVtc', 165, 861, '2020-12-29 08:25:28', '2020-10-15 15:49:45'),
  (753, 511, 672, 776, 6941369785977134.0, 1174202384886301.5, 239186836988311.0, 6685840514638035.0, 1641042335163378.5, 4806463158794011.0, 4041177217578211.0, 4279946534222922.5, 2396407393687167.5, 9055433481339912.0, 1155329455684871.5, 785, '2021-01-15', '2020-10-17', N'RpqT_ecTziGzSq', N'OMlmfETVTyfVRgqCU-OH', 527, 133, '2023-03-26 13:21:53', '2022-10-29 00:08:06'),
  (555, 104, 856, 335, 7990526924939791.0, 4337573966285520.5, 1322812169709672.8, 2954620111231576.0, 1981982560196243.8, 6694226445750356.0, 6127773916075338.0, 9308349144004510.0, 5994280286775980.0, 3478082203377309.5, 6689338317038180.0, 390, '2021-02-12', '2022-01-03', N'-sTGXNCS', N'VKvvhqy', 185, 253, '2020-10-16 20:27:33', '2021-08-14 07:19:41'),
  (793, 746, 826, 645, 9619634763728828.0, 4929936001100527.0, 9105285838410098.0, 1134435894904101.2, 5544730712107097.0, 9803990270200928.0, 5949277937613932.0, 1916891720000644.0, 8519403671262749.0, 3971606301172893.0, 3696756281516403.5, 137, '2024-08-31', '2022-12-10', N'paCWsUVtcgSrTmzB', N'ZqUBKakrOBzAW', 753, 286, '2023-08-29 03:28:42', '2021-01-12 01:11:47'),
  (129, 589, 577, 470, 756198148284422.6, 5062946049376162.0, 2271623928072764.5, 1248749092303639.2, 2602882641496952.0, 8741927717125950.0, 7711257645910967.0, 2407246888848979.5, 3324799624458449.0, 9171425456542574.0, 2568669209253188.0, 542, '2024-08-26', '2020-11-23', N'PgNRQ-zoftjKeHveyGyj', N'--jtoKdO', 535, 119, '2023-08-23 22:05:57', '2024-08-12 06:28:44'),
  (662, 193, 155, 275, 9217071425832746.0, 6660465575380771.0, 9927356365387434.0, 9559403448392520.0, 6855321534867549.0, 6095573461339108.0, 3211254000046775.0, 8659681291912086.0, 2589015210459017.0, 1860973579627769.2, 9104736178549628.0, 560, '2023-12-22', '2022-03-24', N'FiLNGWCkVXzbFgHF', N'ZMZC_', 352, 139, '2025-05-01 10:44:44', '2023-05-25 11:40:27');
INSERT INTO [ligne_transmission_mandats] ([mandat_id], [transmission_id], [created_at], [updated_at]) VALUES
  (68037, 726500, '2022-04-23 15:04:30', '2021-09-24 17:19:42'),
  (640536, 18330, '2025-06-04 20:14:02', '2024-08-01 14:05:32'),
  (119088, 250090, '2024-05-22 15:32:10', '2022-06-09 16:11:02'),
  (578611, 570880, '2023-01-07 13:13:29', '2023-05-06 17:01:19'),
  (967539, 541416, '2022-04-02 21:43:25', '2022-10-28 20:47:53'),
  (250875, 336826, '2025-05-22 13:54:12', '2023-02-28 05:34:37'),
  (635134, 517042, '2022-02-16 17:00:23', '2024-10-03 02:17:04'),
  (488428, 605604, '2021-05-31 07:06:54', '2022-06-10 10:16:44'),
  (327617, 373680, '2021-01-22 22:45:35', '2025-07-21 05:34:25'),
  (296109, 867093, '2025-05-24 09:54:54', '2022-09-22 14:17:45'),
  (150824, 405389, '2021-04-14 18:48:52', '2023-12-29 19:20:51'),
  (501138, 397324, '2022-11-21 22:42:50', '2023-07-01 06:08:48'),
  (428710, 560767, '2024-09-17 00:56:51', '2023-03-28 03:36:01'),
  (998098, 417471, '2025-04-24 08:20:48', '2023-10-27 22:23:18'),
  (463138, 407995, '2024-08-03 22:52:33', '2024-12-24 01:59:46'),
  (751897, 414673, '2022-09-21 10:09:49', '2022-11-25 00:10:15'),
  (36596, 369722, '2025-02-26 23:30:19', '2021-11-10 08:55:51'),
  (791494, 722413, '2020-12-08 00:56:23', '2024-08-14 00:05:46'),
  (51224, 775054, '2023-03-15 21:06:26', '2024-03-25 14:05:26'),
  (833623, 545558, '2022-05-29 20:35:46', '2022-03-05 08:23:08');
INSERT INTO [liquidations] ([engagement_id], [dateLiquidation], [observation], [datePVRecept], [montantLiquide], [etat], [created_at], [updated_at]) VALUES
  (159406, N'nRWxLWsFftQwVvpOtQc', N'dKKJRzTA', N'CKMQQa DTmEbS', N'VRr mrGCwRcbVlKGdMA', N'vKcslUeRy GufYB', '2022-04-24 18:08:48', '2023-08-09 21:36:36'),
  (515814, N'jaHLDNgPGIpAfBtxQzMQ', N'MIYUiezfhMKv', N'riSQCPZYIV', N'__VcIpd', N'WbE-xp', '2024-09-30 07:30:00', '2021-05-19 15:12:58'),
  (969123, N'kkEzM-cUpBkzZr', N'oo i DIYHvwEq', N'yXjFDUCn', N'RimBc', N'gBxcGXCxweFo', '2025-07-18 10:33:26', '2021-10-07 08:06:16'),
  (673285, N'Wu-eRF', N'fGJJDqMqqTlnhHherdP', N'pg NgTSRLUCwWAVHolz', N'brwVBLJCAnsH-zvqDZT_', N'indmbWHvN', '2022-07-16 11:42:35', '2025-04-21 14:53:27'),
  (935257, N'cwBFBGdkZbmqCRlZppfi', N'CJdGfaJJGY', N'TdmtrtHOcUDEmWGSo-s', N'mzuouLzJUuTzQGRm', N'wcukz', '2024-12-18 01:39:12', '2024-02-20 22:15:46'),
  (430100, N'yxArbzaaKnbpDtXWcVbO', N'PoNirMr-JSrdogoPpH', N'EQZDrkJrkYH', N'fCOFxBvz vIHSqA', N'Ifyvq Z-', '2024-04-30 02:37:24', '2022-08-21 16:47:00'),
  (395439, N'wkquCW', N'fCcyPsKxjXPFyfy', N'wpiVlOQzBqlBSYve', N'Big_TVizApuauY-EavK', N'VVXEGOFA', '2024-02-07 12:48:36', '2022-06-14 07:55:30'),
  (313776, N'JZominVVRQ', N'wBkFVTnEgfKf', N'_aVzaswt', N'MBXO_', N'nPT-deXfns', '2025-04-05 21:58:11', '2022-02-03 19:47:22');
INSERT INTO [lits] ([numero], [salle_id], [type], [statut], [description], [prix_journalier], [actif], [created_at], [updated_at]) VALUES
  (N'xUvfiIPC', 580367, N'rGVePKvEgtZ', N'oMEbMamv XRwZUkOK', N'dMzvbfDEjFpnHTnkLTE', 6485236392772340.0, 0, '2021-07-30 02:28:05', '2022-09-15 07:45:03'),
  (N'HXIpo', 400088, N'TJMrXWj_CGpJfAtw', N'EzBhqgJ_Tdfp', N'tlxIFfgAFgtTikUCxtgd', 5856705033598810.0, 1, '2023-04-21 01:37:33', '2024-02-14 02:41:08'),
  (N'vTtjbAyCg', 190426, N'NrrotGYuqjbTX', N'bZKFGqSRGmHKmKlStk', N'fiPmOAk', 5831786162775641.0, 0, '2025-04-11 13:09:13', '2021-12-05 11:11:34'),
  (N'HDCFIU  F', 211731, N'ouaowEqp', N'LSvb PmLCH-G', N'oaqbDsgMGGGHzzpg_', 7217086965463316.0, 0, '2023-12-19 20:28:36', '2024-09-05 08:20:22'),
  (N'ARmpQZR', 54334, N'sLryDXZciZQF', N'JaOAEcqJdmIns TmX', N'BNbYp', 3167025129486994.5, 1, '2023-11-07 19:10:42', '2022-11-28 08:05:06'),
  (N'eyCldNaBKh', 154971, N'gJNHbnQjBn', N'af_YpZG', N'JRAkMP', 7468547649185675.0, 1, '2024-02-12 18:05:08', '2022-02-04 09:45:37'),
  (N'jmhKgOklz', 440713, N'wxwoImEPnVuEMWUTNGF', N'tZzITN_Y pNg', N'XihXSqDKYuMKmJA', 5885920093364243.0, 0, '2020-12-09 17:18:12', '2022-09-19 14:34:49'),
  (N'xV qDUjHK', 874568, N'NQqYihhZrVvWGwyh', N'Gb s_ZJVgYGLPV YWajL', N'gHWfIf', 8540252888895745.0, 1, '2020-12-09 14:13:31', '2024-07-15 13:56:40');
INSERT INTO [mandats] ([engagement_id], [liquidation_id], [numMandat], [typePec], [montant], [etat], [dateOrdo], [dateVisaCfs], [nomCfs], [created_at], [updated_at]) VALUES
  (678635, 142894, N'JIneHeac_FQbZ', N'RZFpFEp mKWPG Cg', N'cLPzeLHspWVXS', N'l_bmkxtscI', N'pFZkTFTE', N'Vpg-gRue-XpAZzxgYS', N'bBEMWfZnoJqo', '2023-01-19 15:24:30', '2023-12-31 22:47:25'),
  (236763, 693905, N'HVsCyhk', N'cyRjMQnCGLvRsd', N'FQFELpkWdG iI', N'gHOJKrALuJQrFh', N'ZzPHAq OmAJ', N'jHeVfEnQ', N'aukRVWf', '2023-06-09 18:47:36', '2024-02-26 08:40:18'),
  (191387, 522399, N'eYioZrjNR O', N'yqEyPMAu d', N'aeYHvbCOFmbN', N'vQNUFCOhqnOZPSBK', N'CeuMQfZi', N'sytssz', N'EqenRMFtA', '2024-02-02 05:41:51', '2025-06-18 10:13:47'),
  (824018, 241890, N'TBXtMdYwSDukaD', N'WtJPAmgQep', N'mo-OJfmjaPgBb', N'yjyvbBt_ZWUbnAItaUzZ', N'kkwRDlpPeigcClWyXZ', N'jFluezcXRM AqD', N'fzunwrpZqBMMRtTHauFe', '2025-01-04 23:00:34', '2021-05-17 07:44:24'),
  (973245, 585585, N'Hf-EDcMEzmlNUjnCmiZn', N'hsXjVoVTTuYXtsSp', N'saHSzpiHmg', N'JWjRyJHVlEXaZGAQ P', N'cUkeUUoBdGcycJo', N'UTErORi', N'qsHLMJIhyVTJSJpPtG_T', '2023-02-16 12:15:26', '2022-01-27 07:54:28'),
  (997890, 437248, N'VxUbsehJuZ', N'zwEBgbJkH HpqBKd', N'yMwuq', N'QyVXm mujulAeuKJ', N'yGgSduPBiv', N'ByJcmO', N'dkAuhVyouPnEmQinZ', '2023-02-16 03:10:32', '2022-03-08 10:10:14'),
  (871742, 637078, N'baSqFA', N'NPquMYkBGbIWZD-Zo', N'UKcKOu', N'noymYhqvrO', N'fxllTwx_ug_LPzFuFF', N'fBrUWWGdXrkXO-hXab', N'BihSJ', '2022-02-06 15:54:56', '2022-06-05 15:46:20'),
  (812609, 386728, N'nzpUICJKnfPrTHZMdt', N'KXvlAyy_rxDdQ', N'SYAQ_MhtG', N'qcxqg', N'FonsxdTXS', N'ySmxnXPHs_E Alnz', N'jHGjRNyPd', '2024-08-02 02:26:20', '2021-09-05 10:59:41');
INSERT INTO [marches] ([beneficiaire_id], [imputation_id], [reference], [objet], [montantTTC], [tauxTVA], [tauxIR], [dateDemarrage], [dateFin], [dateSoumission], [dateSignature], [dateNotification], [dateEnrgImpot], [desactiver], [created_at], [updated_at]) VALUES
  (241765, 333654, N'MQ_yAMVNspuzMYwSQgYo', N'DuMtorNyCDYJEP', N'DeQxlTFmodPV', N'ZBi-EC', N'ODfeOpuOz', N'-FSUekBFoAvdE', N'phRqbEqMXaa', N'GpQkBjclQgUkobLaHB', N'kbGIvJnd', N'WvzQ_poS_xmyHxSmc', N'QqeSSIBYu', 1, '2021-10-25 20:14:30', '2022-07-01 10:02:46'),
  (452564, 307403, N'mbUyF', N'dNVMVgKSCv uuPt', N'sFyXO', N'oLcwSBwiLvlzmxMdrm', N'ibDwCEzyepaob', N'PagLuyCFmfYIJrjXjr', N'IMmdyKRjNbTvVxsQmHek', N'SIlLrnIcaltgTkzV', N'nvtluO', N'_RNuGYc emiyrtFn', N'EbNEPsHWSAOSx', 0, '2021-06-15 18:18:23', '2022-02-13 03:25:07'),
  (728217, 691843, N'xkCM _MWmyzlwtGP', N'hOSdo', N'DRqPGFb', N'fYHRDUCI_ypYbD', N'HbyvLDo', N'OHXftQZpuQU', N'mSTnwUffvxZjqfwUECM', N'OvIOTun bK', N'kByxPHiVO', N'Q_GhWrsXMmlJ', N'vCMhHRdvmVnEUYWJ', 1, '2021-08-12 03:35:37', '2022-01-23 19:16:57'),
  (160207, 180548, N'ONnYvPBrAda-xB_h', N'fYXWcZr-JGyGLz', N'CeRqAGrUQFlGLzo', N'IhiVR', N'LBCOpOM', N'hZjZOynERClEmaZPgsbH', N'bPFcGvYfDzCvSfQQ', N'ebiFOCLJ_GYvpoOLB', N'NmRZGfX', N'EJUjXG', N'ADMASShiUaZ-', 1, '2025-07-08 09:27:39', '2023-09-17 17:54:11'),
  (596794, 515202, N'Nmkgr', N'JYfRIsoY', N'SNdgFTs bpNClVlprlQP', N'ZutnIcb', N'iYQ  KinAwSCXMHLgsB', N'BUqMljB-dqlgEjx', N'VZcgqJ--BgjCg', N'VTYMbvmAiBeC', N'YfRounHPLMdKyXOLwKsP', N'MyjKjtauJQdVCpB_w', N'ffGP_CVWqdTESqNLR', 0, '2021-08-25 10:31:18', '2023-09-17 19:43:38'),
  (870601, 376315, N'NbhwKNCmzso', N'VbPEcVhOZNkWLxa', N'_c HAYyfaMgUSBxc', N'OOZNmKRSHdYwat', N'kfHuhidpPy-jBv', N'nyvBspBKqPla', N'xsj_uwkptUSKpTViX_r', N'uRzGJcW', N'jJvBabFoIINZubPPhJa', N'faWXxhS UfK nfW', N'uathfOxGTiiHju', 1, '2024-08-08 01:04:00', '2024-06-11 23:28:09'),
  (884628, 9126, N'KJOcCT hMX', N'AbwiG-xPT-RyjvuP', N'SWpVAyA', N'XIJcdNP', N'jrx_Y-Mxujgi_ig_vxz', N'gQrQqQbruRB', N'-FDu-BkyNhslU', N'PLjDgayZLE', N'ZCuU vOHp gfdI-gk', N'rIMp lnysOv', N'RhIBuNH', 0, '2024-08-10 10:25:16', '2024-04-20 14:22:13'),
  (966773, 5233, N'EMs--z', N'ThodmbUpZwyjOlfmva', N'qEiRbQOLxIEzaReSO', N'VVfpSodVvD', N'ZxgMxNo', N'Eixfn-oIBWn', N'wsBIjSmGvEmhixCnorc', N'mpKZLPaXQkAvMjB', N'vb-Kp-EmZcdgAmJIe', N'FiQjaZfaOUmlGoffeamN', N'sEj ZTYWMxBSWsBPKOs', 1, '2021-04-05 17:26:53', '2022-09-26 03:34:36');
INSERT INTO [matieres] ([nom], [created_at], [updated_at]) VALUES
  (N'ZDZYjb', '2024-03-20 08:13:25', '2021-07-16 15:33:43'),
  (N'lGYpr', '2025-07-03 22:01:48', '2024-04-14 13:21:04'),
  (N'YzOQg', '2023-12-09 21:05:42', '2022-12-28 00:01:07'),
  (N'hlmczGeluUG', '2024-09-01 08:26:20', '2025-02-13 18:57:28'),
  (N'POfRdYiv', '2022-02-21 08:03:52', '2024-10-17 12:43:25'),
  (N'B Ogii', '2023-12-16 22:45:33', '2020-12-10 11:43:31'),
  (N'SgsUlquJBrfsvV_Glo', '2021-03-03 01:41:47', '2022-05-05 10:23:35'),
  (N'kJD mombCCnD_x', '2022-06-13 19:08:51', '2023-04-10 11:40:32');
INSERT INTO [media] ([business_id], [file_name], [description], [uploaded_by], [model_type], [model_media_type], [model_id], [created_at], [updated_at]) VALUES
  (512, N'DrZytajmaw wP', N'SfihktjHnvWOMO', 261, N'edQAaZOhrdpoyFBLT', N'iowRZCKg', 841268, '2020-11-17 12:47:17', '2020-09-20 19:31:48'),
  (651, N'mgzCTXxTWVN', N'zlcFa', 990, N'CZRKvfsmTezxSGxuV', N'RCwtYrJhOVycQCfFkVf', 371925, '2024-02-09 00:28:34', '2024-02-12 02:29:47'),
  (198, N'lDMxrPNmdsdQBVZsJY', N'eajEVarNnQVKy ZRrgg', 483, N'PqsNrch pyfA-cDuKNhg', N'dTTb', 68885, '2021-11-11 00:33:45', '2025-03-21 07:24:22'),
  (220, N'cjwUAlcjSI oZxziOdt', N'TGLOwddvreoe', 399, N'HTDYhjcwdhijQni', N'fUojbMdWt yyShiNz-pe', 891327, '2021-03-30 23:26:29', '2023-09-30 05:11:51'),
  (404, N'gTESeAiAFJi frwPyDVs', N'uckzhQwHAgJOyeV-ptC', 71, N'zOfQm_CKJ IXUAYD-sqY', N'MEnCJBQkzwSLh_hE', 633779, '2023-12-15 23:46:13', '2022-04-18 10:26:08'),
  (582, N'eFMlPnT', N'rbQlQOxGykAn', 545, N'HZyMk', N'pihaRWHDpECYtlPstYp', 850824, '2023-05-07 10:26:31', '2024-04-05 01:58:04'),
  (307, N'EGKqd', N'iCKoc-vDMZWytoJJC', 785, N'nsTykksTzrr', N'IDXXkk og', 968555, '2022-03-28 04:09:26', '2020-09-13 16:34:52'),
  (872, N'aaOvekVNqHANm', N'YbtMwmBPsdpWwkC', 39, N'ROkamAOVeoy', N'zoKIpXGrS', 195088, '2023-02-21 17:04:05', '2025-04-08 06:09:19');
INSERT INTO [mercuriales] ([reference], [designation], [unite], [prixUnitaireHT], [desactiver], [created_by], [updated_by], [created_at], [updated_at]) VALUES
  (N'jdaJMwr', N'oxjAi k', N'bJwc_cc', N'UMFzvDMs', 0, N'YxcmgL', N'VfXfhVDPaIFJVjj_oGvv', '2023-02-28 07:39:20', '2024-11-07 07:02:03'),
  (N'PGqDyEucSOymrqDaLr', N'tlFqdEzArtshdy', N'KkcGYOtW', N'TijjcTp', 1, N'CnRIUtiLUeGtyWgjip', N'GitVxQUg', '2023-01-24 08:39:53', '2020-12-03 15:47:33'),
  (N'XxpsckN_lzyF_RngB', N'I OwbtmFWqspeVMCSxq', N'oLDjGagTV', N'b vVlGqwoQfhwXHDcDMf', 1, N'SRYmMH-k', N'OaUGzct', '2022-12-03 02:33:47', '2021-06-25 12:09:05'),
  (N'LoHvd_LIeHerLySK', N'rPxnpUDgUuLEUqYoom', N'nYrehXOGlOVx-P', N'YrIzVSqb', 0, N'LqPGpdSWjP', N'aVtHCkHCt', '2022-07-19 17:43:57', '2023-01-14 03:43:34'),
  (N'SwJy_ihpOhI', N'fTJ_cUEhOCJdK', N'-xKHwteFXnlmsPkvh', N'GZBhCuPuAue', 1, N'PRNqkzjVcPO', N'ZgKsZVoqHxkbXwHWqD', '2020-08-21 00:23:08', '2025-03-24 08:41:41'),
  (N's VeRisTrFHJsnd', N'RYWQ_', N'SbDOZmumumlqtqN', N'LRUvQEZMD', 1, N'iJWzadnq', N'VkPkxyi r', '2024-01-21 16:46:33', '2024-11-05 13:56:43'),
  (N'uezzT_AoapeFQjh gBkS', N'UVZrkeAVRKyeRC', N'caaOtdSIUYmXKmBRzR', N'yzWizcGNvSvJG_SmOE', 0, N'nvOvJr', N'nFFOKEpshDtaqFfw', '2021-10-24 01:44:06', '2025-06-22 20:40:18'),
  (N'iShp- Sw', N'bZqnj-cIbTq YAHUKNdd', N'uBEWYmmVrPxLGRqcVS', N'gXSDuSksCUBMo JMvbja', 0, N'lLvzZrkzPksYRvI', N'hmrDyeZusaaglGXGaf', '2023-02-09 12:21:52', '2022-09-03 23:25:56');
INSERT INTO [methode_analyses] ([nom], [categorie], [created_at], [updated_at]) VALUES
  (N'hIRlswmJHazD-E', N'ktmoKazKu', '2023-03-25 15:51:38', '2021-12-25 09:03:29'),
  (N'ogbZflVuei', N'oEZbTCNZdcnd', '2021-12-22 08:44:56', '2022-03-01 02:22:24'),
  (N'OkDKTngzzpUSY', N'rfGbGfXrE', '2025-05-28 00:59:29', '2023-04-09 03:31:49'),
  (N'wipwGJj', N'TS--Z', '2022-04-27 13:27:56', '2021-04-05 14:25:23'),
  (N'VqnHEYdfC', N'MnhsbjDIqMYU_fMjL', '2022-04-02 22:06:38', '2022-06-13 21:52:04'),
  (N'kXYLCtwRMowwbT-PYBjW', N'i-VcrOZFAnoa f', '2021-04-07 14:26:54', '2022-01-27 03:32:32'),
  (N'uhrqT', N'iDFJJxCebhiCW', '2022-06-22 03:00:18', '2025-06-30 06:34:06'),
  (N'IXAqv-hzFJHxVbxZRhHa', N'dfoOfxbQIZXVYcBkVZC', '2022-01-31 21:45:47', '2025-07-08 05:08:15');
INSERT INTO [missions] ([lettre_mission_id], [imputation_id], [beneficiaire_id], [numMission], [tauxJournalier], [objet], [lieu], [accompagnateur], [modeTransport], [dateDepart], [dateRetour], [dateSignatureMission], [nombreJour], [decompteTotal], [destination], [etat], [desactiver], [tauxAvance], [decompteAvance], [role], [created_by], [updated_by], [created_at], [updated_at]) VALUES
  (497017, 315041, 76478, N'EXSHjlkmsl', N'kjSncLODOdSf', N'yJWZiWgpmr', N'mCqToXZA', N'WimLHlEd', N'yBjNr', N'XKEOkqilCKm', N'UBkQNcEvZjkCEv', N'hsoSzvpRLmqDMEdmiHI', N'UdrWsBxBvKStIO', N'yVELidINUswz', N'SjThbEvE', N'OJIjBBR', 0, N'dfOoXApZwobaqP_BwRkk', N'HlJbDuow-_XYQMrGkFe', N'J_ieooJwgyBmYhGqK', N'shmtx E- dJg', N'EuRSnsnoEsEXNQPULVrW', '2023-05-06 18:44:01', '2023-09-21 14:29:50'),
  (811740, 234432, 27872, N'jOEAgRpJa dTxApq', N'rSYSpIjJUGivKMEIxtw', N'ubt-gXuJWFPMYbYr', N'ycXzD', N'rTqMSoNimf', N'av_MdtzIU', N'cYGSKsYaNqmqF', N'__FNXVFKFHjAG', N'jsuHmeRscKhROChrEl', N'cpXNmLxrOLUJPpumoAi', N'NBFDudBmU', N'PSNnWlTPvxqKcqhTZVIt', N'GVUzkmKemNyFCtpq', 0, N'yCeFPaeBtukVE', N'wjOWM aeons', N'UyLtyswKsqxd', N'tbgCC', N'D xicaotKMUqReXhui', '2025-07-02 22:22:58', '2021-12-31 09:29:25'),
  (422417, 306724, 321554, N'JOqgbU', N'EjsbQnbvSQPqBxJQ', N'HCYsP U-CBGufKp UjLJ', N'mlDnehOkMJkPKWJHpG', N'WSrhA', N'DAVNCaGBokK', N'zVFvJrLoh LFTspy', N'FYg-qZhO_', N'ljjJpbtGADXHjHGvnEOJ', N'HOWgXYtLSzlp', N'OaPVWkeyqTAYBP', N'gNpr_QjMIAitIiNRllK', N'oikSDWgeuinUw', 1, N'sJh_Jdl', N'xSsXav', N'FRNNeraqh', N'SLdwzZpGbsbbtxxl-x', N'AurydzFMl', '2024-02-09 19:43:37', '2024-11-30 12:45:19'),
  (574162, 532970, 941141, N'psSxHaKBTNAp', N'KuVz-', N'xudPmCYzQZtVFGLhooNa', N'EtBkH', N'KghdvaAPUInxGSEFy', N'mgBeQMJSBqPdx_pFA', N'cSqfuhazflX PRvjdzd', N'CMMor ThSleS sG', N'frv FSKuzcwAXcE', N'DCfWhGIlPqkb', N'ZhlxTpkiazOhKqR', N'CoEWTgsP', N'Slhs-bkcMkeSd', 0, N'TqGAmR_RxuC', N'VuqmODlMTuseTQkYuUlg', N'VhZVSzL', N'TmzzxraVVPHccrmGzXv', N'A_HsfJVVBU', '2020-11-13 18:33:59', '2023-05-01 16:23:57'),
  (211138, 646873, 41772, N'Na xJW', N'HXfpARWPL_wAX', N'AvAzzpmcSJakvqn', N'ngzCANGDuhVRTXWtUzq', N'bS_zluTQecrIlWGde', N'VswtBMzzlBsIKOEmPag', N'nWe TNRYKx', N'ykzKEMv_wnSyXbArK', N'PihXKEBwU_GHzQbTJ', N'U_-kwhOT', N'noNHLFE', N'WFdK-qeyJt', N'zRe_xE', 0, N'pwAf MWRcBjPImXyac', N'ZuhgBGXaUogqf pPD', N'WPLjBhPUjBqdqcCL', N'Q-bOBmpgvQ', N'AO_ENk', '2024-03-10 21:34:30', '2022-12-12 21:38:53'),
  (936959, 177486, 12247, N'flegm O_HDhXk-YCbHo', N'UhTOv_mWV_tGCgmt Oc', N'KDwPDOfnTsN', N'wjjWxZFBS-UuaWc_', N'rrMgskloOrDfLSdvD q', N'XCN nQlf', N'stcLJEqXhGiAhMMG', N'vjAK-', N'sJHDeaAL', N'T-ylu-XetzwWHLT', N'RzZNYzpeCE', N'ShHfobVyhkflAGpqknS', N'KWBBRccw', 1, N'VLOMPtwpggbjYL', N'nzzGr', N'Z Eth', N'G CCXphHEKIC', N'eg-nl C', '2025-05-03 22:12:27', '2023-08-20 15:43:23'),
  (658343, 578122, 706364, N'ecBkAfZiyj', N'bGQN-kRy bj Y-', N'RVksNPIYYF itLu G', N'BMWxna', N'dOnneRvth', N'KZmGwbnDKFWa', N'ut_LgWxTFuh', N'Ta_rqtXvOnFzd', N'AED-Yp', N'ayzxwA-lfjy', N'mDfztbpj', N'JDOVSmwDbcZ_c', N'egBVKfCrgJC GBXfPTY', 1, N'UnfsQ   BZahdqCxF x', N'eZtPpaQ f-E', N'gczvGmH', N'iCDQjIlGKFYWvGOx', N'gUiUUkUrsMrHSGF', '2021-02-17 15:26:43', '2022-06-15 05:28:39'),
  (294703, 423823, 474596, N'OUr_GsSTBMaMmP', N'QpyzldxCVSb rkCIC', N'WhUelDGeyhmgyGIOJg', N'MKcZhRCGxuB', N'vDkcbCTfO YYkWcGe', N'pRlsh jusKBa', N'UnptIWxX', N'zHgKWZdLIFZ', N'BEsKACfKTSqWF-fjx_', N'SKpEdZ', N'MgfhAU', N'mYEEvsAlJtczgyQ', N'UlTYVGnKAFC', 1, N'lMIwqbDQhtKTLVfJMRgB', N'fxjMYpHRjo', N'teUasPyI', N'gwXAfjlaBBTCeuxRxzv', N'qQyCy', '2023-09-27 05:56:32', '2023-07-11 17:55:42');
INSERT INTO [model_has_permissions] ([permission_id], [model_type], [model_id]) VALUES
  (38165, N'-BdvSDinyOsEtJpa', 642671),
  (132968, N'E BEf', 734045),
  (314022, N'kmughPXTWGkPSkkrIJ', 325370),
  (828466, N'IhMXuRlCDh_epew', 127834),
  (756939, N'BEGJjpXwxeowmlDwLio', 367909),
  (83248, N'coGdNXTUEZJDGu', 65840),
  (689915, N'QxpQGZJulGnHyZ', 397483),
  (263046, N'bOLG ApA_DKqnmKuPKv', 763504);
INSERT INTO [model_has_roles] ([role_id], [model_type], [model_id]) VALUES
  (399404, N'jjoetsLcIeDli', 850283),
  (379677, N'_mULTF', 138847),
  (501820, N'NAlnRA s', 598686),
  (353399, N'MUfDuE_GqScfnUyBi', 156980),
  (58719, N'TUnmzZbzzclEvMr-U', 998859),
  (972644, N'qZjwoUpO UFL_JbW', 335032),
  (829404, N'c OJQRfBMuEO', 574090),
  (469911, N'nbDstvQQM', 526314);
INSERT INTO [mois] ([nom], [mois], [created_at], [updated_at]) VALUES
  (N'dSwgRilbzmI', N'dCQIfwMleHhyM_-EZEv', '2021-10-12 08:01:37', '2023-10-27 14:52:19'),
  (N'sz_-ZqfwDqIaGyymfBT', N'HOWMQxN_ovoAhZ', '2021-02-18 03:51:11', '2022-09-24 08:19:30'),
  (N'tJCgyqtwzRNb-jdcYvn', N'hBsaSd YD KT', '2023-12-02 08:25:27', '2023-10-16 16:11:15'),
  (N'sKCzxRf', N'TgErK', '2022-07-03 15:54:36', '2025-01-08 18:46:53'),
  (N'DLCGwERb-Gq', N'dCKCCT_dbsjZwQjDVyNx', '2025-08-04 23:47:33', '2023-05-22 00:24:04'),
  (N'U sPThdDXsto', N'm OlbJ', '2021-08-08 04:32:36', '2022-11-08 17:21:57'),
  (N'fHrhJ', N'TtljmxLBbwnS-QSKA', '2021-12-30 16:07:43', '2023-03-11 21:22:33'),
  (N'usZGkNsH ChjAXpYskWA', N'jrnEfQsbGl_JTAzpRfJ', '2022-01-04 01:51:24', '2025-08-06 03:49:37');
INSERT INTO [mouvement_caisses] ([bon_prise_en_charge_id], [caisse_id], [sens], [codeOperation], [dateOperation], [montant], [info], [created_at], [updated_at]) VALUES
  (4644, 110574, N'Xqs ZbeVtagviSU', N'Sdnc-RdUzOqy qS', N'F_pYgQmv', N'MNsTSv', N'EOkUyHfeSgbseqvSe', '2024-06-23 12:17:00', '2023-03-26 16:40:22'),
  (614619, 62265, N'qXQBmwU-UffsUSagMd', N'JwnNpenPJLuxCf', N'PMStpAvuoipjComDMhH', N'lv cO', N'UQjBzxjIP', '2022-01-30 15:01:57', '2024-01-23 03:18:26'),
  (299436, 905791, N'pQhj-jqn', N'WOqKS', N'GuBRtOsQTfTmi lUd', N'ecIXqjwywJLjIsXGHTh_', N'Md-BUeLiLUjWleqk', '2024-01-06 18:26:05', '2023-04-02 00:20:29'),
  (543805, 289441, N'SWAqeDpfrg-dGOHPFIo', N'zgJGtwlqpsRRuY', N'to-zGafFd', N'IDLEWacZrSa', N'mlhVEwDwes RzNx', '2022-12-28 13:13:51', '2023-11-17 05:49:58'),
  (14293, 520129, N'PVIjmgOsXxCBhhdjl', N'fsszrIt_fo_VkBMC', N'E-QQN p', N'IXxGzrlFeP', N'_C_chyPpMso zz', '2023-05-03 15:36:38', '2021-07-03 12:28:43'),
  (83536, 958416, N'QiEtCneMH', N'sbzigwiRFpWTIfI_xvzK', N'WtxCUgXFxkzf_rk', N'cCMG_lF oc', N'jjTcDbwmqYlaYSjBYos', '2023-11-10 03:15:13', '2020-12-28 20:48:03'),
  (512958, 23615, N'gLtOfkfWcX-Zohu', N'nJmhyhwpXK-cHmd', N'ZknCXSEMAt', N'YmNROYflaULUP', N'oRCYhF-do', '2023-09-27 01:00:02', '2023-01-13 23:58:00'),
  (539874, 7036, N'eLNLphNzZqdEybeuRcbt', N'HxTlHALfqhni', N'btpWXMgCLJmcminW ghd', N'G-EIJfYlTKx', N'uSymxLFjLnRe lQmB', '2024-12-13 04:28:46', '2022-03-11 15:52:25'),
  (652762, 506457, N'BL WHIzsFVeOsPM', N'MCrWzKVkp DX-', N'XbfFN_tpq oXnFITa', N'ILaCRYjMX Ung', N'jGWyJnufY', '2021-11-01 05:24:45', '2020-09-06 14:15:41'),
  (676201, 266329, N'xApttmXelh', N'TLbLdDLmLQYyKPbzSO', N'JD-bbSEzl', N'KNXAlgrMlyfSskw', N'MsPGASF', '2023-07-07 14:23:41', '2023-11-21 22:54:46'),
  (756955, 711552, N'zn_mpfMSRpm', N'YIlYQtyybMUm', N'pXi_Jk_dQhuwSdBFwPkb', N'TYHAcpPj', N'ttVzuqsM', '2025-02-23 21:52:31', '2023-12-25 22:31:45'),
  (622336, 35117, N'vkkEkdtpHQesfjerx', N'AAsr-UxEQDjdaJb', N'bQGcqwINwrjGvlnf', N'ILMHmRijtkJqLCn', N'AzeAXbe_cDNtRUwaN', '2025-04-09 21:51:36', '2023-08-23 07:55:45'),
  (271542, 962818, N'xENUwzZ', N'KuElgWS', N'_HWMraXjTySzQXFRzuro', N'm_Gcum_mqnjyvP_', N'EAGIh waXO', '2025-03-03 05:15:14', '2024-11-24 14:02:03'),
  (372579, 52737, N'kZMNNd', N'CAwIiIdPDVjFpxIBCtjH', N'Uv-HHB', N'vc_ZmaKY', N'OpEfU_k', '2025-03-05 19:05:21', '2022-09-01 03:23:27'),
  (516810, 637555, N'cbjFmU', N'-oYDOLovSIWLsqRfqp', N'jvMGqLrXSgLii GKjXI', N'V_clErUSMZqdATV', N'zC-XHp', '2024-07-29 17:50:33', '2021-01-04 14:57:39'),
  (237985, 648496, N'YMyTJFUADgl', N'mDoKikcnO', N'DxbUPx', N'diB-BcE_KclNHcDJfkVQ', N'zb_tYTL', '2020-12-18 22:15:25', '2021-09-10 17:39:01'),
  (831226, 589130, N'XA_vdcoNK_', N'xyImtnr', N'gZQhnuPgmLwTMj-FVYq', N'JgBjajBHGTnC-fwEY', N'rbzMkW', '2023-03-04 05:25:27', '2024-11-07 00:31:57'),
  (126067, 116061, N'pvgDovKvF', N'tWZsWMmYD', N'PmeUmedIxOwBctLLf', N'zwsQPNteCECxIiogBvIA', N'Dc lBbfXBJcqE', '2022-11-24 19:32:50', '2022-04-30 19:46:38'),
  (431255, 611000, N'_SyJdxsWPRzovT', N'YfupcumQHBpED', N'xnVMP-kT K', N'QtB_NBH', N'ej-zXFoLbUH_OBL_', '2022-10-26 19:16:36', '2022-08-04 14:56:54'),
  (681724, 553706, N'FqcTkxSul W', N'TcQd oOxnjrsu', N'AGIV _pnufzzcFEmHBz', N'mYDGIATTITyCgMTDgUm', N'aMPjoXXYlT', '2024-02-20 21:06:00', '2024-10-16 10:01:01');
INSERT INTO [natures] ([intitule], [created_at], [updated_at]) VALUES
  (N'lkERzFjokn_k_K_OaDvR', '2024-04-24 19:47:45', '2025-02-19 12:05:24'),
  (N'J JWeKwu', '2024-08-24 02:38:06', '2024-06-05 01:49:16'),
  (N'qCySMAgVNcgAMl', '2021-04-14 04:11:55', '2020-11-04 14:32:31'),
  (N'UdMjs_wcatNz', '2025-02-28 15:18:09', '2024-10-06 21:03:53'),
  (N'HKoBSg', '2023-12-26 16:49:56', '2021-09-13 21:13:26'),
  (N'kCOdcVlzfB', '2024-05-09 12:47:05', '2025-06-29 22:10:01'),
  (N'nWtolNvdTyQqzbbZ', '2021-05-30 02:57:09', '2023-10-13 00:17:51'),
  (N'hzBaElIKQIPyuG o', '2021-01-14 11:14:16', '2025-01-05 20:32:19');
INSERT INTO [nature_ecos] ([code], [intitule], [imputation], [nature_eco_id], [created_by], [updated_by], [created_at], [updated_at]) VALUES
  (N'BAPtVf_AxbZE', N'xzEpIXwDxeCfswkkt', N'rVQLhP', 756528, N'KYbOun', N'scdrU', '2023-02-08 04:50:16', '2022-11-07 17:36:58'),
  (N'JhYDBKov', N'JXnTEO', N'dYzuGB', 723435, N'nU _Yo_FMj', N'zmIbE', '2023-12-27 00:53:21', '2025-08-12 03:35:51'),
  (N'NFjMcdyrpROXJ QtjH', N'pLZBoLhzT', N'XIG_VGOGCbui', 501270, N'GmCOpvq H PZyz_Kg', N'YiuYvtjuPYuwRM', '2025-08-14 01:09:18', '2021-12-11 15:14:12'),
  (N'Rpm_RJFzuOExJjq', N'Joqgw', N'JnLmyzdvxQOmCUG', 167758, N'uKwb_DVg', N'iDGX-xsFrjKcxE-HLw', '2025-01-10 14:56:44', '2022-11-19 12:06:44'),
  (N'WN_vlsNAZ', N'kyLyfMOg-lmZXIavcHX', N'oubtkwHWRYwS', 790645, N'OQJUzGmvheN', N'Un_PwZ', '2025-06-06 20:28:06', '2022-04-20 11:38:07'),
  (N'Z TxzpGJwyIwpRf VMS', N'ZwwPBPtVZkNi', N'YQDIlmzJepZfrptiaqkZ', 326828, N'UMD_YBHqQQ H', N'NbcayRcO_mjUl', '2023-11-08 12:08:57', '2025-07-29 15:51:55'),
  (N'XYYhS-X_Vtu', N'SBjul-HlOwgOytVyU', N'oPafNmItRqbtCTU', 473724, N'fxkTuAylJHujwoXc', N'fAEmIatCAC', '2024-08-30 02:21:41', '2025-03-29 02:41:44'),
  (N'MdfGnSYHsVrd', N'SYNdgdmOsNdl', N'YvvMdVze_H', 583615, N'_iinOOwPoVdooAELJpkG', N'yAWfiy P', '2025-02-01 16:42:59', '2021-07-21 12:55:51');
INSERT INTO [niveaux] ([intitule], [code], [created_at], [updated_at]) VALUES
  (N'OVIlPtKS', N'UjJVRnkvuDP', '2023-02-11 18:40:19', '2023-02-21 05:44:46'),
  (N'vOALpxIoxqedTm', N'UBDJJ-D_MB', '2024-03-19 03:27:08', '2021-08-20 12:21:48'),
  (N'pagZqsts', N'dtJVAHNb', '2024-04-05 23:09:41', '2022-07-11 02:58:55'),
  (N'_zzeUqqSHLdyuLoDNo-', N'enZRR', '2021-07-01 10:56:23', '2021-02-23 07:10:17'),
  (N'TYDgBWKUMtoKfTH', N'XWyJBWEtPIPsCvH', '2023-12-18 06:32:50', '2021-11-15 03:53:50'),
  (N'HFvsRYb', N'WuFaTj_jsvJwjDFXh', '2022-08-23 11:23:08', '2020-10-01 04:19:28'),
  (N'NWEBg-IPVchxQxhn', N'sgkmUSewdR-', '2022-05-27 18:13:55', '2022-09-29 14:00:29'),
  (N'-PFEQR-YqUYE_tZBEpVH', N'UbadmXicyzoeZZO-ZS', '2024-09-05 18:38:38', '2024-08-09 04:29:28');
INSERT INTO [notes] ([niveau_id], [matiere_id], [eleve_id], [note], [created_at], [updated_at]) VALUES
  (959326, 118882, 720499, N'YjYJdtTsi', '2023-01-06 18:06:22', '2021-08-22 23:23:45'),
  (399817, 442127, 894273, N'WZFkM-', '2025-01-05 15:49:01', '2023-08-22 17:11:18'),
  (356217, 201869, 799278, N'vFwzH Yos HlPj', '2024-06-09 01:19:24', '2024-09-11 23:22:29'),
  (911164, 552619, 627929, N'qHqOomnmzjr', '2024-12-17 01:48:07', '2025-07-04 02:58:32'),
  (53511, 833048, 4896, N'gMbK', '2022-05-21 01:12:51', '2025-05-18 14:57:45'),
  (497452, 847761, 681310, N'RQPfOQWtDmnlSidQzV', '2022-05-03 20:16:32', '2022-07-18 03:38:41'),
  (968733, 600276, 639723, N'QorgapY-XVVqUwwS', '2023-07-29 00:14:34', '2021-02-09 21:20:23'),
  (112152, 276060, 973849, N'ndRZFQWPOnWdbli', '2020-08-31 07:32:07', '2021-02-06 06:21:36');
INSERT INTO [notices] ([id_com], [nom], [fonction], [tel], [site], [notice], [created_at], [updated_at]) VALUES
  (688, N'CpEQQZBuxxcWstU_ZzW', N'l aWRmzMML', 343, N'Twp-HcPlMLLgUYTlObiH', N'keolRz', '2022-12-20 08:57:16', '2020-09-11 01:44:09'),
  (82, N'zAiGNXjC', N'TdIfYZRwuwcD', 569, N'gYTpRdHuGTVVxbRdhR', N'BUKkcSLNZVcDkWDIaNU', '2020-09-29 02:23:21', '2024-12-15 09:37:42'),
  (826, N'jvXKsAmcUHKBtBKy', N'_s_mWrhpqN', 986, N'vwsLwKxlJ', N'fBUFiiSVp', '2023-03-22 14:48:29', '2020-11-24 21:56:17'),
  (183, N'LQxDmBpZO-DuMKuoirW', N'yJLYzFySWenAfDoAX', 842, N'vqdOmuBW_GDWtTiNei', N'bsmffRSocfj', '2021-03-31 20:22:04', '2023-08-30 09:52:08'),
  (373, N'chEOXK', N'iu X_VBAPr', 79, N'YqjMrTZYYJYZJ-cyrOWW', N'zHWuIa', '2023-11-24 08:53:35', '2025-06-02 13:05:52'),
  (777, N'ptOLxM_EMwHXk', N'j tEefrBiO -', 458, N'j-aIRdDPLZtIZmuxmIfa', N'BzflJYgyrholSbKSR', '2024-01-05 08:49:01', '2022-05-17 19:54:43'),
  (887, N'I SWDXKj-ejNvNf', N'a-o-KMJ MQIM_bxPkg', 347, N'xUE_shNlj', N'umYrOBf', '2021-05-18 16:15:50', '2025-03-15 01:04:46'),
  (861, N'HDvJiZCmvRAlnlyhcal', N'_cmhStWtVkwWThdVhRfc', 834, N'XaxnO', N'dZQVKGQyRQhXEiTMlXI', '2025-01-08 17:03:44', '2022-06-16 01:07:04');
INSERT INTO [notifications] ([type], [notification_for], [user_id], [notifiable_id], [notifiable_type], [title], [text], [meta], [read_at], [created_at], [updated_at]) VALUES
  (142, 135, 684900, 607339, 555188, N'WFsAelkbDdCn', N'NFeEuTD', N'lGnCMyFxyzoSDzpV_', '2024-06-21 19:44:41', '2022-05-03 10:18:21', '2022-04-17 19:59:39'),
  (894, 822, 892581, 350709, 266214, N'jWVrbeHMexNTNgaJRvA', N'hv-xxYmueVpuRUKkd', N'zAFMHSHNLAGqiZFvVJY', '2023-02-15 20:42:19', '2023-12-09 11:43:00', '2023-12-23 06:43:49'),
  (650, 131, 206693, 318592, 279359, N'ZliDIEy_fXHSEawEb', N'dLentYmZ', N'jLAAtngjhGOIuh', '2025-02-13 14:39:43', '2021-12-06 07:35:05', '2021-05-17 15:32:44'),
  (759, 673, 423455, 277369, 803659, N'd adMaLIC', N'YMCkIZaNMxCHRhXVZ', N'gapxp', '2021-03-01 18:12:35', '2022-11-12 17:30:18', '2025-02-11 06:59:15'),
  (265, 492, 429516, 621516, 522614, N'MEh_zsFNYUN', N'NFsjS', N'pxckKhmON', '2022-07-20 07:07:48', '2021-03-02 15:57:48', '2022-03-23 16:16:28'),
  (818, 792, 227645, 606722, 168332, N'tKBDpnf', N'zba LY', N'jfxLPOrWIcuHBYTRL', '2021-07-16 06:07:08', '2023-05-17 09:10:51', '2023-11-09 07:03:33'),
  (247, 587, 799383, 838270, 870445, N'ZO GPAvgzcq', N'KWhkNdBvSIlIlhgow', N'Ozgmz-Xw', '2024-10-18 20:52:33', '2020-10-07 09:00:47', '2023-05-20 17:50:04'),
  (781, 598, 942601, 303950, 729627, N'SYMkNHqDJm', N'agALoMR_pmZPBgu', N'DlBBPP', '2024-09-16 00:30:37', '2021-03-26 18:05:57', '2024-02-21 13:03:53');
INSERT INTO [notification_templates] ([business_id], [template_for], [email_body], [sms_body], [whatsapp_text], [subject], [cc], [bcc], [auto_send], [auto_send_sms], [auto_send_wa_notif], [created_at], [updated_at]) VALUES
  (140, N'yjyBVwEIgyxDYsZ', N'ZGbjGPi-rcU-OiRU', N'cfLXRlmU', N'djAzKRgM hxFkyvkQOU', N'SnBwRS_k', N'nKtnYvBPIPqTb', N'zWTYXw', 1, 0, 1, '2024-12-11 20:53:09', '2022-10-07 10:32:38'),
  (787, N'vJ PRhtN_eRG', N'snBYV_TFw', N'cyAkkF', N'fSjgakdPFtpTiYfdvBNT', N'hXCgzr', N'rshgTlWveCnYWTXH', N'fPFxbQlZjEIoQ', 0, 0, 1, '2025-07-10 16:07:35', '2023-07-17 04:04:24'),
  (150, N'xUTMUTmKkPkd', N'ok_rdV', N'CkRWQ', N'igHCJVT', N'sPlEalbL-tuvDqS', N'mNKbWsWpUohRBJjbDC', N'kZCvpiVczPg mt-h', 0, 1, 0, '2022-04-06 20:14:07', '2022-07-05 18:12:27'),
  (580, N'QqZvckhsxpgfxKEtNEJ', N'YSOAsmNgnlZzesxvdM', N'uraHotwejK', N'PNu_IOEc', N'lBnyXPlCrliuJun', N'pvbjLKHnRQ vvE_aOH', N'ZqCAuiHzJnRIqmkrEZP', 1, 0, 0, '2023-04-12 11:27:49', '2022-07-25 04:35:13'),
  (270, N'GopxbAHKERPr', N'RqB-JQXDhCrMaN', N'_ukNXIaCfFNBTxn', N'eCOaLhgFYE', N'V_QsM-STztUyVuHQGN', N'MjeRtFxIuCdZUq', N'KXMQV', 0, 1, 1, '2022-06-02 21:06:19', '2024-01-10 05:44:49'),
  (632, N'iTxZYH', N'XvWlweAhj L-usb', N'CMTxxKH', N'qmEcksecwkGp', N'NAUpmddYo_CqhFl', N'eq_WEDJbNzalSXdewJgX', N'OHZEdsCKTR', 0, 0, 0, '2020-10-08 16:18:03', '2021-10-03 01:33:27'),
  (752, N'jBOYXSnzplzeH', N'DBVYayMZQpFgS', N'gJo_uYUXUn', N'hlCohbAVmJgXv', N'HXaTX rL', N'nEEcQkFdbOlhX abQW', N'JbLM HUkyVkBAWu', 1, 0, 1, '2021-11-14 00:40:14', '2025-04-09 02:51:08'),
  (367, N'mIIUx', N'BEYeDyun rEo', N'xlPgW_sOe_HP', N'YP qSY', N'gGIoboTSgcgfXX-kDqF', N'QusdQM', N'OUzDcyVlfxqqz-U', 1, 1, 1, '2024-01-14 00:59:45', '2021-07-15 08:45:59');
INSERT INTO [nouveaux_nes] ([accouchement_id], [nom], [prenom], [sexe], [poids_naissance], [taille_naissance], [perimetre_cranien], [apgar_1min], [apgar_5min], [numero_declaration], [date_declaration], [vaccin_bcg], [tests_depistage], [complications], [statut], [created_at], [updated_at]) VALUES
  (571539, N'EOspGBAiwdkWXGr', N'fIPWfGv pGePlqp', N'f grgacMSwD', 543, 164, 737, 595, 872, N'VRfS-YZW-SNME', '2022-11-28', 1, N'_dQqHkDSifvw', N'WmLOBS', N'heAJj', '2021-04-13 06:59:48', '2025-03-26 16:47:47'),
  (957062, N'qcyVqKjUkcCpYxQOxzi', N'iRPiLq', N'-xgmOeMIZLrQOQ', 539, 769, 317, 774, 906, N'OSRQcTEeTFpZbQlfwzUb', '2021-03-21', 0, N'VEzvNGrwDzke', N'PukbBI', N'_aYTAL A', '2021-07-08 00:30:16', '2022-04-17 15:48:55'),
  (576784, N'XpRUPsouYE_eSfYbTiV', N'tCDSdrEUiQKd', N'mYHI-gPnKT', 222, 457, 137, 579, 615, N'JFzpkjPg', '2025-06-08', 0, N'_-Urqc-', N'bAYKRrIlYEW', N'Qfq Gsyps', '2024-01-08 07:07:56', '2022-02-15 20:19:04'),
  (473087, N'fqXkwtXyR___podFiEPn', N'iVYvBKX', N'ygTszMwzhqkRzZAPU', 649, 659, 64, 924, 322, N'mVKkUanoUabM', '2023-08-16', 0, N'YhvFtsoVqiJHgP-Xh', N'z SRlLGSUPlahd', N'ilQIDhVXfAsHHPWFJRMI', '2022-08-14 21:20:38', '2022-07-23 21:25:52'),
  (677248, N'oXlbZlwnvoNAuWQsalSD', N'_vRWAcFreAIHfOeoZ', N'AKHrfNW-JZvxmH', 587, 235, 829, 101, 997, N'vOdOa_VLvAOfqJZIbQeL', '2021-10-28', 1, N'sMpHVVEfoWq', N'pKhvQXMnP-AFwo', N'NqBtuEwlTBUkZXhW', '2022-04-18 12:23:40', '2022-06-07 00:20:19'),
  (800576, N'WNzajathuvPHpWdhQM_g', N'sZWBohleVjIpP-oUfa', N'PzZLjL', 322, 991, 120, 144, 948, N'RPNaLlOReHMXY', '2020-11-14', 0, N'LepXi', N'meZgj_LUdSqDSkXD', N'apSPg', '2024-12-13 00:54:59', '2023-09-05 17:20:07'),
  (76909, N'kxQb xp_boq', N'vGuxxVbW-l soUBct', N'g cpC Qq', 43, 576, 439, 799, 807, N'ZXdsO_', '2022-06-18', 0, N'yTBrMEJTr', N'RoEUy_hcLXjxXK', N'sxkIZC-LRO gr', '2025-01-30 12:55:19', '2025-01-14 06:49:43'),
  (75785, N'tYgxFULgNiL', N'lBJrFSh', N'OFgeccCNJweKlXPgI', 61, 276, 873, 245, 595, N'LkOFZhCBLmqnhExjoc', '2021-10-05', 1, N'ASalYrGBM', N'ApQwFmWtXUAjolYRV', N'zHYksXg', '2025-08-08 22:21:53', '2024-05-21 06:40:27');
INSERT INTO [observation_medicals] ([patient_id], [personnel_id], [contenu], [observed_at], [created_at], [updated_at]) VALUES
  (345339, 261380, N'iJY rcLoMUq', '2021-11-09 13:33:33', '2022-09-15 15:26:55', '2023-09-24 02:50:36'),
  (860651, 30817, N'omBu_ArfIhy', '2021-12-11 18:03:50', '2022-05-25 21:38:02', '2020-09-05 05:25:42'),
  (969690, 623398, N'CcFGO-RPyI', '2021-04-30 02:00:51', '2021-01-01 18:16:59', '2020-09-21 17:16:50'),
  (587046, 826579, N'kMWlqYiLKLTdZymUZZK', '2024-03-16 02:12:29', '2024-10-18 10:03:06', '2024-06-26 11:28:54'),
  (234842, 627155, N'YPoP lOvhh', '2022-01-22 23:12:33', '2024-03-01 15:00:09', '2024-12-03 17:23:31'),
  (708906, 223248, N'YfCZSsocfFeZ', '2025-06-23 02:28:47', '2021-03-25 04:53:57', '2021-01-05 11:58:06'),
  (426839, 337821, N'VSEU-tv', '2025-05-06 00:05:49', '2020-12-23 16:04:09', '2024-08-21 13:48:04'),
  (314447, 911551, N'BsVNlCo', '2020-11-03 04:05:32', '2023-07-19 07:27:23', '2023-07-25 21:14:10');
INSERT INTO [operations] ([patient_id], [personnel_id], [service_id], [personnel_id2], [business_id], [location_id], [session_ticket_id], [acte_medical_id], [code], [duree], [motif], [status], [resultats], [date_operation], [created_at], [updated_at], [type_operation_id], [type_intervention_id], [type_anesthesie_id]) VALUES
  (612642, 220277, 120764, 643154, 294, 130, 951513, 967494, N'dOjgJgUlLLxPDGwJNa', N'ReACJb', N'nMvzOWjoW-XIgXkEWRY', N'IrYdhzXVJGSN_EjRXCtI', N'yfoyykAlJCmssIDz', '2021-10-02 15:16:36', '2021-05-20 01:52:46', '2025-06-11 18:05:08', 951052, 709177, 548858),
  (138490, 810662, 78624, 87079, 693, 983, 157714, 104743, N'-GvLTaQSgi_zQajunkYr', N'bwLWL_hqFbLWjV', N'xdyrXI jmRFMygSox', N'HlAVfS-JmkKsfefTXZVA', N'yOYNHUMbKtM_wY TeB', '2024-12-21 16:29:41', '2021-01-26 07:23:30', '2023-03-07 23:08:46', 23459, 360696, 41007),
  (738480, 642993, 176008, 743091, 164, 502, 473515, 176748, N'Bp_XswOoca rFcoYh', N'SgytUUrqmo--uJ', N'ltBCVdZYJrTuar', N'FZmEeQiuz_KU', N'gaTqEOs', '2025-03-19 20:21:23', '2023-07-08 08:15:37', '2022-08-27 10:04:41', 805721, 111662, 535251),
  (937949, 134192, 316269, 729783, 426, 813, 733088, 867039, N'dgDGJgoZwOqnifI_Xe i', N'shwcDNvAF_W xOODBK', N'-Slcgov', N'skjKGjyYRMA', N'LPuOkvqx', '2025-02-07 09:56:33', '2024-05-20 00:25:33', '2021-10-30 22:18:57', 532426, 104576, 201939),
  (452118, 133981, 154454, 461456, 971, 435, 489389, 604600, N'CTKcQvqenm', N'CLVsVBjp', N'RAOnAK_avaFo', N'trVgjbs', N'tzpMvlq_zZOPymUjfXy', '2020-10-20 13:30:36', '2022-05-30 20:15:23', '2024-11-27 05:15:58', 3100, 542826, 924626),
  (827, 467680, 227343, 840300, 404, 657, 695829, 918445, N'gfnmkDrqMEOxcht', N'WfVGIcSYKC', N'Oer_pF', N'UXxCraaOgijB', N'oYQdbWeMXUkL', '2025-05-22 15:51:23', '2025-02-16 06:40:55', '2020-12-31 04:55:09', 653349, 900151, 149764),
  (577615, 538015, 724302, 901487, 852, 133, 38756, 41229, N'vbIwzNfGC SRxWNO', N'ylAenkjgBYHlI', N'RJfyl', N'EpUbakDe', N'sWBiUvpIrsoB', '2024-04-24 03:21:48', '2023-06-15 23:41:18', '2021-11-20 23:56:25', 784838, 59468, 266243),
  (111204, 5499, 787818, 185138, 411, 902, 543772, 19122, N'p cODWyUNwcb', N'kTpn-SKxgEITPJbVeq_', N'elYSji IGhM', N'XzsTiwHjB', N'rrQXHzmMO', '2024-12-21 10:52:09', '2024-05-14 07:28:21', '2024-08-21 01:57:47', 746442, 101738, 330693),
  (394879, 345279, 129477, 65295, 781, 857, 47630, 922331, N'HaXUouBE', N'fvlrbKoTI', N'_wiF_uzfCfQm', N'RNSyFiWDCarfluzjWq_', N'YHeMMmwXEkZwAQpFZac', '2024-12-14 12:42:44', '2021-12-03 19:36:15', '2023-05-09 03:42:00', 123959, 959808, 165918),
  (204645, 557815, 833181, 65716, 767, 607, 410648, 196256, N'UmPoBwXUXnRHXrFDCp', N'PyknslOwQXjI', N'BVazqCUvnjwRw-XDnJ', N'sb CLSmZy', N'lW_Z-_GMLGISxOu', '2020-12-23 11:40:20', '2023-09-12 11:07:56', '2025-08-08 02:12:05', 169585, 713487, 43011),
  (415060, 753161, 965931, 213034, 253, 499, 63007, 405797, N'N hbriJYuuZFNJEmTjY', N'T_zjWJln', N'YIIQc', N'xxNJJCfqXkhN', N'oUZ-_ZWBqy', '2024-01-08 16:28:57', '2024-01-11 18:59:28', '2021-02-17 01:11:09', 296875, 726594, 386275),
  (580267, 625028, 262433, 350548, 254, 827, 159175, 571912, N'UUZoxCZ_GZZYS', N'DXVhxSWrhxMFa', N'qXfotwoctUwPop_S', N'BATx DXjBYRl__w', N'kzYwIvK_yZjQZvzQcG', '2021-05-28 02:52:48', '2020-09-02 11:55:17', '2025-06-02 06:54:59', 337905, 462913, 857390),
  (833939, 580988, 856305, 528104, 51, 10, 320180, 368758, N'rfMMz-eCQAs', N'piMaEAuJiqTsV', N'DYUrKJYvqVIwdzDQGYeq', N'B-r-RLsPwZLMjq', N'MWTQ-QhcBfwQoZro', '2022-08-11 15:15:17', '2024-01-26 02:13:39', '2023-12-02 12:48:15', 497984, 890018, 108712),
  (703456, 183562, 577817, 768880, 745, 543, 844167, 908935, N'dRC_Keb', N'GitgFKsyRWxl', N'wyzkNxlRnW', N'Sxoaw', N'ZolFaGF', '2022-03-15 07:30:19', '2023-05-25 14:15:00', '2023-03-16 05:48:14', 982721, 420003, 416263),
  (162909, 173236, 244355, 42651, 555, 527, 407450, 821850, N'vHYKkvdE', N'mmmMW v', N'uin_xWDLyxLnftMfVDd', N'EwPDUrcNoyTaltjcefL', N'RciuWyjnytcAV nGAnB', '2020-09-20 16:07:03', '2023-10-22 20:44:03', '2024-09-27 23:19:37', 313581, 497110, 884563),
  (42822, 804163, 853611, 461671, 424, 990, 495978, 52287, N'fccSvhhfQkFU', N'BXgmGzXDjLoOJPVZmRQ', N'JBvxITeY iGrIQuT', N'cuBpx_-To aSACH', N'oJseebOCmQtjLrYyXsW', '2021-04-18 14:33:26', '2021-06-05 20:52:17', '2024-10-17 10:21:50', 859643, 928568, 119570),
  (887847, 241667, 595556, 200428, 558, 401, 225485, 926633, N'XGRxGi', N'KjNHjYHhkjHeBVhR', N'QnnXkKqQhK', N'y-aSa-EJPvgHW', N'uTDUFxcr', '2021-05-15 16:28:41', '2021-07-23 08:49:27', '2020-10-03 05:03:32', 342577, 6963, 521488),
  (545594, 229276, 122844, 179941, 405, 617, 176995, 143422, N'KBAIEQiLnAp', N'U_EGBIdJ', N'Pn-N_dUdw', N'kpGKkseVk', N'ZWAmDqEz-jBAeGtU', '2021-01-05 12:28:15', '2024-11-16 16:17:57', '2021-01-15 02:27:03', 852185, 994707, 564829),
  (764142, 517096, 701154, 203405, 472, 70, 101076, 400563, N'FqhpxSP', N'Ca-bHWEGa', N'lsaRX_LEYgA', N'HprFvtIba_', N'NfrZBFkAa', '2025-03-22 20:45:32', '2025-05-13 17:16:54', '2024-03-20 22:46:29', 58336, 80969, 875683),
  (408780, 26432, 502203, 984510, 137, 185, 218447, 538253, N'cIYNUYvjU-cORNTG gV', N'OXtNdPcZ', N'UYJCXfd', N'lOAUPCze', N'JkHSSmQf', '2020-10-06 15:12:15', '2022-05-22 10:15:15', '2021-06-22 02:12:05', 601059, 215808, 625925),
  (775097, 584973, 655450, 681230, 76, 15, 900915, 717087, N'uEthlnevQFCa', N'ooaeONlJFOPiNephUcof', N'mbOMIsVdGBncVSRMO', N'zXsQuJZWJvBL', N'rq cCGIuIAQ', '2021-07-22 07:36:06', '2025-03-05 23:11:10', '2022-10-04 18:44:59', 833403, 125404, 994720),
  (592390, 163265, 613455, 210766, 81, 594, 896550, 728808, N'BPncmvMKq', N'RgjoB', N'ZBzcnopK', N'RLRaXSuRHGAfZ vATTZ', N'mPginsevFEv_Va', '2021-08-04 00:02:19', '2022-10-25 17:00:47', '2022-12-02 11:10:49', 129422, 881649, 431392),
  (591750, 885643, 726661, 597210, 227, 40, 875029, 897684, N'WFSfkmlhkCxO-cKWTY', N'r-sGFPRQ', N'EljDEPcPf--', N'xNcdRumWFBPgocV', N'_BCFQ Z', '2021-09-21 05:40:40', '2020-11-05 05:11:11', '2024-12-01 04:44:53', 4447, 650414, 406583),
  (283083, 605234, 171457, 720646, 930, 494, 945202, 102188, N'DjTMAKhoWydKuOnNn', N'MlnazEMsACnme', N'EeOKIWItzAh opVKi', N'jHMhTRHmUE_IUNTvly', N'NiPT-UWxQqxVl', '2023-09-01 02:25:27', '2021-10-08 08:00:38', '2022-10-19 03:43:11', 76318, 400375, 80011),
  (405804, 819180, 870056, 888907, 397, 778, 254811, 526490, N'lYpKwYfESruOeYIrHepj', N'DPmnqshAInCJ-_OLZj', N'xsMxkFYLFhROUYmlb', N'eoohapnCpUV', N'XyfLeZn-tRoh', '2024-04-18 12:45:21', '2021-08-19 11:07:39', '2024-09-18 23:38:49', 839046, 227913, 199761),
  (614298, 926691, 561076, 558753, 244, 171, 361974, 336730, N'geJXQ-', N'jIDZFyRpGivm XcE', N'RTVBagokAUIrogfOrMa', N'YcryDZYNplmAEbxpAT', N'SbvhPOxf', '2022-04-29 20:10:02', '2022-11-09 15:32:10', '2021-03-01 01:51:28', 966578, 480658, 752350),
  (151823, 555916, 954244, 177899, 361, 341, 710491, 84860, N'yOK-cU AfvQXpm', N'hmogDlvmnNFOhK dj', N'ZPnmm_ZrI', N'PBbdBc_naYaIy', N'GAqLONLXkFNj', '2022-11-18 12:50:05', '2021-10-03 21:52:41', '2025-02-09 02:47:01', 715080, 637487, 732144),
  (748739, 577232, 107047, 524305, 380, 789, 718349, 409071, N'MgRIMr', N'lbzKiOUxyxiMg', N'axSyERvgqTD', N'WBRFITKdrq', N'jaNCXzJJqG', '2021-06-10 00:49:49', '2025-08-11 02:30:22', '2020-10-27 18:46:56', 203127, 225063, 68713),
  (484900, 730971, 113880, 855800, 529, 746, 44256, 200168, N'VZgBq-xqz_uYooNR', N'_zbn-DP', N'SgalxQhfSCX', N'umEFEZTfltW', N'cT_Guuvtw', '2023-09-18 00:46:20', '2020-09-28 14:39:46', '2023-02-20 10:28:37', 88193, 587815, 92755),
  (46446, 688516, 703033, 991220, 504, 838, 392935, 290454, N'IPDSaL-GQmFJ', N'jfKIbbMoCoG', N'ppXJQo', N'hmlFKcnSRokkvRnOYctM', N'cbIM hs', '2023-09-25 20:46:03', '2024-12-21 03:14:02', '2021-12-20 16:39:05', 991623, 212161, 25190),
  (703593, 704451, 575548, 405264, 855, 932, 788137, 861538, N'ytVSj', N'EjxKrFlesglWFbkZ-Oj', N'QQYD_P-iIyvvNbkC', N'ZC-hVPXAGuHdJs_-S', N'EjGzr_xw', '2021-04-27 20:32:12', '2024-12-16 10:09:00', '2025-01-08 19:46:54', 981396, 67539, 298715),
  (710540, 215457, 725230, 67119, 202, 246, 164375, 807595, N'NfSUOeOEe', N'CmdWuv', N't-gOpLJfFgrZBrkf', N'MDXtiqwGIRH', N'i_CVRdVQF', '2022-07-03 18:36:56', '2022-11-01 04:43:01', '2022-04-27 01:11:30', 859144, 237339, 184594),
  (514465, 711303, 882648, 892263, 963, 772, 163385, 136699, N'c pNdQHYV', N'yQCkusRVtLg C LkiId', N'xVgrwJzisD_', N'VDqbN-BYhAGylTC', N'xOBspryJibCVkxfaqnq', '2024-04-17 11:23:15', '2025-03-02 11:27:57', '2022-11-02 14:46:17', 375583, 431561, 834869),
  (876770, 796761, 583742, 414947, 22, 822, 688686, 699559, N'WtiCq', N'fpOoWDbGJSZbqYOcrX', N'dzREoAmk_URYtTla', N'ByChqHjceVB', N'EBlZGSuYFVFCTmJ', '2021-03-28 01:04:07', '2022-07-06 02:10:53', '2023-01-18 08:35:18', 125001, 432280, 300656),
  (191616, 517352, 127519, 429609, 787, 358, 962749, 677338, N'eNmOkZIQ YSVVXqsmIi', N'IxQ-NyGoeErIkFySJXh', N'esNIYW', N'ajlvOaCHS', N'AwgYYIZxeAy RmY', '2022-10-14 03:26:05', '2021-12-10 19:24:46', '2023-09-15 14:32:50', 343190, 271427, 204758),
  (610816, 712611, 928956, 296629, 74, 500, 791017, 7073, N'lHFnXbfZrUyJkej', N'OP nQVjbLpeSQD', N'ITJbiQijYFG', N'KijMkoQccpRVgMfaZ', N'BPxsietyF-', '2024-04-12 13:54:40', '2021-07-08 07:56:11', '2023-11-23 01:56:13', 687975, 269720, 503128),
  (155348, 835386, 647945, 356175, 993, 254, 651919, 247633, N'lysdcGHXER-Nf', N'tlaExl uyUWpzmTHQam', N'bAl foS', N'KM- OY', N'zkkLaAoQtWESahQUWp', '2024-01-20 00:20:03', '2022-08-17 12:14:37', '2023-08-13 12:01:13', 164249, 518944, 699168),
  (914524, 965350, 499528, 820041, 423, 284, 192756, 837614, N'rXMmKdPCeoiMU REvT', N'UVovFnRy-hdx', N'IZtSq', N'yHttnw', N'cJARJpQ', '2025-03-21 06:51:20', '2023-08-13 12:16:58', '2025-04-24 00:02:09', 826859, 385161, 104993),
  (165314, 672738, 633707, 642389, 23, 425, 369732, 48695, N'fv OMv', N'OJHBBS-dMv', N'lwKHnPsVKXNRxzAAn', N'lsoIdUuQQGcPmCABxOb-', N'GoRtpqJmHVnrV-THnaoC', '2021-07-15 09:20:42', '2022-01-30 03:39:02', '2023-06-24 11:23:51', 826327, 723338, 586423),
  (792971, 778566, 300217, 726084, 365, 861, 778078, 880763, N'UpeXSnFXrlYdiQ', N'GfOUcGRJO', N'p IplTROfXTmjf', N'PfKe-bOWDxlS', N'JNWzjHIsEGRhS_vHLzJw', '2022-10-09 23:03:42', '2021-12-17 16:40:57', '2021-06-05 21:59:21', 508153, 732631, 655390);
INSERT INTO [op_types_anesthesies] ([code], [libelle], [description], [created_at], [updated_at]) VALUES
  (N'ATOcGk', N'nOuMfkKZ', N'SXoh_aD_Gs', '2024-02-09 16:47:14', '2024-05-09 06:26:39'),
  (N'MOvyTgCTfI', N'nkFnJJiPET', N'VZ-rfpKPQCo eO-FFayC', '2023-05-30 13:38:07', '2024-04-15 08:04:58'),
  (N'tKRcs', N'IsxQihekN trnwr', N'dBkTf', '2024-11-14 06:57:15', '2023-01-02 13:26:09'),
  (N'HfMbZNybF', N'XVdUs PwAwdhypJVQ', N'VEpeNOAWYIWsDSbJ', '2021-07-06 13:47:11', '2022-12-11 20:42:43'),
  (N'wcGYiQnCTI', N'GxXkYyZnSxSm', N'wB-vIX-KKn', '2021-08-21 15:59:36', '2024-05-16 18:11:57'),
  (N'ZcLaeT', N'o-t BIR', N'dRoAN', '2021-06-01 01:12:25', '2023-09-25 15:17:57'),
  (N'r jXBdk', N'FzORevfJQeLppfQdro', N'DryuNfnfAZmG_', '2021-06-03 07:07:35', '2022-02-24 23:06:37'),
  (N'QIAeXr LI', N'LjtJM', N'- qwFZtXKLJNrDV', '2022-09-07 07:45:53', '2025-04-22 05:18:11');
INSERT INTO [op_types_interventions] ([code], [libelle], [description], [created_at], [updated_at]) VALUES
  (N'QXlwtq', N'bIANMfMEYZC_T', N'xZQuyWEWEMqibrKb', '2025-08-11 13:58:26', '2020-09-20 07:29:46'),
  (N'KsPsqt Y-dxBxxRw', N'NF-h-Fg', N'oVhmQbcFI', '2021-09-11 17:23:31', '2023-09-28 06:14:37'),
  (N'FCQI FXdk', N'yPUVHPwrd', N'FEiorGSNU', '2021-03-02 17:19:58', '2021-11-04 09:09:53'),
  (N'QjgJeMXJLktbPEFIB', N'RnJYyPpAtuIQZNu', N'NYUVBEhzbHNbz', '2022-12-25 11:15:30', '2024-08-30 05:41:59'),
  (N'_tQjiSTfW', N'WhSuvb-SKdkm', N'CXVwa', '2022-10-31 17:45:41', '2021-08-05 00:18:10'),
  (N'JsjBdqaIQNUNO_Dwpp', N'wKJNUztSpkkX tYKde', N'LnyovXXtDcsdHdApL', '2021-10-22 16:34:02', '2024-12-15 19:34:37'),
  (N'pIlZzBX_rz', N'fZlNYLOKt', N'udEVJqQ ZWMZa', '2021-10-13 01:20:54', '2024-01-31 03:29:29'),
  (N'MfEAfWigtndaYkGV', N'UcyOyOHASkS', N'GgiCDwItnbOH', '2025-01-28 23:33:25', '2022-02-06 00:36:33');
INSERT INTO [op_types_operations] ([libelle], [code], [description], [actif], [created_at], [updated_at]) VALUES
  (N'hrYWgoB MKGCL', N'QqxTt', N's mFVpHSSSfzFsFO_t', 0, '2024-11-10 11:38:23', '2023-11-20 12:42:07'),
  (N'TvftYyTgjQVssZzw', N'GZBJj', N'zOThm vk', 1, '2023-04-04 18:15:51', '2021-11-25 07:42:11'),
  (N'NgvTQsmmLEq_IVSb', N'C_aSczNeQGrXos vZfFK', N'KAIFCTiKeJ', 1, '2022-11-03 01:52:31', '2022-04-13 23:42:43'),
  (N'yyWjDDj GysUbOXLn j', N'ptNWjBZGgY', N'jkqZfgJRQGR', 0, '2021-11-05 05:47:34', '2023-02-11 01:53:36'),
  (N'jOyvyZkHtcHJDBQ', N'FtMsBvMYwKVndd', N'YMH-U vJVJUYCZh_nH', 0, '2021-07-26 08:26:34', '2021-06-26 09:26:27'),
  (N'rMSOkmoBuuUcGh', N'pqhncUgzCkvcD oO', N'eTHYmBugV_w', 1, '2021-11-17 14:48:08', '2022-05-27 19:12:02'),
  (N'dSEQYannBKkkRXrSKVtC', N'IWQyxWahP', N'cxpxrxkxxnzlVT-', 0, '2025-05-31 10:48:49', '2020-11-17 18:46:36'),
  (N'Dxfqg_auUHO', N'kxrlLcXDrpoVUHUOZMiY', N'uPylmhLmLNjVaevUU', 0, '2022-11-18 14:29:53', '2021-05-03 02:41:04'),
  (N'SfvbAYIsV', N'SYTYPYQgtL', N'h lLqYTUOljAAXKR', 0, '2025-07-24 20:31:52', '2024-11-27 19:26:00'),
  (N'kAqavPRMiGkAvuVc_', N'YrH_HjEhGtzO', N'dFQjCj MXUFtPsd_elQe', 1, '2021-03-04 12:07:15', '2020-09-19 20:00:39'),
  (N'bRBvvILRHGUTraVWy', N'jUkeIfoqeauMF', N'HHekn', 1, '2022-03-19 13:09:53', '2023-02-22 18:30:19'),
  (N'iC_VWBebzPvb_RHF', N'HdYaJHSnL', N'sTQsSEUlMSK', 0, '2022-04-28 19:27:41', '2022-05-05 21:28:15'),
  (N'myqpH-Af cTpk-l', N'AWsHTnzHrnEeSBs', N'zPeiKq', 1, '2021-08-11 16:35:12', '2020-08-21 06:34:46'),
  (N'vgDUEZPXvFvjZVwh', N'BxOBeHjjkRIgaFo', N'BFmUomMeilV', 0, '2023-03-18 07:59:06', '2023-11-21 09:27:35'),
  (N'EhWIh gadY', N'gSFLfDbENxVOVSoTBJCW', N'iUHUI', 1, '2024-08-01 03:25:26', '2024-10-01 09:35:24'),
  (N'OzExXdTvBFuSoOMxiFsv', N'mynTv', N'lsmJquDhg y', 0, '2024-08-23 19:25:17', '2021-02-08 20:19:34'),
  (N'Kwq_GmlOtKjn', N'CKaIkgelCjLnKqhtyW', N'CAckJaRtm', 0, '2023-12-28 12:34:14', '2024-01-24 20:50:08'),
  (N'GeFDIeEbYnRf', N'xW eGOLfBIAER', N'FfVoiSwzkYNjSHLYi', 0, '2024-10-04 21:54:35', '2021-03-08 17:48:35'),
  (N'zaoMP_', N'MkYuJnY KhHbFo', N'dMMJbPQDf', 1, '2025-02-25 23:55:57', '2025-03-02 17:35:29'),
  (N'VRABbBfZZkrTbv', N'GDybNqEtknQaywq-R', N'oVKyaRNEKvjXPxwlet', 0, '2024-07-07 19:10:10', '2024-12-16 04:18:40'),
  (N'hjuMacUEhcMOFkGq', N'FoyjG_d', N'nRSZVjtmGcdszOa', 1, '2023-07-29 21:03:10', '2024-11-15 05:21:15'),
  (N'LzTIAhCA', N'croNOg niZsYST BFYz', N'GfYZDLKsGLNuqwO', 1, '2025-01-20 16:48:27', '2024-07-03 21:55:52'),
  (N'Uvo__fteR', N'iYrCJJC', N'KxHyCiOnEHegs', 0, '2021-06-29 20:04:43', '2021-06-01 08:26:42'),
  (N'hG_rdynuXScOGEJU', N'UJCHUYBG_NwoOwuv_F', N'PuMWo', 0, '2022-04-21 09:02:07', '2020-09-18 20:20:02'),
  (N'ADAbCI_WpBJ', N'NZtbmzRTZ-', N'tzQNgAiCoRc', 0, '2021-05-23 06:08:21', '2021-12-28 13:20:20'),
  (N'XX Nz', N'eqwiCoiQA_ZgNrffSjpB', N'qGSnsuYjEdV', 1, '2021-12-15 05:01:02', '2022-11-15 03:18:53'),
  (N'RpzSwpnpMaRU', N'MXzxRftBlh', N'Moy khZAWKwH', 1, '2023-05-07 08:20:47', '2023-12-30 00:01:22'),
  (N'KWa YVoOnUsG', N'AqvZ-lraZ', N'vE-nS', 1, '2024-10-21 08:10:00', '2022-06-15 15:57:41'),
  (N'KuiDbDNveukRDdR-KGkO', N'HaDEmxJrUAOE', N'SYxDzcZWhHJAQ_FJlRO', 1, '2023-06-17 08:51:38', '2021-04-02 09:01:16'),
  (N'aPwGMWpwdLYOoND', N'gYrCDAOB', N'v-qZQOlFDiTlfq', 1, '2023-04-16 22:26:35', '2022-05-17 02:55:36'),
  (N'tFvQOfy_lwtDOg jLWNn', N'INKLIPgtL', N'SlMjrEgLzaUshCAH', 1, '2021-07-19 00:02:19', '2023-06-21 13:36:34'),
  (N'CcbbANW', N'SkBGvwbGWtteZahUT', N'Fk-kZ_YifBBvsHDGzR', 1, '2024-01-26 19:46:25', '2023-07-18 14:09:51'),
  (N'PXYwNyz', N'NkDbZUxykkutDc', N'WSRxKSWSGoui-uDILaz', 1, '2022-01-30 19:04:56', '2023-06-20 19:46:01'),
  (N'Hj-PfZWqncGVByK', N'tfFrZWTjDKFL', N'wgNJRATlDJ', 1, '2022-02-22 01:51:56', '2025-08-16 19:58:28'),
  (N'v_IXes', N'tu DpEqsk-CwengYXcgY', N'_Vhda', 1, '2021-08-08 14:32:56', '2024-03-08 18:57:08'),
  (N'foehmwWZADDE', N'eTooQid', N'jJCaoKyP-ypoj', 1, '2024-02-16 16:43:37', '2021-11-04 21:38:43'),
  (N'xjxyj', N'VK_zvfvp_', N'jGdAPfwKVXgyJBAhRiIw', 1, '2021-02-17 10:40:57', '2022-01-02 03:30:11'),
  (N'cAjWOGMR-_HiXq', N'YrjxTg', N'MFqAnWrKDuovpD', 1, '2025-06-18 22:59:07', '2023-06-16 12:29:19'),
  (N'xl_PvBaGG', N'FRQaFPfhDznYnB', N'gJQPexevLsEjJqflK', 1, '2025-01-10 05:05:36', '2023-09-20 13:00:57'),
  (N'ZWRnbbeKJnzmCz', N'cvGMt', N'wWeAbKefDTZNWrNV', 0, '2025-02-02 11:44:10', '2022-02-15 10:37:49');
INSERT INTO [ordonnances] ([updated_by], [created_by], [operation_id], [consultation_id], [patient_id], [personnel_id], [code], [created_at], [updated_at]) VALUES
  (198, 163, 737386, 581163, 474867, 934165, N'wMVVwwqE', '2021-08-05 16:24:19', '2024-10-04 15:17:20'),
  (352, 549, 316964, 689404, 461095, 51319, N'LWFHZJg', '2021-06-03 20:39:46', '2020-11-28 15:31:25'),
  (593, 27, 744559, 629878, 12919, 801436, N'mpFdye NCIClJS', '2022-02-09 15:42:11', '2021-06-19 08:22:04'),
  (468, 295, 508502, 504507, 650285, 888444, N'TozCZBfhRFLS', '2024-03-11 10:14:12', '2021-08-15 03:20:54'),
  (418, 723, 760826, 463554, 451338, 394585, N'SgwYEgZHDhJYjchCI-ZG', '2022-08-16 14:49:38', '2024-10-06 20:40:57'),
  (345, 562, 513677, 342818, 315529, 329702, N'fRKdkkFMptTBEtHSH', '2023-06-01 11:10:41', '2021-08-12 10:29:24'),
  (557, 523, 367797, 92012, 196697, 993809, N'oAkenFNzNmggFEYm', '2023-04-25 19:58:56', '2023-07-21 05:30:55'),
  (356, 815, 442077, 243708, 399029, 597980, N'qETKRrqdSmn', '2022-09-16 15:24:56', '2024-03-10 10:50:24'),
  (907, 465, 42285, 177352, 403540, 106854, N'_FzedoulmOn', '2021-04-30 21:50:39', '2020-09-22 13:08:22'),
  (506, 718, 180877, 898747, 620056, 490866, N'hcpXQ', '2022-08-24 05:31:49', '2025-01-03 05:35:09'),
  (582, 312, 574726, 23740, 249815, 498573, N'zeafIdhMSBj', '2021-12-16 13:41:22', '2024-02-10 11:06:35'),
  (913, 13, 704992, 879637, 786114, 580555, N'SLvSTLV', '2025-05-07 09:07:44', '2023-10-05 01:46:47'),
  (111, 530, 986286, 458608, 828468, 472191, N'zFtKOvhnrVMJvYNI_', '2021-10-21 20:35:52', '2024-07-14 23:20:42'),
  (820, 877, 663898, 231887, 140656, 217911, N'CARSJ okSzIJWzlhTKU', '2023-01-10 09:08:38', '2023-11-29 04:48:13'),
  (121, 761, 67050, 21805, 407956, 760832, N'aP_TIlwTDkRzNBD', '2024-08-27 07:29:16', '2023-01-28 01:21:29'),
  (340, 430, 336695, 706472, 529235, 823372, N'WapYVPnwBmWqJnCWNU', '2023-10-23 19:44:14', '2022-01-21 00:06:47'),
  (237, 198, 445467, 620685, 738778, 635906, N'VfC-sxaoovFSfFDjAyN', '2021-06-17 22:03:50', '2023-12-21 15:31:38'),
  (885, 289, 853763, 399747, 189381, 188513, N'vOA- W', '2021-08-02 03:44:14', '2023-08-26 20:06:46'),
  (622, 602, 526398, 697451, 984909, 787674, N'P oFxX', '2021-11-19 03:29:00', '2022-07-09 07:26:45'),
  (757, 864, 60330, 747189, 243813, 660600, N'WegbjyZSqmg', '2024-10-01 20:43:20', '2023-10-08 20:12:28'),
  (991, 703, 558890, 823999, 150882, 751787, N'_jlkXMKeVh_QXIRr', '2021-01-27 09:59:33', '2020-09-03 19:20:52'),
  (827, 138, 856157, 377742, 154584, 32987, N'r mVsBr IPhGzUHqi_wz', '2022-06-20 11:13:18', '2024-06-03 01:17:01'),
  (725, 596, 616970, 483476, 786815, 800505, N'IJb__wkJvaNU', '2024-02-08 19:05:21', '2023-08-06 14:53:44'),
  (405, 553, 397474, 331406, 118799, 569785, N'iXRSs', '2024-05-23 02:10:38', '2022-01-28 01:44:48'),
  (225, 879, 173230, 950127, 229655, 543035, N'CBKoLNHdzHienjxve-D', '2020-09-05 07:47:11', '2025-06-25 12:08:52'),
  (974, 125, 379807, 604835, 702709, 228309, N'ysMOmUD', '2025-03-24 06:29:06', '2021-02-22 09:46:13'),
  (544, 367, 25458, 492259, 630440, 980465, N'YPbHO', '2025-08-13 01:01:28', '2022-10-30 04:46:38'),
  (766, 71, 342040, 518173, 193053, 971230, N'gNANmJgQa', '2022-01-25 07:28:19', '2021-09-01 16:46:42'),
  (25, 168, 361556, 92704, 547193, 333780, N'YVoEMgJZxJ', '2022-11-10 07:48:18', '2024-04-18 03:14:39'),
  (472, 531, 284879, 188491, 806876, 969697, N'kfOCOMG-jv_cDvokaQXX', '2025-03-04 17:31:03', '2021-04-21 11:06:57'),
  (321, 838, 900595, 631585, 232776, 664653, N'nrdhQ_mUo_wDsPAvnZA-', '2023-10-11 14:29:00', '2021-12-29 01:22:15'),
  (725, 49, 749291, 359508, 933229, 785081, N'KcxcrQvGasDb', '2025-07-10 20:50:03', '2021-12-29 03:23:13'),
  (894, 554, 568233, 918894, 608656, 221050, N'uLNCxu', '2023-09-02 05:56:41', '2021-03-12 16:18:52'),
  (135, 78, 811823, 178280, 926979, 524788, N'QLI jYUc kxskcbo', '2021-05-12 22:15:40', '2023-07-13 11:20:39'),
  (23, 508, 526399, 988491, 36395, 90824, N'zfzUWqQShnfQIrG', '2020-12-11 19:20:31', '2022-05-04 18:37:06'),
  (133, 520, 154276, 130275, 917765, 770599, N'ZiFFIfcGsBIqQj', '2023-06-23 18:03:44', '2021-07-22 21:37:17'),
  (934, 393, 568137, 224373, 937823, 775257, N'bJszwyRq', '2022-03-10 19:51:23', '2022-04-12 19:07:13'),
  (181, 318, 768445, 974542, 911837, 387480, N'u_qfTZMfnZvYs', '2023-10-12 04:42:42', '2023-03-30 15:24:07'),
  (189, 192, 464883, 148366, 419998, 118542, N'jHtUJK_mwKLP', '2024-11-30 07:57:36', '2023-10-24 04:23:21'),
  (115, 62, 799044, 94989, 477859, 491886, N'hrBCj_z', '2023-04-24 19:10:21', '2024-08-21 12:57:40');
INSERT INTO [ordonnance_prescrites] ([produit], [ordonnance_id], [posologie], [quantite], [date], [created_at], [updated_at]) VALUES
  (N'FlTVgJVE_VF', 683653, N'wNxRaGrTSMoy', 296, N'yNzchEtaKy yBljprA', '2021-09-17 15:06:50', '2025-07-08 06:49:42'),
  (N'MhvhTUqmbMVeFVVCOJJ', 946128, N'TaaNnMfOBhFIXBgcAT', 257, N'trfBKlZmQHeiMRRX', '2021-02-06 06:54:35', '2022-11-16 17:55:57'),
  (N'UgsTdHbgD', 326377, N'H nBfjSHhoi', 472, N'ORHdFnVRasAToE', '2023-04-01 02:21:12', '2024-07-15 02:42:51'),
  (N'mqQmuFAaxqdXfxbn', 383117, N'Mq_SVmXmHXQW', 286, N'WLtLuAnW', '2024-10-21 14:18:27', '2025-04-21 06:43:16'),
  (N'DsZxew', 662253, N'QvXQCo_fDYLKIUxWg', 303, N'BjgklJyzveBgAAdf_OM', '2022-04-10 13:42:01', '2021-02-25 02:44:27'),
  (N'pzbmdrHieYaioy HO', 620490, N'IKkOE R', 896, N'w CLaP yaYmUjbKMfvZk', '2021-04-24 10:04:33', '2023-06-17 14:32:47'),
  (N'yqyc-RL jpHuwml', 567027, N'lGyqqTQYhq', 936, N'JmKVqzBK', '2023-06-28 23:46:43', '2020-11-01 12:28:55'),
  (N'gItPo_yTcyWtmJ', 35513, N'iCtnxbInsb', 971, N'WoWbI', '2022-09-30 21:32:13', '2020-09-20 00:45:59'),
  (N'XsUdMI', 847205, N'Biv-HNqqWtSv u', 208, N'NcxwNR_', '2025-03-13 17:33:31', '2021-05-02 20:06:20'),
  (N'p_Ttq UsJWxXMb b', 487409, N'EOrKwKeAL', 448, N'PGtge', '2021-07-02 22:30:02', '2023-03-02 09:14:11'),
  (N'PVdREtbvljwCi', 375532, N'VpYbWab', 758, N'QTDvlZSKMsX', '2023-05-18 09:26:40', '2023-06-18 08:41:25'),
  (N'CuojXBXko', 775471, N'TYelDUuhMVLNRpBNwGS', 294, N'BXnuKAE-', '2025-08-12 11:29:43', '2023-10-25 19:54:20'),
  (N'ewfcMaecjiXJqJCYN', 251885, N'Er In', 489, N'yJZhcpl_-rEfCouzuIA', '2020-12-01 22:28:17', '2025-01-15 12:22:20'),
  (N'jnvhAFdLkw', 677375, N'CYotFuHMYfzhUMFkmPF', 910, N'GoYnulH', '2020-10-24 06:28:01', '2025-06-26 20:15:28'),
  (N'AL-_hCqMCYayxl_YCM B', 110091, N'qZOWQkjTa', 203, N'fdgQyftGW', '2021-05-14 12:07:55', '2021-09-11 10:43:49'),
  (N'zKquQkFzQmaNAxcctXcg', 89282, N'swHgZCOUNC XHiiLrT', 126, N'bBfYjTRnOfrTj', '2022-11-01 15:59:35', '2021-05-24 16:51:42'),
  (N'bpHLECoYgkyw', 25520, N'CSvscA', 739, N'giYjuwOvZghK', '2024-08-03 12:43:15', '2022-02-02 03:15:57'),
  (N'ngCQlSCiay_xPw hUN', 909253, N'L FnGAmBjTdkBg', 205, N'EPSjulQImhUJC-ZWS', '2020-11-26 02:26:26', '2023-01-26 17:46:57'),
  (N'dTmY FSYZYsXdoXq', 501398, N'omVtD wTMQtTMnnoe', 901, N'MAxbXoJ-lQbujF-daQ', '2021-01-03 01:53:12', '2025-03-30 14:52:27'),
  (N'DzStpANTUrUVQVHWX', 555468, N'uKwhKgReaz', 550, N'hcRvK pd', '2024-08-21 03:26:46', '2024-12-20 12:49:04'),
  (N'SbgzlMGHuVDE', 288695, N'IUnb_UDwS-wHYS', 318, N'KlUnhpJDbqOlxhV', '2023-05-31 10:08:43', '2025-03-17 10:01:15'),
  (N'cTMCHCiRjnuGKhsRcNkU', 658787, N'_wfeTNi btxnfvTDPZ', 781, N'mXoLS', '2020-10-13 15:26:08', '2021-02-01 01:46:22'),
  (N'zUqvB_XEJNXFw', 307132, N'tanQb_pD-TlCAynLC', 962, N'NLItplRPdAJKsCM', '2020-12-24 20:22:58', '2025-02-23 20:09:15'),
  (N'_auIPEDnDtQOvY', 653263, N'lcQYjfaL', 945, N'rMezTPXI', '2024-11-20 17:10:10', '2023-05-17 08:25:54'),
  (N'qUTLkjicaPIqqgyJSBr', 392092, N'qPyAEk-KeWuxrGEiUHM', 929, N'sQBEoUCwV', '2024-02-07 12:44:42', '2024-07-07 01:58:13'),
  (N'-FSvbGHi rylh', 455192, N'OEcdOIngeJVolEk', 191, N'eTEvvWPThosJ', '2022-02-03 08:20:19', '2024-11-07 11:07:12'),
  (N'XTCQB_YKOLtfXEaE-', 53312, N'nL-CAraFGiRKL_pzzD', 884, N'pOtcN-x', '2021-01-04 04:18:07', '2021-11-09 19:03:43'),
  (N'rReZXIC l oIMySKYB', 702388, N'ewMkYbA UtkmYkYhJd', 565, N'PUhzBZIb', '2024-04-29 12:46:06', '2023-04-11 14:24:38'),
  (N'aVpWNRnjjmtKXCTkC', 923236, N'GXTpq', 695, N'cHasYlNIyclc-p_qWMps', '2022-03-11 14:25:17', '2022-09-24 19:23:19'),
  (N'cuVyGUjhOTh', 61418, N'necYpRIaGP', 956, N'MeMmBsLhoWmVy_tdS', '2021-09-27 21:11:44', '2022-01-05 22:31:12'),
  (N'GkvFNf', 46529, N'PkAlUp', 828, N'izFYSuO', '2022-08-28 00:15:40', '2024-01-27 23:36:16'),
  (N'tHRCGrGxz', 129476, N'JCsLMfEzcB', 442, N'uYwqlbXghE', '2022-05-19 03:16:46', '2025-04-11 15:17:22'),
  (N'frAhfLhKY', 536213, N'KhnskQohunc', 440, N'aHrOVmX-', '2021-12-26 19:54:52', '2022-09-19 03:34:50'),
  (N'Z-QkdftH', 489057, N'wss yjxNCQrb', 124, N'gFOhsSnwzjGkwex', '2022-12-19 06:59:32', '2020-10-19 07:08:32'),
  (N'vBncVhsOOwgz', 275381, N'ADrBGrDPMNdz_X-ixTXe', 299, N'MnV bNeGs_RIGkqj', '2021-03-12 18:48:39', '2021-04-04 15:39:51'),
  (N'FciIH', 246741, N'hULuymoSyruOqNYubY', 578, N'sngtXVIfJ', '2024-05-04 12:01:23', '2022-11-02 23:08:34'),
  (N'OPRfQzlxebqekjD', 496687, N'gt-sa-kkh_gRdG', 111, N'hLiShxjc', '2020-08-30 08:09:27', '2020-10-03 12:40:14'),
  (N'VKBwWBTG', 336085, N'yUHmtrEGVMEh', 186, N'CPzDlEeTcOBCGGvmCAIm', '2024-01-14 08:11:44', '2021-04-09 05:37:39'),
  (N'HGtz_jlcEPALnUEDq', 334777, N'VjVbLKQEloQAVu', 514, N'IrzDIzULgpqcIO-kjtg', '2020-11-10 04:12:52', '2025-07-11 15:47:51'),
  (N'ifeoB', 912096, N'dvTCGH', 241, N'cjCtQ aKRtaIFjdt', '2024-10-22 14:52:58', '2023-12-08 15:11:54');
INSERT INTO [ordonnance_servies] ([produit_id], [ordonnance_id], [created_at], [updated_at]) VALUES
  (752230, 666110, '2023-09-16 11:46:21', '2025-07-07 21:04:16'),
  (19071, 585051, '2025-05-31 23:19:07', '2025-05-07 22:53:33'),
  (187585, 368041, '2021-02-06 23:59:05', '2024-04-26 10:21:33'),
  (425827, 48075, '2024-04-12 18:10:07', '2023-01-15 10:06:15'),
  (422429, 889061, '2024-11-18 09:40:01', '2025-03-31 20:41:26'),
  (914561, 724754, '2021-12-03 14:18:51', '2024-01-10 18:50:01'),
  (531784, 63902, '2022-05-16 08:39:36', '2024-11-02 23:23:30'),
  (793477, 768889, '2022-12-30 07:04:51', '2021-07-01 22:31:20'),
  (852699, 931420, '2024-05-31 22:23:28', '2022-11-02 10:53:46'),
  (863936, 345972, '2023-09-27 01:09:37', '2022-06-12 03:53:29'),
  (592553, 213834, '2022-10-06 15:39:15', '2023-09-30 11:27:05'),
  (524476, 605231, '2021-06-05 16:49:52', '2023-01-14 23:05:08'),
  (240859, 227357, '2024-08-09 05:25:04', '2022-12-30 04:11:31'),
  (70796, 920800, '2023-10-07 09:26:23', '2024-06-05 20:11:32'),
  (158314, 555564, '2021-07-19 02:30:13', '2022-02-16 19:02:22'),
  (148180, 429279, '2022-11-15 17:23:42', '2024-07-22 15:29:04'),
  (547560, 464827, '2023-04-04 05:03:03', '2025-02-14 20:21:58'),
  (946352, 459586, '2023-11-03 19:15:24', '2022-04-05 10:17:23'),
  (907250, 154107, '2022-11-08 02:36:43', '2021-11-20 10:41:41'),
  (885926, 769328, '2022-12-28 06:03:30', '2024-10-19 05:38:10'),
  (980835, 318276, '2022-09-09 01:57:46', '2025-03-15 17:15:37'),
  (589505, 163578, '2024-07-23 01:20:16', '2025-07-16 21:06:27'),
  (449278, 202696, '2021-03-17 05:34:01', '2020-08-26 06:05:02'),
  (116480, 166368, '2022-07-22 05:12:57', '2023-01-29 18:28:39'),
  (222875, 801258, '2023-10-05 01:57:35', '2023-03-31 00:01:28'),
  (193381, 268397, '2023-08-14 01:23:16', '2023-07-30 12:18:43'),
  (655127, 159054, '2024-01-27 16:26:27', '2023-03-14 20:35:30'),
  (437073, 621684, '2022-11-15 23:53:24', '2024-03-22 22:04:44'),
  (572772, 260118, '2022-07-14 01:42:20', '2025-08-04 14:43:54'),
  (524014, 772818, '2021-07-30 21:33:29', '2022-04-28 09:44:52'),
  (953877, 107507, '2021-03-05 08:58:40', '2024-03-09 09:36:27'),
  (636526, 98982, '2022-10-04 08:23:01', '2023-07-11 18:33:17'),
  (584884, 577600, '2021-05-14 03:00:51', '2024-04-20 14:54:58'),
  (430169, 363777, '2025-03-25 19:55:27', '2021-05-24 20:43:43'),
  (528568, 309060, '2024-07-08 23:02:06', '2020-12-14 04:06:02'),
  (515969, 988093, '2021-04-03 22:07:36', '2021-01-13 20:15:35'),
  (812009, 541631, '2023-10-08 21:36:01', '2023-04-26 10:54:43'),
  (376598, 879968, '2022-11-03 12:18:01', '2021-02-21 05:57:26'),
  (927393, 822963, '2024-07-31 16:02:41', '2022-12-15 01:37:55'),
  (197178, 906408, '2023-02-14 15:38:39', '2025-03-11 22:03:53');
INSERT INTO [ordonnateurs] ([personnel_id], [ordonnateur_id], [created_by], [updated_by], [created_at], [updated_at]) VALUES
  (445580, 482369, N'JmNzpXP', N'-e_zj-CSyljyF', '2025-07-27 11:19:36', '2021-03-27 03:09:38'),
  (974826, 910853, N'Oz-AfGQK', N'RffCOrgbQOtm', '2022-04-24 03:20:42', '2025-07-09 09:31:49'),
  (137054, 428076, N'GAljA', N'IH EaKbhTScJf_yXPpZX', '2024-04-14 11:58:32', '2020-12-03 11:03:03'),
  (886646, 919140, N'xlWtO', N'JmxdNanGkfx', '2025-02-23 00:20:58', '2024-03-26 01:43:25'),
  (178157, 703069, N'gdYhokgRUwuEZOm', N'YEM_cSOEd', '2024-06-28 04:29:24', '2021-06-12 19:15:33'),
  (294183, 828260, N'UOHXilnnEcnLbMx', N'T_IaZR', '2024-10-12 18:07:05', '2021-07-08 04:58:30'),
  (896578, 712731, N'h wMv', N'NgLJXuKEdTZnDkh', '2022-12-16 10:02:34', '2020-09-14 14:27:46'),
  (544349, 876992, N'ZNwQMsAay', N'hLVVpoXCVvvkex', '2023-10-21 08:00:37', '2021-02-11 19:40:44');
INSERT INTO [ordres] ([intitule], [created_at], [updated_at]) VALUES
  (N'CChmyNPQEe', '2025-07-03 02:53:11', '2024-12-08 18:15:33'),
  (N'MuenrfocBnnzX', '2025-03-31 05:28:11', '2024-12-01 12:13:46'),
  (N'ONmLSyQoXaX', '2022-10-22 22:06:26', '2022-11-22 10:13:47'),
  (N'exxOynFUdkDFckupG', '2021-06-10 13:45:18', '2023-08-11 01:37:04'),
  (N'IXKDBgHrEW', '2023-02-15 11:34:57', '2023-11-07 01:39:25'),
  (N'UlCvavb', '2022-05-08 05:21:55', '2024-03-21 20:37:30'),
  (N'YMmy_h', '2022-02-02 22:32:26', '2022-04-04 15:22:05'),
  (N'-eFBxc', '2021-09-09 03:16:05', '2022-02-20 17:02:01');
INSERT INTO [ordre_entrees] ([exercice_budgetaire_id], [provenance_id], [NumeroOrdre], [DateComptable], [etat], [created_at], [updated_at]) VALUES
  (554495, 664141, N'ZODRSD', N'fjfj_iEBrj', N'fltjBCTpKbRqYhn', '2021-08-21 01:40:54', '2022-02-21 02:28:27'),
  (141961, 728288, N'zgEsUzUNUSBEf', N'anSvBLAzfUvszikHIv', N'tX gkMVj', '2024-07-23 17:15:55', '2023-09-24 09:02:44'),
  (399335, 389406, N'g fN MYwIDQLdfnmOwO', N'zEGSzr', N'mX_wNemTxz', '2024-05-25 11:11:28', '2025-05-01 04:30:09'),
  (495809, 948238, N'etiDM_FodEeuEriAMRyM', N'qtwQmyUfbuf', N'IfbgvUwhypt', '2021-04-08 20:45:57', '2023-06-25 20:59:56'),
  (360684, 346366, N'imXskZlZ', N'rkIMkhAve_ Bb_vaC', N'fTxaDloHPPLvs', '2022-01-17 08:21:51', '2025-04-08 18:49:47'),
  (463101, 343122, N'KVpVb-RZ', N'SjXPcFTfaphrjh', N'ywoXNc', '2022-08-06 22:12:42', '2021-04-18 21:43:24'),
  (340227, 629489, N'Nz-dOpWIsswFQc-', N'uHQNVOpVweBDvbd', N'wAfyyrJDnRrVni', '2023-02-28 05:28:30', '2022-03-07 07:17:35'),
  (751097, 849529, N'IH-QVMkwaVbS', N'atAnA', N'fRrv_P FGOLzok-dBDE', '2021-06-18 13:43:01', '2023-09-17 02:03:48');
INSERT INTO [orientations] ([patient_id], [departement_id], [acte_medical_id], [personnel_id], [auteur], [statut_paiement], [created_at], [updated_at]) VALUES
  (21279, 287032, 815600, 80610, 437953, 730, '2021-10-17 00:19:31', '2024-01-03 07:40:00'),
  (635800, 133883, 950734, 174530, 169099, 732, '2023-05-08 05:50:34', '2023-05-30 22:34:18'),
  (197278, 839371, 639266, 539768, 234494, 892, '2021-03-10 22:38:50', '2023-08-17 01:22:10'),
  (8325, 996403, 43664, 491813, 796471, 645, '2024-08-23 23:31:32', '2023-11-23 06:34:18'),
  (224241, 106320, 170304, 27567, 266947, 188, '2023-11-15 00:24:02', '2022-01-16 15:08:35'),
  (882165, 554713, 366363, 868047, 477959, 243, '2024-06-11 07:54:07', '2023-05-04 22:29:17'),
  (411630, 536773, 729268, 283099, 429698, 623, '2024-01-25 02:06:41', '2021-10-17 17:26:10'),
  (375421, 87589, 748667, 194681, 66178, 534, '2021-02-17 15:40:42', '2021-11-16 04:29:24');
INSERT INTO [paies] ([categories_id], [echellons_id], [personnels_id], [element_salaires_id], [periode_id], [somme], [etat], [created_at], [updated_at]) VALUES
  (306517, 2037, 329603, 687146, 719940, N'BkRsp j', N'WgMxMmiJhKb -XrzASd', '2021-12-08 20:45:00', '2024-12-11 23:44:27'),
  (744004, 689617, 493270, 608719, 24234, N'ohqKMxgTD', N'wSyxETbipfzkIoRlNIQo', '2021-07-20 03:29:52', '2022-02-13 18:36:05'),
  (889307, 257390, 353958, 812139, 578452, N'iXWdIQeeLDNEZvbF', N'JXbGxMRME px JH', '2021-10-26 20:25:43', '2022-12-31 05:07:19'),
  (671312, 308844, 676084, 113432, 455896, N'ViLPGSeoUVNrcvowDliu', N'ZsjmzCxZXSZTGQbwukc', '2022-10-20 20:11:13', '2021-06-15 00:17:04'),
  (851434, 610084, 825104, 476970, 608304, N'uDAahePaGxjIeKVYsyOu', N'ajUeYUy-erOp T', '2024-08-24 05:43:30', '2020-10-31 05:47:41'),
  (984867, 604950, 103856, 995379, 190621, N'yLPxj_uNBnRfFAhY', N'FtfVqHogvD-Gf TwU', '2021-10-20 05:30:32', '2024-03-06 19:49:53'),
  (61935, 870151, 414762, 327435, 264881, N'coYJNh', N'CNY sq', '2023-11-02 17:33:02', '2024-06-08 09:11:56'),
  (647042, 932589, 918017, 381629, 728450, N'ft FODIfQt_BXUKPaj', N'pawkfEKXxOIn', '2021-12-10 15:38:27', '2021-10-27 16:37:11');
INSERT INTO [parametres] ([categorie_comptable_id], [taxe_id], [created_at], [updated_at]) VALUES
  (11923, 488759, '2024-09-28 06:41:59', '2024-06-21 19:54:56'),
  (767653, 300547, '2025-01-03 11:28:46', '2021-09-17 18:41:51'),
  (75217, 711532, '2021-10-10 17:34:04', '2023-10-27 23:11:57'),
  (517221, 777660, '2020-12-06 20:19:48', '2021-12-19 05:26:31'),
  (405439, 910658, '2023-08-26 08:05:51', '2025-05-22 06:14:29'),
  (22530, 688567, '2021-07-09 18:23:46', '2024-06-29 20:36:53'),
  (325126, 693664, '2025-05-07 01:08:17', '2024-02-13 21:57:58'),
  (217567, 542964, '2024-05-20 08:17:03', '2025-02-06 15:51:59');
INSERT INTO [parametre_patients] ([libelle], [valeurMin], [valeurMax], [uniteMesure], [created_at], [updated_at]) VALUES
  (N'mMIOczD-KiY-qWI', 120, 623, N'AItTjMjpKXe lkmvzn', '2021-02-12 21:57:36', '2024-08-23 15:45:51'),
  (N'QxM FLbzZnGVcUzV', 77, 457, N'n_Kfh KGQVmo', '2022-02-22 00:53:46', '2023-03-20 22:56:04'),
  (N'oBWJHYnej', 521, 518, N'QURL HpRja', '2022-12-04 01:21:06', '2022-11-11 10:51:53'),
  (N'H n_tt', 499, 295, N'IBINPBJoZMkKY', '2021-11-12 03:49:07', '2023-12-15 02:08:15'),
  (N'hTm VqGJgYUtX_HTXsrl', 921, 831, N'qRkjZVnILmA', '2024-10-02 15:56:28', '2021-02-27 09:20:07'),
  (N'mAKbq', 973, 736, N'ydvcxEkvfY', '2024-02-09 11:05:58', '2024-11-25 19:36:21'),
  (N'qXDQpeqAJkXwF', 799, 700, N'BuAplb', '2020-11-05 12:07:41', '2022-06-25 00:00:38'),
  (N'swjXdRNO gXrFLXdJfw', 521, 779, N'ZKiRcMkkVUD', '2021-04-29 12:06:06', '2024-05-17 07:05:27'),
  (N'tqjipiQUpx', 849, 850, N'CKeycdwnmd', '2020-10-14 05:47:27', '2023-09-22 19:43:02'),
  (N'-QzoRdlmHX SWuQ', 34, 601, N'K_aeaSYvL', '2024-05-04 14:03:16', '2024-07-09 16:11:57'),
  (N'BjulKf', 520, 455, N'nqk jZdnEFXcpjKwfE_', '2020-09-22 09:15:15', '2024-09-01 07:06:35'),
  (N'CTDwKxFDatHQpkgxOB', 196, 143, N'CpQNelUzBjyO', '2020-12-21 11:41:15', '2024-09-28 23:02:12'),
  (N'yXm_hdOBGh', 673, 332, N'-qQsQXrVrQwQjP', '2022-04-13 03:18:22', '2024-05-20 14:27:39'),
  (N'tzJogJLFhjwZgz xZB', 357, 235, N'ZVqqcLjYnahXok', '2024-10-19 06:16:12', '2020-09-29 05:40:11'),
  (N'c-_-UcCfsjs', 314, 796, N'zgDDbUquIAxNOVlqOq_', '2023-12-03 14:11:36', '2021-02-04 05:25:03'),
  (N'zbL_WnarH', 952, 172, N'mnqEaIs', '2024-09-14 15:40:03', '2023-01-01 15:34:08'),
  (N'tKhGJEqUCrXD', 273, 842, N'BSChPplNdH', '2025-07-18 12:36:56', '2025-04-15 04:09:53'),
  (N'h-_xEeUGZotkt', 92, 71, N'YXxJHI', '2025-03-11 20:56:19', '2022-02-23 15:31:06'),
  (N'jqJb AQwZzQAF-AJsRbK', 225, 555, N'eRUlB', '2024-02-05 04:37:13', '2020-10-06 20:22:37'),
  (N'UGnqtdN-', 207, 166, N'esxPTbidMbRxslqp', '2021-08-07 22:52:54', '2020-10-03 14:51:49'),
  (N'dgqUhiPCGbVK_EkGgcM', 56, 795, N'lapYkEndBpqXrpBWj', '2025-06-19 07:20:12', '2025-08-09 03:58:49'),
  (N'mVLsIh', 100, 675, N'kKE_Bqa', '2024-08-04 18:35:17', '2021-09-26 08:40:36'),
  (N'PvgvIx', 235, 220, N'RusYfKq', '2023-01-31 00:46:20', '2024-02-09 19:33:59'),
  (N'mcgac H', 230, 55, N'IMQKdpAnODbnWRXAYf', '2024-04-16 22:54:17', '2021-12-12 15:38:09'),
  (N'ovKpBZ-zj', 587, 213, N'raOIbiZT_WYcG_vPlxsu', '2024-03-28 18:36:11', '2025-02-15 17:17:27'),
  (N'DMMgVEkDTHTblX', 698, 805, N'ZkqeXLH_SDxyjXjvBE-', '2022-09-15 02:17:08', '2023-03-28 06:05:21'),
  (N'frjyEFsTH', 678, 450, N'WeQbuECp', '2020-10-18 15:23:56', '2024-11-27 07:35:33'),
  (N'JkrYocuxRGfHzmGi', 383, 289, N'zwKExhaExyi', '2024-01-03 19:38:49', '2022-01-28 23:21:39'),
  (N'yJ-tjbM_j', 181, 823, N'oBdvEQN', '2024-07-02 03:10:57', '2022-01-05 09:19:10'),
  (N'dioFOiNumq-nXSkjVbqD', 945, 420, N'NrrxDj JkyhG', '2024-02-18 15:37:33', '2024-09-01 02:42:05'),
  (N'FNkFiwKK_GsMJyafF', 486, 359, N'BjkVhSCesBFqPhII', '2020-11-01 01:39:12', '2023-04-21 17:57:25'),
  (N'vHmIM', 124, 283, N'kgPGNsgEKwFxHfOgJ', '2024-01-07 00:07:36', '2022-07-11 14:48:49'),
  (N'MQbDzAPKNmQBhXDUmj', 760, 651, N'gtwIYTnK fIQ -DojZue', '2022-12-05 02:55:03', '2023-05-13 23:45:51'),
  (N'AbBQdDYBqPNboS', 943, 484, N'HMttMNF', '2020-12-14 02:09:58', '2024-07-16 10:01:29'),
  (N'tXvTr', 573, 811, N'hpuQsRLEXT', '2023-08-28 23:27:55', '2025-06-07 23:36:13'),
  (N'xmGtKAWflXO', 859, 714, N'uvQM_lleStzmPWT', '2021-10-06 04:31:56', '2025-03-13 11:38:22'),
  (N'ISheBiuOMIPoPWZKgnw', 59, 517, N'kPmYjoRvLfUA', '2023-12-02 06:59:33', '2021-07-06 11:58:29'),
  (N'DsysWq', 217, 629, N'a- BhYedr', '2025-04-28 02:40:10', '2024-02-01 12:12:08'),
  (N'FIlNRuDI-FEvuaD', 108, 528, N'RalxvPT', '2020-12-21 02:34:45', '2025-04-01 09:04:14'),
  (N'WokmsrLDYkF wP', 936, 377, N'BC RTdEZdLfTPAe', '2024-09-26 13:01:48', '2020-12-26 06:16:06');
INSERT INTO [partenaires] ([libelle], [sigle], [created_at], [updated_at]) VALUES
  (N'BbMsXwzFxJbZ', N'InRbemmM_vKcDR', '2023-07-01 20:28:42', '2023-02-25 23:33:22'),
  (N'eJXmjsh', N'TiWrB', '2023-02-18 11:07:19', '2020-09-21 01:44:36'),
  (N'osNH -OOMdPqeMcUi', N'fgKajsr _fmzTfAD', '2021-10-21 07:48:13', '2024-04-22 06:11:39'),
  (N'E_-laWQFTVJYpOisInwA', N'gyUSOhCo', '2022-08-13 17:04:10', '2024-12-30 23:11:59'),
  (N'SfKhHXpGDJpmkBGEUAZ', N'CDpdzcVmzSh', '2024-09-29 15:32:59', '2025-06-04 09:24:12'),
  (N'HAa_RtCDp', N'FTwlHOUHj', '2020-09-21 12:54:59', '2023-07-30 03:57:35'),
  (N'NDt-LN', N'vGcKJ', '2024-08-17 06:06:57', '2021-02-21 00:41:34'),
  (N'XXMeMWfWOwVHJn-qwlq', N'rADSFvjfaHlYgLg', '2023-01-14 21:06:32', '2022-06-18 14:25:26');
INSERT INTO [password_reset_tokens] ([email], [token], [created_at]) VALUES
  (N'lbINX', N'EYh NgXULWgAdLhYiy', '2025-05-17 10:35:49'),
  (N'YZvpLU-Runi_kEbUJB', N'GkDfUnTpAEB LxhL', '2023-03-13 02:16:13'),
  (N'K KNASsO', N'XNhOYuMF', '2024-11-14 10:35:50'),
  (N'UqzxWJN', N'WnDwZcDb-aETHlHhLUF', '2023-06-19 20:55:10'),
  (N'OmUaqAvVI', N'nKpfl-tICQZbTNEVlc', '2024-01-21 14:11:48'),
  (N'QsDMGsX', N'ZgPlXzsE p', '2025-05-16 03:59:58'),
  (N'HGaJgiAVRfH QaDKcc', N'CtHwgZPceCRugB_DyYQ', '2025-04-20 17:04:17'),
  (N'sXiyNU TapxK', N'edfrfuk', '2020-09-12 19:18:37');
INSERT INTO [pathologie_chroniques] ([patient_id], [nom], [description], [date_diagnostic], [created_at], [updated_at]) VALUES
  (901959, N'GGjKkAvC_hzj', N'naqWWsd', '2022-03-23', '2025-01-06 06:56:15', '2025-05-06 05:31:26'),
  (670925, N'szMBgXaPuLNelpFAEEi', N'TcuDYHUBwv SZjaurJnD', '2025-02-25', '2023-04-06 12:34:22', '2024-01-15 16:23:52'),
  (959007, N'BWtFXA', N'dxNaXOSsqaSJZ', '2022-01-12', '2022-03-29 05:56:14', '2023-12-14 15:31:46'),
  (613352, N'ev-RiAc_P', N'ZttQgBilamqyIOso-', '2025-06-06', '2025-02-01 01:35:04', '2023-07-06 10:17:00'),
  (263946, N'CUePyXcqHbxD_puIGqqw', N'JhitzgQZYuDcL', '2023-08-17', '2021-10-03 07:18:33', '2024-09-07 21:51:49'),
  (138126, N'HKkLb', N'hWJIgmxxXWI', '2024-04-16', '2021-06-11 01:01:33', '2020-10-22 02:43:36'),
  (719056, N'XKd-KIHaTokY', N'skGBWVtORqqNZ-sE', '2024-12-30', '2024-01-30 05:05:11', '2024-04-18 00:16:30'),
  (688095, N'slvHvFN', N'tDdKCwfjqeP-', '2023-02-10', '2023-04-07 09:27:26', '2022-02-22 03:05:32'),
  (861083, N'vcLicpdf_NwkYi', N'aUSjYtDgxkFZypT', '2022-10-19', '2023-11-12 14:56:21', '2025-02-06 08:09:39'),
  (857273, N'bLJLaswcImZNq El dDA', N'_mZzIYNjlkHKRGDH', '2021-09-16', '2022-03-06 20:47:29', '2023-11-25 17:27:01'),
  (607163, N'coYzDwPGHenxl JRwNbE', N'wMWwuKddLwnLTGsPMZ', '2023-04-30', '2020-09-16 00:41:21', '2023-02-25 12:05:25'),
  (495706, N'ToUsav', N'RLYreLhZ_', '2022-03-21', '2023-06-22 22:37:46', '2025-03-12 12:58:52'),
  (845500, N'NCbPI_YkPT', N'AYJcHZ', '2022-11-28', '2022-06-13 12:13:50', '2023-12-17 13:03:23'),
  (981241, N'kTPhoTgocDeVAMwkew', N'RbwyLIEovQiAKdKce', '2022-05-03', '2024-12-05 04:46:34', '2024-10-14 03:36:38'),
  (912556, N'sGrfgLKs WFvYBoT', N'GCLo nlowzNL', '2025-06-21', '2021-06-08 17:03:58', '2021-01-28 10:45:23'),
  (476839, N'cFjOAqxy', N'MkWgiifdzN', '2022-04-18', '2022-05-21 12:10:09', '2024-07-25 22:54:36'),
  (642682, N'iCdqArHFHZiDPGCou', N'wSJlnSym cAiCDD_O-', '2023-06-27', '2022-03-07 20:26:28', '2025-04-19 12:35:05'),
  (205310, N'jMIuyipg', N'yxB-Mxd', '2021-05-08', '2021-09-27 02:43:28', '2024-02-05 00:57:14'),
  (510357, N'YOPLKYeCKeXyUqzMs', N'_gfluzZCpPIyiDFtmw-D', '2023-01-26', '2023-07-21 01:53:21', '2022-07-09 10:07:49'),
  (595633, N'jfGovM_jVqLeyRgyfS', N'zAHfHioN', '2021-08-10', '2022-10-28 13:10:23', '2023-08-25 06:26:05');
INSERT INTO [patients] ([user_id], [contact_id], [quartier_id], [personne_contacter_id], [code_patient], [save_date], [deces], [updated_by], [created_by], [is_extenal_patient], [is_present_hospitalization], [created_at], [updated_at], [est_enceinte]) VALUES
  (485685, 416, 312794, 811248, N'PPOlMlcyCN', '2022-09-26 04:22:59', 882, 560, 377, 511, 202, '2023-09-13 11:31:41', '2023-03-04 14:39:36', 0),
  (333446, 228, 590131, 888237, N'XvwvhazgeBpJKs RrL', '2023-04-04 20:51:26', 119, 252, 666, 2, 876, '2022-02-21 06:51:04', '2023-02-01 05:02:59', 0),
  (483839, 710, 142468, 931170, N'glPJTQHikEYunkTQ_A', '2022-01-03 22:27:52', 404, 889, 66, 923, 981, '2022-03-25 18:15:24', '2020-11-26 07:46:20', 1),
  (456008, 594, 49508, 768140, N'ztDyQCiOktwtHtzBmbI', '2023-03-26 20:24:27', 513, 230, 40, 689, 714, '2021-05-30 21:25:39', '2022-04-22 13:32:07', 0),
  (81967, 276, 153155, 701179, N'pqZvQYpSFYx', '2020-10-01 17:28:33', 154, 736, 104, 870, 638, '2020-08-23 02:35:01', '2022-08-19 06:05:24', 0),
  (278065, 917, 262180, 101155, N'ojYOlqWZSuEE', '2025-05-13 14:21:45', 218, 217, 938, 497, 607, '2022-09-28 13:07:23', '2024-09-13 21:50:51', 0),
  (559381, 408, 207485, 537096, N'L-IIwisPK', '2024-01-09 05:30:17', 853, 465, 946, 749, 182, '2021-05-21 19:14:49', '2021-05-01 15:27:14', 0),
  (212774, 971, 183167, 1648, N'uqjzLWwb', '2020-10-07 02:54:59', 855, 76, 820, 639, 707, '2024-04-17 08:48:48', '2025-01-03 08:44:19', 1),
  (905321, 438, 566651, 996990, N'oCWvB fAJWhtSmTODPwq', '2024-07-31 06:58:04', 282, 6, 127, 726, 313, '2021-01-18 21:37:51', '2023-10-20 18:14:18', 0),
  (940983, 347, 275841, 232288, N'zox_dWNlB', '2022-05-22 20:54:44', 413, 606, 61, 859, 245, '2023-11-14 00:17:22', '2025-04-17 04:30:03', 0),
  (833816, 467, 499945, 880583, N'pbWSolFhHTqnIUpjD', '2023-07-31 02:29:49', 710, 9, 701, 454, 666, '2020-12-27 05:17:25', '2025-04-24 01:30:16', 1),
  (17292, 297, 299632, 172247, N'zanqBgQeFYpIznTUwvP', '2024-03-12 07:34:37', 915, 985, 208, 98, 983, '2023-08-25 10:34:51', '2023-05-01 01:20:15', 0),
  (27900, 307, 81391, 817890, N'fXb EPPXyDlGdNPvd', '2023-01-11 07:30:57', 819, 960, 839, 886, 569, '2022-08-02 02:07:53', '2024-06-25 00:23:20', 0),
  (73582, 696, 153251, 622230, N'T_yphr', '2024-07-17 11:38:51', 889, 580, 70, 317, 236, '2025-07-24 06:48:52', '2022-11-12 09:24:45', 0),
  (349527, 755, 507045, 520503, N'-fnHOTl-RYsstkNo', '2022-10-08 09:10:48', 824, 833, 333, 269, 817, '2024-02-08 09:13:53', '2022-01-10 14:10:52', 1),
  (708872, 784, 959483, 947185, N'xYEusafDkcMtsapdj-', '2020-10-27 16:56:41', 331, 996, 364, 617, 292, '2021-10-21 19:57:32', '2021-07-28 02:34:29', 1),
  (111026, 11, 435068, 493395, N'omidohOaXbUzP', '2023-06-03 13:46:17', 159, 847, 198, 157, 67, '2021-06-14 06:28:03', '2022-08-02 11:32:36', 0),
  (258971, 15, 298463, 776363, N'ttUerKgChF', '2025-08-02 20:36:24', 191, 647, 208, 247, 667, '2022-07-24 09:22:33', '2025-08-15 11:20:56', 0),
  (755181, 812, 388685, 210807, N'WJgzg LXk-bYmAxJ', '2022-12-19 15:57:15', 118, 759, 58, 937, 470, '2023-09-03 09:55:12', '2021-09-29 23:37:20', 0),
  (769672, 679, 869748, 68789, N'XWjzh hEfQoikTmmTf', '2024-04-05 10:00:22', 515, 557, 535, 376, 123, '2021-08-31 16:39:07', '2024-01-19 14:09:52', 0),
  (154508, 477, 104148, 384672, N'RNi-EAOuhzXcnw', '2020-11-13 13:37:39', 59, 527, 773, 722, 855, '2024-01-18 16:31:38', '2025-07-19 12:09:16', 1),
  (320439, 305, 456492, 142674, N'BumiScnHrnQvrbKC', '2022-12-15 05:07:59', 836, 241, 292, 311, 92, '2024-07-20 11:06:42', '2025-04-11 22:23:45', 0),
  (50227, 862, 508761, 73462, N'eb_Cgq-NeW', '2025-04-03 14:50:51', 154, 737, 212, 941, 547, '2024-02-28 01:58:16', '2020-12-21 10:12:39', 1),
  (162764, 698, 59567, 937473, N'UKdbAXX', '2023-05-22 09:06:57', 766, 939, 310, 507, 804, '2022-08-21 01:24:05', '2023-03-30 09:05:34', 0),
  (398650, 90, 455019, 315642, N'-GGLGVDr', '2022-07-21 04:48:26', 106, 321, 483, 466, 677, '2021-12-28 13:35:41', '2022-05-13 02:37:13', 1),
  (146670, 771, 86623, 208151, N'Mec_zzNMtE', '2023-06-23 17:27:11', 637, 251, 753, 777, 828, '2024-06-25 13:40:04', '2024-08-22 15:56:36', 1),
  (364010, 468, 199769, 60493, N'LyXjeSW_aqEEgBR_', '2024-10-09 13:35:33', 915, 172, 419, 741, 236, '2022-09-11 03:29:02', '2021-10-22 00:18:52', 1),
  (568524, 166, 508021, 136909, N'cvHzImdG', '2021-09-22 09:47:14', 405, 725, 37, 102, 928, '2023-07-25 04:39:03', '2023-08-14 04:49:56', 1),
  (954716, 35, 93067, 380877, N'WnGunhONmtGyQtT', '2024-10-27 08:49:28', 684, 388, 743, 633, 416, '2022-09-16 20:11:35', '2022-12-23 04:11:47', 0),
  (464585, 190, 112521, 631523, N'vXICSMl', '2020-09-07 16:06:38', 15, 951, 568, 841, 445, '2024-11-25 20:12:03', '2024-06-18 22:51:18', 0),
  (413767, 258, 129502, 630047, N'hLDTtnBQlCYfW', '2021-12-02 15:40:03', 74, 244, 952, 485, 105, '2023-03-05 12:44:28', '2023-10-23 19:19:27', 0),
  (885722, 628, 210246, 149135, N'DLGuLsezz_', '2021-03-04 07:39:24', 174, 785, 903, 70, 725, '2023-06-18 23:06:41', '2024-02-16 04:05:57', 0),
  (45661, 641, 584517, 351118, N'RfNCZBPA', '2023-01-09 11:12:20', 962, 627, 412, 491, 123, '2021-05-04 14:46:12', '2025-07-10 07:52:50', 1),
  (78127, 302, 40568, 747269, N'tuyGYf', '2023-06-30 09:34:10', 453, 655, 306, 772, 236, '2023-12-28 22:53:47', '2024-07-01 10:20:26', 0),
  (347961, 139, 542343, 772529, N'PjBsTkBXNjl', '2023-11-21 14:17:30', 914, 428, 306, 5, 34, '2021-03-26 17:33:23', '2022-11-10 07:16:21', 0),
  (501942, 413, 183530, 365448, N'TmjafLbeLcMPrvMyFy', '2023-09-19 07:10:54', 598, 157, 629, 812, 407, '2024-01-29 02:59:52', '2024-11-12 07:06:18', 0),
  (283307, 767, 628667, 772408, N'mMCBGtvFsYKqhiSwh', '2024-07-18 16:35:28', 225, 10, 900, 495, 685, '2021-04-28 14:52:41', '2024-10-31 12:11:29', 1),
  (235925, 360, 665947, 410104, N'naMGT PcalXW', '2023-11-30 14:50:03', 768, 776, 370, 916, 36, '2021-06-05 14:02:40', '2025-04-18 11:14:35', 0),
  (649083, 874, 664675, 592964, N'uQuJRM', '2023-05-24 03:11:20', 639, 695, 428, 975, 225, '2023-09-07 13:33:16', '2023-08-22 20:18:48', 0),
  (551295, 464, 670634, 188901, N'sDCbbX_U', '2024-12-14 15:22:31', 138, 529, 866, 741, 419, '2022-06-18 04:20:36', '2025-08-06 13:27:28', 0);
INSERT INTO [patient_plaintes] ([description], [created_at], [updated_at]) VALUES
  (N'anA Q', '2024-04-14 04:03:22', '2022-10-17 20:13:06'),
  (N'rBGkeijF-PLSDB-uXTn', '2020-12-19 22:52:39', '2021-08-10 19:10:52'),
  (N'EcdRMWPorxUEr BukTpX', '2021-12-25 20:55:00', '2020-12-07 22:36:14'),
  (N'lRwBho', '2022-07-02 14:25:07', '2022-04-27 04:41:27'),
  (N'VyxYEBecrbQV', '2023-07-23 02:36:42', '2025-03-23 19:44:35'),
  (N'gZvPhWoKSimteGBIBVCr', '2022-03-17 09:02:56', '2022-10-25 07:39:17'),
  (N'LZduzYOseBXQudx', '2024-05-14 15:09:11', '2021-03-13 13:53:42'),
  (N'o_EqGWmljO_vrY', '2023-07-16 01:04:34', '2022-07-26 19:42:05'),
  (N'ayNtA', '2023-11-13 10:08:27', '2024-02-02 09:58:13'),
  (N'QatavYSDfWJHBzHMjOBw', '2024-12-25 19:04:26', '2023-07-01 02:01:14'),
  (N'FVkY-Wu', '2021-10-09 15:27:26', '2020-11-30 12:58:10'),
  (N'myBgLgRlj_', '2024-12-04 18:51:04', '2024-05-05 22:01:44'),
  (N'M-HIlYBqmV-RdOknFi', '2021-06-06 22:56:38', '2024-08-24 23:10:01'),
  (N'lCpmyqD', '2021-12-28 10:20:14', '2021-11-29 17:59:00'),
  (N'vm_oVUMkPRIZ', '2021-09-25 23:35:17', '2025-02-03 01:12:11'),
  (N'sKuTmIEzd p', '2021-10-29 21:37:56', '2025-08-03 04:50:56'),
  (N'qGMdjXSr', '2021-12-04 14:36:42', '2022-05-18 06:36:11'),
  (N'lGLyyKKNuVxHSgn', '2021-11-24 08:14:27', '2022-12-07 03:27:03'),
  (N'oXSy_vFezSEn', '2020-12-15 16:30:17', '2022-08-26 15:00:40'),
  (N'FopfDITsVQ', '2021-04-29 06:34:06', '2025-03-30 09:11:19'),
  (N'zbtPHvWKTg', '2022-07-13 04:20:08', '2021-06-13 12:41:08'),
  (N'cnHIMMAvwMLC', '2024-02-24 10:20:21', '2024-05-31 16:31:36'),
  (N'cylZbpAs', '2024-01-13 19:50:47', '2020-11-30 10:14:30'),
  (N'Y-XKTI', '2024-07-29 03:54:22', '2024-09-11 22:30:41'),
  (N'pRwAXrqJqPJCSOINLNx', '2024-11-26 21:56:15', '2025-01-26 06:21:55'),
  (N'dpKTOCNcBTXrRxPUqz', '2024-01-07 00:01:43', '2020-09-21 07:34:02'),
  (N'qHq ErWuhxAAUXYdTT', '2021-02-17 22:34:49', '2024-10-31 05:50:41'),
  (N'uOmDPpILmwRYdSS_uYDJ', '2023-10-31 23:51:58', '2022-11-16 10:48:58'),
  (N'bEnXFQIA', '2022-08-12 20:31:43', '2025-05-01 08:53:13'),
  (N'LebcvDMBsIo_qVteh', '2022-12-25 23:18:28', '2022-07-26 10:07:27'),
  (N'EBABXKTTLfBY', '2024-06-04 16:23:17', '2021-10-10 13:50:31'),
  (N'rmNEAkZRp', '2024-09-08 02:44:30', '2025-05-18 08:00:20'),
  (N'fPe-hubipHfG', '2023-04-10 11:05:18', '2023-02-05 16:45:40'),
  (N'CxpnqYcsrdYg_hkRJ', '2023-05-31 17:47:50', '2021-01-10 02:31:49'),
  (N'WKOzLfrCAb_PsZQKlQIR', '2023-02-06 13:22:04', '2023-11-04 10:22:35'),
  (N'FITJXbt', '2021-07-17 03:12:33', '2022-08-29 01:02:30'),
  (N'E_TJdhqmTxv', '2023-06-24 17:51:59', '2021-02-18 06:05:10'),
  (N'rtvtKLvjPuLIysU', '2025-08-12 16:39:40', '2021-10-06 02:55:59'),
  (N'qMJmRMiSiX-Ln', '2024-08-17 16:26:10', '2022-11-17 06:19:46'),
  (N'_AqJUSCuZSWcmTlxK', '2023-04-12 03:13:11', '2021-08-05 06:37:13');
INSERT INTO [patient_references] ([patient_id], [prescripteur_id], [referencable_type], [referencable_id], [prescripteur_quote_part_id], [numero_reference], [montant_intervention], [pourcentage_applique], [montant_quote_part], [date_intervention], [date_paiement], [paye], [mode_paiement], [numero_facture], [notes], [statut], [created_at], [updated_at]) VALUES
  (862409, 272696, N'ZwEwNX', 985355, 611585, N'T-uMzwgmhl HcgT-', 3503396043517440.5, 1117918722031398.0, 3154598788206550.5, '2023-08-11', '2022-09-04', 0, N'cmIsAYExP_Cr-OhL', N'qywNqeueGe', N'jTVkiTKdM', N'FxdkkCWZeMXFXvY', '2024-03-04 00:17:03', '2020-09-29 21:17:45'),
  (651965, 220992, N'CCplGAtCHOy', 182245, 806202, N'WelGqbuWxvqjpiUVEkM', 4711849094237331.0, 1836057936555416.5, 5323630639086975.0, '2022-11-14', '2022-02-25', 0, N'QohXUzYeVswm', N'qFhuvGNLWl-wrdlBsVj', N'Rf-GBqhsxpWFmoBHyd', N'cSqaVZiwep', '2022-12-06 15:46:20', '2023-07-26 16:52:13'),
  (487789, 729373, N'rIGGDgNMgNZqhgbVf', 788347, 278788, N'aBfzZZTPevcFlTK', 1040027878542227.9, 6054855690886710.0, 618639859703349.4, '2022-12-16', '2021-03-31', 1, N'MsSGijajEDxqrU', N'cLKpvHx', N'iCr_h-zq_', N'eKUMlfiTGeORHRvF fyo', '2021-04-08 15:30:17', '2020-12-30 07:08:12'),
  (233372, 20461, N'c WnmPK_', 687935, 807328, N'aovWgxxFNYvoSYzqVjeU', 2080774804863095.8, 4870061845831672.0, 662858419860632.4, '2024-09-17', '2025-02-23', 1, N'LMCfxcJXqcCAA NDM', N'-EHoCtzQ', N'pGUV QZ_anAODP', N'mdcDNgvqy', '2020-09-27 18:43:42', '2024-02-16 18:36:45'),
  (684090, 6354, N'vsRGYkC', 164392, 191316, N'bBRND', 6997226613436888.0, 8850118480658484.0, 7729737720247407.0, '2025-01-19', '2023-06-12', 1, N'WdQQIU', N'qBEwlJcDuslbZgTtl', N'KLHIvDOLSnIRZorhoJ', N'oNhsbx r', '2023-08-22 21:39:19', '2024-04-22 06:45:16'),
  (573343, 98468, N'UYuNOqdhWI', 637297, 695034, N'xnGRU', 5043200488619132.0, 8722679584409914.0, 4844940016786643.0, '2021-10-22', '2022-12-14', 0, N'JvD-RFYF', N'gkQsfERNRJYqnnQ', N'gPXctT-hKk', N'rUxaTRW-U_', '2023-12-19 09:19:34', '2022-10-20 21:11:07'),
  (281795, 191824, N'YOthAJCckGge', 410867, 854578, N'vORVcijaWMSUNlqzdD-A', 1815939907013627.2, 4269900113735944.0, 8152864810543021.0, '2023-02-26', '2022-01-16', 0, N'yhkIupLpnhgpldcJ', N'cUTWxJgbR', N'yMoIfRpydPiMgY-Y NB', N'BgHuDyjt', '2024-11-08 09:55:55', '2021-12-04 04:27:08'),
  (738280, 732678, N'SvQJSfMYcHSfvXsHvYYd', 676627, 32540, N'edJkCVCphys', 8860147522094249.0, 5832814638619657.0, 4969732413287705.0, '2022-09-11', '2025-04-02', 1, N'tbbbmsbMrGG', N'tUILPWqOCofKEH', N'J unmKwBZHloCeeQYTE', N'SEzoPLxnQjUfguUO', '2021-06-07 07:20:08', '2022-06-18 08:48:02'),
  (36123, 789537, N'-EtUBztMK', 581043, 605167, N'NRuAjGDxeqorjGU', 4325205589076082.0, 4178329246644553.0, 626712635991896.2, '2021-07-02', '2024-07-26', 0, N'YlZNU', N'FijNmuvmmTARaPQ', N'ozO_YMTGwF cspa', N'OWnYJwtue', '2023-03-27 03:00:48', '2025-01-23 10:20:19'),
  (68625, 577513, N'sDUKiRih', 443853, 828902, N'OXcKc', 7143431805501894.0, 523133505582164.0, 9192449207306284.0, '2021-10-29', '2023-03-31', 1, N'TbJCefrelxPp', N'LRFrBUKxMBi', N'FuxH ikcrmtp', N'qJobQjspMcKQnbxWP', '2021-11-07 09:57:56', '2024-05-21 14:03:18'),
  (953260, 229732, N'CNZgGKblisUX_', 587581, 305461, N'FbDZSZFrriQb', 5460063910115408.0, 2705929002866649.5, 2688433753856691.5, '2024-05-02', '2021-09-29', 1, N'd_SWoXF', N'OD-fQXkIjeEnWxm', N'Vx H_fe yAWvZ', N'NlFdIhbytoKuNvgiToA', '2024-04-24 21:56:41', '2022-01-15 20:38:30'),
  (241660, 509890, N'dqcVzKPtuEvOD', 76458, 905393, N'PIPDXDbYZWORc-yL', 2034840534948032.5, 997831185165347.6, 2571134398734600.5, '2021-03-12', '2021-08-22', 1, N'eGOl jpRMKvh', N'TISnXwXnfJ', N'vFCxeWV_vsCnGZP', N'qWJrnwHQc', '2024-11-10 17:42:16', '2021-11-12 02:47:25'),
  (239888, 819126, N'PFwaqcZ', 703701, 113640, N'HdNtELoR', 9232272031538062.0, 2573078263541311.0, 1474513543984207.2, '2020-08-29', '2022-08-06', 0, N'CHulymDpdjovvmmFimfu', N'clMGqfuXaKgViAgh pnF', N'LNjagBbgqWbt', N'dqqw_RCyQinU', '2021-09-25 12:08:24', '2022-05-17 15:57:16'),
  (879745, 967284, N'ySVbMeCphY', 60236, 790235, N'Lsxdix', 2658803686274353.5, 5613048237908944.0, 7915996970988036.0, '2025-08-05', '2023-10-19', 1, N'BOfxuPSoCthdoa', N'UPQTgQnu', N'YjDOexMwF', N'MAYmWVvsQQaozlscI', '2024-03-27 19:55:05', '2021-12-25 02:28:21'),
  (240514, 24259, N'YDXfTrpgcc', 533183, 142083, N'rwblTv-ZM', 932279391848917.0, 5798035824168395.0, 4758749731736134.0, '2021-11-05', '2023-08-12', 1, N'vfrMWpgIGvBfyU', N'WgRYOltqsooJiGvsxJlQ', N'lDevIJjZRMRAhW fH', N'blhDFdSYWodwrqXw', '2025-06-08 22:46:28', '2023-01-25 19:09:50'),
  (16413, 418311, N'xhiuJgOtsvqjld', 259192, 298734, N'-YUta', 1232768078516656.2, 6283861042407963.0, 7607011787204567.0, '2022-05-16', '2024-01-07', 1, N'kiqwTyJVFGUS_gQ_S', N'usbsC', N'OmLlGmMiGv-PoH', N'anFuaQDEPkFLLa-JGQg', '2020-10-03 08:36:03', '2025-07-01 17:02:29'),
  (111299, 121090, N'_ziRyPpUEGNlOacgRa-', 633419, 96307, N'bLXmXUUAX-Guhp', 2810135156266298.0, 5358740699500807.0, 4947583615836549.0, '2022-02-28', '2023-12-19', 0, N'qAZQqRnULMrsNT', N'Hc sIe_aMdw-BwtyoAqf', N'AOsxxPrUoAO_XFhdFE', N'hECdf', '2024-12-23 07:02:25', '2021-06-23 04:16:25'),
  (763210, 191924, N'rRtRAyvJKelm', 677340, 572969, N'fLDlDzYMDzEWHXrhQjZp', 1123622504120129.8, 9498477454332354.0, 3751474030750058.5, '2021-01-06', '2024-01-29', 0, N'rItzoXCdRcrS', N'TArWZW-UgZLI_', N'Hexy_', N'p LTkggLlgnodN', '2021-07-27 11:51:43', '2021-01-28 13:04:33'),
  (405256, 512552, N'qyGTdmYMaEOwA hfoGQ', 947365, 733632, N'QYQtVd', 4097309048890322.0, 4168597530477506.0, 4881632321700201.0, '2022-05-01', '2024-11-30', 0, N'rS-xusAGfYvMZuCzNAZ', N'wGyARymVcq', N'YRyUgIOZdoZjb wnUd', N'tKcGvGSVDKqfWtGcb', '2025-01-09 17:31:57', '2022-06-20 14:58:24'),
  (32026, 152665, N'JSIWDAs-yffok', 598101, 541984, N'noBhACVLdbE', 9482044126460970.0, 6270231809125860.0, 637093776654559.2, '2021-01-28', '2024-10-09', 1, N'Tv Gbk UgIHXmrlQKc', N'IaALZ-xYfmf', N'fFYzMogh', N'ogOabk', '2023-12-16 15:30:21', '2024-09-02 16:42:56'),
  (624981, 595395, N'uSDchQRCBSn', 84807, 966668, N'AemHzZQKdZVybhFZ Xtk', 6049776601815315.0, 9481421316036058.0, 8329483523087630.0, '2021-05-12', '2023-11-29', 0, N'ufcuLyZiwrQtL', N'JOEJc', N'uGGqJbg', N'dGbLLXeiQvaoD', '2023-06-18 15:59:09', '2023-03-01 20:23:02'),
  (348785, 58295, N'JcQJdgvxQuvOfqNd', 666494, 206969, N'FK  sEDyrzoFE', 8784645714458100.0, 1482476900249862.8, 4933831758053293.0, '2022-03-21', '2022-06-04', 0, N'CzpcsMpevmhfqgiPpph', N'RnIOnzOs_-iOGYuuYfuo', N'WBmmZU', N'FpgJaKmRmUjIfOoGR tb', '2022-06-25 21:16:02', '2025-05-29 08:40:24'),
  (222639, 940669, N'tkwQefCO-MaVHZRZDu', 993588, 968395, N'D -FODttykPayaPLcfad', 8174275452125315.0, 6188635870099753.0, 9743765991507868.0, '2023-09-06', '2024-12-08', 1, N'KfTgu', N'jTjEyPQPcnt', N'CVHWUGd_ZaqDl', N'xEelOzFDkHaCU', '2022-02-02 09:29:45', '2021-01-29 03:47:23'),
  (52181, 865996, N'ewrByT', 577544, 38286, N'WMDIqlOxun LSzffzXJZ', 9967148078819188.0, 2837501230956066.5, 8328927639176507.0, '2024-07-31', '2023-07-03', 0, N'awElsXXOvHLFtV', N'MzOrvmEu', N'mM qiyyecMMxIYoRpaxR', N'LJfQSLmChEwN', '2025-07-15 03:44:19', '2021-12-13 04:51:08'),
  (897191, 711630, N'eUetCXZXLmstkSnzVAZx', 744686, 773074, N'ko_ipyePRC VGN', 7802667496883814.0, 8498087208944505.0, 6372845403015108.0, '2022-01-15', '2021-01-27', 1, N'BYBstvmODbPFxk', N'hIwcKoWlb', N'vyDbPkFpZFZzfqMMH', N'kKfEMXL', '2025-07-25 09:22:51', '2025-04-17 20:49:40'),
  (614603, 46811, N'QONdASFTOBXC', 186980, 518784, N'AkeLJC', 6801355381018871.0, 934736161633680.2, 7658129693179637.0, '2020-12-31', '2020-11-18', 0, N'erTuO-', N'xfWTr', N'iSIKRifrfx', N'GtQhYwmgRDrEaQwK', '2020-10-31 23:50:36', '2025-01-02 07:33:04'),
  (735568, 363960, N'teCwbsYBxIrDuftiia', 146759, 105322, N'QKKRdZETuX', 4206010259727467.5, 4068505851299304.5, 4124201712033813.5, '2024-07-24', '2023-03-14', 1, N'j_kMc_U', N'Pbdl  HwYvOGi pkoGvh', N'dhKappiSEfVC_yYBy', N'-fBntincOMCHh', '2021-08-14 00:16:31', '2025-07-23 05:28:11'),
  (779785, 791930, N'wqTrGIcI-REoV', 405910, 69473, N'OA_glUzZmK', 5285693719396961.0, 1974834529593164.8, 586070065239713.2, '2025-04-10', '2024-08-20', 0, N'ECDBnVMIvE-iBjAdx', N'erhJNjoteOVefLXOAT', N'KSTLkHQtjv', N'HYEAoM', '2024-06-13 02:40:10', '2021-06-10 08:04:53'),
  (642518, 735653, N'cp oGKkI', 829170, 12902, N'MGrhNDfbTj_Ps_XSveLL', 1095343938311558.1, 2306778798791007.0, 5958447176339612.0, '2021-01-07', '2022-12-20', 1, N'QA_TkDVKJICDQ', N'KWfTGU', N'XZsRKOcyCy', N'npYzoUpbfKPNBxC', '2022-03-03 07:36:53', '2023-03-14 01:37:06'),
  (895918, 787925, N'V DrQXyH-GxcUgBlPA', 70541, 710306, N'YGhuiThp_Hdll', 3354124789568319.0, 6505871047876925.0, 4844750043515214.0, '2024-11-12', '2020-11-28', 1, N'ifv_avUFqY', N'vvbRdNIygYXMe', N'ViuXrb', N'DDZ_EQ NaYuutNz', '2020-11-27 08:52:26', '2021-07-26 19:24:12'),
  (332780, 330119, N'FZcw--JJFq', 810467, 254855, N'mxSAuRxKsPGI', 2788701615156287.0, 3462294364852298.5, 3674781378097105.0, '2025-01-26', '2022-01-30', 0, N'URl_y b s M-', N'oYXujNjpdPuzeS', N'wlFjFCnH', N'ajT_z_qbD', '2024-02-25 04:47:40', '2023-08-27 20:30:21'),
  (769225, 360676, N'oNHvSG', 727147, 847081, N'kPadaalnWZUsfsnjmwn', 9786762881980484.0, 3709781568694944.0, 6321835252838753.0, '2022-09-01', '2022-08-15', 0, N'ViTbYopIpoEMaG', N'yaLS pUAVTCuV', N'uWSF-BLtf- uJA', N'QAYwggOfOFegJXflXMG', '2024-11-16 07:45:42', '2021-03-21 00:22:37'),
  (399459, 631365, N'x vx QrIg-iSs', 296608, 256455, N'kkTQSbSOP', 5292191948916700.0, 4867126602797197.0, 6696005712754155.0, '2022-04-09', '2022-11-21', 0, N'MZn sClf-vYbHrjhq', N'edXcMFUnulaccymm', N'JQIE_ad cF L', N'fWnhN_', '2025-05-20 13:03:05', '2023-10-28 18:25:11'),
  (856109, 968615, N'rxiZbZ', 362575, 721787, N'gIDORs_fIwXhNTwsFt', 3863168770611570.5, 2652450389200926.5, 2483752355886295.0, '2024-12-07', '2022-01-09', 1, N'bN-HEZQPedtiGQHn', N'klVDZsDPV', N'TjdVootGVlHNNegSRIZ', N'FBNDlk-rTA', '2020-10-30 18:41:21', '2021-08-05 09:48:14'),
  (689879, 983392, N'bJqqRDSaKtx', 146429, 809237, N'uoZA hQT', 7106844132924112.0, 4950235293088582.0, 8256930898523892.0, '2022-03-31', '2021-07-22', 0, N'bXexsposDau', N'toqvQkSLk', N'JyZojee XGveY QpPpPM', N'KJmq_XmREH', '2022-11-24 17:19:44', '2023-05-03 17:09:09'),
  (260016, 505691, N'HnXsYsGmsZvTML', 665119, 431105, N'NtUapHCV', 7244719433495709.0, 591943697286888.5, 4616792497442143.0, '2021-06-25', '2021-03-19', 0, N'BNZXHMqZxa', N'Ex-ZuSbvDBI upXrs', N'tyEqJHPcjlj', N'ZM_yPkvzftEzWUGy', '2021-11-04 14:30:42', '2022-10-23 11:34:27'),
  (600827, 788189, N'A-FExnLmKm', 15142, 754039, N'nZRtr', 3913263996799263.5, 4921922370016268.0, 9370226235413748.0, '2021-04-10', '2024-03-02', 0, N'--jrRBqDOqcdTY', N'xAgzg', N'ys-HCaYQCOdDJG', N'YcHxYkjoiNBPlOoqOd', '2021-08-04 02:41:56', '2020-09-28 01:41:20'),
  (274204, 418615, N'nIHxUbywcM', 306410, 246877, N'by UXcr', 5377439290464087.0, 5644595115959796.0, 9432669009710596.0, '2023-05-08', '2021-08-25', 0, N'DKQZzszL-UaaYN', N'FJuKKhgnzLBzi', N'QaLmPmngCmzhZWlnFC', N'qYAUfOZHXFiWkOqKUCLv', '2025-05-10 08:06:15', '2023-02-11 02:40:18'),
  (192388, 752686, N'HUlmB_vzFQPu', 901919, 962131, N'pabuRmyHwXVqxg', 1837831949997375.0, 6725754706966333.0, 7101460164625706.0, '2023-04-08', '2023-02-27', 0, N'GocnEv-KEuwnOr', N'jfmlTM-', N'qcnCllL', N'SrzDevB', '2023-07-15 01:37:49', '2024-12-15 08:09:29'),
  (407852, 361514, N'rzMpPjH-NHYl', 571853, 128298, N'yGooRy-ujGaH', 2521917856073274.5, 8947290917057032.0, 3721174768510364.5, '2024-04-02', '2020-10-09', 0, N'lznCbSk-DUpVf_VShpCt', N'NzzRjYsojVUSrtT', N'LzZYECUPBhR ZB-f', N'dnYhQxTkUgLFjqWx', '2023-12-04 14:27:08', '2024-07-28 07:39:27');
INSERT INTO [payements] ([annee_academique_id], [eleve_id], [vente_id], [montant], [mode], [date], [created_at], [updated_at]) VALUES
  (670988, 119022, 788069, N'yRJgw', N'XGNiTg', N'GYNbCcP_LS gydqSOrt', '2024-10-10 15:47:09', '2022-10-08 10:15:14'),
  (441750, 94910, 826566, N'JjHO-', N'HR-fb', N'BMkQyUANK', '2021-11-04 05:32:59', '2023-07-27 23:11:14'),
  (27104, 783018, 829304, N'KRIXjaXalHts', N'eYRpVictDPgm', N'roMoVzpAtE', '2024-05-07 06:44:49', '2025-07-15 11:33:46'),
  (149177, 473586, 20778, N'dZqViPwyekbrFfDBL', N'Z_bmoWWNtqvtcknEkQm', N'jYSIieQIagMqjJNZD I', '2022-02-08 10:48:04', '2024-04-20 21:15:29'),
  (997306, 236930, 583223, N'Ux jiZTH', N'-arPNEEznG', N'hozX-H', '2022-10-27 14:13:56', '2024-03-11 10:06:28'),
  (392968, 699508, 698281, N'hdzNikDyqfKVK', N'gKdICHh', N'CRgzaKEUoUcx', '2021-08-23 02:22:26', '2021-04-07 12:55:53'),
  (324448, 619535, 399810, N'_DGnA', N'_IuLuKC', N'gq gjEtMjw', '2024-07-01 22:14:45', '2021-09-01 12:26:57'),
  (286603, 560887, 820161, N'bv VcTr_rwWS', N'zFZpNtPfVNEFaoeiEj', N'fd-AFMYwgWEJFh jwHaf', '2020-12-05 21:56:42', '2021-01-31 12:05:47');
INSERT INTO [payment_patient_reference] ([transaction_payment_id], [patient_reference_id], [amount], [created_at], [updated_at]) VALUES
  (468, 597887, 1052360077452975.1, '2023-03-03 21:33:27', '2023-10-19 17:38:32'),
  (397, 399323, 4436065020198236.5, '2023-11-11 14:44:55', '2024-12-18 01:18:18'),
  (282, 789499, 8009967979914310.0, '2022-08-28 21:25:03', '2025-05-11 09:18:46'),
  (104, 109222, 3657712383597360.0, '2023-08-27 05:13:46', '2024-06-13 12:36:32'),
  (787, 453781, 9545142717660814.0, '2024-06-09 17:03:56', '2021-12-19 10:37:40'),
  (102, 47317, 1052533246762826.8, '2024-04-12 07:20:07', '2021-11-19 01:50:07'),
  (18, 715332, 9747216361363498.0, '2023-10-21 05:18:56', '2020-09-30 06:35:31'),
  (983, 886690, 6000676045983950.0, '2024-08-22 16:21:31', '2021-06-11 12:19:40'),
  (832, 162181, 6692506136447758.0, '2024-11-21 18:10:10', '2024-11-25 21:44:02'),
  (737, 776394, 2621043668238656.0, '2024-01-03 15:12:47', '2022-11-03 13:11:02'),
  (41, 350386, 2637054785714980.5, '2021-09-08 17:35:26', '2023-08-18 08:34:56'),
  (836, 2122, 3880734705524757.5, '2023-02-21 13:32:18', '2024-02-22 04:47:04'),
  (303, 742318, 7686519741016283.0, '2021-05-11 09:11:08', '2024-10-05 07:17:02'),
  (505, 217623, 1123185207615250.4, '2024-05-08 16:09:09', '2022-09-18 19:08:26'),
  (48, 428606, 1365331927576860.5, '2024-06-04 05:09:30', '2023-03-23 00:30:29'),
  (696, 980888, 2431947078441193.5, '2021-11-19 18:21:31', '2021-11-10 13:08:18'),
  (17, 73438, 7483799211423212.0, '2023-01-01 00:13:38', '2023-08-18 14:50:47'),
  (643, 216087, 4246031033555154.5, '2022-11-21 21:16:12', '2023-07-04 08:12:33'),
  (865, 681742, 9772348036640246.0, '2021-09-26 09:28:19', '2023-05-12 18:09:47'),
  (310, 214227, 3958806596366044.5, '2023-03-06 19:23:42', '2022-10-10 16:35:47'),
  (669, 293713, 5517126968565635.0, '2021-08-30 07:01:09', '2021-10-12 21:08:07'),
  (300, 472990, 5521934282270835.0, '2022-09-17 20:39:46', '2020-12-03 06:11:36'),
  (955, 144635, 97783176371051.27, '2021-10-11 01:51:16', '2023-12-17 19:48:25'),
  (999, 318527, 2567611381606905.5, '2024-08-10 23:23:10', '2023-12-06 17:07:03'),
  (10, 85215, 1020409390338996.6, '2023-03-22 02:56:03', '2024-03-25 20:42:05'),
  (782, 906413, 8298953343645057.0, '2024-10-13 12:27:08', '2021-10-28 04:33:56'),
  (989, 767773, 243771610274453.6, '2020-09-21 17:39:57', '2024-10-01 15:42:59'),
  (609, 336566, 7449237617889918.0, '2023-07-12 16:11:38', '2021-06-26 12:10:17'),
  (267, 825071, 5687646233842018.0, '2024-07-10 03:55:12', '2022-06-28 08:16:15'),
  (182, 931125, 7840908681172123.0, '2022-03-11 00:06:21', '2021-09-07 07:09:59'),
  (720, 898197, 9195235430120190.0, '2024-01-10 08:11:15', '2023-05-15 15:24:10'),
  (155, 61183, 249538923452004.0, '2020-12-15 03:43:24', '2022-11-02 02:45:37'),
  (860, 891639, 7462257415199277.0, '2021-03-01 04:25:47', '2024-07-04 18:02:27'),
  (954, 932417, 6296752231554329.0, '2024-04-25 10:41:23', '2024-04-16 07:20:39'),
  (499, 24142, 2534665327864620.5, '2023-12-05 09:15:37', '2022-12-18 18:32:15'),
  (846, 831440, 4770219837194100.0, '2021-01-25 09:07:19', '2023-10-29 03:21:15'),
  (433, 533307, 72720005374310.45, '2023-12-29 19:51:42', '2023-01-10 18:08:17'),
  (643, 16755, 403950822126460.94, '2021-06-27 15:21:14', '2025-05-28 01:57:02'),
  (409, 803989, 2817339016164940.5, '2022-06-08 14:09:16', '2024-03-08 10:19:07'),
  (290, 746588, 3708899569826069.5, '2023-12-07 11:32:06', '2021-12-14 20:13:02');
INSERT INTO [pays] ([nom], [currency], [code], [symbol], [thousand_separator], [decimal_separator], [created_at], [updated_at]) VALUES
  (N'YqikzwUZbAoctqfz', N'PlHsLtvnYxPiOvAPUQg', N'ZoyMgT', N'ZRiGXJWUCwcQH--Bw', N'AlLGuP', N'nOiZVZNFx', '2020-09-20 00:35:47', '2021-10-13 07:09:02'),
  (N'azMFqpAs', N'DF_nfvNAImjtcIjeJ', N'mhufxhX', N'FtUiZHHYhcSc_', N'pLoMUN_kdfkPEE AWd', N'nqWpRfwDv', '2022-12-22 03:30:59', '2023-08-02 23:45:22'),
  (N'for nyd', N'aFETOhneofqmEBniv', N'VoWo CVjPV vUNl Qz', N'Dwanfufaoc_aVFACjd', N'b_DmjF', N'pUriSVbnaN', '2023-07-08 05:26:49', '2021-04-30 07:47:37'),
  (N'sDZqfQlEv', N'pzxOrl_zL NLG', N'vaJ-nDpOOQCBN', N'BbKlsFqcgbdrlkaj', N'vGxXpAv-', N'qnv_KkNywpNCU', '2024-03-15 20:46:41', '2023-02-25 18:16:34'),
  (N'iQorgRZFq', N'KDhhWBRegUV', N'mnTMpPe qYQ_ns', N'LZRGnOGJumW', N'jAmcfxC-DLrbWK', N'uOKV-', '2024-02-12 00:04:50', '2020-10-12 02:34:12'),
  (N'YPDenULYaEyG', N'ItgiSmzhPfh', N'BNPEKnJb zV', N'-NXcgVx', N'ivAtMIVEBEtWGGwr', N'j emeDdxRHLwo', '2023-12-04 00:20:53', '2024-04-26 12:22:31'),
  (N'wFCyVjodxdmdv', N'ddVceaU', N'unlwIgpNA-', N'RogEWFWAopf', N'ODVhQs', N'GmVGSJfKai_wss_XU', '2025-04-20 04:29:05', '2022-06-21 18:34:16'),
  (N'ylT eD', N'QMUkSlocBxeE', N'KlsW_gfFd_YVVoHXTtI', N'OGeFqYFWKSequlu_iX', N'QpgKo_', N'Te -pw-HhI HP', '2020-12-30 19:13:45', '2021-08-19 15:28:24');
INSERT INTO [periodes] ([mois_id], [annee_id], [created_at], [updated_at]) VALUES
  (480705, 398696, '2022-11-22 15:57:47', '2024-11-14 12:51:50'),
  (116971, 665065, '2024-08-06 14:20:16', '2023-02-16 13:58:00'),
  (272198, 54378, '2023-07-08 07:53:50', '2025-07-10 12:54:43'),
  (670347, 837056, '2021-04-14 13:36:51', '2023-02-15 22:08:42'),
  (771785, 834596, '2025-01-01 15:44:54', '2024-10-21 21:10:53'),
  (983484, 213447, '2023-10-11 20:12:51', '2023-04-20 07:11:11'),
  (938511, 978507, '2023-10-06 09:20:35', '2022-01-01 07:43:46'),
  (137296, 714274, '2022-08-08 08:19:56', '2022-03-14 09:21:02');
INSERT INTO [periode_academiques] ([niveau_id], [matiere_id], [annee_academique_id], [debut], [dateFin], [created_at], [updated_at]) VALUES
  (972897, 459565, 322753, N'xmksjOlpY', N'dALdzHBZa', '2021-02-11 14:23:20', '2025-02-07 19:00:35'),
  (814396, 743010, 355856, N'-NbZmQ', N'gJzPi', '2020-09-24 20:32:40', '2022-01-03 18:39:06'),
  (709940, 553634, 309409, N'I w qiW', N'fJICiANM', '2022-01-26 14:00:22', '2024-08-31 07:38:16'),
  (411417, 719543, 475605, N'zrKsd XHUI', N'zLuyooEPhrt', '2021-07-26 12:48:32', '2021-05-10 11:41:01'),
  (721898, 987873, 533051, N'BxNpbSaxlUTnpHs', N'pHNQzoTnqXIhr', '2021-05-20 13:40:36', '2024-02-03 12:58:23'),
  (791911, 514414, 449197, N'wcY CIBrdMDFCD', N'YrFhRVtZ_liEQkrqLhf', '2025-05-19 23:45:35', '2021-12-25 01:29:33'),
  (397974, 175613, 848947, N'bGgYpz-w Nt', N'ZSDSvEnMRxRsd KP-i', '2024-10-23 11:24:48', '2021-02-19 15:32:22'),
  (808791, 926478, 357346, N'q gUCXeB', N'pitMRdyM', '2021-01-13 14:40:57', '2024-10-02 09:44:04');
INSERT INTO [permissions] ([name], [guard_name], [created_at], [updated_at]) VALUES
  (N'ObirRk', N'uMGYLsCZJPubT', '2024-01-22 08:31:05', '2022-05-06 16:09:34'),
  (N'RwJy-iHw', N'kSpnfLfzsTrB', '2024-09-23 14:39:13', '2024-11-10 21:52:43'),
  (N'KGlMjqcyu Pskhjck', N'pnnIbm_X RMkqQt', '2021-12-26 15:27:26', '2023-07-20 01:12:47'),
  (N'YPAzjWNLLEHJnh', N'AYOkUlqw XHUA_Sar', '2025-01-11 17:57:24', '2025-02-04 22:20:44'),
  (N'VFDIYrbR-OQIGso', N'hf cMOMlZLuMHN', '2023-09-19 05:31:46', '2024-02-02 22:41:38'),
  (N'UL jj-EScLObVZJABaUd', N'TraExXCBVlEKAPgh', '2022-01-25 14:19:54', '2025-04-06 01:50:57'),
  (N'LkilkbFsjLiWuFEJLI', N'VR EAODFZc', '2024-06-11 14:12:59', '2023-01-19 07:09:46'),
  (N'YBHeFq', N'XXyoI', '2023-05-29 07:08:22', '2023-07-01 19:03:03');
INSERT INTO [personnels] ([user_id], [statut_id], [corps_metier_id], [matricule], [date_prise_service], [date_recrutement], [created_at], [updated_at]) VALUES
  (140830, 861172, 322458, N'ltgrgWPeDCRPRcu', N'Tp UAh', N'ySl afIAggtOuhV', '2023-12-01 16:22:30', '2024-08-22 14:56:34'),
  (135242, 901553, 400984, N'AwNyhBmud', N'ojneqkjmwt', N'PQWerN', '2024-01-25 01:07:00', '2020-12-16 05:09:41'),
  (618094, 851048, 104423, N'qDHwnHaWuQDNre', N'ZooiJor', N'haLmBXeI  tHlb', '2021-09-02 09:27:50', '2025-03-14 19:42:24'),
  (930165, 381431, 439356, N'X qwntkBjPxFVTa', N'VOtyjPISjrs', N'yIneV _iOgfQnzKVo', '2021-09-01 00:25:35', '2022-12-17 12:10:36'),
  (981443, 714133, 152303, N'EmRsLga_vXptlfnlTKLD', N'BRDLms_-A', N'rRvNpgc', '2020-10-24 21:33:28', '2021-12-11 09:18:01'),
  (191409, 642378, 768029, N'XRLzbzv_V_hI', N'poHl VU', N'OrrMYiTrtV', '2022-03-01 13:02:44', '2023-01-29 13:00:47'),
  (668498, 616705, 91488, N'yo_BpEOuAk-_A', N'lh _ _p', N'jOefFIAs_OntrEVDjJ', '2024-08-09 18:44:54', '2025-06-24 12:13:53'),
  (936980, 726984, 855463, N'OjTjJDoymT-CLiY', N'aVhnYCBIIxJi', N'-_kwosjmz', '2023-04-12 07:39:42', '2023-02-26 12:49:04');
INSERT INTO [personnes] ([nom], [prenom], [created_at], [updated_at]) VALUES
  (N'XbPRUQefpOipu--blf', N'wgitHQwNXMU', '2021-01-29 14:00:38', '2022-02-14 06:53:47'),
  (N'ZOoQACAFZbIOAKPtlcy', N'iPGjHE', '2021-05-31 10:10:55', '2020-10-18 17:45:22'),
  (N'oanUfyv_pNmQpWf', N'fARLenPG-H', '2023-09-05 23:03:11', '2022-04-24 01:41:10'),
  (N'WbGHHrxFNs', N'dyCawaayJZzSWlCoFvRR', '2021-10-15 09:06:12', '2020-08-20 17:34:07'),
  (N'AZqepP', N'FPKOZEvZtdwmfNrcN', '2023-11-15 18:16:18', '2024-07-25 22:02:03'),
  (N'MZQxLozGVjrPp', N'_mgHaleTXZ-Rmb', '2025-08-05 12:20:02', '2021-11-21 19:31:03'),
  (N'BB_OyTpgFQZrqpJ', N'cEncmh-BoKXxLhgGNK', '2023-12-04 05:37:21', '2021-05-17 04:11:33'),
  (N'ImnkFLncFImcdB', N'w  YmoxyQEjksnInN', '2024-12-21 03:30:50', '2025-05-14 11:47:02');
INSERT INTO [personne_contacters] ([nom], [prenom], [tel_pers_contacter], [email_pers], [relation], [created_at], [updated_at]) VALUES
  (N'qdKhhgVzaN', N'sw naNLz', N'qmgUCuoScvOFFyMJ', N'c_UPdSbDmwVXNbbE', N'dXhOkoByy_t_WL', '2021-12-13 00:53:32', '2024-07-01 23:20:07'),
  (N'WHlcWApyAfFeGC', N'ywkKLbtYnBTYC', N'dzfC-uzPK', N'HAWUmzCcDjthmP-mtQq', N'm EAdEEvuYBjlNl', '2022-05-31 18:41:18', '2024-09-07 05:13:45'),
  (N'PkCENCWWYYuHHEaB', N'XtMeVTokdYZQ-i', N'FTS-uOx_HCzW', N'yahCkOSUeNIjeKGnNBY', N'_fBvTF_AG', '2025-01-10 01:44:58', '2024-12-22 08:21:04'),
  (N'RQZo_CwCVzO', N'gHlOfRa', N'NFGeu  o GUWVkx', N'oqXAYfOBLucdvq', N'lvibt', '2023-08-31 23:01:50', '2024-07-25 12:01:05'),
  (N'DQsOGZfypzgCj', N'-FeC-IqwOrMnNWTSt', N'tZDEiqpnvrqHsr', N'oLb_SiYJF', N'jAQEpBKJjNsiKGNZ', '2024-11-01 08:39:43', '2021-04-07 05:59:12'),
  (N'sZ coZmwNFRQ', N'QM-GqlExx', N'gGq NyjckMMjvKIpqB_', N'sJY-IxfUmKocRO_Ql', N'TlJyaiD_FmdutBSmMKM', '2025-04-05 21:10:31', '2021-09-10 23:49:55'),
  (N'fLRVYdwHhhmpFULFro', N'fcqog', N'jdSaWLb', N'EUwKDblUzmwP', N'EWeDDudgYnL', '2024-04-02 09:31:05', '2022-06-02 17:05:22'),
  (N'VEiYXrIXBudQCoBnAhOq', N'Dkuj-', N'O-bOIZkqfAKM', N'gWvowooSJtsEthp', N'fEP-ErgfJrlRH', '2024-07-10 18:19:28', '2024-08-22 23:49:10'),
  (N'IlsHCC_unkbN', N'aChNDI', N'RsEhQIO', N'cECmtLdiRud AkFV', N'DdyHxsbvOqt', '2022-10-31 09:44:03', '2023-09-03 08:15:28'),
  (N'nCmfnmOii -HNqfk', N'VA_xUOpvtFrGItSDTbXQ', N'fRPFEAiTl', N'O YfxGeQePgWlZEFebEd', N'DVgsylYGgQQe ZfJ', '2024-06-14 01:24:34', '2025-06-26 16:29:38'),
  (N'TgNViaIRubeckOSAR', N'WnMhvBTwXdZGEV', N'DLUFFt', N'tvaWgDcXCPPvKns', N'PyVHjCCzxqwSgW', '2024-12-21 19:31:25', '2022-07-04 13:33:03'),
  (N'DMoywg', N'SERKVMqHvV', N'sBQjSRxwB QnwB', N'wIjsnbxlYaNTzPE', N'p-CZomHHyYjf', '2021-07-25 13:27:30', '2021-03-28 01:56:19'),
  (N'xAMfZvntqqXrDbS', N'-mRFmaujkiuj', N'tJepvbQuAQVJ', N'APmjJiXdDa', N'DldQdbDJgyYRhfQYR', '2020-11-14 17:25:44', '2023-03-24 18:53:05'),
  (N'EaTjKukhilP', N'wMlVfryu', N'HlAAkMMrCboeojYJ', N'OnMirbLXG', N'Vhqpfyq_KepZXTs', '2023-01-02 03:32:56', '2020-09-30 18:28:02'),
  (N'MWymqhTGzLVJAA', N'BpsrxlJdRJuCqgUktCzH', N'ePnNRVgxKcTPSZFyViYN', N'ypBCEjD_kiMlA', N'NHyHnaPUGwTby', '2024-05-23 14:35:15', '2021-12-07 02:35:43'),
  (N'LdefM', N'mTmDsmLK', N'UqGoalUPga', N'HCasqTIOxxNTBQz mpT', N'IFrBMXNhPKm', '2020-11-23 23:53:03', '2022-06-16 06:29:35'),
  (N'xHtXXiv', N'eqjWMoJoheuMVlrEcW', N'uLHdS P', N'lHvPQtWCHWMtebMEF_i', N'foaUUTzP_zADSKWJPhlX', '2024-03-15 18:27:00', '2024-08-22 14:22:13'),
  (N'_MMIIjRkNEZOfBQV', N'HDCyIB', N'RQtGzAjMMHYeGgv', N'y MjsnMSou', N'fdLTcHnQOEFCuu', '2024-05-29 12:21:18', '2025-07-20 20:58:35'),
  (N'QKWRyGoYpbQU', N'owolKOygYdK', N'OSQEPwQ', N'nWFmSGTLRUL', N'aPHlFA-rYUel', '2024-11-11 06:18:45', '2024-08-17 02:47:10'),
  (N'SuQDTwL', N'dK GvOkdlF', N'lmiKX', N'gjufcpeAD-bIAhVHM', N'EPJDDg', '2025-08-02 20:20:51', '2025-03-24 17:58:22'),
  (N'II_WYBPBexWXUqx', N'cuNuuWbfDBuFGSsO', N'WRLLCLOoUyGFkGD-H', N'rysXpQWb_ZFfUIKqavB', N'Aq_Y ED-eXKAfueoXnxN', '2022-12-17 15:23:30', '2023-12-24 18:16:57'),
  (N'xzQkwvj-XHVE-ulR-HFG', N'r_Emj yqmwot FfZVpER', N'PuhQglt', N'owSogqTUFdRslPsKN', N'fE IdagonGf', '2023-09-17 17:35:48', '2021-04-15 13:43:55'),
  (N'BAIts', N'hCNeCYi', N'lLiF_O', N'LZAcisxdoOGMVXwl', N'CUGeiA', '2022-12-31 17:41:25', '2022-08-17 02:18:02'),
  (N'xEdugJNfuUD', N'p-hVLpEZUl', N'DcxZJ', N'cQbBOte', N'SKaU-VRZo-XS_Rnk', '2020-12-20 15:28:55', '2022-03-04 10:32:40'),
  (N'EHBpahslVeO', N'EETnrSIO', N'VNvrbMGaFgvkr', N'axdqCPr', N'XPhaDSvaKQZiaA', '2024-12-22 21:26:23', '2023-11-12 18:46:21'),
  (N'CxjCDO', N'ibdKcZdpyBIQdlEWq', N'rsK_e-HFBjDxX_BgT', N'HqqUypEZAyI', N'nNhflhqZ_PPsDDxkQ', '2021-02-12 02:14:39', '2023-01-11 14:42:31'),
  (N'QtUDdolsiBsTRrUHFP_', N'XRK-TyrEA-JnziAZXt', N'XtelqB', N'yRvpwILnHLNaTjxTUrZ', N'rn-FJS', '2025-07-03 22:32:01', '2023-04-15 01:01:38'),
  (N'aCzcqNDHQm', N'jyErOxVxXRmypShGj', N'iwWWHQdVxvjBU', N'fqmVWoM', N'kZuxkQNczbyNERPSiuIj', '2024-07-31 21:09:31', '2022-07-28 15:43:23'),
  (N'-bcYNxwexdMgn', N'YIiaHeWm', N'v_ryv', N'jlBMwDuBRVuE_', N'KyrLuTceIvXYpUH', '2024-09-18 11:50:15', '2022-05-14 22:14:41'),
  (N'ynDNFuGZDnTwkDMsdMTF', N'NbIny', N'WFxsmZsYxp', N'kCFNUKZxI_IppRCkzfK', N'zL-XEJgZXXsy_', '2022-09-29 00:22:36', '2024-06-18 22:39:43'),
  (N'DTQo_e', N'bzZgGia XLdILiqY', N'D FDJPfgD', N'YSFeSWSRloI', N'LgZGaHdrzYgN', '2025-08-11 20:17:16', '2021-01-17 17:51:36'),
  (N'TOdwnZUBztlCTFr', N'e-wOi_jLLv', N'keXzdfGdkggIQhousVG', N'PnU  AUnd', N'WKzqj-wN', '2024-12-21 21:00:32', '2022-07-03 04:54:25'),
  (N'kFEZuymSEvscBH', N'rApqxtuAu', N'tBGjMGJ', N'vHwSpmUrtUPglvFDN', N'gKVLYnCT', '2020-10-21 12:47:17', '2025-03-17 02:14:47'),
  (N'qPdlUWvKC-E-dBvaI', N'KQY -JSuRNtfJfq', N'iFoUeJlTRsmHoOr', N'ZqigfBrqAIgRA-ly', N'oLReRizvDZHv', '2021-11-23 01:07:03', '2023-07-08 04:04:08'),
  (N'PhkWtagfYhF', N'_s-GEjNj', N'RBeHMoCEuZNGGztikph', N'WNKKmYACw', N'Q-MTTCmgynDLgqdhlY', '2024-05-11 09:08:21', '2024-12-07 06:10:09'),
  (N'WgcTtzDPPNvxA', N'f-nweMeoioy', N'kYd -ODPYjscO', N'qKWDzqXEEoOhZhCY_', N'kvfPHhQ', '2021-07-21 04:00:49', '2025-05-26 15:02:40'),
  (N'VBIMPRYLgIyiUtpfmGP', N'kgYyEDhuSdSaYMjRfea', N'KmQJnNr', N'lmRHYNAWEg qj', N'tFdPMyDydJHyIbg', '2021-03-13 02:06:19', '2020-10-27 18:45:24'),
  (N'pDVLNzrL ekqvVNzSJN', N'XHAkIDLxzp', N'NpKKavL_H', N'ieQhsM', N'UZlrjNUNH', '2021-05-31 15:03:13', '2021-05-11 23:30:52'),
  (N'sfkR-GVsDkaBj', N'sQkwf', N'srrSy-pBHOLlqVtvkAFG', N'voS Hootlkvpld-r', N'FIGfaxU', '2022-03-10 18:08:59', '2023-03-14 00:32:13'),
  (N'rnQLs', N'MKIkJJyIPYtwFGTEXrlX', N'hRqJX', N'mEjNnSjK', N'cPEign', '2024-05-14 00:45:35', '2024-12-15 19:16:17');
INSERT INTO [plan_comptables] ([code], [created_at], [updated_at]) VALUES
  (N'cQ-mhmMVQGYhz-FoqpWw', '2021-05-13 18:33:15', '2025-05-16 01:31:41'),
  (N'VsXSrH', '2024-11-16 19:47:06', '2022-11-23 11:54:52'),
  (N'XHXBRu_k', '2020-12-04 15:43:37', '2024-12-09 07:27:59'),
  (N'vJVfQN_lilz', '2025-05-12 20:55:23', '2025-01-11 19:37:06'),
  (N'HqIra', '2023-07-10 20:24:44', '2023-11-12 04:04:17'),
  (N'zHyqX', '2022-02-26 15:29:30', '2022-08-12 16:32:48'),
  (N'OGUMRVUjXpmYVu', '2025-01-17 23:28:52', '2023-12-28 12:32:42'),
  (N'QAsqmhseGgKuUJMBy', '2024-10-16 05:45:12', '2023-10-31 19:42:17');
INSERT INTO [plan_comptable_matieres] ([code], [nomCompte], [typeCompte], [created_at], [updated_at]) VALUES
  (N'RArhoAEFWiASIkYKo', N'FYiXWrcP RYy', N'SVwNzZVFiCzKfLl', '2021-09-21 06:42:42', '2023-09-03 11:56:07'),
  (N'lJcLGHpDLFHVv', N'wRxbMkkYmcZOy', N'Actg-XSs ZtL', '2022-01-19 10:22:49', '2021-01-01 03:05:17'),
  (N'Y-toVw', N'oKkOvoSBPPnLlkHBlJIu', N'orMTt_GXrfmujLB', '2024-03-15 05:33:34', '2022-12-22 13:09:40'),
  (N'syDtggI', N'XR-wyJz', N'uQntPqPS', '2021-09-08 03:33:20', '2023-03-21 15:05:43'),
  (N'MNCiNnuyCBIr', N'nVQW-E', N'rfSTPUF', '2025-06-12 06:53:09', '2020-10-24 04:48:33'),
  (N'mZqGzjomRIHIYVF_ctdB', N'bSkMUIl', N'FCE-RBN', '2023-05-26 12:39:18', '2024-05-08 23:20:42'),
  (N'UqSEQMm LCbWy', N'xyUUAcAPqdqh', N'nBwOMbsNbENQgxtk', '2023-05-31 21:25:53', '2021-03-07 10:59:17'),
  (N'hsMCDSUELiLNyepfpFf', N'XK hdE', N'yOjrlDwcksLYIEc', '2021-12-02 03:58:33', '2020-08-29 08:45:23');
INSERT INTO [prelevements] ([code_prelevement], [examen_id], [type_prelevement_id], [personnel_id], [date], [etat], [code_flagon], [resultat], [updated_by], [created_by], [created_at], [updated_at], [bulletin_servie_id]) VALUES
  (N'HOR-iCMnrAuR-QB', 327287, 85531, 162705, N'fzwmoAmdNv', N'GvqXgpHHEcnc uRoOmoJ', N'ViVf-_as', N'apiPZrIQYNRadv', 407, 767, '2022-03-25 06:20:18', '2023-08-01 13:41:00', 780789),
  (N'fkbNEnZmlZSeZDrbA', 787596, 359865, 464604, N'AgzFnilDUgS-u-t', N'hemSOai opjMxY', N'RFJRGThNg', N'vugMjwd_', 604, 898, '2021-06-14 06:17:01', '2024-10-19 22:49:04', 128519),
  (N'ACKugCpwNlDixESV', 228661, 909361, 109107, N'dNuuV', N'n VSsN', N'kGaMM', N'ACmBjQBgEfOKmeT', 344, 896, '2021-08-09 16:43:40', '2024-03-26 09:13:46', 656355),
  (N'tbyqfRmnAENQRDlQF', 724703, 298997, 225708, N'e__foPQhKbSBjrta', N'pPDoIgFPGpDlC', N'srFjPg', N'VfrNn', 573, 13, '2020-11-05 23:51:54', '2025-05-12 11:03:51', 611230),
  (N'TSy A', 730, 964640, 453525, N'-FRaHHZqgSmPZygd', N'NPYObjHbjrcgLvhu', N'MrAEKyYu', N'AnFVIL', 356, 828, '2021-12-27 23:03:07', '2023-06-24 14:51:57', 139317),
  (N'yMFkZeZbzQ-xroBlWsEm', 287997, 916041, 349639, N'qhdpl', N'qXi To nxxQ', N'KCBJEoQ', N'ScpuWGfuxmZvtPwG', 457, 450, '2021-05-02 20:20:18', '2021-02-13 16:08:41', 294909),
  (N'N DKI-vKPilwWR', 391430, 379260, 984498, N'iKdIRKSYPyy', N'XXhkv', N'BauwO-r', N'Drzuv_UIIZyDLDGD', 606, 864, '2023-09-03 21:47:12', '2025-06-30 10:05:00', 922896),
  (N'rL_QlcND Gj', 275412, 653525, 746978, N'tSmsKn', N'XclkIaKBqfHApzC', N'CCKmwZsILpb', N'bN_a OaXtMhlrhjOHdrJ', 671, 759, '2023-06-09 14:29:08', '2024-08-14 19:53:29', 548391);
INSERT INTO [prescripteurs] ([nom], [prenom], [specialite], [telephone], [email], [adresse], [ville], [code_postal], [numero_ordre], [etablissement], [actif], [notes], [created_at], [updated_at], [deleted_at], [business_id], [business_location_id], [solde_paiements]) VALUES
  (N'hzLDK-ZQikpa', N'vjYBvGiUiPHcBTsRkbtY', N'p-BjigrNZVs', N'BLJ Ho', N'iabRDI-yHE Wl_-c', N'k gr-pRxOvve', N'ieROBFYlz', N'QjYudmkubFl', N'eHcWLHq-APZMRTLFMmNI', N'-HTYckvAi', 1, N'oTZCzkKRy', '2023-05-20 18:46:16', '2023-05-01 15:22:46', '2025-02-03 23:45:37', 85, 962, 4976013622351116.0),
  (N'rVqhzxGyp', N'rVUFVIplzQkqMM', N'tqmdet', N'JF_AoXXz-tD', N'tpXKavFtOOrwK-OUlm', N'oBSqVPfLcMn', N'apawafQczeglINvgyK-', N'HUgBGAsDicIeDiiVknf', N'VyH_EtimY-iIhiHm', N'GqsuyZK', 1, N'XxXGliQyt', '2024-08-12 01:26:10', '2021-04-09 03:36:01', '2020-08-28 21:11:30', 689, 809, 8039979928439376.0),
  (N'ftlhDOhWGPg xjdSXMs', N'ZSJeGqD', N'jgGbnwmdAIlxEvonBv', N'QASjhMbfhqkFsENNN', N'oUFzTaQTlsKnSWYQiI', N'HNNdIvFqr', N'csKfxUyYdGC', N'vFxwbqqYXf', N'Zrvltj', N'HsJhKkGVxPw -s voTq', 1, N'ZKiECLNx-s', '2021-10-21 09:14:17', '2020-12-07 11:37:56', '2021-11-09 18:58:02', 377, 785, 5695735161147895.0),
  (N'wDWkpkuwaPKYDvnj', N'VksYZUO KsUjWa', N'kuD-FOVpvkqfnPOWfU', N'L_JZzyACqBNeKWAz', N'QF oiGGGSzj', N'GtiQaYlmqit-tikT', N'DissberU', N'jPjilUtKoOatuMTJWgIg', N'dWVsPLEQIgpryPeI', N'EjsHCloNJuDOQMr', 0, N'fAphx', '2025-08-16 07:06:36', '2025-07-14 21:42:26', '2021-06-24 23:52:28', 725, 875, 385669318054215.9),
  (N'AwoRIf', N'DQxYkINFEEGNSswga', N'DW_sCg', N'XrCPams esiTtD-KK', N'RMWwAhKzEFv', N'NSqLvInoSKbN gro', N'gIDvmvEakkAC', N'sVqmtCbQBC', N'-EhBNvBPJZAdg', N'DIvaFFqihv BCp_NJxjW', 1, N'IknbS', '2021-01-26 04:38:19', '2024-08-20 23:00:03', '2023-03-13 12:05:36', 746, 395, 7453135559395724.0),
  (N'yqaSzgti_q', N'hWqzAwYgZ', N'UiUkWlBew', N'BLzbsTWLOwijvqgDObL', N'XaJqmVjpSEul__', N'eMvmgNQlXgTc', N'JtlRBvGeRChZPLECMI', N'xSncq_', N'bbrgWgKOuBMv', N'zujAC', 1, N'ydnQ thUWyBTCiZceE_b', '2024-09-19 19:30:55', '2024-02-06 18:36:01', '2020-11-27 12:54:04', 722, 121, 7836748415622351.0),
  (N'irfck-TGwAndCgoqAIl', N'HdPhMOteASSQyCE', N'cxOXLmHbic', N'yfuygfE-ywqBnZartGPm', N'F begRW-S vqH', N'OOIWO', N'YvvCJddm', N'tjHb tBxSJX', N'rWTbMqduklY_WRjsz', N'IHATiulzEw', 0, N'WOQNd-UGWzcepZ', '2024-10-11 19:08:57', '2023-03-01 23:31:09', '2022-01-17 21:25:39', 887, 576, 4433901462852583.0),
  (N'fHNLY-C', N'KbCgLBKR', N'rcJq pys', N'uaCTnVkNZRHhGCs', N'DnhiDto', N'Z_cUdUtd', N'cNEngdeYgrJHt', N'qyXXLcemdn', N'nuVQmtflcQT', N'qhZgmZYPiHrkRTIRAqid', 0, N'iNyM_ibzL i Eupq', '2025-05-12 03:52:22', '2021-08-11 15:53:15', '2022-06-01 01:24:43', 753, 309, 7401615605595382.0);
INSERT INTO [prescripteur_quote_parts] ([prescripteur_id], [ticketable_type], [ticketable_id], [pourcentage], [montant_fixe], [type_calcul], [montant_minimum], [montant_maximum], [date_debut], [date_fin], [actif], [notes], [created_at], [updated_at], [deleted_at]) VALUES
  (308514, N'YqVxw-UbRkxUVDe', 494607, 7344311505158448.0, 7343356235107017.0, N'gryje', 3006701491148117.0, 3608905179431229.0, '2024-07-14', '2023-12-05', 1, N'vVOKVfs', '2020-08-27 19:17:38', '2023-03-17 00:14:36', '2022-03-20 19:43:51'),
  (989406, N'ODRKvcdykwrwiwoek', 69107, 5415650548739580.0, 7573568826753150.0, N'qmkEJJVZ-TflGgyLV', 8370366234407289.0, 8399800359516756.0, '2020-12-22', '2022-05-09', 1, N'xZMSk_aHGhJ-ry', '2024-06-05 04:43:59', '2023-02-28 18:04:18', '2023-04-02 23:48:28'),
  (593268, N'MIqhaEzJA-cHMAH', 60430, 8183714519661096.0, 3860656226806341.5, N'QBBPokczyuLwXzMWa', 3766793337938164.5, 6635773044899015.0, '2023-05-01', '2025-05-01', 1, N'GnyXpuxKNIay', '2023-12-14 06:09:57', '2025-07-09 23:24:50', '2024-04-16 04:46:46'),
  (660593, N'yTfUabfDeiv', 9331, 3779170988319855.5, 7109885055590665.0, N'FiGZE', 3337308966658826.5, 7737444750876459.0, '2022-08-09', '2022-03-31', 0, N'tqmMA', '2023-01-12 13:43:02', '2021-04-22 08:48:09', '2023-04-29 22:01:01'),
  (78429, N'ivzigLdMpstjX', 756240, 3883122852459107.5, 824879891094275.6, N'R -qiJGlFzUPe', 9575447979762314.0, 855561772071510.2, '2023-03-07', '2024-07-14', 1, N'OLRPaI', '2020-09-26 20:19:03', '2020-09-30 03:27:13', '2024-01-11 06:48:38'),
  (35735, N'vcdOl', 729172, 4320721448771883.5, 2502716571443020.0, N'fmll--vvDbUy', 8380538549689420.0, 8242264318957184.0, '2023-10-17', '2025-07-22', 1, N'NYtPH', '2023-07-16 12:07:15', '2023-04-13 02:43:21', '2024-10-25 05:56:22'),
  (633731, N'PQztsPHRoJ', 938049, 9074280129962786.0, 500481292185418.5, N'zfPT MlwfLgF', 3197795589826456.5, 3991336842105172.0, '2024-06-06', '2021-12-10', 0, N'iNrHlnHQjsXob UIoA', '2022-07-15 22:02:33', '2021-10-01 20:02:29', '2023-01-19 14:38:12'),
  (406808, N'KnVpNNotMZkZvZ', 755174, 5374539904787070.0, 4585647114175757.0, N'hqaDp', 5592360846880048.0, 4511730131964741.0, '2023-07-05', '2024-04-19', 0, N'YepS hC rFSKetHyKNB', '2020-12-05 02:36:02', '2020-10-29 11:35:45', '2024-09-03 07:14:02');
INSERT INTO [prescriptions] ([parent_prescription_id], [patient_id], [doctor_id], [contextable_type], [contextable_id], [business_id], [location_id], [service_id], [code_prescription], [prescription_date], [notes], [observation], [motif_consultation], [autre_service], [type], [status], [nature_type], [diagnostic], [created_by], [updated_by], [created_at], [updated_at]) VALUES
  (78361, 614028, 316699, N'gCXmj  yNJCLzAQRS_', 271368, 596, 116, 831707, N'yOdQtqplPw', '2024-03-18 23:43:10', N'sEb_YjGIDwPGa', N'grtSPD', N'kOlpIhKoDMywb H tS', N'XfNHwI', N'tNcMPoPwLyjkJv', N'bBEIj-yPnVCnP_', N'YlCoOsmorFOTjxx', N'_OcWUpXaiaIawzHci', N'nrFhCrtssMekR_Gx', N'sYd-AU', '2021-05-25 06:10:53', '2025-02-10 16:50:59'),
  (556160, 63479, 296236, N'hDOH_zhwyoTOYqqjVuT', 286123, 26, 786, 883419, N'dqpUXEIjSXk-gZC Of', '2024-09-01 00:05:29', N'hLmdxKazXC', N'KQOTjvOUZzBCnsLS', N'MTW_d', N'rWCFL', N'SQezQLSy EADIh', N'BDqMSQM CBX-CRNEBYGg', N'SmzVCpBpmopseI', N'bMesUsIPMy', N'LHSFhfGWtdabiC-u', N'gXWQIFncIvxOOJ', '2022-10-26 03:02:38', '2024-04-03 19:52:02'),
  (679458, 996566, 377999, N'HyxgvJshV_', 597730, 321, 343, 68532, N'TgDiafYmupdJdTCg', '2022-09-29 21:02:15', N'pa-KrBMk', N'MPBkbhZYiaiI jwbh', N'ROauvMNUyLCn_EX', N'WjazDTWoXwfjRD', N'SflGAoueAPhOXsSdww', N'GsUTTkKylH-puZwxxv', N'xwmLzZ_LRDFk', N'kYSysfIQeGXm', N'-PCZScbiumLq', N'JRU-NYxPKXA_WdUOIN', '2023-05-19 05:07:59', '2022-04-02 04:29:05'),
  (557987, 461182, 821374, N'kitlIHVOStbEdGbhyqG', 502003, 658, 397, 102332, N'WcCjxGNYFEsXRPQa', '2023-01-22 05:13:09', N'LUBXJrPDdnf', N'HgoaNQg', N'VVwerRZnaQLek', N'NkWHE y_QWhqxovMd', N'PQvXRdrjrS-zfFJR', N'zQRNzclyN', N'zoBUUzDj__mEqDVHrRm', N'EjzFaZhxN', N'kaUhm', N'-vsWIHmPRxLeRvKPPA', '2022-09-19 11:29:25', '2021-01-06 21:10:02'),
  (551622, 613340, 343573, N'TJDenZSxQPcvu-kaEcm', 984052, 21, 24, 693451, N'rJXnScUpYSdSvjPm', '2021-12-18 12:22:17', N'mwzs tpmZzFhdgMWw', N'seIYrHf', N'rpYWfiCuU', N'PDxzUCSTZLp-CSE-', N'zQzBgl', N'KQJCUUKMqmnIxqwKSO-', N'uTDMBvO-WesKsTT', N'WIc-faqBCtxDFeMYhP', N'nGmeQIps-HIs', N'yoZOZSPXYHJHeuanD', '2025-03-24 10:59:10', '2023-06-18 06:06:44'),
  (768975, 816535, 575350, N'FoWH rxsngdx_BB', 430732, 163, 312, 803145, N'jDqe-OFzS', '2022-03-05 13:18:07', N'WIeKT', N'bRuFGWxtjk', N'slwbfZPot', N'ASSnkiIyXvicZthpWXPI', N'-CLYvdpPauPThbucLtYR', N'Cj_xtTdjU_LNIkNpHRkZ', N'kcshsvMgbiYC', N'IORNExi tnA_g', N'NyBiIN_bAMBG_ofpb', N'IA-iSC-SMikZembeZYE', '2022-02-22 21:58:10', '2022-06-18 08:31:24'),
  (494898, 675915, 247233, N'osOkgUkdBkOu_', 805538, 360, 180, 530725, N'gXZJl', '2021-09-20 10:43:36', N'fSdLSbXuVvSrsQYLhrh', N'SEKHoDtiDNh', N'oUoYupdnnqNLBYB', N'TIFxz', N'RlvwBeGaiguJYR-oM', N'ruWMTM', N'UEGNpRQQI', N'hWz_akPsW-_', N'HFrf eeATFLSZ', N'wkVtmSlyu_rSVRnsZ', '2024-03-08 13:00:29', '2024-05-14 00:07:07'),
  (321667, 30518, 902147, N'nrlJYF_', 180996, 737, 183, 112209, N'YkAegipGrR', '2024-07-05 06:37:18', N'NMRLbfoQFqCLplqn_u', N'SSToQrVIzl', N'FmUrCYsLWkHxaAnBa y', N'Jk dv_nljBwY', N'FzaEKUBqXICm_ mtMkM', N'ToGNZteK', N'jJHFbkSBGzYPU', N'xFcNgEsSeOMyesO', N'qxcpHD', N'sDwsHHNYlS', '2020-11-15 09:00:55', '2023-11-29 10:52:46'),
  (118149, 939012, 830579, N'SxYojsdC', 327114, 211, 403, 88562, N'GsxBtBnZE_fUFjy', '2024-05-18 00:00:59', N'_cAXZ_XDYdXFaoYVNodB', N'jVTDqOFAHwYEsYfPhT', N'UW_kX', N'JyfnZ', N'npKuCQHZlxcn', N'mOUoC_', N'xFJUsbKbjz', N'JOaahRPfpEdJ', N'FYKOYH', N'KP-bWOd', '2021-08-09 03:33:18', '2023-02-22 06:04:51'),
  (158551, 288197, 909161, N'fAoqdJKVhNZE', 275265, 332, 635, 911952, N'GxDOrOt_', '2025-02-07 14:25:38', N'ZfqErUY_Y', N'fimGbrlVCkdua', N'OriioBg', N'YnBrYpuhxpAQUKlle', N'XuYk_PcS', N'DsYGfdrsoU', N'MsEGs', N'eYLGqrivGrVj_EuG', N'SqMhgEVe', N'LOLoHHGzr-YZAzp', '2024-04-07 09:26:29', '2023-11-19 23:03:19'),
  (181789, 827710, 216956, N'pOtcjfJFPpEBnvaV', 135628, 256, 457, 76552, N'YOY_JkfCswnnZgrwplUY', '2021-05-22 20:43:06', N'IcIfsI_nldjKyNEG', N'lAbMczkaf_ZomS', N'CCudRRfzs_KpZALp', N'YzIXvQPkmt', N'RdaIXD_WpePi', N'Dj EfX', N'IZpwdjN_LDeBFfWsTq', N'POuYPSUxbRxzhE', N'xRZ-O', N'_qa XzGPkGTyDcd-yj', '2024-03-16 03:55:04', '2022-04-22 01:21:41'),
  (943587, 382106, 405376, N'g-paKU', 742670, 445, 308, 422082, N'JRGEsjjskrYlwoqGzBX', '2025-08-10 09:43:55', N'JfgJEwdIhOzEDZZMQTw', N'mmlqYunN', N'm_nSkfkNUhOMWMI', N'YpIviwx', N'ZeZBRSc', N'XTAqEfCmpipzGxhUvfA', N'MQjahdrNR YhRj', N'drrFySI', N'HvTJduKdL-T', N'oZW tiEebxdL', '2021-01-01 11:31:10', '2025-03-08 21:49:50'),
  (635600, 459113, 129124, N'emQvATQjFvskqQneWXz', 260835, 148, 336, 273463, N'smO-yx', '2021-06-23 10:18:49', N'PkpGDcew', N'lqosc', N'CCXWN_XReJ-uqpIRTf', N'QwWbEsV', N'cVLeqfVJLA', N'imBTMypbPsCzoOpN', N'IpSqbEvyWyh_oWR', N'mEH_tpl', N'ddnriKlIzfqLkLePX', N'wkNILBLzfUOGUxTSdlH', '2025-04-19 07:30:38', '2024-05-28 04:09:44'),
  (13936, 204512, 919028, N'_WFnAmAujTU', 992455, 363, 924, 978356, N'BNBcpmYgZqdMTV', '2022-12-10 19:31:19', N'cpyP_QHrgKlosm', N'BQOp_RK-cUZDvYOj', N'aRoEFFAXvIuaPop', N'BzunYIrrlPBOOSiQf', N'rpJvodthGRGFehW', N'TdlmUOmLSleJwnEScpa', N't_kDYlR-QWlJGbMOzZOH', N'FwKmHZ', N'NiznlvaRpJzI', N'CybMpWNG_', '2020-09-24 14:12:30', '2022-07-24 06:52:03'),
  (300794, 610168, 524597, N'YicxDmBrEEZfwbi', 838870, 462, 227, 180164, N'kqodTNswJ', '2021-08-27 15:37:46', N'WI-wW', N'GlvpKrEGJgJqDJtV', N'UyJU_GnZDBk', N'xPdXFAqNnL-FZSjW n', N'k-EaXL', N'HTTx--tSTwUqg', N'NggzGLXFBHTnc', N'aqONwWUw_JnhK', N'KiDZnbjMr', N'FIsNpcTNrk_eUyw', '2025-07-03 05:38:46', '2022-04-18 01:53:41'),
  (108350, 381755, 943094, N'MNbcb-OQJUfg', 713373, 600, 758, 491778, N'ywcChTNTDrB Pk  Lri', '2025-06-07 10:40:18', N'fXEuYMcnS', N'hnIZrY', N'jGTZsVU', N'-VnTRDpPiAmEFor', N'cX mvsrXqmFF', N'T TXxsQmFbzKWxO', N'wLTvMBUehqYZtN', N'aazadVckixJvyBrA', N'mjJDF', N'uSAOs', '2023-10-12 01:56:31', '2021-10-23 19:24:25'),
  (649768, 731187, 393259, N'TH YjsNZXYIrQpsI-If', 883669, 406, 322, 132590, N'DCpXtu', '2021-06-15 14:21:41', N'biuAiz cHowN', N'SNMrVqcMEjE', N'AYJSsNvpQmdXd', N'bBJ-jzhzpwMpiYl', N'FUFDuDzUoyOaeHE iS-H', N'jLZZAgp', N'DXRMTNyra_PUbzp', N'xxCJxaoXJKts', N'lBfdjx-r', N'DYujWiCfIwZhSPHy', '2021-06-15 03:44:15', '2023-10-28 19:24:06'),
  (891191, 665332, 768418, N'hZSqhtDLYquptogimbXi', 151085, 112, 378, 882568, N'DwhpxLiP', '2023-03-23 09:36:27', N'Z-IgjdLuibvLRZVfP', N'GslJN-VPqGFLB-uuxJs', N'hppyhoNRY-SfexxEynay', N'ZDanlQRBfKGMczC', N'GO-SSyyLolAM', N'WHbFjkjNJ', N'kSYsTSOH', N'tcxovpRBdqPGvY', N'_AFpMxoJCrWWRyqq', N'XemWYmN', '2024-06-03 01:09:16', '2022-04-24 21:56:05'),
  (456814, 608741, 75260, N'RDOxxDRV', 274544, 131, 70, 475534, N'OcXJaAHAscYp', '2023-05-30 02:32:00', N'SQncOEFm KjYtW_Czx', N'TWum_G_BUT', N'-bAnYfxoO K', N'OhbYgNKDp', N'KhxQDYsZHP_HSZ juRN', N'zTnl-JaxQjw', N'jkmGuhXp jIXMLt WTp', N'CKYyiGFDShkP', N'PFXRjmjWUmlgyVEIFW_W', N'zNLRWdkZeQaFrXusgsp', '2025-06-08 00:52:21', '2023-10-17 16:25:01'),
  (892570, 756255, 852258, N'SCSsBnSE', 138795, 625, 26, 961936, N'RTdPfzxGXl', '2023-11-18 20:09:49', N'UVYauSR', N'zjYJpbCnoHXqDVxHq', N'Af_Iiw', N'JkRRiuXlG', N'OhuhYJ--m', N'Yc qtYjp', N'MogrGqcEvZZOMcWm', N'sX BCkeQltIPK', N'KagFYgsmIwMFewGQyKI', N'VOsRIhj_btmfMZ', '2025-05-03 23:04:17', '2020-10-14 13:09:59'),
  (861113, 611072, 612914, N'ExQIHvxipQX_', 841131, 477, 669, 212205, N'-hOJdjPrUiMM XanF', '2022-03-11 21:05:43', N'-lgcnQYfWhVm', N'xiPX-AxXkwudHCRj', N'pMVUseyG VCncZifkWiL', N'lTOwVFwZu', N'OjhWxLCH-pJwuwaJ', N'nCZzCNyNVYsef_nMY', N'ZKmHgRnHbl_k', N'DZTrY', N'jWWcbwpRuft', N'kjILfhTKhjTTY', '2021-10-23 11:31:48', '2020-11-21 10:40:03'),
  (505160, 805615, 602542, N'EGnrZE', 235639, 421, 887, 880148, N'AiwQFzLpRlijZ', '2025-03-22 11:40:01', N'Crd-l', N'r_TZAwTjAI', N'n lqyKFS', N'IyGZUSr-wqLGpJ', N'KCYdaiwLiBCuT', N'pemPovsVNTiCf-wipVS', N'A_gMnAI_esX', N'rPKgimrppwQCWK', N'eOllEVxeoXUrunTsZ', N'sGjiX', '2023-11-01 00:33:00', '2021-04-15 00:07:55'),
  (729018, 390149, 379077, N'KYTFz', 676207, 963, 111, 919264, N'VTIYrpFoih', '2023-04-27 19:05:15', N'eAihBKNSHop_RBY_cGqS', N'gFTdotyyuTia', N'LzVfELkSEm', N'gTRjSYYpMhSmcspeTe', N'kOXLhUGut', N'OIpC-_wZhuVQoECDeI', N'TfzVrcPFT r', N'RIAVjTTEaX-fOj', N'VTJOczgpoz_OxPwcEw', N'QAVXd-s', '2022-07-27 08:43:29', '2023-12-01 18:20:47'),
  (153826, 331356, 228294, N'GnjxD_djm', 690270, 436, 605, 963429, N'mJuLLfADjK', '2024-12-29 03:59:01', N'XDVw-yiMjEiheeo', N'qt_HTcr', N'zorZJetigg', N'rGopMrXygPNe', N'IU- NPJXN', N'QQ KZ z', N'SQQHeladaZmnIK', N'Rjczc_H_EYv', N'ooh-tcGiK-', N'eKWGQ-', '2021-08-04 16:03:32', '2023-01-13 04:29:50'),
  (892226, 423334, 690494, N'SusHfULFOxKNnHuVU', 967649, 923, 104, 445046, N'Gyh vX-gfX', '2021-11-03 20:39:15', N'wgcWvxJTvG', N'Ipow _kHZaryxTQDwjhV', N'n_IrhphLCxkNVdBEJFVb', N'Hf_Y_XFW', N'_mcVbWHetRYznzxv', N'cVDjtyAnpHULmBpo', N'trnJwtRSmJNp', N'_t-JjSnxB-xAk', N't TnrWccSayGiZt', N'uMflvU', '2024-12-05 22:24:18', '2021-04-18 14:44:29'),
  (51515, 493659, 773377, N'ziCQUu', 762949, 715, 881, 195889, N'-YqVbYaFRKFTK', '2021-07-03 14:34:39', N'exmsk fveL', N'lPsszjz_jFE-ORrJrp', N'aWVMhlXBgOeQfaJB', N'XQADL', N'WlHLeRmyJSm', N'y-RaoB', N'Jo  OASAIwRUzj', N'QcGRkc-Y', N'wDKsXBG_KRKRBaqw', N'ClUlNjX_tWUMFGNLwY', '2022-03-09 15:37:58', '2023-02-17 21:53:18'),
  (538375, 6465, 55895, N'Oe_vhZYJ', 801785, 949, 802, 15706, N'QnzyVguqcd', '2024-10-19 11:19:59', N'_YdgYmRhjtFQL-Dxn', N'FvIjLFOSAaW', N'lVMsb-ZxH', N'khul-GtZQPUu', N'wzSNyUxZfZSVia', N'ApWUnRM', N'xNHzmOqvG SX', N'iAQLhD', N'eaEsxbcveUSOfM', N'PtGZiJ', '2023-06-01 15:10:40', '2024-09-26 22:19:31'),
  (27222, 283696, 795772, N'keDbIUvhGqxcz', 56316, 893, 383, 842436, N'aZddVSmWcgtO', '2023-05-19 12:54:38', N'Q iWQXssfT', N'lvTxfwoGyxF_fn', N'wBYTCyz-AAbZcxNtyH', N'gItyHdrBrBVY', N'ZfNyfFEkyjcETs', N'Ul_pasO', N'rMDVCKesW', N'QfNSIDdF', N'falgcJIRft', N'QHL_RIPkfChVpEOF', '2023-02-28 01:22:29', '2022-10-28 16:02:49'),
  (215430, 780890, 64596, N'wicjM', 136854, 150, 447, 964746, N'WvVIhgyyK_jfHFpj', '2021-05-04 06:02:38', N'IiBEhxpRwUx', N'PhmYPMBW', N'uuQIVeVsRS', N'f JulqZiI-WHU', N'ANjGXmdwoF', N'lM nTtfr', N'w_Rtd-uTflMlPpKh', N'JfPCY', N'_cTmfAcTr_GHBSW-', N'UDZzNuXDiKvVjE', '2025-03-26 05:14:03', '2022-02-08 14:30:21'),
  (603815, 67898, 314, N'HIyOfBl', 945538, 947, 408, 569587, N'JPkxbElO-QxdJ', '2022-11-15 18:06:01', N'EgSQZE QVeWCDaE', N'THfDiaDcLhjXPd', N'ek-aZ-', N'IvZHErDdp', N'xbakNFZGMRz', N'OIqNMCmrz', N'GhImMCnnYzmA', N'gxWsqeobyMU', N'yzxUkrAwgXcP-LNO_', N'XOaZkXjbO', '2022-03-15 11:25:57', '2023-06-21 07:02:50'),
  (820835, 337412, 554486, N'GzSvboQUlRssTKPA DkA', 524899, 476, 453, 162620, N'yTEyjF', '2023-06-04 21:25:38', N'qxIxMk_qEXAHtjIG', N'kQOIK', N'EkUfozjiKrNwMfre', N'oARXooYFDIwm n', N'rmCatcn-Jce', N'rUnzL', N'iehwHTIMEZdJLPbM', N'CSOEypBm-WzRUjvRfS', N'AbSUaBqlRLkCnkiby', N'QDIVqlbRCy', '2023-08-25 08:50:40', '2022-01-26 08:54:16'),
  (996799, 605486, 21856, N'KdgKp', 303147, 957, 215, 967910, N'OCyEyFlRZGDmP', '2025-06-24 06:21:38', N'Sq_Ec-sqJnJb-', N'pB-kYiIKcgsutEqSnkKI', N'kekObHVpanDbc OPuz', N'm-WojHqUi_kPk', N'A--VkNg', N'tea_j', N'-QUfoPwATIT', N'I DUoO', N'vnJUiO', N'plCNLq', '2024-04-17 18:01:42', '2022-01-27 03:25:11'),
  (658775, 427834, 984029, N'nmS XpBuKjpTKIhHkTh', 714759, 562, 8, 770112, N'tgdbSkdKrlxYIrZGDjb', '2023-07-07 07:58:14', N'lsEbJiFySWIBiVfWtdpV', N'YNeQEB', N'Vv-xvG_LqFL', N'EsWhsuFgeXjYUWBdRH', N'CYckLHYPOKUgGwaonzqC', N'Fe_Eh', N'caUj HduDpeQjJOv', N'_e-W I', N'Ir-EfXigME', N'jtrSjUbTxDbioF', '2023-05-22 18:33:53', '2024-02-26 08:47:10'),
  (137023, 60078, 85487, N'p-GWx', 95118, 519, 230, 805445, N'XGMeXB_vRxOfBrYXqZoT', '2022-12-05 01:25:31', N'rKqS-ZfUwAEpIsslYDE', N'plwojbmDlR Y', N'JHthrBNqzNiyS', N'SizOZ i-JLPXq', N'GTidojTIiqms', N'vGgBuliHMsKW', N'ClpNKzEXi', N'-qzacsctwGNYM', N'tDaMJf-_EcpCrNahTu', N'YQSBZS', '2021-10-25 22:54:31', '2021-05-30 23:32:56'),
  (913599, 844227, 402871, N'eCxZeYyS', 235063, 230, 794, 9355, N'nsjiwXpBqiUbYDmB-pGu', '2024-03-26 16:21:57', N'LERGrUGnApacbvLfGz', N'uNPAM', N'KAjTffCXjRSu-guEB', N'ouwsCzUqZbPeOe', N'nYcIjQmqxTeRpt-phf', N'aUbgGgIaYXPO_xNh', N'XYFajp', N'HuXWqtmICPv kBggZQQL', N'aoJHMbd', N'XgMF_FuXM', '2025-06-08 10:26:41', '2025-01-28 05:21:07'),
  (882652, 194715, 733663, N'PdpcVhH jvlN', 395337, 266, 294, 437139, N'hGwCFJoMlZbsT', '2022-07-31 20:47:18', N'- qSFdtj', N'vCIIeXxck', N'kPYgTZAU', N'a-RfALyPC', N'oSqqCxzgNvnTfFl', N'yTYXUfrAvToH', N'RbRoMkJRm', N'HhrcrUGeNBn GGobc', N'Z_IuPDxLFxi', N'AoVsJACQJWboiEyFqst', '2024-09-19 01:43:15', '2023-09-08 15:14:32'),
  (759244, 153363, 516502, N'_eQQnamF', 631418, 93, 650, 341532, N'oMghvGKWcJFshe', '2024-04-13 12:19:04', N'-QmtwyQ', N'neDg_o', N'zaklglUTrbwytPB sQm', N'pOGsLNxQvmD', N'ebU_PiVeZTV', N'OwgVIyxzYOnXxT', N'd XsRAWio', N'cBtXkjaFxXt', N'mEuOOCNjRGHHBi', N'tvXUxSDxNtg', '2025-02-15 15:01:29', '2024-09-04 03:41:34'),
  (694788, 635383, 375639, N'RUhmLcTcbCSD-sGakJ', 123639, 651, 653, 842367, N'ZxwhaIUnjjFw', '2021-09-13 11:52:41', N'Xk_UscOPrA', N'-erEut-_ozF', N'QegF_Bd', N'gW_DdzdNaH', N'skMvTItgGwqJVEGfztFg', N'ygiwls', N'DJsudso', N'VMeqlKh-BEZQp', N'rtZskHVva', N'NyAfB-NQbJsBDek', '2024-12-02 15:53:40', '2022-10-31 16:00:11'),
  (279118, 728881, 951808, N'Ufa_BcuizidzMHxgl', 706123, 874, 305, 456569, N'C_nXC bQw OIgF', '2022-04-17 06:55:13', N'olp_ARaV', N'gZh Nb eiZ', N'JFtfz', N'HIymTIhleNGjcePAKpY', N'CNakcXov QZWR yoSO', N'KTcwjLyJTCYWFchCPKPm', N'TSV qBTU', N'dDhEsVuzp', N'HTHmNzryoxTsSUPRFMR', N'MooMn', '2021-04-12 18:48:39', '2025-07-02 15:19:27'),
  (2307, 35599, 295744, N'BKXzvvrbaOBD', 954814, 26, 71, 816587, N'LzyVVrJVwl_wBFmoNe', '2021-07-21 18:31:46', N'AZOKLXsSvQKZKVERylS', N'iLjcfJoAXlE_kaCl', N'FLPxDtj', N'vKOajXrHnalnonu', N'yWHXiYHRuOpr', N'rVPsuxhlD', N'HOzgVZNgB Qe', N'XSBzqfdnzQQa', N'pXh xq', N'hsutJeIIStWC_r', '2023-08-06 10:31:48', '2021-07-19 10:43:29');
INSERT INTO [prescription_acte_medicals] ([prescription_id], [acte_medical_id], [acte_medical_custom], [quantity], [prescription_date], [created_at], [updated_at]) VALUES
  (466843, 414831, N'GwFdIE_cFvE_M', 949, '2021-11-06 01:43:43', '2024-11-12 05:37:08', '2021-02-07 03:00:49'),
  (210411, 7517, N'tLbKEyaIOvdKl', 980, '2023-12-12 08:38:42', '2022-08-11 18:36:39', '2024-05-09 23:55:41'),
  (417878, 912461, N'VmsAGGVQnU', 584, '2022-07-11 09:50:32', '2023-10-06 10:29:49', '2023-04-03 07:32:45'),
  (943660, 779854, N'jmw-zurFwXQLUTTD', 713, '2025-02-19 22:33:08', '2022-12-30 10:42:12', '2025-02-20 05:45:01'),
  (874658, 537330, N'pQyMEmHjRWAIFE', 397, '2025-03-21 01:53:29', '2021-11-16 10:29:51', '2023-05-26 07:25:40'),
  (278370, 157824, N'wDXDosfaM', 279, '2024-01-12 18:45:37', '2023-10-17 02:13:37', '2022-12-22 15:04:00'),
  (918977, 144497, N'CoOdthPErKEFoV', 354, '2024-02-14 03:33:49', '2023-11-02 05:22:50', '2025-05-12 23:07:18'),
  (95922, 494262, N'nLYMR', 853, '2025-06-20 12:08:18', '2024-10-21 20:56:54', '2025-02-02 09:18:03'),
  (505537, 851373, N'vy_mUJTatgzrVebO', 107, '2023-01-11 19:12:27', '2025-03-09 05:50:47', '2023-03-05 03:33:54'),
  (797566, 297509, N'SKLpgILRAIpdU', 152, '2021-06-22 03:06:46', '2021-08-04 20:20:01', '2022-12-17 15:11:03'),
  (441547, 726046, N'AWZySCtDhWCLzXc', 470, '2020-11-17 06:00:04', '2023-07-19 18:52:53', '2020-12-21 21:04:38'),
  (67432, 941352, N'jnivLC', 216, '2024-03-17 17:10:08', '2024-04-28 05:46:00', '2025-02-05 21:12:23'),
  (499389, 708450, N'vVwyEhcVRMkCoiqG', 646, '2021-02-28 03:31:34', '2023-02-13 05:44:18', '2022-01-26 21:27:32'),
  (901427, 756570, N'h-ymPPSPsOorx', 461, '2024-05-18 20:52:29', '2022-12-18 04:33:05', '2024-01-17 05:53:11'),
  (236483, 528678, N'JPUgnPbj', 331, '2023-05-15 11:40:58', '2022-10-16 09:35:02', '2024-06-12 13:26:28'),
  (278712, 656153, N'vcnQkQtIhIlbRnKDp', 880, '2023-04-19 10:25:25', '2022-11-19 19:05:27', '2020-10-20 20:31:07'),
  (35516, 722431, N'qmw_kFSNjM VKzx', 40, '2022-08-02 00:11:32', '2022-02-19 20:23:19', '2022-12-26 01:01:02'),
  (299729, 768807, N'wShBp_bLSbXInIEGtmji', 196, '2023-06-20 01:15:12', '2022-12-09 09:19:49', '2021-10-09 15:15:45'),
  (153993, 112752, N'GZcVI', 148, '2025-06-08 05:47:22', '2022-07-20 05:16:47', '2025-02-17 19:26:41'),
  (460527, 773496, N'lsg-KB', 155, '2021-05-18 22:15:22', '2022-04-28 19:26:21', '2020-10-09 05:32:35'),
  (878083, 890876, N'Onf tl cxshcxZNjH', 286, '2025-02-28 23:26:34', '2024-07-01 08:56:32', '2020-08-23 23:00:50'),
  (917367, 36494, N'Ij_iNYdsyNKZvmNKBM', 990, '2025-03-30 15:15:59', '2020-09-16 08:23:52', '2020-10-05 06:21:25'),
  (525017, 788423, N'QxzjVefYot Ah', 170, '2021-05-26 04:34:31', '2023-09-15 08:54:27', '2022-11-22 22:25:14'),
  (195333, 14994, N'starWTemgxycNg', 871, '2022-06-15 04:52:48', '2021-04-22 06:23:55', '2025-02-14 15:29:46'),
  (182263, 335473, N'ffcmsNNG xZhLgT', 145, '2021-04-08 17:55:11', '2024-12-15 11:06:23', '2022-02-19 04:53:16'),
  (70738, 393723, N'GFMLL', 774, '2023-12-19 03:01:22', '2024-12-13 23:38:32', '2020-08-29 21:55:32'),
  (231964, 960077, N'twkyNHHMjU', 72, '2023-10-03 07:34:08', '2023-03-04 20:47:29', '2022-03-15 10:45:24'),
  (244791, 464403, N'mk_MBrf-oxyxmdrnuQW', 671, '2021-10-20 14:40:44', '2024-07-21 10:33:40', '2022-07-22 15:38:51'),
  (113921, 381633, N'SOYPfKdsuipPz-xzED', 530, '2021-06-02 16:47:08', '2022-11-07 06:14:00', '2024-09-18 17:17:43'),
  (992406, 302661, N'EmoAzovODYiaL', 668, '2023-03-10 12:50:39', '2022-12-16 14:35:10', '2025-06-18 02:14:50'),
  (273151, 4509, N'NPiRiyPUfzPgY-', 855, '2021-05-16 07:57:04', '2021-03-03 03:09:54', '2022-07-22 16:07:08'),
  (473891, 412686, N'pM bmTqLRc', 838, '2023-05-21 12:33:18', '2023-01-04 12:41:47', '2021-07-11 06:41:18'),
  (22689, 565348, N'HmiypiIbVH', 848, '2023-09-27 01:59:39', '2025-03-23 02:46:27', '2023-04-18 23:11:06'),
  (334069, 367773, N'MFZgF EO', 193, '2023-07-20 15:47:32', '2023-07-11 03:39:20', '2021-05-14 20:29:39'),
  (468973, 451023, N'pO iLqSCVFkyLvwQX', 194, '2021-12-04 13:42:53', '2025-05-27 13:54:36', '2023-03-10 22:05:28'),
  (962460, 388050, N'jWMoZKyJQbIpxrKcIyZN', 622, '2022-09-11 20:37:18', '2022-04-04 23:01:02', '2024-04-05 10:28:02'),
  (576027, 341434, N'yZgsZkcZuopsdJY', 772, '2024-01-07 02:21:02', '2024-12-03 18:10:13', '2022-06-28 19:02:36'),
  (610007, 258308, N'ZMUJT-nuaRw', 686, '2023-07-06 03:44:09', '2023-09-05 17:09:40', '2020-09-15 09:21:23'),
  (658500, 20214, N'RmmbOjXFoT', 619, '2022-11-15 17:12:33', '2024-04-13 11:00:33', '2025-04-07 19:12:08'),
  (364102, 339094, N'eiSzVqocZThSxbpP_R-', 225, '2022-12-05 18:58:36', '2022-07-16 11:42:21', '2021-07-21 17:19:55');
INSERT INTO [prescription_examens] ([prescription_id], [examen_id], [quantity], [examen_custom], [prescription_date], [exam_result_available], [created_at], [updated_at]) VALUES
  (323158, 227246, 930, N'BhNxMZYGFmqujBjl', '2021-07-16 14:46:44', 0, '2024-02-11 19:30:06', '2022-05-06 22:22:22'),
  (94100, 505292, 870, N'rQ-xtGE', '2024-05-01 09:35:37', 0, '2024-01-07 04:40:50', '2022-12-04 18:03:10'),
  (663159, 324325, 780, N'_BZHRCXsC wyFiVALB', '2025-03-25 11:26:58', 0, '2021-02-24 11:00:05', '2022-11-28 05:28:02'),
  (219024, 260350, 815, N'qKVRCnEJgtdmSVJQdme', '2025-06-23 21:38:31', 1, '2024-07-20 05:26:15', '2025-04-01 11:18:21'),
  (265888, 298522, 292, N'qXS-zYLfoCjFxUzt_V', '2024-04-08 03:48:58', 0, '2023-01-30 16:03:14', '2020-12-23 08:11:32'),
  (289284, 874045, 407, N'aVsvxhqGhxsMYBhdnV', '2024-02-08 06:50:03', 1, '2024-08-23 15:59:58', '2023-12-30 14:20:53'),
  (587860, 140901, 404, N'P TRwmlYVONjHzfo', '2024-11-07 00:58:23', 0, '2022-09-10 03:27:15', '2023-03-09 05:42:52'),
  (256069, 815531, 427, N'_Hw- zrMm_W', '2021-06-13 04:40:23', 1, '2022-05-19 12:49:12', '2024-11-07 00:54:59'),
  (44445, 850446, 494, N'Mu-ImTvPIRfguw', '2022-02-25 05:20:26', 1, '2020-12-02 18:13:45', '2024-04-15 04:15:16'),
  (805350, 621555, 583, N'OfXeFAPBuYr', '2023-04-27 00:38:19', 0, '2023-05-05 04:28:25', '2022-03-18 21:22:29'),
  (149029, 581461, 534, N'wCqrroe', '2022-05-13 13:34:18', 0, '2021-02-26 04:09:40', '2023-06-16 01:10:09'),
  (121066, 230055, 315, N'_HW_nHtiR _qE', '2021-09-22 22:53:28', 1, '2021-11-29 00:20:23', '2024-06-01 08:44:35'),
  (15728, 899884, 88, N'Dfnw_Mr', '2025-03-31 14:44:05', 1, '2024-12-12 03:35:16', '2024-04-14 10:24:57'),
  (90258, 269233, 4, N'tKNx_OVcxqXmSW-rM', '2023-04-02 19:23:21', 0, '2021-02-21 17:38:45', '2022-05-04 20:57:41'),
  (351213, 383351, 551, N'ivZxlLkAlzUfWyWqNZ', '2024-09-28 08:28:23', 1, '2024-04-25 18:27:53', '2022-05-08 23:27:29'),
  (735763, 590636, 52, N'DABiEcklzScyEjJpn', '2025-03-20 20:36:12', 0, '2023-05-18 21:15:49', '2023-06-20 00:36:41'),
  (915009, 100200, 814, N'ptri Bpcc', '2025-05-15 11:53:27', 0, '2025-01-02 08:21:41', '2022-01-30 06:19:34'),
  (630266, 904881, 340, N'_RmaVEua', '2023-02-26 04:57:29', 0, '2024-07-18 05:08:14', '2022-05-01 19:00:31'),
  (691713, 92741, 919, N'--IynhUq', '2024-07-31 11:05:39', 0, '2023-09-19 04:52:58', '2025-03-20 05:08:17'),
  (907855, 898957, 979, N'TYBBcRKbU', '2021-02-10 23:03:21', 0, '2022-03-11 19:39:54', '2022-08-24 11:52:52'),
  (523425, 212297, 651, N'DIQakRHdXfl-JYM', '2021-07-15 17:51:18', 0, '2023-04-06 22:03:01', '2023-11-26 01:40:58'),
  (865870, 235375, 621, N'IFR_ nC-H-koFHd', '2021-09-05 16:04:55', 1, '2021-07-27 17:58:07', '2025-05-04 16:14:21'),
  (974000, 131005, 420, N'OSWffhvOB', '2024-10-04 01:33:29', 1, '2022-05-23 23:55:27', '2020-12-22 19:47:13'),
  (345960, 911742, 338, N'Uf-rAnz', '2023-06-01 22:39:10', 0, '2021-04-27 10:15:18', '2025-07-07 22:14:19'),
  (71526, 924936, 408, N'U-EgZsX - ap-Btd-', '2023-11-04 01:58:48', 0, '2023-01-17 07:46:33', '2024-05-20 16:14:59'),
  (940229, 970393, 14, N'zYVTA_Hhan', '2021-03-19 02:48:23', 1, '2025-07-17 11:39:58', '2022-10-18 06:35:17'),
  (593320, 776554, 876, N'HBwADW_dcrikxTIny', '2025-02-11 23:54:44', 0, '2021-06-17 00:01:10', '2023-02-09 10:28:07'),
  (213075, 613358, 163, N'FTJmavw', '2024-12-31 00:43:41', 1, '2024-01-30 17:50:31', '2025-05-22 04:53:22'),
  (138915, 98145, 249, N'HnjymgMAvSF', '2022-06-24 00:34:33', 0, '2021-12-02 11:50:24', '2022-03-26 08:47:44'),
  (385265, 79324, 125, N'AmqqFrJTSHCWNyfP', '2022-10-09 04:21:48', 0, '2021-11-27 18:50:05', '2020-12-03 03:30:58'),
  (563179, 902364, 329, N'HHjNGTpUPsUsHJSpFwT', '2021-05-02 20:07:51', 1, '2024-05-25 21:42:24', '2024-03-27 02:17:48'),
  (495348, 475726, 645, N'rshYFjIIN-vJEYQQcqF', '2023-02-26 18:06:02', 1, '2021-08-18 19:54:19', '2021-09-30 05:15:43'),
  (324768, 718876, 559, N'r_swkffLwnu', '2024-09-30 15:54:15', 0, '2022-09-02 02:28:50', '2021-04-15 20:24:38'),
  (652352, 44406, 420, N'kaCwXGssW', '2022-11-11 07:59:55', 0, '2021-03-04 13:30:14', '2023-10-10 08:52:04'),
  (728236, 799439, 876, N'Qt voqwktKM', '2024-01-15 21:33:58', 0, '2020-10-04 08:09:34', '2023-07-22 03:25:14'),
  (340809, 404560, 660, N'b_mEMDA', '2022-02-12 02:24:02', 1, '2024-02-26 05:48:17', '2024-01-14 02:53:41'),
  (986884, 104396, 641, N'ZLcxjXqswBjGoEp', '2025-01-25 13:09:56', 0, '2023-11-13 18:48:32', '2022-10-08 17:45:34'),
  (604404, 332403, 101, N'jYwtVSrLE', '2021-02-06 20:16:22', 1, '2022-09-05 16:18:09', '2023-03-28 19:24:59'),
  (422969, 667310, 766, N'MKHUOhIXiYQ', '2020-09-13 18:35:11', 0, '2023-10-10 15:34:59', '2025-01-16 02:17:09'),
  (184856, 618600, 94, N'nerXnzuVdpxa_sSKU_y', '2022-02-21 08:05:28', 1, '2021-09-14 15:29:03', '2024-11-24 06:50:48');
INSERT INTO [prescription_items] ([prescription_id], [type], [item_id], [item_type], [posologie], [frequence], [duree], [commentaires], [created_at], [updated_at]) VALUES
  (747512, N'AvwHVbDnEvqDBZPXbR', 231913, N'VbqvzUBOwmpf', N'TLfjLkI', N'YoPicJgifpf_wnMy', 335, N'JILNKa r', '2023-10-16 01:33:34', '2021-03-21 10:21:48'),
  (143817, N'ahSrfBD', 622814, N'GSQux', N'VaDNUbXxMFnSFNek', N'ed_-Oa-oUMRW', 400, N'WAOhbrZOoWVr', '2021-04-09 05:50:20', '2023-11-27 17:52:07'),
  (946639, N'FvQw nBoOnVjoXTYFg', 984859, N'BBkyUQFcxeMimrZ', N'yPnlnIwbL-YRXMMA sjH', N'IPxYm', 120, N'MXYCluLToppJf ZzG', '2021-01-22 07:20:27', '2025-02-17 17:25:33'),
  (247844, N'uTQEUMdnfcEoJwi', 8899, N'GnrgEnvFJia', N'FIVaOKB_I', N'oQKWDUGCxUD-', 502, N'pwgSPvy-D', '2023-02-08 23:46:25', '2024-01-23 07:15:29'),
  (454576, N'HMAbf-WEYVbym', 54878, N'ybsZBfThbRif', N'UtHsNWPF MxNsOWOVQb', N'glOnaopuVkuefX_', 790, N'-QuYuapmLGxQHk', '2023-03-09 19:16:48', '2023-01-11 18:25:32'),
  (547699, N'ztaaeshIXVTvUJF', 66576, N'CaOVZL-ZfhnhNLH', N'dIUViDWC-ijn', N'Sh_VpTuCmYlZ', 290, N'XLUz-NuFxVXnbtGcQd', '2023-01-08 22:37:09', '2021-09-05 14:56:35'),
  (681556, N'zS_EdgaKdVhyYc', 908254, N'wgIvlFIExdrm', N'tJGOqBFk', N'OOAdYckjcNUywmKoKClt', 134, N'YPUAlHtkDJDOtUEC', '2023-08-07 04:35:19', '2023-09-02 22:40:53'),
  (406131, N'PIgtAfXCatJZutn-ZQ', 384331, N'fT-TxHEM', N'V_AiEukP', N'rkRwI', 284, N'jgRsLEzFPi AmRjZ', '2024-01-11 13:02:11', '2021-05-06 14:36:57'),
  (652768, N'afSou rfZTBViDZmhgqW', 579631, N'Yoqce', N'-xWkKELxtvxRRd', N'SwIHpCYynaJuP_RgcPE', 934, N'qmhrv', '2023-03-24 15:58:30', '2023-03-24 04:25:21'),
  (384356, N'cfDejxDWNpIYJOvM', 490459, N'SkcnUCBm', N'DRcpRCMBnqCmFPDrl', N'aABW-IRbBzyNHJg-', 598, N'IItug', '2023-09-10 19:21:59', '2023-08-13 20:33:28'),
  (225125, N'RracOCzQPxJ_nshnPAR', 690262, N'-qQQLXUhjcK', N'AMQr-fH-OluQshwfwzHe', N'sl-toIXR', 850, N'tHxIWWYHBJznnd', '2022-07-24 03:03:17', '2024-06-20 00:37:43'),
  (657718, N'keIiapklWm', 706021, N'etj_ICXCsXH-H-eyndLa', N'QDQoKKvxV', N'rfiQecgBQgAGPFUy', 871, N'pE_pKeGsNs uB', '2025-05-26 09:31:23', '2025-07-07 13:14:27'),
  (901843, N'CPNUPN vVrpMjh', 528102, N'bqYmjtSvQIkRzGqZHa', N'rQpwUTfvdh-VhYT', N'kEOMjIlwflw', 89, N'lHmUpwFIZXrlsIDYgwZP', '2021-06-25 01:03:02', '2024-04-12 02:01:33'),
  (758484, N'FetYJoKE', 43234, N'lnIXauzmyjAuu-u', N'oLGZgpBvN', N'sOHsuH', 724, N'IKMwujjTwyfXIcO_ELCi', '2023-04-09 13:48:10', '2024-05-04 11:03:26'),
  (702474, N'WetZFsClzLc-I-', 912013, N'OlcgmCdkO', N'CI_OuBhdZlBvCjcsHkiI', N'NLbTTmShEDLgKMsfpKvz', 61, N'DwnBlhbHTGDbwWAfF', '2021-01-16 07:33:14', '2024-08-05 05:33:12'),
  (614070, N'FmtQFYWy', 851709, N'pLUuSLQYt', N'_RUJNrdvgPy', N'ntRFOZzAkIWPJE', 96, N'hJQ_zjQVARyfZB', '2025-03-11 23:09:47', '2024-02-09 08:03:34'),
  (297952, N'Ycb-wq-ionm', 394746, N'wpDMEgvoAUOl_OLcFDm', N'wlke', N'XJQZLRqUiYCDKYvyoZ', 326, N'ZAzqaqtminSFN', '2022-01-24 09:17:49', '2022-10-21 16:33:16'),
  (717330, N'DrLqLiaiQ-SzgsqR', 702847, N'xeSSNW_c', N'UBTwqPifFrFT', N'cQrZ-O', 428, N'rOpNlRLFGF', '2024-08-23 00:51:42', '2025-06-30 20:04:06'),
  (196657, N'lDiPKLHp', 959609, N'zguBD-oQWMDJ', N'JBgZvXcbXNgIiuzfkHiM', N'uwejgTzL_LXdPWAD', 247, N'gMCxsxRzNFCQFbMpJZk', '2021-02-11 02:56:27', '2021-10-05 16:08:56'),
  (47026, N'g JWjwprwJMKZqTFQNE', 563691, N'BaGlX-vyabP', N'R kaYecrXzynD M-L', N'WRyZSxav', 812, N'gzhzGtfbomEJ_I', '2020-12-12 18:51:54', '2021-05-23 08:58:45'),
  (282831, N'dsFzQr', 588440, N'kbkCvjnCFH', N'hhKDGL', N'uGTHEUjeibxOPEmC', 986, N'McuLAh', '2025-03-13 15:50:04', '2020-12-19 07:15:20'),
  (546198, N'CaSqAvPoGDoA', 273161, N'tINfCdAFuvnHntSDNJnJ', N'ObuRAt', N'd ZlM', 503, N'CDT_T_LWN', '2021-01-23 06:34:30', '2021-05-24 22:13:26'),
  (762354, N'LZTDWyfyVu', 316180, N'prwdmHqlUvDSLBwkVy', N'DIUho', N'IEFTxCAMlZ', 111, N'BBcrvcNVAQrUz', '2024-03-26 03:38:52', '2022-06-18 03:07:00'),
  (770882, N'TOHzwgJBSnGhGEoPah', 222480, N'cpFMZPWqrnEABjyM_', N'CTlkNzubRrHIuJAJTy', N'jtVflemtdqwqtwqwF', 87, N'TUbWHQpYB IsPm', '2024-06-18 06:52:24', '2021-09-14 04:53:49'),
  (169942, N'ezqLpu-', 30344, N'qWfqDBnTtf', N'QIjAQH', N'XXIcwqMUiY', 975, N'RBjuR', '2021-09-13 12:39:17', '2021-08-04 12:42:37'),
  (281485, N'ddOqpQnk', 573925, N'vngGTUN_yHLv -DeOSwt', N'KTTnuA', N'JaSZRGeQeW', 267, N'vhxnWjrrk', '2023-02-10 02:24:01', '2024-05-13 12:23:22'),
  (942696, N'xzMX-WiBN', 841416, N'afaHtbsGkcZXLO-QpOSY', N'snvQj', N'mxzxmzD', 348, N'XRZnND _G', '2025-01-20 03:17:22', '2022-10-01 01:45:26'),
  (868645, N'zVyhUsdYVWfDIkv', 909466, N'lBMRuRf', N'wSOdrR WTETs', N'HncGQf', 919, N'RfmVksU', '2021-09-10 20:24:09', '2021-07-13 09:41:19'),
  (639014, N'KrY_MlRhCXvvKR', 666165, N'ibPvWeOSgBWIse', N'kcBnTwyXgSGBfhPH-K', N'CMsjZga', 957, N'x-TWRBt-', '2023-01-02 00:25:34', '2020-12-27 22:11:25'),
  (808027, N'fSNZryESQy', 653329, N'hhTvdrYaGaqemCxUr', N'SloleO--gPqSm', N'sn bEmuiJr', 67, N'We-wmbQERW-VI', '2022-04-26 08:45:32', '2021-02-10 23:17:33'),
  (870816, N'og- x', 497814, N'YaZnHA', N'SJlrWZo', N'Bh_tPh-mb_UwBegCS', 142, N'NfryJPSd _gY', '2023-10-24 13:07:03', '2024-11-12 13:50:08'),
  (273259, N'hDBKeW fAx-sa', 471048, N'yevtqMno_amLkmiRWfC', N'WhXWEwls -cDdeOJ', N'DBaXLPwWq', 611, N'dBwSC', '2021-07-28 10:26:54', '2022-01-09 07:02:22'),
  (928078, N'xbRtWXWrz', 24417, N'rtiLBkxHdQI_vFC', N'AGKYFigZkK', N'I PbjhoNvK-_Mddt', 836, N'RyvjamsUUCUxuTeQSFP', '2022-02-20 01:41:17', '2022-08-07 10:27:13'),
  (44252, N'bhSITcmDBgGC', 560541, N'N_N ZszA', N'yQBE NZRhWmIW', N'_Yef', 304, N'qhNlyPao', '2024-09-21 04:36:33', '2025-01-29 01:14:21'),
  (143204, N'xRASbXGo_LfF_NpkEF_z', 135183, N'wrMDNhYXCh', N'SPAqvf', N'Ya-tEQEaBBA', 997, N'vHppQLQncp', '2024-05-21 06:43:54', '2023-09-22 19:05:15'),
  (229026, N'wiuvCw- bMpzNUjy', 731463, N'aJ X-XV_JgjwP', N'tTooGpe', N'fcLhuVF', 125, N'ncca-d', '2021-09-07 17:36:28', '2024-12-07 13:09:45'),
  (56780, N'yrOjvcVHObu_PTQgic_I', 927075, N'LbUECzdl', N'bxx-VwQXGcLfQGyi', N'oiLTsBYFzz', 682, N'tLzXRWRewqbX_wFimEt', '2025-04-26 04:35:00', '2023-08-01 22:31:22'),
  (217915, N'laQG-bP', 210781, N'qGOop-VmHRV', N'fFYEQepCXNX', N'MY-HhdSzptkkRn', 518, N'HAaJLhXiCeAdZ', '2020-12-05 18:33:45', '2022-06-30 02:55:15'),
  (14099, N'U-GXZErmVYLhG', 237367, N'_bzD XixvqRJftJeacgl', N'wXOGclLL', N'riMTt', 372, N'kTP UHUhJRlCyjsoR', '2023-03-07 03:04:12', '2020-10-24 09:49:18'),
  (291573, N'JWpttAUgekQ_EGKv', 412531, N'woJ uKhLUgiHdJXgYBab', N'tCqAsNOlPKP', N'pvdwL', 451, N'WGqITbmSQlfA', '2021-10-20 02:45:36', '2021-08-06 21:48:29');
INSERT INTO [prescription_medications] ([prescription_id], [medication_id], [unit_id], [medicament_custom], [quantity], [posology], [duration], [created_at], [updated_at], [prescription_date], [voie]) VALUES
  (382884, 770907, 833, N'uKbmTmbjqlnKTebNPKM', N'ErRHETgaYQ', N'GUxAdUzYQtyzE', N'f_HIhMf_jBV', '2022-03-01 17:03:29', '2021-09-17 07:22:21', '2020-09-11 17:06:38', N'wjqwnjtrthNcG'),
  (842319, 832507, 669, N'uAwCrpphKVcBMbgzh', N'p-Hb_zgeZPGrCh', N'Ed_xt', N'oUanXUCRZr', '2022-07-09 15:02:25', '2022-02-21 22:09:58', '2024-08-22 00:29:45', N'Xog-DgDUewnCgt'),
  (543031, 921171, 840, N'sjEbOyvugVdQJzSusFVf', N'pPNLvWjAqK_oUof', N'yeFQte_rNQNjtAsXC', N'igjnOpB', '2024-04-24 14:53:46', '2022-02-20 07:59:07', '2020-12-13 17:12:45', N'DKhHdMg'),
  (638748, 746142, 721, N'Opv ezGLFAj', N'qHifHZ GodsoWhDHBja', N'ZygRXSkyJX-gYYfmFB', N'phQCOLmSmtXUYP-Nvcm', '2024-10-29 06:59:01', '2023-09-19 22:26:31', '2022-10-14 01:21:24', N'BJvOKbgr JswlhBBgiU'),
  (699797, 191426, 218, N'AIV_FJ_Xz', N'jdBhten-f', N'tlkc  A-NeFghbBncq', N'FMAoG', '2023-06-01 07:47:24', '2025-05-23 07:44:36', '2022-09-22 11:47:47', N'mnsgQJZCxbsn'),
  (365424, 873943, 906, N'htahEohbZCncrYWgTtBM', N'SMMiqsTRa', N'zOEqWhli', N'TJBrbMpLqivfE', '2023-01-19 02:03:17', '2022-07-09 07:15:12', '2021-12-23 14:33:32', N'sEAmrw'),
  (941804, 339615, 478, N'ICsiRhEXxdc', N'QAILAZzOFiOOS_tM', N'zWmNp', N'KyTrxzPtXeZifkpGLLCa', '2025-04-04 22:28:46', '2025-01-07 07:07:59', '2024-07-13 21:46:41', N'msWsH'),
  (714842, 946531, 213, N'ehXNy NvNsfmUiCUpdMn', N'zeZgPVTtENTL', N'RvMvvRMqcGrVhH', N'b-FaRbg', '2022-04-13 23:38:46', '2021-08-03 23:43:57', '2022-03-11 10:38:10', N'dEmsqUVphSOZXYOjf'),
  (93932, 345152, 820, N'_HBGoJ_uMbMWfwJUf', N'aBmAaCDEoSRsJkQkgO', N'zSQY-FbswqOXQt', N'cWIqIw DEPOJk', '2024-01-31 07:18:54', '2022-03-26 20:53:21', '2023-05-20 20:10:55', N'fyiRrbCpQxzZ'),
  (40337, 425505, 712, N'KFkJGGPv MDoJAGn', N'wS-rHkClekxjF', N'baoXNJccfSzQjZivVmY', N'ncnxqxODKOWtLsR', '2021-11-24 21:58:31', '2023-02-05 04:54:39', '2021-09-27 17:20:16', N'uIGCXiXiB-'),
  (331889, 274153, 29, N'dIsKkvhuINJb-y_jm_', N'IogmlfA-cGkCxT', N'XTJf_nxgMXbzNpcDFG', N'UwCbh', '2021-09-20 19:54:20', '2024-10-08 00:51:44', '2020-08-25 23:50:56', N'FZKzqeW'),
  (625209, 788639, 129, N'IuhsVc', N'ZYbfx OcZlYGUpwTDfa', N'fCGEj', N'PDlJMMITEX', '2022-08-18 20:17:29', '2023-08-14 13:17:22', '2021-08-19 04:57:36', N'ErDnFKgtKiaRZkYEoWlm'),
  (778979, 735970, 614, N'pLWtzPpUR', N'ZVImG', N'eqVkMadISgUztCG_y', N'rxwnu', '2022-09-07 12:21:23', '2020-09-30 13:30:44', '2022-01-02 21:45:20', N'nkrlYLuIfDuME'),
  (854226, 316552, 374, N'pHZo_pMaJHFVXOEP', N'hshlYZrMdsi', N'MFspSVbCEPdISC', N'xxMYNt-o', '2025-03-13 17:23:49', '2022-06-30 00:29:31', '2025-02-14 03:07:10', N'PLQbdJAefTueAsu'),
  (136472, 29692, 522, N'vKOaH_F-NWP', N'QRdkehdM cKKWpNi', N'Ytzmqac-S', N'QycLtZ', '2022-05-22 12:54:32', '2024-03-22 04:52:06', '2022-05-14 13:42:50', N'uiJaNrQ-S'),
  (627298, 909958, 556, N'mFms-QkED', N'kEdPFyEEOtkBGqHFhq', N'bosWGIXqjjrgtcQnSeo', N'xoVHJGUMKLarOC', '2022-08-13 09:07:24', '2022-08-23 19:03:04', '2024-06-29 00:20:08', N'BErSDBDlDowhdC -fRJ'),
  (855198, 277186, 906, N'PRMuku', N'NbO_YlZqrGzTWeTtVB', N'V l-hleYGhQWBIvP', N'njqUjZFJBLVhQyomy_u', '2023-10-24 18:41:26', '2022-01-15 17:23:14', '2023-12-11 00:01:05', N'pCqDifNWpgAw'),
  (236415, 519700, 64, N'PdIEBxZOTOjO', N'txWAcdevSkyqBvhsNG', N'b-kVnsJMugZucqr', N'JHBdjaFQ B', '2020-09-30 11:48:48', '2021-12-03 20:28:14', '2021-03-06 14:13:28', N'goSqxEogycE'),
  (299092, 2244, 557, N'LoB-O', N'GF-auyquAziGAJbY', N'Xt aI', N'swpIXHeO_fZjziJ-IC', '2023-08-06 10:21:13', '2022-09-04 23:39:13', '2023-12-22 13:28:09', N'lLNDC zCS'),
  (538168, 853563, 263, N'RMjUAWdl', N'NKzfnMEWgj', N'RfyRtlIO', N'HfhqrFpZ', '2024-12-10 02:29:44', '2023-02-23 20:42:29', '2025-03-06 20:25:10', N'oOkBNnOoexe'),
  (306568, 657241, 908, N'AsKHrG', N'Bfssrq_', N'u-RXL', N'PrCCGlijbheiDaRkNstl', '2024-07-12 03:22:56', '2024-04-19 09:00:11', '2021-05-01 23:31:09', N'BBNCq'),
  (727368, 866471, 560, N'vyxrUTT', N'nCWqPn', N'wMNugKUPPC', N'-lERrni-z', '2021-06-16 17:23:20', '2025-03-07 01:43:48', '2023-10-24 02:54:14', N'Vzms-rvzygH'),
  (838405, 167727, 25, N'aKRXbFtGyUNE diPzD', N'e_uycZNbCS', N'dH tZwE', N'tcCsT', '2020-11-05 02:05:31', '2024-02-16 20:40:58', '2024-10-26 13:21:29', N'VyH EQZTVnzsSWcY'),
  (603337, 348939, 786, N'qHNoUGoT', N'iqNXZEnDAJl', N'RFyAvRS_y', N'_YEQ_DMkYbjIwnjvJhmP', '2025-06-14 20:48:25', '2023-02-02 18:04:43', '2023-03-17 08:10:51', N'gdCbr'),
  (10708, 865177, 798, N'eCEcMOae-S_HWiD', N'dIWFXNDIlZi-MEf', N'aodlTUOTQp', N'rVIaUCCFxGE', '2023-02-18 19:11:17', '2021-03-08 01:34:15', '2021-03-05 00:33:01', N'narD QCJy'),
  (987116, 457350, 472, N'QXNWn lKYw_qc_AIi', N'dYqfw_fEjqu', N'GbkFJqLjfXq', N'bzyKsYKmK uk', '2021-04-15 00:51:49', '2023-05-05 01:37:23', '2023-08-13 10:40:15', N'GdPPiKO'),
  (937296, 393029, 439, N'jHmFqcdAtfDSGM bYz', N'GWckslrkIcpHSzgBUD', N'dbhANaYBIut RIWADglQ', N'FKkFOasoNFgzkp sC', '2022-08-26 13:07:16', '2021-03-25 01:48:33', '2020-12-24 14:06:41', N'pVQHpOxj'),
  (304312, 174947, 28, N'Sjj Ny_EeyCuLcoyHF', N'WOybKwfKFnIljwL', N'nRzmjIyLNN-KmL', N'sTbWhWVkDLkaWw', '2023-03-12 05:58:11', '2023-05-25 22:41:26', '2021-01-30 04:56:13', N'mBg-rEEmus'),
  (342361, 483003, 93, N'pMLv-uGjRgjKdAp', N'EjZiJ', N'ZRuyK', N'kP -phTcV', '2022-04-12 15:24:52', '2023-10-08 00:27:16', '2023-02-02 14:40:02', N'vhimVcbzxhgGffbm'),
  (827816, 225902, 814, N'Ikl mTCuW', N'ntpfmRkeAiL', N'zPlruN_GdOgb', N'DUeZrQeBq', '2024-07-04 03:48:16', '2023-09-02 08:23:20', '2021-05-15 14:36:01', N'gGlCRYJ_OuFniNtHI'),
  (814316, 381406, 851, N'vUQnSIhjZSPbu', N'QSG b', N'tddYiScKyanfcJKHe', N'aBoRW', '2023-01-23 01:27:57', '2023-07-02 20:05:38', '2025-02-02 05:03:27', N'qtTkvI'),
  (177056, 201056, 150, N'WRxwyQSQkstbCvG', N'tFHlgQoFdoMjbl', N'PJlfhNgYAdU-S', N'tEQbr', '2025-06-12 00:13:58', '2023-11-18 12:26:32', '2022-08-07 01:18:12', N'JtfweYLSfQuaYtyJTJ'),
  (228097, 938618, 803, N'yuOottCOmZypZMZfGXdu', N'DrXNXDoHMFG', N'zxCUjCO', N'PfhtLoBtGDCK', '2022-12-25 17:16:53', '2024-03-07 23:40:49', '2024-06-02 12:42:56', N'OUxWYzgRjHuI'),
  (803543, 105562, 128, N'FSZpqSgJ-ey', N'wcqR- SPn', N'YLaZKM', N't_Ho-YnW-AzgSZlyxgy', '2023-09-09 03:21:06', '2023-04-25 23:36:24', '2022-05-09 00:02:17', N'dleyLRpqv'),
  (372127, 417263, 268, N'ECipGBVQTzjSxswPjk', N'ceZkJTOPxZuTIJVmXIzg', N'SDzlmoREM', N'dHNIMIWXiouizYYJ', '2020-09-25 09:05:45', '2022-10-11 13:22:00', '2021-01-04 23:09:47', N'MnGDOKs'),
  (775744, 763936, 398, N'lJPSuKIZos-cipnYXB', N'ECWjyp', N'pz WwSIlRZmFORYu_sFo', N'DqjVUY', '2023-02-11 23:01:36', '2022-01-29 07:24:32', '2022-01-27 02:32:25', N'CDIv-NgijqemTMK'),
  (723696, 291241, 788, N'xh vZffqb', N'ocacwgXF_LoOuj', N'hXiYS', N'OSD_DGvYsGN', '2023-09-14 19:52:34', '2021-11-05 04:26:55', '2025-04-02 05:52:25', N'ZR lQlZcUSYpXwVb t'),
  (16633, 36528, 309, N'klzPCYfFC', N'bMfXkxNYU', N'wXhHHkU pOELmC_NO', N'LExgdCJmXIb', '2024-03-04 20:46:54', '2021-11-18 17:48:11', '2022-05-24 15:58:31', N'BBZhNwizeokwn'),
  (128967, 554274, 794, N'CZHNbqPyjFcB', N'S_VnUVVi', N'PcVqaaCeIt', N'-evKNEmDbBBmlMkHX', '2024-10-03 06:31:35', '2021-08-13 17:15:50', '2020-09-02 13:23:51', N'lyd_zectEUiAJvoq'),
  (127894, 221928, 821, N'jFEdQwSSPzz', N'DEXV-UhqH', N'RvsVnQNKGTfrPWzASoUQ', N'BPBncKwocCNB', '2022-08-18 11:11:55', '2022-02-22 23:07:39', '2021-08-12 07:27:29', N'sfyWTrMfH-VuKGJ');
INSERT INTO [prescription_prescription_types] ([prescription_id], [prescription_type], [created_at], [updated_at]) VALUES
  (37817, N'KLVKqHFdYzasMaPJ', '2022-04-30 16:02:21', '2021-03-16 12:10:29'),
  (389715, N'-YodVUDMo_F', '2024-01-20 12:24:03', '2025-07-16 05:18:33'),
  (495256, N'IWxv_UchBZfMzQyMMU', '2025-04-18 16:42:47', '2024-10-24 20:29:44'),
  (64664, N'kLWYaBYTpID-Tt-EmB', '2023-02-06 00:23:16', '2020-11-02 20:33:34'),
  (262421, N'xGdBtpZhGUcSKcpXlpEQ', '2023-02-21 20:20:07', '2022-09-01 07:28:44'),
  (233696, N'OceuPFmlAXUjytTaAWP', '2021-12-20 08:31:36', '2023-03-18 10:18:45'),
  (754554, N'uiXZezqxcg Kki', '2024-10-22 15:14:07', '2020-12-26 09:07:37'),
  (48122, N'WnEVEO XQSaOs', '2024-08-09 06:51:56', '2023-03-23 21:32:30'),
  (977306, N'QQERVARWjzIK', '2023-10-28 02:28:08', '2024-10-08 01:19:17'),
  (714545, N'uLkNQvi', '2024-05-08 20:14:01', '2025-06-11 18:44:01'),
  (933144, N'XUndV', '2020-12-16 03:29:48', '2020-09-04 16:31:54'),
  (861403, N'NRrrvRUjjXrht', '2022-07-23 00:43:27', '2023-05-30 01:20:03'),
  (273458, N'vuAeEY', '2024-12-11 22:24:31', '2025-02-02 04:30:42'),
  (312215, N'MkgRin_OpKqhIXGt', '2024-04-17 20:35:29', '2023-01-03 17:43:48'),
  (239193, N'ebgWKySG', '2022-09-04 00:16:42', '2025-01-10 16:43:18'),
  (31090, N'tUj-mES', '2022-11-18 18:55:52', '2022-04-30 00:56:29'),
  (140086, N'mpcJPFXirC', '2022-01-07 04:20:57', '2021-08-19 06:22:50'),
  (287124, N'YdA-VUgERqEKyunm', '2025-04-22 04:38:26', '2025-06-02 03:43:25'),
  (40453, N'GneapAAg_p', '2023-12-25 01:10:08', '2025-08-06 00:55:20'),
  (777087, N'HYEGpEKYLx', '2024-11-30 02:09:18', '2022-04-24 15:40:42'),
  (739179, N'JWdMogMTntkk dxbL Zr', '2024-04-14 12:34:12', '2021-02-10 21:21:17'),
  (76537, N'-AiDWFyxSCbQlroabjN', '2021-11-21 17:38:17', '2022-03-28 11:51:01'),
  (161449, N'tummGVxw', '2020-09-28 23:24:51', '2023-04-03 16:25:10'),
  (643872, N'uCXiQEDznqEg', '2024-01-13 01:06:04', '2025-06-25 17:29:24'),
  (450211, N'S_ndtl', '2024-04-02 21:28:15', '2020-09-03 14:37:10'),
  (497133, N'xNpJUXqhBoL', '2023-07-16 12:46:58', '2022-12-10 20:23:11'),
  (873759, N'wTcLkEqOph', '2020-10-10 12:32:28', '2023-12-26 17:35:21'),
  (720281, N'KEcIgGuaB_QH', '2020-10-11 17:45:33', '2021-10-30 02:57:51'),
  (852117, N'HgxUgx', '2024-11-02 16:49:41', '2022-04-11 23:08:57'),
  (663526, N'vZwqXTHgI', '2020-10-06 21:39:48', '2022-06-01 06:06:36'),
  (876531, N'RyMPEXzCGyxeHwVfPXT', '2021-03-12 22:40:04', '2024-01-10 18:38:44'),
  (963129, N'RXAk-ZVM', '2022-11-28 00:01:54', '2021-01-06 10:53:31'),
  (979920, N'mm--OLHzWECtIJC', '2023-10-28 19:32:07', '2024-01-31 02:05:00'),
  (2237, N'nBt cgyh', '2024-02-11 00:23:47', '2021-10-11 22:27:00'),
  (389438, N'kgWDt', '2025-05-04 14:15:32', '2024-02-15 00:47:00'),
  (70374, N'LndcqD', '2021-07-19 16:11:20', '2024-07-26 01:29:59'),
  (356319, N'HdzehxapRGvGtyH', '2022-11-13 04:39:45', '2022-08-14 12:06:34'),
  (582355, N'eYXaaxnw', '2021-07-26 06:16:26', '2021-07-23 20:03:16'),
  (59949, N'-wyTSBCwXNHD_FQZL', '2023-08-19 08:46:36', '2025-01-28 05:28:44'),
  (556429, N'paKAjVdWL-FjkCdG', '2023-01-17 19:25:00', '2021-11-12 19:12:31');
INSERT INTO [pricing_rules] ([category], [departement_id], [discount_type], [discount_value], [created_at], [updated_at]) VALUES
  (N'u-kzar', 729799, N'HaBRgJgZqTM', 2144552461945387.0, '2024-05-09 12:10:56', '2022-05-07 05:17:38'),
  (N'jw_IIzH', 230206, N'fT BBpwTTNbN', 7071756548219073.0, '2024-08-25 17:25:53', '2022-01-16 19:29:39'),
  (N'KlqSsqjFaKAVGNAQ', 719676, N'kl-F nZfiF', 7406393406100581.0, '2021-06-11 11:50:24', '2023-09-27 16:32:40'),
  (N'Aj Mmr-NpfTLbAfnU', 545922, N'AmBwctulAfOH', 8201369580973822.0, '2021-09-15 01:17:28', '2025-03-01 21:21:55'),
  (N'nCGsoutGCzTj_zmNtB', 629382, N'TFNdUNM', 3046289239808417.5, '2023-03-11 22:57:10', '2024-10-05 21:26:18'),
  (N'FRbFjYgeA', 146630, N'XJEIHPnoVp', 4585074878412218.0, '2021-01-25 16:32:14', '2021-08-10 03:58:44'),
  (N'CJyFdojRlAvB', 691445, N'h kCtby', 718699493672967.4, '2022-10-16 14:58:02', '2024-06-05 03:21:04'),
  (N'HwIQDSX', 493746, N'mrXyWMD-DSX_segt', 1954781819114670.5, '2022-11-12 23:34:21', '2025-03-11 08:51:01');
INSERT INTO [primes] ([code], [intitule], [montant], [created_at], [updated_at]) VALUES
  (N'xWmoF_v', N'dtPipTDK_ANVLuLG', N'MabMpafiTgCwai', '2023-08-13 17:14:19', '2022-01-30 10:47:11'),
  (N'bZlWUirQ', N'dhrKCux_D', N'Awd-pSTJ-JVK', '2025-04-25 07:01:46', '2023-03-06 17:19:58'),
  (N'XRRGVEdmHtCs', N'prDmSud', N'hodY-FtDQmCclsawpo', '2021-07-20 14:12:17', '2023-09-08 23:11:11'),
  (N'QzNvOoWAsglmCB', N'wOiKVoyvv B', N'HKrltZBjcNFoiRFY', '2023-06-18 11:37:52', '2025-02-18 18:01:57'),
  (N'YvhrOpqXQ', N'ymouYbfJ', N'BaUxZSdxPWp', '2023-06-20 18:53:06', '2024-07-10 19:26:59'),
  (N'SB KWQAGYCTk', N'sCwJtGFSA _fejOKENXs', N'kxuIJttatMk', '2024-01-08 14:48:51', '2021-02-13 21:51:16'),
  (N'srHnGFZfZZE', N'bjFNQKSmUxgBrf_mf', N'ReefGvTQSuShsQzokLg', '2022-12-31 12:46:42', '2023-11-18 09:12:16'),
  (N'PzifpavxVZQ', N'Gl_zlKFuMIDKAfNog-vA', N'gqLEvZFsLN', '2021-09-16 15:52:07', '2023-08-25 03:18:04');
INSERT INTO [prime_corps_metiers] ([corps_metier_id], [prime_id], [formule], [created_at], [updated_at]) VALUES
  (833008, 404442, N'OpFuYh', '2022-12-24 11:33:43', '2022-01-09 04:25:11'),
  (60561, 558002, N'OKB_FnNYJ-xlyAsn', '2021-05-22 00:15:06', '2022-11-03 10:21:01'),
  (457696, 611232, N'oBxJqs', '2025-01-17 04:00:36', '2022-10-16 19:46:28'),
  (734315, 257216, N'JI- vLGdPEhinAb_', '2025-07-12 16:56:59', '2025-02-05 18:35:27'),
  (890021, 381804, N'pVpWpTT', '2022-11-23 12:34:44', '2025-06-14 08:06:40'),
  (724851, 929178, N'liXNcBbHaMf', '2024-02-13 09:11:59', '2023-04-09 17:10:46'),
  (604785, 378156, N'AVSpYGkkgPYTZ', '2022-07-21 03:00:17', '2024-02-24 23:29:23'),
  (86222, 75096, N'dOshWt', '2025-07-08 01:11:15', '2021-03-01 02:42:32');
INSERT INTO [printers] ([business_id], [name], [connection_type], [capability_profile], [char_per_line], [ip_address], [port], [path], [created_by], [created_at], [updated_at]) VALUES
  (807, N'YWEUIycXmKNJmmEBepAE', N'ubHoWlZh', N'nTfSaCv-oVKTvE', N'rJCxvQHvGkwUM GPlnP', N'CigrKbjdXnJjIHMARfk', N'igAXUv_xehAVkX', N'UcKPuy', 492, '2023-04-13 15:09:11', '2021-01-17 20:04:56'),
  (676, N'jssPmg YpsDLYx', N'gnPfkhbdb_GkaFr', N'cCEUzih-CzxhFs', N'GPMsExfSLC_EpwkPjvj', N'pveYmnOd', N'wvZeU', N'rhiCpmWnryII_bnQy', 632, '2022-01-09 05:54:17', '2025-06-29 23:59:14'),
  (845, N'LbzxuCOOOe', N'XEVB_', N'wsKnfEs', N'HOsdOukBqdcuYVwkM', N'-dRnedLBueSEiuRD', N'JnTBRLrLF', N'v-ltQTUaorZRFnEuI', 237, '2024-01-10 15:53:39', '2024-11-23 03:05:14'),
  (242, N'ja xixheGjWHRSXcOKfa', N'DjPt-eICDRNtAqX', N'hMEFfott', N'whUITorYEib', N'cRkJl', N'sbxgAr-LDR', N'slRdpEkkwtaFKuuOF', 735, '2021-08-05 04:34:03', '2024-05-25 10:25:22'),
  (368, N'ICHOCY_FKMeoNrghZu', N'siTgkjNEu', N'vMLhn', N'_xoMCNR', N'MTtsZHmnoC', N'qFjQxAhqIe-yoFhgWmr', N'-qrHbFmcgcsHCz w', 884, '2024-09-27 09:40:43', '2020-12-25 13:32:17'),
  (331, N'YwWzpSiuixge', N'fzxahJToVCuqcaFrpoh', N'c_mA_KhGNZ', N'wNvWIXgl', N'GMvH_CKWWwKFbtvkyd_-', N'vbUuJdh_ZVxiHmpfgUPB', N'NdLez', 961, '2021-09-16 02:35:42', '2025-02-23 23:51:45'),
  (746, N'T-YdPcRbaCsQBvt', N'ZGoiF-vaUaNBXwEwaK', N'LfTAHwyrirnzCVv y', N'UdMzZVaeBkVeDZn', N'lTnCnxNeKaTiyBcImI', N'YOAiGUXrPA_CcQGPd', N'KKTLBFOAjX', 139, '2023-11-13 05:16:47', '2022-01-30 19:43:58'),
  (351, N'CU kAxPhg-RAwTNDvdco', N'twJ_-gNfw pfYI', N'uKRybkLwNT-tBuzyal-', N'oRPPRRvbFuvV', N'WOAfxaAjxuzvHHkGM_b', N'ruGJG', N'L-LeFzjBkq', 9, '2021-03-15 11:45:00', '2023-10-04 01:40:28');
INSERT INTO [products] ([name], [business_id], [type], [unit_id], [secondary_unit_id], [sub_unit_ids], [brand_id], [category_id], [sub_category_id], [tax], [tax_type], [enable_stock], [alert_quantity], [sku], [barcode_type], [expiry_period], [expiry_period_type], [enable_sr_no], [weight], [product_custom_field1], [product_custom_field2], [product_custom_field3], [product_custom_field4], [product_custom_field5], [product_custom_field6], [product_custom_field7], [product_custom_field8], [product_custom_field9], [product_custom_field10], [product_custom_field11], [product_custom_field12], [product_custom_field13], [product_custom_field14], [product_custom_field15], [product_custom_field16], [product_custom_field17], [product_custom_field18], [product_custom_field19], [product_custom_field20], [image], [product_description], [created_by], [preparation_time_in_minutes], [warranty_id], [is_inactive], [not_for_selling], [created_at], [updated_at]) VALUES
  (N'EaSkrsaWrFTiLNADiVpD', 812, N'gdylCAMUar_Aa', 52, 893, N'vqBSDFxfn L', 638, 118992, 63075, 351, N'pdIucd', 1, 6233489596082382.0, N'JclaPhEHIsEwbFRMonP', N'zPEAqgwU', 4669680896585722.0, N'bAAUWBHquTF', 1, N'KkKhBl', N'PzQWSRK-lRDprSq', N'kQKmkzBXZ cYHsxuwUY', N'mVjVbVvsZQ_yE', N'nICaB', N'NGWUwOEyYr', N'bmgUuAnQYLz_Bd', N'OBnhTE Otku', N'WCXgiY', N'RyQ-BOEmiFf', N'xRK-cXh fXrMlr', N'AKo_aLDNbcEoTKSlVHM', N'MQklWCRaaJEteCkzeNra', N'KWLcOTwSjxXKDKquZT', N'oEsAzDTUJBpTgk', N'ORRqH', N'ZB_GFurDpp_NSamDVJrX', N'Yf gAhhpdAEuh', N'fI_NXrmJP', N'LDbiqY-y_cgnx', N'tT xRlMrNFuK', N'dbpTzpGckKiQ', N'FAeadiBbP rMEy-LXqVr', 921797, 389, 953, 1, 1, '2023-07-01 05:19:41', '2022-09-22 05:04:07'),
  (N'gbJDrXQRltspuTvSGRY', 378, N'ezNrujGGjZ_TedJumLp', 746, 116, N'yh-eegbnHilxSGBwZc', 415, 984913, 878914, 913, N'eXpLfv', 0, 628200554910087.8, N'TPZh_C', N'HqyiAnKDalqxICv', 5410440229578762.0, N'EyOPVLPjChJvqtdd', 0, N'DfYVfAt Jq', N'rfCEgU', N'mJwlNlyRbQvAXhbLDt R', N'MgL_koBWr', N'ayfkvOIJg_cyB R', N'DZUdbBk', N'WZWhYXZZPN', N'DWkXKtVubHRSNnARKZI', N'uZkKjFphnWo', N'NIJ_KFmW_tiSSJw', N'agLgrVE', N'KAlZUINnJdOtncG_piG', N'tieqSImUA-OoLvhCv', N'mXXXObjiispLqCf_P', N'kIBiNOwgseQYrfcSI_pA', N'HMIUJfhyFc', N'UWVEMz', N'ewnBKZssxbDder', N'Bg_aNj-RuwSfsBh', N'GNacVyObJuwo', N'aGnwNDFubXCLo', N'zJtGfoSsVvMFjA v', N'p snNMlOx', 824310, 316, 260, 0, 0, '2024-09-05 14:26:29', '2023-05-12 07:04:48'),
  (N'GmgjTB', 172, N'bNCydzKj ql', 838, 455, N'LiQ-u_g', 375, 830480, 762814, 345, N'HXguxwEZia', 1, 6326498253783881.0, N'EoGyje', N'kqFRkHxejKXQTRS', 6052414771290646.0, N'ceWfRsACfs--_', 1, N'r_luZAcePwWi', N'LNDIeK_QpXplOXOYE', N'OfQdbhGFNq_d', N'IqzHGWnX', N'ZoAqGJIFyZpkbuTO', N'AGvTKVlBD', N'pcWNNxAt', N'vBCghCwhxkI_i_Ykatfu', N'DPQvA_Z', N'NgHMsC', N'BpgkJxb_zVjqnIZjl', N'OI_T__Zlv nkPTBAx', N'L-dYrSGrXqsQI', N'SuntVvt bCg', N'idKreeFykml', N'MYdGRF', N'FXuGIe', N'FQN UNEBUdVvic_a', N'zfDQFByGuIYZrZ', N'QwxVfILmhp', N'GQ-rgT D', N'nS CbYzAUhf', N'taiohJnSIftHxtX', 493444, 14, 633, 0, 0, '2025-03-27 07:11:53', '2022-10-09 01:00:53'),
  (N'GEDvHUfkJheoFtnRW-D', 978, N'fuqgXVePbwNjyDPEVkM', 941, 997, N'RlBYnRO', 751, 765528, 437142, 731, N'nvlDAESr-_', 0, 9369395610327258.0, N'KTDJpkSMGDA', N'PdYMl', 8324832241374853.0, N'uwLSrzFl_ AOCZDcUJ_', 1, N'cYFqCJQaEEkLwrxlrfGN', N'yxGSs', N'IgCsnPXX', N'ipOKtsxnjqlIE', N'ZNybwkI', N'w_e-LQhgS', N'YB Ve', N'dOozwn_QsaSjDQt_ieF', N'Swjvl keZ_-GiGkb', N'mVyJS', N'GIFXMwfTp', N'ozxZdnEALgCTR', N'GPElmIwAepkP-wbhre', N'HMHgyT', N'ReMEeHNpOG', N'HSjKIjCrooOm', N'XRaDaa vl c', N'SECDkhBWNYpSf', N'jGwEm', N'ZV-sogTTqKaUJnApg', N'GjognlSJGUyOQoNiCI e', N'kuBCKWkUxZEISZE', N'YLevLPM-p LaxV', 902146, 160, 21, 1, 0, '2021-07-01 23:08:25', '2020-09-20 17:45:09');
INSERT INTO [product_categories] ([name], [short_code], [description], [parent_id], [created_by], [updated_by], [deleted_at], [created_at], [updated_at]) VALUES
  (N'OrPKnutyLO_mBoOzPe', N'MOQdGn-QCpeQ-AaHt c', N'qwNMHHAwTAWr', 307, 305669, 795699, '2025-06-17 16:26:05', '2025-06-29 19:34:40', '2023-07-15 18:29:50'),
  (N'rbxMDDKbj_d', N'omtUAXXJr', N'- Ck bzQM', 960, 852584, 790196, '2023-05-15 05:01:22', '2024-05-24 17:37:22', '2020-08-21 08:10:02'),
  (N'fePVVhAZ', N'S-TqZUcODrwyp-S', N'BmERAOn', 164, 361652, 401568, '2024-01-11 01:17:10', '2021-04-15 19:36:12', '2024-12-02 14:07:46'),
  (N'FMIejSaFBzvJN', N'wzk-hCsQHhNyMi', N'bTwOyzBPLF-TU_ZekFAq', 385, 569711, 386827, '2021-09-05 12:40:56', '2021-08-08 04:22:22', '2024-05-16 23:38:36'),
  (N'ECNAa CIftfmwFlPmTLF', N'v-HDMWOFd', N'jqFAJCLmHnGhcVDCXnXX', 113, 675017, 72661, '2022-12-31 09:16:58', '2025-07-02 12:34:53', '2023-11-16 21:29:49'),
  (N'y_BVP', N'MnrKqd', N'RhsZWC', 593, 147529, 471750, '2022-06-11 14:02:38', '2022-06-24 22:39:55', '2023-10-25 09:54:03'),
  (N'P_FAoXmoZPfzZergMbpA', N'hycXiLnVNxwnnWWlvhCm', N'RYpAxVc', 274, 881934, 345595, '2021-01-24 08:11:33', '2020-11-20 22:03:07', '2023-07-14 06:48:53'),
  (N'BGNlKy', N'BUgMXgvfTigb a', N'GQ-SF', 152, 748256, 63246, '2021-02-20 11:54:23', '2021-10-29 11:17:05', '2024-11-17 10:51:31');
INSERT INTO [product_information] ([product_name], [type], [unit_id], [sub_unit_ids], [secondary_unit_id], [brand_id], [category_id], [sub_category_id], [tax], [tax_type], [enable_stock], [enable_sr_no], [alert_quantity], [sku], [barcode], [product_description], [product_file], [weight], [product_custom_field1], [product_custom_field2], [product_custom_field3], [product_custom_field4], [barcode_type], [expiry_period], [expiry_period_type], [created_by], [warranty_id], [business_id], [is_inactive], [not_for_selling], [updated_by], [created_at], [updated_at]) VALUES
  (N'ohzyMKJrybOR', N'rgUGqLxXJMsIoUTw', 164, N'LblovQZuxqUvgjycp-', 49, 471, 939, 25, 426, N'QLpaM_fGsmPsq k', 1, 0, 869508786030691.6, N'RpmIu_pjWCRU', N'HBxuKeIPXxHFCro-', N'ddOTfgn IMwt_OPDG', N'zxrZvPArKEv', N'EAuWWCiYUWqV-LoNwUVA', N'NKChtecWoZVHyDRZhXTl', N'CYknsHyBettFo_U', N'rEgCkvM', N'_NspjmLIKcHwCj', N'FZ-TrG jjGleHP', 3783827176410701.0, N'iJnhjTYrj', 734018, 615, 62, 0, 1, 726921, '2025-03-30 09:43:32', '2022-04-01 00:07:27'),
  (N'voLmZYtA', N'eQIpfNrEuETYEGQWv', 78, N'eeoXLSGtbsS', 804, 123, 73, 917, 960, N'OEgyJYdbARtjhibfiqSc', 1, 1, 289958967518452.2, N'ePXyuA', N'kEdxWTG', N'guUYvtOJSHLGWo', N'lrwzLWJraub', N'ALstSouQRDnRO', N'y_AOTgyJKuyAFb', N'IHinaubtB', N'zUV-cYwTJGZ', N'uBXjFyE_U aGhukTQe', N'uaFpisU', 6484139902875473.0, N'_ZtvdsxXiO yuGXdlLb', 218927, 222, 830, 0, 1, 559063, '2023-08-25 16:57:08', '2024-07-16 10:19:19'),
  (N'JrNCcrtraTp_vXZl', N'IMTCYErVvFb_Y J', 377, N'mchIkJxPOSK', 326, 555, 420, 514, 589, N'LGqFZkncaKWRJySU', 1, 1, 8392729424844769.0, N'NhdjE_rtbZywXbnpXm', N'wesvmUP f-YpEWftslzH', N'ajDGAJfjXyX_Z', N'KbZXzAbpeSFvi', N'QSskEEYDSpnE', N'jpZiufXkI', N'XqxMYQSwkeHXL jY', N'lgOdFing-NNu NsLYBL', N'MOpda', N'l_STTNdVOL', 7593103699909023.0, N'MqKNccbFrMmVaKUptsp', 879207, 250, 445, 0, 0, 251503, '2023-02-15 00:43:39', '2023-06-01 14:47:56'),
  (N'hEcJf nW', N'HgvCYhIyh', 58, N'VXmslQ_HxfXAOflYy', 615, 596, 870, 573, 667, N'pl_DDBKzSom C_NvUmsc', 1, 1, 9135005010805046.0, N'yqJVsHhF', N'exIuXivkcJER', N'SMmQLUgdjSOX Nei', N'YmP-ENxb', N'FFkXNSebLxMBwB', N'ckmRMwZCwtzigVzlsrIp', N'LbUtRcUrttIOdjn', N'M_ yMSrfmYda', N'WPPCGZFECzfXUtL', N'eyWueAmeSYSVeuQuw_p', 514146430182461.6, N'yWJddscQdriqJS', 110822, 844, 674, 0, 0, 789862, '2020-10-22 09:02:25', '2024-09-04 20:47:00');
INSERT INTO [product_locations] ([product_id], [location_id]) VALUES
  (648, 996),
  (539, 415),
  (362, 327),
  (36, 974),
  (209, 305),
  (963, 306),
  (334, 201),
  (412, 888);
INSERT INTO [product_racks] ([business_id], [location_id], [product_id], [rack], [row], [position], [created_at], [updated_at]) VALUES
  (375, 361, 761, N'XAAuvzj', N'gwwQ CCCAkz_GwR', N'bvGUqYJSLTJer', '2022-01-21 00:04:39', '2021-01-12 07:45:45'),
  (917, 302, 436, N'hhYVJcRFD iwdW-', N'v-LZIEOSpw Nef', N'PRzabdmylFhmb', '2025-01-23 12:05:18', '2022-07-08 14:36:47'),
  (933, 740, 732, N'r-USeZqdRzRlefkBxdMb', N'DsOyaCbMfFkCFgR', N'jtlXVJ-fLjS-vCMqSaya', '2025-05-02 07:45:28', '2025-07-14 19:01:43'),
  (853, 1000, 98, N'-hIpDmshVmT', N'CH _xigODP', N'dVMAO', '2022-07-21 12:25:25', '2024-12-22 08:12:32'),
  (480, 320, 363, N'eUd_DqDRtiVoC_EKzCAB', N'jFolyyXnibXk_CFpsCxI', N'gkAljFBfEPfcz', '2023-05-12 02:19:44', '2023-11-09 11:33:19'),
  (484, 917, 771, N'JOrwbcCeowF-BJ', N'YPZDqV', N'ecipzJb', '2025-04-06 03:43:53', '2023-11-16 15:55:56'),
  (571, 944, 432, N'MLFZzfvCs', N'uAitfONQcaS', N'kZhcQZtZSvdzEUSq', '2023-06-25 22:37:08', '2025-04-07 11:14:20'),
  (841, 861, 893, N'DrkNrxElX', N'Ew-HVQkUaj', N'hbdYQzp Xu-P-k', '2023-02-27 10:43:24', '2023-03-28 10:52:14');
INSERT INTO [product_variations] ([variation_template_id], [name], [product_id], [is_dummy], [created_at], [updated_at]) VALUES
  (523, N'UZPOEYoYD', 129161, 0, '2023-09-09 15:45:38', '2021-11-24 05:13:14'),
  (574, N'DtDxhFTBUMtg', 488644, 0, '2022-03-12 09:45:11', '2021-05-19 20:59:39'),
  (667, N'vvTqCmrwZZuTkJvOm', 856294, 0, '2023-12-28 14:28:57', '2022-04-06 17:03:19'),
  (822, N'RgGsEaAAntLIr', 564552, 1, '2021-05-02 17:20:49', '2024-05-08 07:04:18'),
  (218, N'rbCQX', 663484, 0, '2024-06-07 18:26:16', '2025-07-18 14:54:08'),
  (248, N'KxkZrjt_gTgphzTeOw', 905131, 0, '2025-04-16 21:39:32', '2022-10-06 06:27:12'),
  (397, N'ZvVbAEBuxd', 214841, 0, '2023-01-12 01:16:33', '2024-02-05 09:31:10'),
  (689, N'HhJnTYR uizOF', 758063, 0, '2020-09-15 23:11:16', '2021-12-01 14:42:15');
INSERT INTO [proformats] ([mercuriale_id], [bon_cmd_adm_id], [quantite], [prixUnitaire], [created_at], [updated_at]) VALUES
  (22621, 452888, 6, N'LbZfuIQHj', '2025-08-04 00:45:40', '2020-09-21 17:05:27'),
  (240486, 977031, 988, N'tMqdRdJYlf_wgkY_Fjxj', '2023-08-07 15:06:31', '2022-08-30 05:50:23'),
  (303217, 676434, 432, N'nTpJZsuv LbuGkKktfUF', '2024-05-05 12:54:09', '2022-12-29 19:21:09'),
  (280398, 152403, 708, N'WqvZwLhamuIGBp', '2021-03-06 10:21:39', '2023-10-29 08:34:44'),
  (56309, 406384, 147, N'AyOnHZjTyhhDZQWiTV', '2021-10-24 21:28:28', '2021-03-10 16:52:21'),
  (519782, 579771, 698, N'PphhoQVdeYhiBdmll', '2020-12-08 08:46:03', '2024-01-09 20:02:27'),
  (212252, 564369, 895, N'VVQVOVnFidwAVtRFwLl', '2022-04-24 08:45:27', '2021-06-20 06:15:25'),
  (643036, 445039, 940, N'aODA YJ', '2020-10-06 13:09:56', '2021-05-29 06:29:10');
INSERT INTO [provenances] ([nom], [sigle], [contribuable], [telephone], [adresse], [created_at], [updated_at]) VALUES
  (N'mvwMlAcug', N'oEoeYDCc', N'uDE iOI', N'EjgbUWtZKk', N'INHBev', '2023-05-23 12:53:25', '2021-05-27 04:50:28'),
  (N'eRFTChR-GfOBtWpvJJL', N'hFuOYGc', N'YDt_qAJIjc', N'LdFJ nTlONKLso_', N'NVBTvevHlnCiC', '2021-07-22 14:45:14', '2022-06-14 19:35:09'),
  (N'OCYfqCCHVD', N'hd pDuRePRXAWMNB-VQT', N'KoYYRJ d', N'JpBqNAOglJeEGuKCwqU', N'qGSWaNZjZLf', '2025-06-01 06:44:26', '2024-02-07 18:06:21'),
  (N'xAwsjvjPAGRl_', N'jgJBp', N'KZLTb', N'xSEySjQkqnetD yBF', N'MzvOL', '2024-09-18 18:40:42', '2023-08-10 07:49:58'),
  (N'wHBFEkLFp Ua', N'srNgD hqNyWeHurQdS', N'-sBLgfUTHIoR Zk', N'RDvqXsHrdVuH', N'uxPFYxn lFiuJFWKxE', '2021-12-06 22:36:52', '2020-11-08 22:08:26'),
  (N'xkjZkEOVDWNrG', N'uKGNrtk QRAzRWZ-ZrX', N'uih-WrwWPr', N'n-KWSrJ', N'XHGTVjNOspAgdBpDQ', '2023-05-04 08:22:21', '2025-01-05 05:57:19'),
  (N'oUIyoIjxJUlygVNAIEXO', N'HLFxQCU-phi m', N'JrYRUpFFsKs', N'yHRtMZ', N'W e_bfPxNE', '2024-02-28 11:44:37', '2022-08-25 02:33:43'),
  (N'nEl-I-xoxFA', N'uwJDKMd xD', N'MocQEz VcQiKuN jODvb', N'bVgUZBYeS', N'-yLZcR', '2024-09-08 10:06:28', '2021-05-09 04:13:34');
INSERT INTO [purchase_lines] ([transaction_id], [product_id], [variation_id], [quantity], [secondary_unit_quantity], [pp_without_discount], [discount_percent], [purchase_price], [purchase_price_inc_tax], [item_tax], [tax_id], [purchase_requisition_line_id], [purchase_order_line_id], [quantity_sold], [quantity_adjusted], [quantity_returned], [po_quantity_purchased], [mfg_quantity_used], [mfg_date], [exp_date], [lot_number], [sub_unit_id], [created_at], [updated_at]) VALUES
  (341, 613810, 343, 3088371301739302.0, 8866293704811181.0, 761082408045195.0, 5496481702634733.0, 3608813168019733.5, 4082823876211244.5, 4084983355964271.0, 151, 713, 715, 6897023988727755.0, 381077076978105.75, 1667031361458814.0, 4291157824877658.5, 7861736313319269.0, '2024-01-06', '2022-12-07', N'OchySUiSrmES_Ac-Zvc', 137, '2023-01-12 10:14:30', '2023-01-13 20:28:09'),
  (442, 643704, 917, 2108329924567677.8, 4242306828114170.5, 5618232633155110.0, 8155732637875741.0, 5992917959886470.0, 8212176738190833.0, 6943023016339748.0, 328, 317, 246, 4256303313242397.5, 9502376117503192.0, 492864059222251.06, 1973084789198709.0, 4796826550926421.0, '2022-07-24', '2022-05-04', N'SfluQwmy', 94, '2021-11-03 12:51:46', '2022-07-20 13:48:13'),
  (110, 528075, 169, 3872442074173289.0, 2386814834493490.5, 4087618555118154.5, 1952964467302866.8, 1610901033076354.0, 5390644836629854.0, 6348834763168324.0, 420, 25, 502, 5450824223129248.0, 2259572060651271.5, 2200940095189777.2, 2919084865421731.5, 9270547388337094.0, '2024-11-18', '2022-05-20', N'xyIQFTY', 833, '2020-08-22 13:59:48', '2023-09-06 17:11:39'),
  (536, 393380, 330, 2514282796348341.5, 7461580312248067.0, 1025712573608601.5, 9276463289781462.0, 4682384932103342.0, 3910949722693301.0, 4941350536253865.0, 978, 487, 67, 2106713208346022.8, 9963633440077804.0, 7942412626938608.0, 5976260966859051.0, 8322246721113918.0, '2024-03-04', '2022-08-13', N'dsjbHMyi', 613, '2022-01-12 12:19:42', '2025-05-25 13:33:17'),
  (470, 664576, 770, 110128487913241.38, 6974640347860175.0, 6823856867993865.0, 8035826337912785.0, 5151510663859930.0, 2017367582398270.8, 1016297766338425.4, 774, 246, 628, 4837465457181233.0, 1225994133708315.8, 3481348238976705.0, 4817616081688300.0, 6444472722774105.0, '2023-09-03', '2021-07-01', N'WRNKTZOOZSYFiPnHVig', 627, '2025-01-10 10:40:55', '2022-07-11 18:06:16'),
  (820, 513745, 390, 9144901004743164.0, 7808240628887977.0, 3041694973681369.0, 3753688985362420.0, 2196727632559774.0, 3533165891115004.5, 1535539428030491.2, 275, 280, 210, 596479816379496.0, 1792488832170253.8, 4365333804286968.5, 2725714107835282.0, 2381608536242570.0, '2020-12-16', '2023-06-05', N'OZQ Gmk_r_MENp', 904, '2022-02-11 20:36:49', '2024-11-16 23:43:52'),
  (920, 744860, 210, 6937614748412969.0, 5104156634032089.0, 6066781616375940.0, 8040286381571792.0, 1553413957532715.5, 3614739133073518.0, 3142736298621066.0, 847, 970, 622, 2197080808697256.0, 9753328363903022.0, 7587194442019277.0, 5715179395783552.0, 9312219669941636.0, '2021-01-04', '2023-10-27', N'qWqxuAWgY', 226, '2021-09-25 17:42:37', '2025-05-04 12:08:22'),
  (353, 768452, 302, 1012335260897387.9, 1979837012487563.0, 6590329253078394.0, 8360091517700583.0, 6990644895777415.0, 9544152266039048.0, 6438102431533257.0, 873, 417, 64, 7218200325903243.0, 6904285283243564.0, 1571931396435559.8, 6535879529795604.0, 1612081859525302.8, '2022-09-06', '2025-07-11', N'usDHbn', 520, '2024-11-04 10:45:45', '2023-04-07 07:26:39'),
  (217, 216221, 624, 3354759995313686.5, 40413767159351.85, 5027695450676100.0, 8457522560821064.0, 3003115580319886.0, 8902459191391897.0, 9166247789503706.0, 416, 616, 785, 721963286459291.8, 915333150434639.6, 890810164878510.5, 925551007419309.6, 566731905615283.1, '2021-09-04', '2022-07-04', N'hNesFZslX', 852, '2021-08-19 19:44:27', '2022-10-06 15:58:17'),
  (471, 825188, 220, 9782655458781532.0, 805324883253200.1, 6350166851511498.0, 4133809552768553.5, 2663204247216929.5, 9921636540685556.0, 353224030239850.4, 328, 695, 817, 8755977620221234.0, 7966047444820695.0, 6628780399885451.0, 2036773560805620.2, 4246790763453453.0, '2022-09-05', '2021-09-29', N'vyRTMk', 797, '2022-08-09 07:15:07', '2023-03-18 07:34:47'),
  (877, 183521, 771, 6775247210668600.0, 3815593619327798.5, 4027000174745144.5, 3766240829781978.5, 879841490655723.9, 7992454197626251.0, 1263657101642490.2, 5, 145, 861, 2835106451679442.0, 4116834707545178.5, 1673156793316818.0, 8042070768305466.0, 8755873042727171.0, '2023-06-20', '2022-06-28', N'SygQtPzMPLtsskSmw', 597, '2023-10-06 13:25:32', '2022-09-29 08:18:20'),
  (391, 936345, 713, 4505856607758807.0, 5977969423242077.0, 3145174850491023.5, 592597329990536.2, 9178396055573820.0, 7246055702197742.0, 7912507883294854.0, 349, 324, 777, 8704061345259663.0, 3550713018323782.5, 8504475118085828.0, 9122195912070714.0, 3704037007835167.0, '2024-05-19', '2025-05-12', N'QZ cI', 276, '2023-12-22 16:59:32', '2024-11-25 07:22:26'),
  (755, 916365, 978, 5215130134748878.0, 7454669698918799.0, 9583502545434094.0, 5197512175415341.0, 4222421045817224.0, 4906689308441375.0, 7241922517067486.0, 236, 984, 565, 9867259487100118.0, 8614361065922029.0, 5057875858820811.0, 47763252316622.7, 1691720502187927.8, '2023-09-12', '2024-06-13', N'TQscGTTYPYHU', 971, '2024-09-18 02:10:48', '2024-01-09 18:02:58'),
  (649, 918089, 83, 1761612616417888.0, 9638163394777834.0, 2425522487432083.5, 2451457310565398.0, 2055004515735927.5, 826344857841181.4, 5999086093896394.0, 944, 964, 816, 1906416375165527.2, 7417265354498915.0, 658648719532044.5, 2614280893474749.5, 3559555823688614.0, '2021-03-29', '2022-09-01', N'FZIrwOumIURhLKtuWRE', 747, '2024-01-05 00:18:43', '2025-07-04 07:50:25'),
  (730, 116494, 880, 9392021352898108.0, 1004218669404802.8, 803576361022282.4, 4688469142963432.0, 6755198790892627.0, 8130086522711407.0, 9144063161337524.0, 942, 344, 55, 782472415504113.0, 2390243450700192.5, 593118386868106.8, 6247048754059100.0, 6875146552320579.0, '2022-12-03', '2025-04-28', N'ltQxLlItCpOVhoXrSZ', 649, '2023-03-06 05:17:28', '2023-11-13 21:42:36'),
  (68, 289946, 9, 4913113678564440.0, 8337709636275756.0, 4778664316566942.0, 7449376409743860.0, 8924977940206157.0, 3802704846935225.5, 303846581358365.75, 656, 825, 851, 7799334276070459.0, 4807508988065106.0, 3359489668595273.5, 6640365916885571.0, 1145115347458218.8, '2022-09-16', '2022-04-22', N'PZfUas_K', 672, '2021-02-21 17:52:12', '2022-05-23 05:20:42'),
  (592, 728820, 257, 3896331760125474.5, 450884500136201.6, 4807146876011170.0, 6758881258815066.0, 5883706083620758.0, 9036486139441510.0, 119714066665845.83, 109, 141, 932, 8047143394885401.0, 2683123116199658.5, 2245734371545813.2, 3865575891995401.0, 3624477312345268.0, '2025-02-12', '2023-05-20', N'cNECqmXlBsQDMNrZ', 236, '2024-07-13 03:38:05', '2023-06-03 05:50:44'),
  (898, 215535, 714, 6838699878230758.0, 7192656833329021.0, 248956335479464.38, 3247203739385270.5, 4003515003035883.5, 8560231213385668.0, 8868712616198409.0, 138, 707, 494, 2518563150091341.0, 1398133210434636.8, 8653845347059634.0, 1839485419564919.0, 2085602049890323.8, '2020-10-09', '2022-03-09', N'BdjglSDY-UPuDOWqVn', 793, '2021-07-07 12:54:53', '2020-10-10 22:25:37'),
  (49, 723810, 14, 8460841340133125.0, 5372269118099307.0, 8755847381469628.0, 3284521679420724.5, 2958007009942963.5, 6155811308447937.0, 1657363666270264.0, 450, 344, 196, 6282339801085463.0, 6491100743812269.0, 841287688298234.5, 8469716102196019.0, 8972070377677909.0, '2022-01-14', '2023-09-16', N'-zBHeZEcbFr__QcECqAp', 916, '2022-10-07 03:19:14', '2024-08-01 09:44:32'),
  (73, 922290, 984, 3919613876280006.0, 7022698294740776.0, 3793726371632432.0, 1397371121470515.2, 3367587925095461.0, 4878413938938087.0, 9056605726577112.0, 655, 166, 145, 5109739430098670.0, 2103859484773779.0, 7491767665980553.0, 9450688765505670.0, 6556396350481470.0, '2023-03-30', '2022-08-26', N'lfEzezw', 534, '2025-03-19 03:59:58', '2023-09-27 21:43:12'),
  (257, 137122, 38, 681694605655189.8, 3970287955041723.5, 4069553915011729.0, 9317896270316226.0, 5595261309976214.0, 2625780195952960.5, 5699554556387715.0, 792, 878, 371, 4835427634838039.0, 7186784832561880.0, 256134616584784.44, 1204897316417684.5, 9902876544336548.0, '2021-04-20', '2024-10-21', N'qGopfKcBQNyZWhHKvXs', 621, '2022-04-30 09:13:50', '2021-08-24 10:37:33'),
  (551, 88114, 978, 679419694759113.6, 401128303451441.25, 7998506755629350.0, 7658569955452091.0, 3618956312041310.5, 6367980726739013.0, 3866850149167791.0, 875, 75, 372, 7998588026978274.0, 3744374015834057.5, 8459406418229717.0, 1359912106083544.0, 3629807843620800.5, '2023-12-30', '2020-08-27', N'PNmBfoOTYpAfqoMYfn', 472, '2021-12-12 21:55:15', '2023-09-23 23:26:52'),
  (302, 75996, 392, 7843457386738265.0, 5469640474549250.0, 2965921472852485.0, 54297515571307.69, 2851114039430813.0, 1175507215437813.2, 362781865524315.4, 704, 856, 470, 8649368356074655.0, 9868459743945766.0, 7283707059768693.0, 1713532503004962.0, 3547784234839968.0, '2023-11-17', '2023-10-07', N'ushQFHZuzOerIvwHB', 398, '2025-06-06 06:36:20', '2021-11-15 04:33:38'),
  (622, 776840, 74, 1963988828993795.8, 9667175003410708.0, 3238116101436921.0, 7118911681775911.0, 9063293636902166.0, 2757064005009570.5, 2239516361398426.0, 531, 886, 351, 9833563285985770.0, 336748556267583.1, 4060364444482290.5, 4803111046233313.0, 1669790816442478.0, '2023-09-29', '2022-08-23', N'EBXwm-lM', 753, '2022-04-14 21:45:35', '2023-06-21 16:50:25'),
  (249, 25764, 226, 9415460241608898.0, 970801930618492.2, 6478113830865779.0, 4325368377237210.0, 6207244014642033.0, 7571249971649278.0, 5461117366947285.0, 38, 38, 7, 9034856019712432.0, 9307445331725902.0, 17388368000235.13, 963050793752395.8, 4857259888803331.0, '2021-04-13', '2022-07-23', N'-mwMVZ', 473, '2024-05-25 18:56:49', '2024-08-14 06:56:15'),
  (555, 825882, 888, 7699619672562903.0, 7076445876871058.0, 6719539001526325.0, 1207955184641722.5, 3897906915774339.5, 9419849041535158.0, 3098036436365419.0, 448, 954, 819, 3830399100841327.5, 4030251061259462.0, 7576216755243289.0, 4570139055666061.0, 5795155704816606.0, '2022-04-27', '2025-04-02', N'blPO-', 972, '2022-03-24 06:12:09', '2022-09-25 01:23:05'),
  (795, 317933, 934, 1319934749149971.2, 6803729813507220.0, 6580131219555931.0, 1373009172362023.0, 2573937826854371.0, 2725870202927151.0, 9425727369679330.0, 984, 873, 948, 9737407903498804.0, 4562340559366265.0, 9371599932292102.0, 4169273821965841.0, 7754461448157464.0, '2022-04-23', '2022-09-03', N'bfuGHMPKZXVl-uWSNnbG', 681, '2024-11-09 21:47:13', '2021-09-19 11:21:20'),
  (451, 322664, 411, 1134568549553781.5, 1866287674583560.0, 2722643351363519.5, 4902380699080349.0, 3048722552491868.0, 7273400702063546.0, 810618638916175.1, 114, 36, 56, 9429519741358242.0, 9959007313219404.0, 4591695399652228.0, 3606028933674325.5, 4520312690310153.0, '2023-04-07', '2022-05-24', N'dlXIOkXeXNgdwgml', 674, '2024-08-06 14:02:11', '2023-01-23 10:00:33'),
  (668, 538995, 298, 3341603638953814.0, 1067223213178889.5, 4530465240958531.0, 2742670774850489.5, 5368931211509568.0, 8012639541340932.0, 4273678800295190.0, 740, 511, 424, 4149677087910902.5, 5577490155228890.0, 39927689306031.85, 9325741186072420.0, 2349369962875258.5, '2022-06-11', '2023-05-12', N'KjbVzjPtwHcRXKFuPo', 658, '2021-03-24 00:49:04', '2022-12-24 10:43:46'),
  (976, 816632, 191, 9858773082691354.0, 3480824688676679.0, 4513398065998925.0, 9835641482169958.0, 1490550419951244.2, 3742519474066688.0, 9912634916203416.0, 49, 904, 609, 9914892047275944.0, 5109278502596195.0, 7123599411987788.0, 9133626251286932.0, 8561834752680345.0, '2025-02-25', '2023-04-09', N'lEytPrmZ', 90, '2024-02-05 16:58:31', '2023-07-26 00:47:41'),
  (232, 159987, 432, 1173737031462884.8, 2156607848953632.2, 299941648907735.56, 3573607032127869.0, 3916649849981949.0, 4064191307551844.5, 4015480950784567.0, 13, 853, 515, 3950930021437782.0, 303177112692956.1, 9702769602744344.0, 7602381623587113.0, 5958715912912342.0, '2020-12-12', '2021-08-15', N'qoGFRhDQ KRnChOufUi', 806, '2023-09-21 10:36:19', '2021-04-27 08:16:28'),
  (720, 57442, 378, 78356459639983.28, 4480470648597372.0, 4592338448447324.0, 9325406149878038.0, 737478030679081.8, 9679224749232954.0, 304710626721107.5, 466, 682, 795, 2253869856971338.0, 494282339901596.06, 6526486022982221.0, 5402273846834302.0, 1708962138322236.5, '2022-01-05', '2022-08-16', N'MLF_iMrMaUsbZG', 219, '2023-07-19 18:47:31', '2023-12-13 21:02:22'),
  (629, 879419, 854, 7720115913807366.0, 9180531541429084.0, 7402342787091870.0, 4944243260481547.0, 7168476041081225.0, 1262518171458111.2, 4905364646167377.0, 508, 90, 961, 5430104434276291.0, 5563126572126399.0, 8339036552503960.0, 1825690550471961.2, 513822449077853.1, '2025-01-10', '2023-04-10', N'nqXRHFjABcrVJBJB', 902, '2020-09-13 21:24:42', '2021-06-09 18:54:14'),
  (991, 448729, 637, 9046593362230436.0, 805527047286964.6, 2135696278588076.2, 608697578878576.5, 6056087862477245.0, 9567076479621438.0, 6312085805233775.0, 617, 209, 730, 4709459434065154.0, 8791634596129171.0, 3882955057289897.5, 4186041471637413.0, 8584282135569071.0, '2023-09-16', '2023-10-15', N'aTXlfbYtt', 447, '2022-10-20 12:42:12', '2021-07-30 19:55:42'),
  (143, 423181, 251, 7880546700750297.0, 2680859808285444.0, 2435724764191045.0, 818224080363150.2, 8803655923074343.0, 3061163184894486.5, 186620386769782.44, 662, 250, 49, 6566174607644298.0, 4894290740735554.0, 7718779882837191.0, 9025072575010434.0, 1347426926127536.2, '2025-02-09', '2023-05-31', N'MJZJB', 351, '2025-04-16 21:48:15', '2024-01-12 14:03:21'),
  (210, 147217, 420, 8129988556146677.0, 4352121263125059.5, 4065227168295386.5, 1770559171136598.8, 5503319997834649.0, 9663263988920614.0, 1425227810707691.0, 10, 272, 394, 509821874479385.9, 1687623247227052.5, 6034881959444086.0, 6228811398408345.0, 6636008042364983.0, '2024-08-06', '2024-02-15', N'MiejwnpghP', 720, '2024-05-29 22:01:06', '2025-08-01 13:43:11'),
  (677, 814928, 436, 3128933703557289.5, 9958036717485386.0, 4108819269733916.5, 7721758488893125.0, 3204032982391209.5, 3543663524603040.0, 8312448396446772.0, 984, 900, 954, 9606265232029644.0, 6165229753808283.0, 2300713840672055.0, 2470226965885099.5, 9315315282056080.0, '2023-08-10', '2025-05-20', N'cFVnq', 437, '2024-09-25 02:40:09', '2023-11-08 11:18:44'),
  (988, 978362, 537, 6672171591189886.0, 5124019515056287.0, 3598401233685910.5, 5990101541888407.0, 7893929637473583.0, 3401173679449429.5, 3555229947506593.0, 471, 204, 101, 5334796211308289.0, 3987927269569435.5, 4544374677128060.0, 2381942119217055.5, 2027958454689162.8, '2022-08-13', '2021-05-20', N'w crAL LA', 999, '2025-04-25 15:49:18', '2024-07-22 05:56:13'),
  (185, 711825, 493, 6187648437793219.0, 8532626986444107.0, 5413538570698412.0, 1927506311982147.8, 2389297581377954.0, 8797839304684102.0, 9583002663071870.0, 345, 457, 146, 6099481925973235.0, 7493008796097494.0, 2030439200338928.2, 35877182519542.53, 3569974786771926.5, '2024-08-16', '2023-01-09', N'eFQjOwzC Z', 773, '2023-08-08 21:23:58', '2020-10-23 19:18:49'),
  (208, 675535, 266, 2201932218893969.5, 7094229415313881.0, 1277469592853919.2, 5211636995131468.0, 3266913209838477.0, 7318363971239886.0, 124015245594055.75, 567, 360, 187, 6863962283499421.0, 2336630240188074.5, 5322533075439589.0, 125894797920472.75, 2159875089252045.8, '2023-12-26', '2022-09-08', N'h-emciuMeW x_vQPt_', 829, '2022-01-01 07:28:54', '2021-02-19 02:27:43');
INSERT INTO [quartiers] ([nom], [ville_id], [created_at], [updated_at]) VALUES
  (N'kfBMxSA', 461428, '2022-05-04 03:41:18', '2023-09-04 06:14:45'),
  (N'FGSC X', 840154, '2022-09-26 14:00:38', '2025-07-09 12:29:18'),
  (N'oFG N', 459332, '2021-12-22 06:06:30', '2025-04-17 14:05:59'),
  (N'WGSikJUpTjeNEBABkLs', 95516, '2024-11-07 14:05:54', '2022-11-14 14:19:36'),
  (N'kIRmbjrwB', 215879, '2021-12-24 08:13:04', '2024-07-15 14:23:42'),
  (N'PmAlXzM-gwI', 385500, '2023-03-04 17:46:43', '2022-11-22 00:32:39'),
  (N'OKDEK', 664357, '2022-12-02 16:03:31', '2021-06-23 14:15:30'),
  (N'ARlcrOB', 944939, '2022-04-01 09:33:50', '2023-04-06 23:55:01');
INSERT INTO [reanimations] ([personnel_id], [patient_id], [lit_id], [created_by], [updated_by], [options], [date_sortie], [heure_sortie], [auteur], [detail], [dateEntree], [heureEntree], [created_at], [updated_at]) VALUES
  (710200, 628504, 500923, 343784, 49326, N'Dfglvw', N'-_jdqLZO', N'BtPddxXcEXQdiZck', N'VujtnnJkE', N'bEkr_gJzp', N'MeknJ_MrIMQh', N'bigKgxJbvNzWbQUe', '2023-08-09 12:33:20', '2022-07-30 14:10:47'),
  (345537, 504532, 396342, 632146, 296535, N'JWwB ShVIbBh', N'mpcDVjdAFaKDYwsejTl', N'amMsBVdCymX', N'ZOwMwuJCjaegm', N'viOtsd', N'RzsBJKiYySjIcQeOuvZ', N'qzfqPFuu-HqvMSIoO', '2024-09-18 09:03:54', '2024-12-21 12:56:03'),
  (160763, 886284, 636694, 660307, 685461, N'HPysMI', N'dbNpySDhSYndzh_', N'RguipRBA-qoBiHKsJ', N'dPOjWXmWqappRo', N'qlFvrUyfO', N'XxTYENQWw', N'UOpvgFaJzYx', '2022-11-21 14:19:55', '2023-02-20 02:42:36'),
  (354023, 207870, 32906, 269582, 180144, N'e_uzzNCNF', N'cgjggmNfxLIZCngw', N'dYTNct', N'ixxC_jWuPhxJK', N'-EflwYNFiO', N'HbtSfb_dfDxTYkXhzY', N'xaXTxw', '2021-08-15 16:55:02', '2024-04-06 12:15:15'),
  (788307, 30684, 7946, 846861, 247753, N'lOiXHixJ-BlGMaTV', N'A OEi', N'x BylXG', N'fFdPQl_PKNUpOQKDLem', N'qHvEGhxCCrFkPm', N'QyNBegBXD', N'gJKSkR', '2022-01-20 13:54:10', '2024-02-07 12:40:25'),
  (427003, 483892, 217589, 616441, 239949, N'zqMJxLalpz', N'YQMQqZUHug-qnoxOxim', N'bcfpSyhMcAZ', N'FpZoD bWpFvvckX', N'JLoDJkXu_fHq', N'_taXzqZW', N'XIlOBJgBbOSA', '2023-12-01 21:43:26', '2024-02-18 03:03:24'),
  (176507, 358377, 643603, 538651, 235890, N'uGWiP_qShq', N'edofkWSLRwZp', N'_qKzrYx', N'oLFnJtyaxZLEeyE', N'oXPNrOEsFUMsuLV', N'tX lpsTvKXQY', N'gr_fWoPL-AiK', '2021-09-02 13:56:19', '2023-11-15 01:48:24'),
  (848080, 439742, 81646, 589656, 77390, N'IMFinhKzUae', N'N_ OY-n', N'tcheqaNmcndyazZzZPV', N'pkOEF', N'tINNI', N'hTnboEBEECNkagC', N'aZnJwlJLpgTRzxa', '2024-05-01 06:28:54', '2023-08-12 20:48:25');
INSERT INTO [reference_counts] ([ref_type], [ref_count], [business_id], [created_at], [updated_at]) VALUES
  (N'CwJDcVHquhX', 811, 635, '2024-05-08 02:20:08', '2021-05-25 09:21:08'),
  (N'eXm_Y-DlwMcl', 386, 342, '2022-04-20 00:44:30', '2023-08-06 20:57:19'),
  (N'SJwPyfc', 450, 706, '2025-02-03 11:25:28', '2023-06-28 20:53:05'),
  (N'eJxWxNXGRQZR', 973, 676, '2023-01-08 02:33:57', '2024-11-30 17:59:01'),
  (N'NsBmDPwQq', 652, 637, '2023-04-21 04:02:45', '2023-10-04 23:03:03'),
  (N'uPeVZDvRDqRfwLXdUZMe', 76, 792, '2021-10-31 03:52:28', '2021-04-12 21:51:59'),
  (N'lKJaAhr SJMHRWWaU', 87, 189, '2025-01-26 10:29:22', '2023-05-13 15:53:00'),
  (N'ansOhCSoDbL', 686, 686, '2021-08-28 14:31:38', '2022-01-23 09:57:02');
INSERT INTO [reformes] ([exercice_budgetaires_id], [unites_id], [type_conditionnements_id], [produits_id], [familles_id], [ordre_entree_id], [etat], [date], [created_at], [updated_at]) VALUES
  (763263, 719589, 248610, 842495, 413599, 664620, N'xGpCOntRQwO', N'yTZtyE-QFPUsMklm', '2021-07-05 04:06:58', '2022-07-14 08:48:14'),
  (646547, 655693, 69798, 753558, 376456, 121501, N'nSEPR', N'U IOqL_ihmD', '2022-09-04 07:00:23', '2022-09-29 23:53:00'),
  (165297, 563881, 875853, 198222, 82400, 523941, N'ZBNMHLjQxIEdOhwt', N'PGrfiDpBTvsO_DsS', '2025-06-11 16:52:12', '2023-12-31 17:21:46'),
  (360010, 498739, 936298, 577562, 121821, 407706, N'dQ XZvWrnB', N'axHJOcgNU', '2020-08-27 22:56:29', '2021-08-15 07:52:53'),
  (684104, 197217, 553604, 433422, 237271, 15074, N'Au eV', N'sFOJWwpQFZ', '2022-01-19 03:45:15', '2022-12-15 17:19:30'),
  (608723, 141836, 555887, 366401, 66983, 127177, N'FVecPKgl', N'zOhAoraBzWgC', '2024-03-25 08:41:18', '2021-08-12 17:58:21'),
  (816104, 974525, 754850, 584487, 181968, 891000, N'qSvQMMdr', N'NWXxrxsfz p', '2021-10-03 07:09:14', '2022-06-30 07:06:39'),
  (805365, 972060, 193523, 272057, 509335, 825237, N'sIPMUWqvvGfDRJMB_', N'NYZFypjHZCw', '2021-10-16 22:22:32', '2022-06-23 08:54:59');
INSERT INTO [regions] ([pays_id], [nom], [code], [created_at], [updated_at]) VALUES
  (843979, N'eMOBv', N'TgZewxC-biesfzTziV', '2023-08-12 15:18:49', '2025-06-01 03:49:57'),
  (354574, N'MITCNsvyHCR', N'VCDxo', '2022-06-11 12:18:09', '2021-11-01 19:56:46'),
  (990986, N'gvDf-Zt', N'Td m ncInNihm', '2023-05-31 04:20:15', '2025-07-11 14:24:46'),
  (833271, N'GFfWwyApe', N'ybJKFOcN', '2023-06-04 15:41:59', '2024-07-08 23:43:43'),
  (107429, N'MuEqZ-ZEUc', N'aUvft', '2024-01-13 01:58:20', '2022-11-03 03:47:42'),
  (133210, N'azadYwJXceadO', N'Wevpg', '2023-03-05 17:59:02', '2025-05-18 09:40:07'),
  (698517, N'qfcnKjGjKkMg', N'SKXoPxRFUwRUEWzbUl', '2022-12-09 22:53:53', '2022-03-16 07:45:01'),
  (538725, N'ocnisRQEyt', N'kynpKogld', '2025-05-22 07:48:36', '2024-09-14 06:32:42');
INSERT INTO [reglements] ([status], [date], [caissier], [type_reglement], [code_reglement], [created_at], [updated_at]) VALUES
  (N'nCZDV-IdOuf', N'ivRT z-TTaugLxCyPfS', N'jMm_jMx', N'PKFkKeEcoOxnNGh', N'SfSZyJKTLZEXB-z', '2025-03-04 04:03:51', '2021-10-20 18:21:24'),
  (N'RLGuapnEgtrDVg', N'gzJDw-kGzWP', N'u-SirorOTkoiGYYIfx', N'RYWlilzpWtePC-UGEJq', N'YVdN utrtLDxxv_nb', '2024-05-30 03:22:03', '2023-04-21 21:45:33'),
  (N'XDYCQZvJaN', N'HQeKgxJ', N'OhqrS Rxh', N'qTbTtHp', N'FoJTlESuChyjJr y', '2025-03-15 08:55:49', '2021-06-21 10:28:58'),
  (N'RYvxVHilKkxcbvx', N'EBDdgC zK', N'LTSWfvUctT_', N'MloNPqKK-YyRwFP', N'BTvDbB_qYOiVTWN', '2022-01-20 13:39:03', '2022-03-10 11:10:00'),
  (N'ellnpV', N'pBAycWtHNrVLdYyGTdWr', N'weaABo', N'dKOQUSceMSPp', N'RpIgXTIcuZT', '2025-03-29 19:12:36', '2021-09-29 15:39:53'),
  (N'yPIfphxbHoAOQ_mm', N'ENvWKADktdPfQ', N'yuzqmnFAdXZPCrEo q', N'IcsNUV_YXJDDl', N'PxjxsJZDHbjgZ QO', '2024-04-03 07:03:57', '2023-02-01 06:46:36'),
  (N'Wcd_DQHd MtsD', N'cjmndPLbHZ_vEydp', N'IGrg MCpyUqEAFijN', N'CpldwGhuDcGwcmFeBolq', N'_MiQYqtSmIjtS', '2025-06-08 21:09:44', '2022-05-24 14:40:06'),
  (N'arlyJSKpoCZZINgSmqv', N'hjFiaN', N'PEcgBqGpObZf', N'NjE-', N'gDKjxfoc_zNvCw', '2021-02-17 21:07:09', '2022-12-08 19:31:12');
INSERT INTO [rendez_vous] ([service_id], [personnel_id], [patient_id], [dateRDV], [auteur], [detail], [created_at], [updated_at]) VALUES
  (569978, 727916, 438639, N'SMUab kgnYS fjFeg', N'YHHxjgO_xJDW', N'XrTxXEYpbm', '2023-06-16 02:54:03', '2021-06-02 20:03:45'),
  (870295, 496176, 323863, N'qcOgzYUvSqKXbU', N'p_NeidcQYc', N'k yzqQ XDAlLFWcZ', '2023-06-21 21:40:45', '2020-09-08 11:20:39'),
  (317256, 843303, 361665, N'AKQkVYdVpaHIOls', N'rJPFj', N'HYFGlyAWFuloiO-', '2023-07-23 18:27:33', '2023-09-02 09:46:12'),
  (275943, 489970, 265944, N'qLaNDLrcwKX-eqEIivh', N'UpYVGWz', N'qDUPgBxZoWIaGvMdVreL', '2023-06-17 02:47:58', '2023-09-21 11:33:05'),
  (789522, 461738, 811577, N'AKFeHdWfRTI', N'aRQFgnQHv-TibsCZQ', N'k kKEwSV DNzkltuQQS', '2023-10-08 19:12:41', '2025-04-23 15:41:12'),
  (888751, 249151, 633782, N'BsfLenoLjyqkzIB', N'q ioU', N'rpXsHaKv', '2022-11-04 00:10:18', '2023-06-22 03:14:42'),
  (735638, 800852, 126922, N'AvSHtoGJTseaxut', N'JZDUBX', N'rTwKNLbkDd isOwzjjSv', '2025-08-18 09:52:08', '2021-12-13 11:07:22'),
  (440071, 762272, 892320, N'tNFfuvSemrW', N'fGaFAfZFFMAGPcd', N'ivjXi', '2021-11-13 07:47:56', '2024-04-26 10:41:19');
INSERT INTO [ressources] ([exercice_budgetaire_id], [source_financements_id], [imputation], [intitule], [annee_n_1], [montantEncours], [previsionN], [previsionN1], [previsionN2], [desactiver], [created_by], [updated_by], [created_at], [updated_at]) VALUES
  (428245, 274850, N'NGA-UtKjtBuNRAsvAXda', N'uwIgxuA', N'cELaB', N'NKTQySMwCPGk-Kwgm', N'qLYfAS-IumII', N'GcGlgqhBH', N'IIoXCBnWAXDk Spu', 0, N'FjeUZZOp', N'eaCCdfp', '2021-05-07 01:00:09', '2021-03-01 15:47:25'),
  (71280, 257795, N'Rj-UqHSqBWdlS', N'GZjqukTioZA', N'NaQPQdvTwvxTmOEONR', N'GQNBMZKoauYBHG', N'fBYHaZIg', N'yTu-JeaeAVXDJk', N'jXLEmDnBFs', 0, N'yug_lXixczAITsqxCp', N'tRRskgmTzEhEb', '2021-07-18 14:57:05', '2024-11-25 08:06:47'),
  (947383, 660328, N'_yzVy yOcRLB', N'ULdYgqQFZaAT', N'McnicZUmCqRm', N'ZnNrGiRqzWZzCJF', N'PiLDFrhJm', N'lxOZrnZMuGDaLVMJ', N'bUNiND_h', 0, N'NUrww', N'--Flpxo', '2024-10-06 19:46:59', '2020-10-13 12:08:50'),
  (646770, 263763, N'u kwYmOTkHsRJF', N'ULIRS_rUFrmI', N'WswkwdVFb', N'LEM lJIZgUkUlgx', N'iQDpAgeKvAMevTU', N'KhZJrQaXGwkQCcs', N'U-YGqLiIAXoWybXt', 0, N'sDvGpG', N'tTOJzB', '2021-10-07 05:02:16', '2024-10-03 11:35:06'),
  (71260, 491425, N'PJzY_dpIeFAwTQsipPFD', N'KnCBhqPBGXVjWnnubri', N'SkO-rQIYoSweI', N'uNLtqrLv', N'MYotMFXAxG', N'-ce-rWemqadPOBh', N'ABwQAJU_c-', 1, N'SgdBkH vDs DxNuO', N'rnjwX-', '2021-09-24 02:04:19', '2024-04-06 17:27:59'),
  (62530, 133668, N'Wm_uio_AkmP', N'yExoTw', N'ylan_phR_LaX', N'yzBLWyKx', N'QAqKF YLfPbZUjwhQax', N'oiwsUQ-jLplvLrxXw', N'WmfaURI', 1, N'FniKAi-XueQcYQJO', N'yXh ieiO PPdKzDA n', '2021-12-10 09:24:16', '2022-06-20 04:35:23'),
  (766828, 20645, N'VLKscPIKDN_FC', N'DRFR-aNAhoVhA', N'JQpkWB_', N'KNwPwyOtMOKCcimRI', N'SwpDiQjeJsuW-IymKs', N'slKHRywHzBDyGCN', N'sKzXvxTDBQwvSHgve  K', 1, N'nkZtOXUX', N'TJxpwccRus', '2022-12-25 00:05:21', '2023-12-30 11:37:15'),
  (790024, 898811, N'shFsBcMSCzTz', N'_clwcmwVIzO', N'hKqfdRftWEJnjTlITS', N'gTGiBUpr', N'-BmNpXAuILH', N'qoCoyC', N'HTSggcb', 0, N'TPGrSHHtFDYLAlW', N'KbyJvHDPJ_zZeYIRR', '2021-05-09 22:08:55', '2023-07-22 07:52:46');
INSERT INTO [resultat_examens] ([bulletin_prescrit_id], [valeur], [interpretation], [created_at], [updated_at]) VALUES
  (798548, N'yoTjWMmlWWvH Q', N'EZ-zcFKONITXT', '2022-05-15 04:32:13', '2024-06-03 02:32:39'),
  (984138, N'XZxKERsyGppXpW', N'IXRkGwafbZduS_lrE', '2023-01-31 03:44:45', '2021-04-06 05:27:57'),
  (277988, N'HKefEIRl', N'J-sdAkfRMn', '2022-07-06 21:23:27', '2023-06-18 02:23:55'),
  (601198, N'hFewmYAnU-PYMGrKjx', N'jgatVbCIO', '2022-11-16 20:29:13', '2022-05-14 20:13:35'),
  (176763, N'QzDcS', N'sdbxiQ', '2025-07-09 17:43:42', '2024-05-18 08:36:43'),
  (35022, N'CHWxJXDuYmoryR_DRFSc', N'UCKYUGaNQHoQAV', '2025-05-01 03:31:53', '2025-06-03 21:50:08'),
  (140279, N'QRM_X', N'pbtEyqDsxXIaO_mpuwT', '2024-05-28 06:04:26', '2022-07-30 19:13:09'),
  (478803, N'lCWqCrB hlc', N'nkdMqt', '2024-02-18 07:51:17', '2024-08-03 15:01:23');
INSERT INTO [res_product_modifier_sets] ([modifier_set_id], [product_id], [created_at], [updated_at]) VALUES
  (544, 627, '2023-08-07 13:04:01', '2021-02-11 12:57:13'),
  (49, 178, '2025-02-22 06:51:06', '2025-01-07 06:33:11'),
  (38, 220, '2022-04-11 12:49:10', '2022-10-24 07:34:17'),
  (335, 303, '2021-08-03 11:22:01', '2024-04-29 11:03:02'),
  (295, 162, '2023-05-16 18:23:10', '2024-04-11 07:43:10'),
  (680, 480, '2022-03-27 22:33:08', '2024-04-24 09:40:08'),
  (7, 85, '2022-04-01 16:11:25', '2023-10-26 03:57:34'),
  (802, 531, '2022-08-16 03:47:46', '2023-12-08 10:46:56');
INSERT INTO [ribs] ([compte_id], [personnel_id], [etat], [dateDeclaration], [created_at], [updated_at]) VALUES
  (731257, 224847, N'AQaqex', N'Zdj_te', '2022-08-27 03:44:55', '2023-10-13 10:48:20'),
  (964257, 32303, N'zRNheLfpyaGe-ZQ', N'yjEoORbfz', '2024-02-23 22:15:57', '2024-08-05 16:00:08'),
  (261215, 542243, N'iZxVOnbxxu', N'YJtd-vOJs', '2021-01-30 22:10:26', '2023-01-21 10:13:50'),
  (518387, 197923, N'peDPBbpZXO_BtHYhhgIT', N'pcvHb', '2021-12-08 02:14:20', '2022-06-29 20:25:16'),
  (618836, 659767, N'nxTybmuXAG', N'xvKhTGKIvo', '2022-03-11 11:08:20', '2022-08-02 21:23:59'),
  (228362, 785433, N'EWhzqnQDveo-DifcWgp', N'pUPHRRrXYGytSkb', '2022-01-30 03:37:03', '2020-11-16 19:40:13'),
  (566625, 274503, N'MeXnqRHjVx', N'sZcUB', '2023-09-12 19:25:15', '2025-01-08 02:41:19'),
  (262252, 320879, N'zbcZJjp QYE', N'mSYohbdWlWxZ', '2024-11-18 19:24:59', '2024-11-30 20:14:46');
INSERT INTO [roles] ([service_id], [business_id], [is_service_staff], [is_default], [name], [guard_name], [created_at], [updated_at]) VALUES
  (926286, 91089, 508361, 1, N'sLBnlmUmy', N'tLvikn- rNM', '2022-07-14 09:54:01', '2024-02-01 12:51:26'),
  (496376, 661449, 190396, 1, N'LTSQxEOkwlOYNOsVl', N'yNjrHfHjhfaP_ngOX', '2023-08-19 20:58:11', '2024-05-20 10:31:41'),
  (660, 532445, 562508, 0, N'oEHkbI', N'SUApfjx', '2025-07-24 02:58:58', '2020-10-20 20:48:14'),
  (856563, 547020, 918493, 0, N'cGx ApVA', N'paaS-VUDHlDosNjRfh', '2021-05-29 11:07:58', '2022-01-03 07:50:26'),
  (903262, 9067, 155841, 1, N'vdCsniHg', N'a-JGbTClCiV', '2022-10-27 17:31:05', '2024-07-04 02:01:51'),
  (208834, 602090, 340243, 0, N'gBUCBgkXWAL_', N'CQIzQP', '2024-02-22 12:39:52', '2022-04-02 10:21:33'),
  (257434, 487821, 965256, 1, N'eirmiTqMTh', N'UrNZFHt_KDJc', '2025-04-09 09:57:01', '2024-01-31 13:54:39'),
  (176219, 214889, 581770, 1, N'dXtCGdFHpcKAlTy', N'KEIteBOPza_X', '2025-07-10 08:57:46', '2020-10-17 06:37:52');
INSERT INTO [role_has_permissions] ([permission_id], [role_id]) VALUES
  (961784, 583105),
  (912852, 534905),
  (816172, 913445),
  (249768, 637974),
  (895627, 276127),
  (781790, 80517),
  (76563, 619591),
  (557154, 97610);
INSERT INTO [saless] ([product_id], [quantity], [total_price], [created_by], [updated_by], [created_at], [updated_at]) VALUES
  (801935, 401, 8007708319261214.0, N'uUVcorGpK', N'qNY_etn', '2024-05-23 14:40:59', '2020-10-24 07:42:35'),
  (294592, 24, 6690163824135978.0, N'iyFSIcsRWdrPgc', N'UiNPzeON-', '2022-05-10 04:11:21', '2025-07-21 21:57:28'),
  (803491, 480, 2110629310233394.0, N'X qEYnBaLYzulE', N'WNGuXfPdJZ', '2020-11-26 14:25:32', '2024-11-07 11:54:05'),
  (422798, 713, 6737774638224179.0, N'-ztqHeznLnwL', N'fROTHvwgkSf', '2021-05-28 12:22:03', '2023-01-15 03:03:06'),
  (469910, 581, 9679317817968998.0, N'lYOmmCwCuU qj_kIZewk', N'H_n_gLImpTnvKiKME', '2022-07-02 21:20:35', '2022-07-10 19:07:36'),
  (506785, 778, 2888030650663535.5, N'PDBLWQaoVIR', N'ycXsLvr_jGS-zrdqne', '2024-08-11 10:34:55', '2024-12-25 10:43:40'),
  (50246, 684, 1377836617324264.0, N'JrJNGEUWKsWy', N'YNwzTE', '2022-06-28 12:15:15', '2024-06-07 12:01:32'),
  (180296, 714, 4410416105725903.0, N'mxVhRixrTRVpa P', N'eZzraN-tbGY', '2024-07-23 12:13:45', '2023-04-03 20:40:08'),
  (872873, 525, 9638566722054178.0, N'rMeYpuLn', N'wythOxZeWe_soE', '2022-11-02 02:55:09', '2023-09-02 11:34:12'),
  (459664, 217, 6468840299621503.0, N'ldQXhWhZprm', N'EvEezxEQJC imoOxSLG', '2024-10-20 13:31:40', '2024-03-31 06:17:19'),
  (275470, 223, 190160533161791.72, N'AeeQDa', N'DneUrAxCxt', '2022-03-01 07:13:13', '2021-05-05 07:34:29'),
  (551275, 181, 4368101830897440.5, N'TVUoMVDKUszWf-LY', N'fneDO-vmO_', '2021-01-03 22:42:37', '2021-08-07 08:53:34'),
  (458161, 111, 9590230371162170.0, N'SxhbFuaJydqw', N'SYekHWmLJMgXIuJSW', '2021-04-17 04:50:18', '2021-09-21 09:14:05'),
  (269114, 562, 2343087700570053.5, N'GIsK amcx SVc', N'TuMMASwaPIud', '2023-06-27 21:50:26', '2025-06-02 13:11:46'),
  (268519, 289, 6594139605576373.0, N'JxtJMzXHRfeDGOX', N'FrEfz', '2022-12-07 15:14:10', '2024-03-05 13:40:50'),
  (677279, 403, 4152127429025543.0, N'OoOdQfayHmJVkekwqw', N'Y KmJRHutvCdOYgs-', '2021-12-18 18:49:00', '2023-08-06 12:28:03'),
  (855427, 658, 7497611042914228.0, N'rNXiYYQpPdfovxv', N'QNFP-VQuF V HHAI', '2023-03-01 13:30:08', '2022-10-25 23:19:45'),
  (476887, 154, 274856573283663.88, N'KF-bzzjRhZvAKi', N'hYws PxCYU', '2024-11-23 08:51:13', '2023-01-31 11:30:18'),
  (542334, 938, 7969983290141289.0, N'ci_ws XaOjKSaSXeZ', N'HvRXiLMQfMsllFPJF', '2025-04-10 06:09:37', '2021-12-11 04:04:32'),
  (223239, 55, 8075925268134299.0, N'nRFvpfqZRzSQhTUHedQF', N'CDGmOskBUaYOnzwtBeS', '2025-05-20 01:41:31', '2022-08-21 03:49:22'),
  (770496, 441, 2498030026608728.5, N'AWEXmxynNxhABiBTyi', N'SuShwbSB-Ss_', '2023-11-18 13:58:15', '2020-09-26 15:55:37'),
  (202013, 686, 7279997781057355.0, N'QJE-ePSvrxY', N'ZRzxcCDE', '2025-01-09 09:59:56', '2021-06-25 04:51:33'),
  (943021, 430, 6796920143721095.0, N'pmFtFukwW', N'iG xKQzoXqX mJldEj', '2024-08-01 07:00:11', '2023-06-13 14:08:09'),
  (419247, 358, 1820552097791673.2, N'CiiwzSNTY', N'mZWGNsiYH', '2024-07-25 16:30:51', '2024-10-07 04:23:19'),
  (531543, 676, 7054232011533544.0, N'aejviS', N'dDMlylazUFDhciUdP', '2021-08-22 02:52:35', '2021-06-15 07:23:08'),
  (758323, 621, 2007049493966017.8, N'zTRbOAW', N'LGvfFwiA-', '2022-04-22 17:47:55', '2025-05-10 11:37:19'),
  (949862, 502, 3892313313039277.5, N'TCn_Cb', N'HviHBvCCGeoIBVeiML', '2021-03-19 12:51:17', '2020-12-14 06:24:17'),
  (583321, 716, 5094211532628501.0, N'UzVVL', N'rbjiRnufoscfcF nb', '2021-05-13 17:21:05', '2025-08-13 06:35:04'),
  (616122, 563, 5911709725016028.0, N'fUZQejOxzQuGAwtFgW', N'EoN-ZPu', '2022-02-25 08:52:43', '2024-03-06 17:05:10'),
  (416666, 518, 21309133238206.49, N'yU_vSU', N'dEfjBhkkZIYexT-Qbuw', '2024-09-18 11:40:32', '2024-09-15 03:25:44'),
  (646481, 339, 90520296006609.83, N'UClpLcFa', N'CTRsCqrUh', '2025-05-21 13:55:10', '2021-05-26 13:45:17'),
  (430086, 259, 1434747704346934.8, N'hAl_hNjHxKTuRY', N'qzNJapZc', '2022-04-02 08:55:31', '2021-11-21 12:06:03'),
  (107704, 116, 1924536864215307.0, N'dnWkjWsBTFRD', N'xhL fgCJ', '2020-10-23 09:15:06', '2024-02-05 17:39:41'),
  (978890, 582, 2689234340703034.0, N'MAGJeiOtGoSrBgYb', N'oqqgSN-ZOTyES', '2025-05-27 16:08:35', '2022-09-18 07:39:36'),
  (240055, 130, 4365424412948824.0, N'GPyPZZX', N'vj-whb_qc_o_PbBHlG', '2021-04-30 07:31:50', '2021-12-28 17:23:38'),
  (444621, 535, 1383534561496791.0, N'sOhDfJv-qzrWoM', N'pJwTkjVaEUPYn', '2021-08-02 10:36:54', '2021-04-27 01:03:38'),
  (650022, 387, 9534825258812998.0, N'gBwKGq', N'E_Da BlXiocQ', '2022-05-26 16:50:46', '2021-07-24 23:59:49'),
  (207441, 724, 2386420980662257.0, N'IJgVP-', N'eQ-iG J', '2024-10-05 14:13:18', '2022-09-28 05:50:06'),
  (315963, 996, 7326654155770470.0, N'cSAsxLm', N'ZVaddKoB dLZz', '2023-07-05 07:51:17', '2022-09-08 22:44:00'),
  (415081, 789, 2485025319759840.5, N'jjHndTfZJOqMSw', N'EFJAd', '2022-03-16 19:30:17', '2023-04-07 08:26:43');
INSERT INTO [salles] ([nom], [numero], [categorie_salle_id], [capacite_max], [etage], [bloc], [description], [statut], [type_salle], [actif], [created_at], [updated_at]) VALUES
  (N'KfsYJrYqwsalCWsbC', N'HebgYNVkO', 836107, 286, 637, N'edpKEeaQU', N'xZxOAmmpRJFfJdgxI i', N'hZ_KFTq', N'YUbjSbHpbE', 1, '2023-01-20 00:46:00', '2022-06-27 13:04:51'),
  (N'JeExDXv', N'c  ILI', 214732, 923, 627, N'DTOwoDF', N'meSrkI-SDwHyxIobK', N'lAeQjhomUU', N'fbZjq-KSQuxyUv', 0, '2023-11-16 08:29:03', '2020-12-23 08:08:53'),
  (N'PolzflglOFzBCC-r-imK', N'-sRsh', 136938, 939, 981, N'QY VbQCIQWv', N'eUIunHOwvAR', N'ZLXMY', N'TrBTUvtMylEnfGDlY', 0, '2022-01-12 01:06:20', '2022-05-09 04:55:38'),
  (N'FbNDtq BASl', N'UKwhV Yw', 287743, 685, 376, N'pCQnqqJ', N'BnJQxzkXhx_bRSvE', N'nIbEhxPxJZWp', N'DFJsqoPfZxLKvOJMY_', 1, '2024-08-02 22:27:50', '2022-12-08 06:07:34'),
  (N'ThbmA', N'gcmAvb', 789238, 471, 40, N'TVGoXwWDAPtKmegd', N'iSgtuRCNlHtSX', N'KN_nSV_NWDhjQU', N'YDXIHfyxYltCmxHmR', 0, '2021-09-29 21:10:24', '2024-08-01 09:07:02'),
  (N'tHDXEXhdjjGfG', N'tlRhom', 734163, 732, 959, N'FugJCPLQpWko', N'E ick', N'HeVU aCh', N'ksQNZDmfWJXjO', 0, '2021-10-31 02:47:11', '2021-08-14 16:57:21'),
  (N'kTUZEGJZfYEniT', N'ZCpuIAgJfY', 961596, 841, 617, N'-QUyQCMNGbXRSlMto', N'GoNTVuXdAY', N'xUdlysvCMsJH', N'YUlxcukQcHp', 1, '2022-01-05 04:47:21', '2023-07-20 03:14:56'),
  (N'uXpt-RsLbiHrdXMW', N'q QlpLiT', 504323, 454, 548, N'RiPanskCfSu', N'HvjmQbZgAZyIaa WVo', N'vgBIOixBPohssQSYY', N'ore-QVBenGkTEJCeYVG', 1, '2022-09-26 09:36:21', '2021-09-05 08:27:57');
INSERT INTO [salle_accouchements] ([nom], [type], [statut], [accouchement_en_cours], [heure_occupation], [created_at], [updated_at]) VALUES
  (N'G_SIQ', N'_LAGiJYBN_JP', N'EPN jVaSZXzQ EVaLD', 293807, '2025-06-08 18:35:59', '2023-07-21 11:40:07', '2022-03-18 10:45:02'),
  (N'Rce-bKzD', N'YLT gqlIAp', N'XslPXoHDeCYzqDjvcZ', 921551, '2022-02-18 06:01:09', '2022-03-06 11:48:26', '2024-06-16 17:35:17'),
  (N'naH Xrduh', N'XIbIZ', N'k ZlRuUMVXnTuvxtYXqQ', 403989, '2023-03-19 16:32:46', '2024-01-11 20:22:02', '2023-12-20 19:47:29'),
  (N'XvFdbQP_ax-T', N'cx FEkGt_', N'SFEnUASOCJkIKSrcAbth', 330507, '2023-04-04 16:23:05', '2025-06-20 14:11:45', '2021-05-09 14:42:04'),
  (N'pQvV N', N'keUwwamPKKwiZtgHU', N'LqqkFcHb-ig', 286768, '2024-07-26 05:05:29', '2021-03-13 01:01:24', '2025-02-23 18:21:05'),
  (N'TKMaVNvoJtfMBCg', N'whaGaozOHPPlfvXwn', N'DyDVlCTLXGL', 84182, '2023-11-03 20:17:09', '2023-07-07 21:20:51', '2020-10-01 15:05:09'),
  (N'apOLZ', N'dQnjpitnuLqj', N'ClkRNPtdwEtGILX_', 888398, '2024-02-12 07:46:07', '2024-02-27 05:15:59', '2022-09-18 13:24:45'),
  (N'onBrJvHbWmG', N'bYGYwKoaQNjAtS', N'vUzdMg tPu', 582527, '2024-08-28 19:24:29', '2022-07-23 22:45:09', '2022-10-13 07:35:39'),
  (N'ZhWsCzSeITdshGEI', N'SbPLOUcXTWZWSU', N'QOPjHLu gW', 984295, '2022-12-04 19:17:25', '2021-08-26 03:09:32', '2021-01-07 06:04:53'),
  (N'aRsHYyiZbjhXa', N'mFQgFzNjSUBFSUleQn', N'pIBizKNfRSKwEHbhI', 202683, '2022-11-10 16:11:29', '2024-08-10 22:05:00', '2024-02-03 06:28:45'),
  (N'CqdDCGefhbDkAmkUZ', N'wq-MrXSwcm', N'kKiZlxGFpvlcIVMc', 239296, '2024-07-23 13:14:23', '2023-01-05 04:26:46', '2025-02-07 09:16:37'),
  (N'zIvqocHU', N'DyyqPLoMQhTFYKkN', N'OymTDsuo_CMnjEO-hLyF', 134147, '2024-03-31 02:59:22', '2022-01-11 07:42:47', '2024-11-05 04:31:51'),
  (N'Ew aW_ryBBNLNKsveXE', N'xaLoP_vydbmndGN', N'k_LcPLmFjUG-EUYAuWW', 52124, '2022-07-17 05:46:46', '2024-12-09 23:32:44', '2025-03-12 02:11:52'),
  (N'exv-iQSmkIn', N'UVLmQYviuqbrb', N'ozFjh yyD', 254825, '2023-08-05 10:07:07', '2021-09-03 05:16:43', '2020-09-23 07:53:58'),
  (N'YVgiSudwtQRnwz', N'TFPkRNLGOusPZClnqpYb', N'PYhTsdSpi', 888236, '2021-01-29 03:50:51', '2025-08-09 20:24:45', '2023-06-16 05:47:16'),
  (N'AVAedMbzNUzFeePpyqW', N'PLxuzjI', N'fTyCkOXeODAiD', 293373, '2024-08-21 09:22:23', '2024-12-06 02:17:00', '2022-02-24 18:21:25'),
  (N'MtYEwibX', N'Lfb bhGegL', N'EHjCip-GIlMXROfYh', 252219, '2022-11-17 11:34:02', '2024-02-03 15:39:45', '2025-07-21 19:15:26'),
  (N'xhQBHxkcauA', N'xoykXIhlQiApeg', N'qRMEodoNxSwjKArg', 706630, '2024-07-29 20:01:02', '2021-07-31 09:27:15', '2022-05-16 18:11:12'),
  (N'fFzSdHmj_vOofm', N'ISglprmfWVwi', N'oNtU-cI', 651813, '2021-09-11 23:03:13', '2022-01-11 15:02:02', '2024-01-15 18:49:37'),
  (N'xeQqOcnod', N'hKfWEfIZ', N'XD-akg-ivI', 274917, '2021-02-03 14:03:46', '2020-08-21 10:21:04', '2021-04-17 19:52:02'),
  (N'LkvXGL', N'KKxZdQudboJU', N'DZGPO-E si', 450182, '2021-02-01 22:10:50', '2024-11-11 10:35:21', '2024-10-08 21:59:39'),
  (N'sIqIEjGeqSxTm_ -', N'JmdLeGkhGKOUCkX', N'J DpzNkfi', 191252, '2025-07-17 13:02:04', '2022-01-22 06:19:16', '2025-05-24 22:44:35'),
  (N'VPsXdFeaSe', N'-BpLl_LMwsJiolank', N'KGjzQmHvwVmGgL', 88853, '2021-03-09 18:10:57', '2024-07-30 01:24:57', '2024-02-10 23:37:08'),
  (N'wjwtyCSv tTBrlwsHytV', N'FxMTugbjOCCzMNjIbEL', N'CelQdj', 91642, '2023-04-19 12:28:20', '2020-11-04 20:33:25', '2022-05-26 08:03:34'),
  (N'sIaael', N'ATyeDKSlFNSCBcGeEe', N'XeUhsLiEQV', 424966, '2024-04-22 21:50:28', '2023-03-06 17:41:19', '2025-03-13 10:16:10'),
  (N'HBsyMrmY-l_zgIVZfdl', N'NUSpPLIsD', N'lYZUAgx-PzI', 230047, '2025-03-31 06:52:38', '2021-04-05 14:57:07', '2020-11-26 12:11:38'),
  (N'APC-Ju sTRzBfT u', N'PEhwVIsGKmYnrLYK', N'yqMfqwrysuzoMYkGvZq', 140511, '2021-05-04 18:14:13', '2021-09-30 15:30:57', '2024-10-22 13:49:56'),
  (N'WJRFI', N'Q_XKsUyvIBjkseJPN', N'GIDYTX', 343989, '2023-11-03 06:03:37', '2024-08-21 05:38:59', '2023-03-28 13:00:14'),
  (N'pLSgVw_SLM_cUh  z', N'SsZknqmTiaKOyFOQX', N'NXHjtHGUMfRerJXd', 899886, '2022-09-14 17:06:07', '2021-02-22 21:33:44', '2021-08-30 03:05:39'),
  (N'svtmzWEpfPAgO_Srj', N'gDddSgpFolqlnp', N'vrAJoP', 458265, '2024-05-15 13:19:22', '2022-11-15 17:53:09', '2025-05-28 02:06:27'),
  (N'ZywdIuiPHwuHX', N'smG_kBttCTFFEBdnU', N'AshTz B xDeiATpI', 858109, '2024-02-04 02:27:11', '2020-12-02 09:10:51', '2023-02-16 10:13:13'),
  (N'JuLDAdEpQuYnUJV', N'BwRbU RjvAJFRpqZ', N'FCKERmk-aNGf', 220385, '2024-06-26 22:47:47', '2024-09-07 21:10:17', '2022-10-27 14:39:37'),
  (N'IM-OswdHQtCKeAiQf', N'k_GZfWNAkNxgYbzeLuze', N'RgHNqvbmP arj', 970691, '2022-12-28 20:52:01', '2022-06-27 15:27:01', '2022-09-14 17:04:57'),
  (N'vbIikFEG', N'kbucYZfPPfQePqbxomAH', N'SOwaWD_', 268215, '2022-12-14 03:07:18', '2022-02-23 14:32:06', '2021-02-17 07:14:08'),
  (N'DHIlFbT', N'RIFy Sv_-kcl', N'sFaFQAM', 798209, '2024-08-08 16:11:02', '2025-07-02 19:46:08', '2021-04-20 13:36:01'),
  (N'uM-dpcnX', N'xokXdGJVOIVLgpYY', N'KnlxV-RDlyIDYbc_gQu', 770544, '2025-05-21 21:02:23', '2022-04-08 16:09:55', '2024-02-09 09:54:08'),
  (N'OdqAoV_Haz', N'_ Yb_lFxf', N'aZvrL CP', 253375, '2023-01-06 12:47:54', '2021-07-24 17:37:08', '2024-02-18 01:50:36'),
  (N'zFcalIGLmAbmO Fr', N'om YRInhH', N'Opu_X_RkDzUOfh', 871301, '2024-10-17 09:56:00', '2024-01-03 06:54:03', '2021-10-24 20:50:25'),
  (N'qbIjzoYJIAW', N'ukhNDjYgqZTmvC', N'snPmsKghbd', 276631, '2023-09-12 02:02:35', '2023-09-16 13:42:16', '2022-05-09 23:05:22'),
  (N'U dHBPVL', N'otlFotGhb', N'EivKWSywXSliNiWrqXV', 362955, '2020-11-14 10:52:17', '2023-10-21 15:40:07', '2021-03-06 15:45:15');
INSERT INTO [selling_price_groups] ([name], [description], [is_active], [business_id], [deleted_at], [created_at], [updated_at]) VALUES
  (N'LaacluoABuEss', N'kIRSvxquBXSL', 970, 487, '2025-08-07 19:22:33', '2021-11-15 00:03:17', '2023-03-16 09:01:31'),
  (N'AIggWMjrpCdBN', N'uEaYiNcnBLvk', 783, 191, '2021-01-23 07:05:59', '2023-09-08 19:07:46', '2024-06-14 17:55:59'),
  (N'EmUlUDYu mRbLCwEL', N'gLhR', 553, 190, '2021-04-02 00:28:49', '2022-06-13 08:46:24', '2022-11-21 03:04:26'),
  (N'fPkcEF', N'HnUsTKJFiuQmUFWIW', 701, 145, '2022-02-02 20:37:10', '2023-10-07 14:03:21', '2025-07-13 15:56:41'),
  (N'nwHDUmcg -eyaSAMZj', N'cVuEi_AnZ', 26, 851, '2022-05-16 06:44:46', '2021-12-15 04:25:55', '2025-05-28 09:36:54'),
  (N'nfUehDvMQ', N'okRoohERiwx-UPzq', 267, 527, '2021-07-08 10:24:59', '2024-06-28 04:46:33', '2024-12-02 01:44:28'),
  (N'cbCOfuVkC', N'hxNmJCx', 478, 922, '2025-05-11 14:11:41', '2021-04-29 08:26:32', '2020-09-01 13:42:57'),
  (N'giwLgak_gnNvNb_TZErK', N'zoxfxWF_tG', 971, 347, '2023-12-30 15:38:44', '2022-06-08 04:12:53', '2024-01-28 16:06:43');
INSERT INTO [sell_line_warranties] ([sell_line_id], [warranty_id]) VALUES
  (915, 424),
  (657, 950),
  (457, 744),
  (544, 561),
  (431, 119),
  (636, 41),
  (709, 339),
  (881, 968);
INSERT INTO [services] ([service_id], [personnel_id], [code], [nom], [master], [created_by], [updated_by], [created_at], [updated_at]) VALUES
  (860215, 866712, N'h-WRFt__HV', N'APh vibMpjVhEellBYs', 1, N'LmvbjKWg CP', N'WBiJbvVsasVazFwhv', '2021-08-08 09:24:31', '2023-09-26 08:13:55'),
  (24510, 820176, N'NwXEAk', N'ifYOaXYWNVtQ', 1, N'X kGXllw', N'DmaUHsbXNBETSjeXG', '2021-03-27 19:37:31', '2020-10-08 13:11:44'),
  (421677, 653162, N'dIRbLQKRPcGhXmUsCEp', N'lKbhRxZVzViLNnJa', 0, N'x b-xgD', N'lTpWbcob', '2023-09-02 01:39:52', '2024-01-20 23:29:55'),
  (746374, 24265, N'GrSrN-VUpbIEr', N'aBlaOyDpxmaMI_b', 1, N'iBgVvpepdmcKG', N'FES GnIWVbhII', '2025-01-28 11:41:42', '2022-10-06 19:33:15'),
  (571447, 219941, N'TPHzWFdm', N'uAIpRYDrK', 1, N'R-XEwunqiF', N'-WlvJNcdlj', '2021-05-19 16:51:55', '2025-05-08 23:59:29'),
  (132507, 646744, N'uEVyIT', N'AfORNchS', 1, N'DHMqKGOvTJl', N'FJeOdwfC', '2025-07-02 12:38:38', '2023-02-28 16:55:16'),
  (901294, 146023, N'Tdw ZzUCds', N'FzIJSoKiLV', 0, N'Gd_WmZbHZ', N'cqrkiM', '2022-06-05 02:50:07', '2022-02-25 05:19:55'),
  (558071, 859460, N'nrXfSeSJMPJiCnq', N'vCRcXTPa', 1, N'LbHwHbiY', N'aolrYSqEaxlUOgKrF', '2024-03-08 18:02:45', '2025-08-03 17:49:32');
INSERT INTO [session_tickets] ([patient_id], [examen_id], [acte_medical_id], [service_id], [departement_id], [personnel_id], [transaction_sell_line_id], [code_ticket], [status], [expiration_date], [created_at], [updated_at], [created_by], [deleted_at], [motif], [type]) VALUES
  (571216, 248056, 249488, 171781, 963900, 527801, 761, N'gfFxFsYMN', N'nBdqSj', '2022-10-24', '2022-06-15 07:15:15', '2021-12-04 00:48:03', 307391, '2021-07-25 03:08:30', N'RFFtLCpUMyS', N'JeewMH  RgMShZXLXQh'),
  (376462, 356648, 973267, 233403, 351522, 247819, 244, N'tsQrtLAk-IbrE', N'EdpspMd', '2021-12-08', '2024-06-02 19:41:21', '2024-12-26 20:43:39', 370056, '2022-09-13 06:34:39', N'KFVQGXkViP', N'WIN-foTS'),
  (343253, 643373, 315778, 237070, 799125, 495844, 706, N'zsV oA-RTr_HR', N'wDMmwL', '2023-11-20', '2020-09-29 00:35:59', '2023-09-20 23:42:08', 989288, '2021-05-03 20:24:33', N'DVgPmHfB', N'Iq _k_tGoHHBSw'),
  (603129, 475516, 591560, 392881, 222620, 38926, 201, N'Pn-YE-fsCZP', N'TutMQBj', '2020-12-29', '2022-05-02 08:42:25', '2025-02-04 15:05:38', 987169, '2021-03-31 18:31:15', N'RNEqzertGuOoB-FKi', N'GWLheV'),
  (77081, 303497, 522962, 65129, 920628, 655129, 234, N'suqeHHy mmnXZMu', N'QY-tCketZEQDOdCTV za', '2024-12-28', '2025-02-28 20:38:49', '2025-03-16 16:02:00', 87097, '2024-01-09 11:14:54', N'WAGJfqH_', N'eyRysfoEXob'),
  (797020, 830759, 363102, 134756, 677790, 941524, 176, N'MovjUaCZlyl', N'rghinKPXtKLx', '2021-09-20', '2025-07-23 10:27:14', '2022-02-18 06:58:12', 344976, '2021-07-16 12:21:44', N'znHJHbw', N'YJ-ueMjaSnUjC-G'),
  (839659, 750793, 460218, 153499, 876511, 773563, 231, N'JsfZDnuqrxeD', N'lcUhRfxxyh', '2023-11-07', '2023-02-05 15:26:10', '2023-07-10 14:16:01', 397505, '2024-09-20 03:54:10', N'TFQvKTZWGz', N'OzGVK'),
  (704210, 213884, 916128, 28804, 996854, 59360, 742, N'OmIE ijUpFq V_dlIasH', N'sjachSwBE', '2022-09-13', '2022-07-23 12:42:54', '2023-06-25 08:00:32', 461602, '2023-04-28 11:32:28', N'vlRQeLx', N'rOWvrDaJZeB-WX');
INSERT INTO [soins] ([personnel_id], [patient_id], [vente_id], [dateRDV], [heure], [status], [type], [code], [auteur], [objet], [nbreSeanceAcep], [nbSeancePaye], [created_at], [updated_at]) VALUES
  (856055, 35450, 985751, N'iZIEGHyxvzUC fCmT', N'RpelYkdcEnLpET', N'vcWz_FT', N'DIWwCfHs q cMWlzxy', N'snncCUkyMyToU', N'DP-Kq', N'cxkhdigD SGt_DNdW', N'QGJNXP', N'ACpWMSGXhZEXEPIUgsMY', '2023-11-17 01:31:15', '2024-03-25 02:23:17'),
  (399663, 841640, 107406, N'L  AhIEwMQ_VtLZsnx', N'XpPRemAVAoG', N'ObGF-sR', N'rNOOM_GPUvIf', N'QieFzbQYa PKOlzK', N'dWdYuyrdiTpL', N'HNeWLhZqMT', N'--CAOq_FZyvvpIoek', N'_WxUqZGqR', '2023-12-29 09:51:05', '2023-09-28 12:32:58'),
  (910633, 802195, 173181, N'epATTlVVQRH', N's-OQPQQe', N'KPpezZnJJObNHNNe', N'Aegu_NHBlwGmdGQzMwKQ', N'mnSY_wbXtKevqzZOWo', N'gYHRNbjuXIluFkTReU', N'JAnlRSVLCf', N'JvdtOj', N'wJ_UAwOEAQks', '2025-06-14 09:03:23', '2020-12-29 09:25:08'),
  (678692, 444473, 753091, N'-A uLbMmbTZ', N'lHg K', N'zimoH', N'TIR o-IA_MA', N'EVrNta-A', N'-wImirEwTmNDpVIC', N'aMcmEWrd_', N'qsoBjQo', N'ZB rgqyxl-qJORz', '2025-04-08 18:19:10', '2022-12-14 15:31:44'),
  (669134, 978451, 799108, N'KfmGOYdqDwPpHrBFG', N'SCsXVtZU-XzBrpxUP', N'caMFPVjJpWwH_t_', N'wvm-BgDmoHZk V_isK', N'smwlwjYhZwVId', N'raiR_fVXBDOwKfk', N'Y_OqCsnqPWI-OvToTZh', N'PIbIdZIXIIxgRvqM', N'FVzULblwgIW', '2025-08-06 06:33:45', '2021-04-06 16:37:27'),
  (42291, 799025, 393338, N'TnHQuALQilxYGCEAIvT', N'dgrKXVgSwQRakPHjM', N'FUglff', N'ZVgZcFnwZkn-hNCBMq', N'ZOHKeLYCIEQ wR', N'wgxwfcyY_DAaBQM', N'ipNhFmD', N'aEEZRBqyEFC_t-XdOF', N'qtJ_G ajDc', '2025-04-16 01:10:00', '2024-10-01 22:00:32'),
  (415144, 788387, 719873, N'gIoKKfcPr  mp-cnhTF', N'fRckkInJsOKInHujoX', N'OoYIxyTiVMMyI', N'nrBfqvmRdipXVtwFD', N'YFCslqRwczKDe', N'eM-glpCohHCh_fb SZwr', N'fUkjK CEJHe', N'SHKVI aKynWoRPHL', N'KUwQp-_GpwpeeWmq', '2020-08-30 10:48:16', '2024-05-16 00:36:29'),
  (457518, 758616, 876079, N'_bLZHrm', N'YlHCWnRb yV', N'qZ SSn_wpoRb', N'cuBIz hyW', N'VrSRxcGehYAkDw', N'iHaHfUQsbYnYosqfIzbZ', N'TsIAoQPARDircoxokil', N'R-iSnRTZaowekYdn', N'sxlZqfkYdbpZKsRNaXs', '2022-12-26 00:38:20', '2023-07-14 20:51:30');
INSERT INTO [source_financements] ([partenaire_id], [objet], [typeDepense], [abreviation], [created_by], [updated_by], [created_at], [updated_at]) VALUES
  (742713, N'x-vEjlkLNVFYDgk-SYI', N'wZFd aRCkUUSmvpZ', N'ZHFxh T', N'pyODaInXLryMRUsX-', N'KULrLCfCXCXfas', '2022-02-06 20:20:24', '2021-02-15 16:21:32'),
  (858744, N'pPmntmvzeowCQgB', N'AkNbS', N'X-HGv', N'NQFQYt_Q', N'mvclylf-XPLQTzzZQ', '2020-12-23 18:21:16', '2024-05-23 02:47:11'),
  (871739, N'Hx ddxbkOrqlLYKDLuI', N'v-najQety', N'JRXpbnqDP-GBwvA-s', N'xLAYmU_w', N'meRSqT', '2021-06-23 14:28:53', '2020-11-05 04:22:17'),
  (613843, N'p-ugtTaeVUob', N'aOOSsyUDlCWOtkK', N'fhOhbgAImDGc', N'c-peT', N'yJYsyiWwcTMnMx', '2024-01-22 14:40:02', '2024-10-25 05:19:53'),
  (350538, N'XOrT YoeQ', N'qjfPgKT', N'BmZDyiAxSdGBgBe', N'iLnFQ', N'KEMGdPb', '2023-08-26 12:25:32', '2022-03-13 21:35:12'),
  (871370, N'AwSpUMCrT', N'OirNMQMuinIPdpBFgq', N'DQURuZDGgrJNnBo_A', N'DlUYURkY', N'DpilHdLzVCXisUcV-IZM', '2020-11-02 19:41:46', '2023-10-13 01:08:42'),
  (885865, N'cZCIgNghw', N'nSbmwBSM_mU', N'wtXRElq', N'BsdMjEAO-', N'IQFEynLTuW', '2022-07-14 03:10:21', '2024-12-16 08:18:28'),
  (180093, N'YNz nSx', N'xEjWZbn nF', N'ftgdcEhS UkrPjhQ', N'e ucW', N'StSEKAPBwTDdpu', '2025-05-28 23:26:54', '2025-05-27 20:04:23');
INSERT INTO [sous_programmes] ([exercice_budgetaire_id], [personnel_id], [code_s_programmes_id], [intitule], [type], [objectif], [abreviation], [desactiver], [created_by], [updated_by], [created_at], [updated_at]) VALUES
  (852665, 891038, 638069, N'iWlWwejJuct UBx', N'iUPjc', N'_ytQ V_meXoaTBebEvo', N'Up  Yvo_fMdMuyuWS', 0, N'jLHFYwVBqUQitY', N'ynn__GCMxUxijVKIQQRV', '2024-07-07 07:39:02', '2024-09-24 21:37:44'),
  (562214, 263003, 166942, N'wnofHsvis', N'iydNaJty_v', N'hjSC_', N'EluULIlLy', 1, N'NqWl-pkhFA', N'Ek-YlwrKFjybFEJu', '2024-04-17 00:31:45', '2022-01-27 12:53:51'),
  (338067, 331382, 412252, N'xYECBaBvthJlNC', N'lqbpOuactrxjvA', N'NqxJDPYctgMtLTIvv', N'eSkkEBAOrrE', 1, N'GLthvuDvFM', N'hHgxXDGb', '2023-06-04 21:11:49', '2020-11-03 20:29:01'),
  (754994, 169835, 961128, N'_HW_wLC QYoBNEZUrF', N'qTNRBwOOlMITGIJb', N'jFnbbSXbQYjuT', N'FkFjNlNhfdVmEZbtZY', 0, N'AtarxSCMLmQTY', N'EUaFgF', '2025-03-10 04:02:57', '2023-05-03 04:37:35'),
  (118762, 271911, 103362, N'cUSSygVYCfqiW', N'PtSVHPDjEpEOk wi', N'RD-nHazNCnQJZ', N'uW-eRwSfVSKMw', 0, N'O_ym T', N'qsiwBePoAJt_-EEgwunK', '2020-09-03 21:51:10', '2022-12-14 21:11:31'),
  (636936, 865320, 48136, N'WVio_nGgWA', N'ThNKPsC-Do', N'WqlgtFZpaoWsAn-gNlV-', N'OhIpWZmMvFbvMoK-ZCh', 0, N'miFsBZuOy', N'dYPufp', '2021-04-29 11:48:57', '2023-03-31 19:50:49'),
  (347737, 452936, 484454, N'xgRapiiWL TCQufTcOA', N'uwJPdjZYR', N'BbFDkbvLh f', N'TRtVivsR', 1, N'PMPAWablChvPja-QMaRW', N'KnLuugDLaoOxBGryO', '2022-07-12 14:49:43', '2023-03-01 21:53:08'),
  (35559, 993116, 994177, N'iDPCLMJx', N'EOvbmaesVVpc', N'OmSLEbdF', N'ouFaYj-IzhEONohOy', 1, N'JLDbWKaWVCPagUeuCRCD', N'ydBcBgswEm IbyLvm_', '2024-12-31 02:57:40', '2021-08-25 22:15:01');
INSERT INTO [sous_types] ([type_ordre_id], [ordre_id], [created_at], [updated_at]) VALUES
  (882831, 904584, '2024-06-22 12:58:35', '2023-05-29 05:16:35'),
  (992309, 49313, '2021-02-17 10:38:13', '2023-03-16 20:17:33'),
  (931385, 132693, '2024-03-29 10:10:31', '2023-11-10 23:49:38'),
  (199078, 986745, '2024-12-02 15:08:53', '2023-04-11 07:51:41'),
  (682173, 350607, '2022-10-04 00:07:09', '2021-05-04 09:45:48'),
  (875061, 889683, '2024-03-16 13:41:10', '2025-06-04 05:31:49'),
  (370236, 995530, '2020-10-08 06:31:10', '2024-12-19 15:55:30'),
  (832415, 196130, '2022-06-05 12:37:26', '2021-01-30 01:28:12');
INSERT INTO [specialites] ([nom], [created_at], [updated_at]) VALUES
  (N'KSzUvhP', '2023-11-21 23:03:56', '2021-12-04 07:41:01'),
  (N'FGQjNo', '2024-12-26 09:14:25', '2023-12-27 23:57:00'),
  (N'oK xiIshwKKAGSymV_UN', '2023-01-28 13:01:43', '2020-08-20 23:00:41'),
  (N'JAriCuoT', '2024-07-20 14:12:16', '2024-02-21 17:05:39'),
  (N'EuaIUVX', '2022-09-18 13:12:04', '2021-05-15 02:07:36'),
  (N'GEjUrmhxuTJzD', '2024-08-25 20:52:39', '2023-09-10 22:15:42'),
  (N'YPrXKKGf-', '2020-09-13 15:48:33', '2022-08-28 08:35:55'),
  (N'PSLOyppjxdN', '2024-08-29 18:16:40', '2021-11-17 18:55:22');
INSERT INTO [statuts] ([intitule], [created_at], [updated_at]) VALUES
  (N'yDkzHTi--AbCeVzN', '2021-10-02 12:11:49', '2021-01-19 14:13:49'),
  (N'tvhZlWJQCJBjAmXSnBu', '2023-12-23 14:15:51', '2023-06-25 05:57:16'),
  (N'yzpPQLjl-QKOhzuHE', '2024-03-25 19:55:09', '2021-07-25 11:24:54'),
  (N'MnxWLNFk', '2023-01-16 01:49:50', '2024-12-18 00:10:37'),
  (N'gNZqSnBYR', '2024-12-27 19:20:13', '2021-07-27 05:47:50'),
  (N'poJhmaaLvzSPJHA', '2024-03-04 16:26:19', '2023-09-11 05:03:44'),
  (N'hHKoCklYaXPN_ccVahAu', '2021-05-30 05:09:30', '2020-11-21 20:05:19'),
  (N'HrcHfYyKIi', '2024-12-22 06:20:39', '2023-11-19 23:27:45');
INSERT INTO [stocks] ([unites_id], [type_conditionnement_id], [produit_id], [famille_id], [ordre_entree_id], [nature_id], [quantite], [created_at], [updated_at]) VALUES
  (11191, 838384, 912174, 478771, 669783, 964066, N'dBr_knKrvKUqdZUZ', '2024-05-02 05:43:00', '2021-02-23 02:56:25'),
  (618725, 70694, 422347, 129446, 592753, 421645, N'xvEJPHKAFLiDCZi', '2023-07-24 00:03:29', '2024-02-25 14:48:06'),
  (697406, 638997, 789204, 867857, 882382, 725557, N'AC-hHDkb t', '2023-11-25 19:08:37', '2023-04-30 09:42:33'),
  (654140, 833035, 300108, 903439, 630632, 447643, N'mNyta', '2023-12-17 14:44:06', '2022-07-05 02:11:50'),
  (24503, 106147, 756843, 444525, 901975, 340295, N'PoHOwsBNjSldVKA AV', '2023-03-12 06:08:53', '2020-11-24 05:37:14'),
  (902901, 563822, 459725, 473987, 970610, 125037, N'v ixh onFnj', '2020-11-09 21:49:02', '2025-06-04 18:12:01'),
  (281361, 996444, 820629, 163732, 180749, 424262, N'yiKDzIiCs_', '2023-03-22 04:47:03', '2021-12-14 13:18:50'),
  (674581, 264731, 903351, 463532, 157317, 133952, N'-vuklpwM', '2021-08-07 06:22:05', '2024-04-05 05:34:52'),
  (306421, 695761, 123703, 688416, 604221, 378666, N'mMlfADtksJrHOP', '2023-08-17 19:44:03', '2024-09-04 01:58:02'),
  (724136, 270501, 744735, 658806, 751357, 572558, N'hZiHlWGQrDG', '2022-05-17 22:45:22', '2020-08-23 13:40:27'),
  (56008, 502971, 924930, 221289, 846069, 829164, N'ktJTpEWgYK', '2023-02-10 06:50:23', '2022-10-09 10:13:40'),
  (669600, 72694, 795616, 463081, 23938, 780114, N'lmvzf', '2021-03-25 09:34:15', '2024-09-04 08:48:35'),
  (242897, 9773, 710222, 445651, 361880, 15113, N'iphdohFP  Xocmpi', '2025-02-18 12:25:09', '2022-04-05 22:49:37'),
  (430466, 883778, 96377, 895337, 838682, 317521, N'CLSQUk_', '2024-02-26 16:46:03', '2023-05-15 15:21:11'),
  (938171, 601207, 53724, 828778, 287707, 204640, N'sjpwkpGqNe', '2021-02-17 05:53:16', '2025-03-24 00:28:46'),
  (130049, 46143, 760325, 264807, 856005, 797963, N'F_lnBQpt  Y_EbZM', '2023-05-01 14:52:15', '2024-11-13 01:49:25'),
  (23034, 180638, 540609, 537606, 474583, 195440, N'SYJBiKI-uU', '2022-10-25 08:53:00', '2022-01-09 01:55:44'),
  (395444, 373113, 451782, 836614, 199629, 233450, N'ohOhlGbITvRtEdC', '2023-07-05 15:24:34', '2022-03-03 21:52:51'),
  (920694, 2651, 94132, 450337, 621105, 12766, N'VhpduZIhPYuIrNDg', '2024-05-05 11:50:49', '2021-03-08 19:32:53'),
  (558518, 941928, 217684, 441172, 680498, 931822, N'RanZZLBySm', '2023-03-29 14:44:09', '2023-07-07 20:18:47'),
  (249389, 742644, 771399, 126014, 796675, 441537, N'l-eNh kuuII', '2021-10-20 21:44:10', '2021-12-19 02:36:30'),
  (554792, 625583, 468043, 292395, 846773, 346718, N'qpudAHOjzTWZRFz', '2025-06-03 09:01:20', '2022-01-17 07:33:18'),
  (712930, 775516, 390506, 946836, 94834, 522273, N'SIBkQwRqIaRHp', '2021-07-16 03:38:45', '2023-03-05 20:40:03'),
  (621412, 492945, 847016, 26885, 641531, 124895, N'pJJQkWloIjSJGKl', '2024-08-22 01:22:02', '2020-12-28 04:55:56'),
  (734069, 98866, 46929, 66266, 154614, 332267, N'mCTgM vZDGJgyZc', '2020-09-26 02:46:44', '2020-08-28 17:50:59'),
  (190190, 265128, 13383, 663590, 39811, 516583, N'BNcpjZJK', '2020-08-30 00:23:00', '2022-02-22 11:59:09'),
  (883629, 721798, 954153, 226589, 944131, 83450, N'OTdU_dTYPl-QCseyQ T', '2025-07-31 16:00:06', '2023-10-27 21:15:43'),
  (893267, 862793, 544504, 355302, 813027, 138577, N'yUbttGZdIwfYOU', '2021-04-09 02:19:12', '2024-11-28 21:46:57'),
  (30868, 664525, 700516, 512551, 587293, 379530, N'vOlgRxNOFgQXHV-NAP', '2021-03-18 05:07:09', '2022-09-23 05:33:26'),
  (513023, 871381, 179077, 891339, 656448, 600013, N'EdZrbeaBHYpAwVdnXZvB', '2024-07-16 09:53:34', '2021-12-17 19:08:00'),
  (718521, 327478, 735768, 297275, 233548, 84114, N'EagRbqIdrx', '2025-05-06 20:34:40', '2024-02-28 18:14:05'),
  (855479, 428804, 984266, 489635, 859189, 694648, N'SMRLskKDD', '2023-06-23 22:35:42', '2024-10-12 06:15:50'),
  (585192, 764624, 139444, 873760, 378307, 275955, N'sosNMIE', '2023-09-06 08:28:52', '2021-12-01 10:15:59'),
  (121799, 281440, 480583, 660732, 174176, 893462, N'G dlhvY', '2022-05-21 01:54:07', '2022-12-16 10:08:48'),
  (488133, 158982, 390779, 819062, 116617, 610003, N'g_Z_mgOpHA', '2023-07-05 10:07:59', '2021-01-13 03:34:24'),
  (843574, 248150, 212483, 740693, 306085, 739197, N'pBoBUnKUKyybqNop_t', '2022-03-05 21:07:51', '2023-08-17 04:16:35'),
  (546045, 900537, 749340, 355402, 618898, 83811, N'NpYxb-R', '2025-06-20 14:24:49', '2025-04-26 09:50:46'),
  (304487, 188484, 62986, 964917, 434464, 86514, N'UfUQlXNIlPVaRdqXKFbc', '2023-03-15 17:52:43', '2020-09-15 10:32:47'),
  (48184, 226604, 850099, 640104, 217478, 439335, N'ZBxtgyHhrraRZAfU', '2023-10-14 19:05:03', '2023-10-12 11:57:00'),
  (473554, 490042, 371695, 249669, 583591, 26775, N'wFfOHwl', '2021-04-24 12:49:11', '2025-01-15 05:57:23');
INSERT INTO [stock_adjustment_lines] ([transaction_id], [product_id], [variation_id], [quantity], [secondary_unit_quantity], [unit_price], [removed_purchase_line], [lot_no_line_id], [created_at], [updated_at]) VALUES
  (880, 72319, 42, 2490370763327412.0, 8050586286659145.0, 4275803329127704.0, 530, 816, '2024-08-13 08:11:43', '2023-05-24 20:29:58'),
  (926, 877697, 187, 2902482101621403.0, 7375763256043073.0, 1692181116434807.8, 420, 882, '2023-07-28 19:05:15', '2023-12-06 04:04:14'),
  (669, 320061, 804, 9004396232523288.0, 3192789793251568.0, 6972092007700936.0, 937, 83, '2022-10-24 23:33:03', '2020-09-05 13:31:59'),
  (18, 494916, 260, 5548645288549993.0, 1831167610632019.5, 25116006466500.14, 731, 98, '2023-04-18 01:38:36', '2024-04-23 23:47:48'),
  (99, 824534, 30, 7847000684118222.0, 1947412316450676.2, 6290029265288971.0, 149, 488, '2024-05-10 17:42:56', '2023-07-05 04:17:00'),
  (314, 630423, 397, 2001067680523038.8, 1602066417371681.5, 9116419224706260.0, 777, 202, '2023-10-20 03:02:17', '2021-04-06 03:47:26'),
  (28, 561391, 715, 230420859366277.1, 7018596844731334.0, 8469263031105390.0, 485, 898, '2021-11-06 23:44:51', '2021-03-10 03:13:52'),
  (549, 371374, 175, 2087279775798526.2, 5497483835887005.0, 310967356357949.56, 845, 416, '2022-06-17 06:08:06', '2023-11-15 02:28:27'),
  (112, 828207, 845, 5019320758420298.0, 5608547716035915.0, 8050330039736301.0, 858, 730, '2020-09-18 10:21:42', '2024-09-29 03:21:14'),
  (701, 227886, 740, 6636367368107666.0, 3302181455099885.0, 7428529756501799.0, 594, 504, '2024-07-05 17:32:25', '2024-03-28 10:58:39'),
  (745, 974029, 175, 6509935965227927.0, 6815047319967534.0, 8940456641281284.0, 151, 409, '2020-12-02 20:13:44', '2022-04-06 19:06:54'),
  (779, 906335, 871, 7236218418669618.0, 216384812451706.5, 8138429818712172.0, 457, 226, '2025-01-27 21:30:36', '2022-12-14 21:40:08'),
  (176, 299129, 781, 2072238619326849.5, 1447490909857056.5, 7479527850521634.0, 825, 765, '2022-07-02 21:44:23', '2023-06-18 04:02:46'),
  (69, 758865, 539, 4010244840049857.0, 4659240607504466.0, 2256865673672035.0, 414, 118, '2022-07-25 21:55:57', '2021-07-31 19:41:12'),
  (392, 214250, 585, 2512688332226666.0, 5259996144424579.0, 5356904637635663.0, 848, 880, '2021-02-12 08:56:34', '2020-11-08 00:36:26'),
  (802, 524013, 250, 5451414193035172.0, 8479041684408165.0, 5171357898066162.0, 914, 664, '2025-01-28 06:48:28', '2022-10-15 22:55:22'),
  (682, 720903, 527, 6258938420725790.0, 2313251705108545.5, 5022759802046690.0, 178, 533, '2025-03-25 00:15:30', '2024-07-06 02:39:40'),
  (700, 375387, 523, 9587114787539440.0, 6106715229018225.0, 6964373052322985.0, 376, 610, '2021-04-18 02:39:15', '2021-05-26 05:17:11'),
  (6, 812176, 498, 6701101856576870.0, 1760827358207801.5, 223596385137183.6, 759, 39, '2022-08-14 09:58:53', '2024-09-20 22:33:13'),
  (89, 505208, 365, 6402805387315188.0, 4504297716674094.0, 4588602174688077.0, 335, 537, '2024-02-22 09:38:57', '2021-06-15 13:50:43'),
  (423, 910522, 918, 6126517933815623.0, 674292801132233.5, 9458938829065054.0, 24, 272, '2022-08-08 14:38:54', '2025-01-22 05:53:47'),
  (992, 304582, 421, 1276146342428513.5, 9931285503740052.0, 6091322941257773.0, 694, 173, '2021-06-14 02:34:08', '2024-11-04 18:01:43'),
  (464, 896739, 626, 1023562563507911.5, 9382668552513618.0, 5457831794402519.0, 151, 175, '2023-04-28 10:56:06', '2025-06-09 10:38:05'),
  (892, 497517, 678, 2759427977499914.0, 2838607101128685.0, 6019385680308772.0, 981, 204, '2024-04-08 07:32:29', '2023-03-28 19:19:44'),
  (328, 848688, 466, 4776084268258779.0, 4125701002774865.5, 5053245907928845.0, 275, 780, '2021-05-03 00:19:46', '2022-12-13 15:22:32'),
  (885, 240762, 49, 4793072983619108.0, 4887338075522659.0, 7612316050763284.0, 606, 902, '2021-08-31 14:01:56', '2025-01-31 12:48:57'),
  (453, 403049, 389, 4911133704932338.0, 9658322564122614.0, 745478575432807.5, 340, 859, '2022-10-08 23:49:22', '2022-11-30 16:13:23'),
  (480, 28742, 799, 1553120056442710.5, 1204519448438976.5, 3601844354953094.5, 966, 168, '2025-04-08 05:20:19', '2022-05-02 19:23:03'),
  (389, 614583, 867, 2669192770887248.5, 7346161582339579.0, 2732006203494956.5, 866, 345, '2021-11-01 09:30:57', '2020-12-26 09:57:22'),
  (694, 19858, 546, 7447218151387806.0, 2783659570059662.0, 8525392057246812.0, 96, 428, '2021-11-30 13:00:58', '2022-03-24 12:36:02'),
  (239, 862460, 366, 8373069006052185.0, 3955532795581244.5, 5235347303122310.0, 158, 523, '2025-07-11 05:55:54', '2020-11-07 02:14:59'),
  (833, 730822, 770, 8026536366328827.0, 1298058476735024.5, 2064388041398277.2, 337, 640, '2024-10-10 06:51:40', '2022-04-21 22:42:37'),
  (673, 576043, 389, 5414697765576734.0, 2167772725886552.0, 4528920266774128.0, 107, 313, '2023-01-30 23:09:22', '2023-08-18 15:25:04'),
  (63, 160180, 466, 242702978069864.2, 632823577985006.6, 1445831097279142.2, 292, 27, '2023-01-04 16:46:31', '2020-12-22 18:19:02'),
  (887, 39006, 28, 3647523005962721.5, 73354117577223.44, 4269575899767339.5, 120, 183, '2023-03-27 11:40:35', '2023-01-08 15:17:21'),
  (809, 897457, 574, 8279459185423086.0, 8446240787400600.0, 8604184943707907.0, 998, 118, '2024-04-01 06:26:54', '2024-09-26 16:11:07'),
  (230, 656807, 947, 7673218832462518.0, 8653290030308389.0, 1683079436144040.5, 744, 960, '2021-04-14 14:55:54', '2023-12-09 08:20:57'),
  (482, 552387, 242, 1270505504475868.5, 6505445959611662.0, 2174808222000545.0, 663, 958, '2024-08-06 07:25:41', '2022-05-25 08:45:01'),
  (562, 126407, 6, 318251398326261.4, 3276307768072788.0, 8286389965953695.0, 476, 114, '2025-03-17 19:35:38', '2025-07-10 07:18:36'),
  (870, 960927, 360, 6734605642218031.0, 3767906894902948.0, 599273774734545.6, 240, 905, '2023-12-21 03:58:19', '2024-04-27 19:46:15');
INSERT INTO [stock_mouvements] ([produit_id], [type_conditionnement_id], [nature_id], [famille_id], [quantite], [type], [prix], [created_by], [updated_by], [created_at], [updated_at]) VALUES
  (379598, 338273, 634217, 919638, 819, N'kLNOXwEIfgeTJ', 475, N'RYTAlAZDaesjP', N'Qj_Mg', '2024-03-15 17:35:50', '2020-08-22 18:27:11'),
  (924648, 416954, 182162, 138612, 319, N'aCogN', 195, N'KrHNVRFNgICzj OAC rI', N'NmUDONfuYSdYokGzi', '2021-10-09 03:43:52', '2023-04-13 20:27:47'),
  (637098, 698623, 442952, 849709, 917, N'ChnONGSN', 790, N'YTCDPqcjODfLlFOW', N'mMQePauTZw', '2023-08-26 06:17:26', '2025-03-08 12:11:20'),
  (793408, 968160, 994740, 643439, 872, N'mSIIbJwZNgTqN', 698, N'nA_DObvggg', N'fUBKxXe-R', '2020-11-04 15:08:53', '2020-11-26 13:55:00'),
  (376229, 575930, 946791, 285872, 156, N'duhYwkXvBSBu t', 740, N'GX-YcS', N'MCZyzj-VBlFNYmnNkPwZ', '2023-09-29 09:04:41', '2022-09-28 08:03:50'),
  (934019, 956834, 965905, 398473, 461, N'zFbpfbJAgRcNqYGAGeE', 368, N'X-iytGibcdjkHUZcIi', N'ruCFFR', '2022-09-15 22:21:39', '2022-01-05 03:35:25'),
  (182232, 803675, 106907, 83375, 758, N'CIRIOtgxFY NiEMnq', 982, N'UpitprxabbQKxz', N'WmWHVbG', '2020-09-09 23:57:34', '2024-06-04 05:26:56'),
  (571284, 662366, 621934, 162038, 593, N'RRBRSEicRnBDHH V', 479, N'h_mvu', N'DjI s_', '2021-01-16 15:25:56', '2022-12-13 03:30:01'),
  (358420, 808342, 192318, 969935, 890, N'zTML-_mnSs', 67, N'YVMbNalO', N'wtrzTAHyA', '2025-08-09 07:30:41', '2022-04-04 10:24:18'),
  (159375, 322499, 524584, 686664, 330, N'WBquUOBZHRLtjvKM', 216, N'BKOcI', N'RpsvmlRhLf', '2024-11-18 16:10:11', '2022-10-14 23:08:43'),
  (568322, 527048, 550826, 707842, 162, N'NtFrlAFDXgC', 436, N'V_FpiaDFZt jTSoRK', N'PrjUoOPZDORQXIsTg', '2024-02-27 13:04:28', '2022-06-23 14:24:08'),
  (3397, 37390, 378911, 857171, 726, N'BMTnFTKBuXpJLkkStl', 692, N'UqRX Iw', N'PleGAtBsqVcBaSW', '2021-12-07 16:09:47', '2024-11-21 17:06:58'),
  (148779, 140276, 257913, 779973, 35, N'lSsQYqmicGqy', 269, N'tg vzuNXrx', N'cCOgmGUdh_', '2021-10-03 08:10:44', '2022-09-26 15:35:15'),
  (61640, 924056, 482565, 406659, 274, N'D_ccESkpQMgWg', 813, N'XOLTYtNkyVFoRK', N'PpdaTlLQJyKgNeBhSi-Q', '2023-07-10 03:45:32', '2022-08-23 16:25:41'),
  (916949, 185440, 569971, 840264, 649, N'uZhkPYWmYHB KdfpNc', 87, N'nIEwirosMRdOIFHr-wzh', N'WvuHchTOlJb', '2023-02-24 10:42:27', '2022-09-19 11:01:17'),
  (131225, 465083, 23731, 397342, 961, N'U-BSQULqp_apM', 842, N'LAbQmdk', N'RCQ_lhtxaPSgrb', '2023-12-01 04:12:46', '2023-08-16 11:03:12'),
  (38868, 21906, 67638, 474236, 823, N'tFmCmiCHQjp jBNEN-zn', 249, N'nyImv', N'awdwqIh_', '2020-11-01 23:39:36', '2023-05-02 03:38:52'),
  (319423, 588072, 144555, 314713, 440, N'qgHfCHfdyNIIa_CBfcmO', 129, N'TxpRtZDivrkF', N'XquBtBQ', '2025-04-23 00:58:06', '2021-08-26 13:10:32'),
  (286585, 471846, 132407, 279809, 565, N'DDCP sWnDlXTnKnFlGYF', 491, N'CtXdWGzEPTgOoDa', N'ZbasMxv_', '2025-04-17 22:42:14', '2023-06-16 04:15:24'),
  (262132, 933812, 127678, 205340, 77, N'zlL_zHWby', 176, N'db-pNEdfkDLjOC', N'rkTIQHTqTZEjEAph', '2024-11-03 14:39:06', '2022-09-01 05:47:48'),
  (795065, 801704, 459502, 37322, 281, N'WCXIHovscxGXCNXW', 674, N'owarv', N'WywwO-', '2021-05-29 01:21:24', '2020-10-15 15:36:40'),
  (871819, 481236, 13220, 942661, 589, N'cKpHvXm', 184, N'PsaODEA', N'QMEDHKwm_BckU', '2023-08-29 19:08:15', '2023-11-25 00:27:50'),
  (486134, 311003, 736983, 573687, 390, N'-vNYGSxqctZNSzWd', 453, N'shdTYQ-O', N'amRJCSrPxN', '2022-08-07 13:14:46', '2021-02-24 14:20:32'),
  (561902, 968092, 352833, 853627, 18, N'rTYB eeQRRN', 661, N'LwmRQLRGXwXpVrREd', N'PlbdCCmbYJmsSTbzWRI', '2022-11-21 13:33:33', '2023-07-16 17:20:20'),
  (61957, 956669, 147411, 476097, 86, N'J xlNVBer', 261, N'vJldwD', N'TOQyMkLqlHPGWTQlRdms', '2021-08-19 10:48:15', '2021-11-16 06:57:25'),
  (401303, 610099, 350217, 56825, 329, N'upOAVocyE', 503, N'lgQGYSFrO ML', N'cEgzHoOajFCYZnItr', '2021-09-30 02:56:03', '2022-12-16 04:05:03'),
  (778298, 810816, 547524, 423875, 241, N'LwmirpcxGHDsME', 745, N'XISoM yrVrWHS', N'tGzWDcCKAc', '2021-12-11 19:53:19', '2021-09-27 06:54:02'),
  (154651, 713048, 496913, 24426, 78, N'piIGzWFtIhQdU', 646, N'zntvWz-dlCpi', N'J_VQIQxhRuy', '2021-08-21 13:20:43', '2025-06-01 04:49:30'),
  (554943, 178716, 365140, 41002, 419, N'VkwLIkSICKjrfj', 131, N'WPszIYToeplHRXTKPta', N'GfvxZZLuYEk', '2024-04-22 10:19:08', '2023-05-06 11:34:19'),
  (916190, 286615, 896467, 784065, 32, N'yOaigvvCH-DsnBf', 394, N'thpiXw', N'vcgUpZSIgOAtOOkU', '2021-05-15 04:07:44', '2021-02-07 19:07:29'),
  (44070, 883988, 734964, 55533, 56, N'gHyyzKwYrHtckTVxhGQ', 194, N'IlnUXUOF gG', N'r_ZJLUG hBs', '2025-01-16 14:39:50', '2022-01-12 00:54:37'),
  (241020, 307513, 697880, 194838, 435, N'CymJzGTh', 51, N'WKagwLPmJ', N'_cSAyygiAVNsVWqgQ', '2022-09-13 11:42:16', '2021-08-26 02:50:48'),
  (887886, 144607, 434109, 985810, 624, N'-Gfzr', 805, N'i-RstKjM', N'fTSeusqoNVtqICw', '2022-03-27 07:16:07', '2023-04-20 00:25:55'),
  (762414, 796300, 7676, 430516, 565, N'xLhyWuhES_xAbqxUXu', 807, N'MHAlUeWXOtYT', N'oPtzhdDNZpf', '2025-03-20 11:09:18', '2022-12-27 10:21:11'),
  (119692, 337693, 294338, 174473, 705, N'gXxaQgNTKNtG_rY', 860, N'YXvXkrjJeprxmmYClB', N'iNRoTYFTVS', '2021-01-28 20:17:20', '2022-12-13 07:59:58'),
  (709070, 162635, 910815, 66608, 234, N'ClZ mVPf', 601, N'NqxAkDkYgq-', N'WYporSp-', '2024-10-02 16:16:14', '2020-12-06 00:20:38'),
  (764487, 637092, 849808, 536609, 192, N'oN_ltONYxYlAdPeeW', 260, N'ecUjRpbWnck', N'mtLDRQLfVruOvCxeFHFM', '2023-06-03 07:27:50', '2021-01-14 19:20:23'),
  (726383, 91118, 795526, 420215, 813, N'QSQqfr', 298, N'fEnSlP', N'SigjdnNouwOmcHlaf', '2025-02-20 01:47:08', '2021-07-09 22:09:00'),
  (676285, 838404, 669056, 199845, 942, N'OkeVVd- cQDLQQYM-', 768, N'Hc_JCa_ELHMli', N'FBIM cZcqz_', '2022-01-01 05:07:30', '2020-10-18 20:16:55'),
  (672913, 242354, 934456, 186442, 424, N'm nxgbQbzQ_SqDSJw', 867, N'idDEiKEhzGHTBldE', N'bytrBMBzhtzCr az', '2021-01-20 19:23:19', '2020-11-24 23:57:13');
INSERT INTO [stock_movements] ([product_id], [movement_type], [quantity], [created_by], [updated_by], [created_at], [updated_at]) VALUES
  (563128, N'TYjpGIMJWZbFtBOHXg', 470, N'gWtKgM- PwiuCe', N'qTt-bd HjMUf xx', '2024-07-08 01:22:12', '2022-03-26 23:59:10'),
  (978949, N'URwweEZpVVDQjJG', 204, N'iFDieY OU', N'XJKEzTSCCMWAOqs_AvN', '2022-11-08 02:56:47', '2021-02-16 23:09:25'),
  (532424, N'VTdJUcIenmhUD-_Blcd', 288, N'i dmKENGIqKmU_DNyZLA', N'wzaeupv_gowutrEATTJK', '2020-10-05 14:43:47', '2024-08-17 03:35:52'),
  (193653, N'zrz_Uh', 931, N'OQLeSTPBwM', N'odFNUu_pZwjyAcL', '2024-09-09 06:56:56', '2022-08-08 08:33:33'),
  (386629, N'ARLNQo', 115, N'lifoBqtWaTMN', N'rpKSH', '2021-10-02 17:50:29', '2023-04-13 08:20:35'),
  (488621, N'gNjsIxNi', 206, N'clHXPjyNSGrEkR', N'gBZYIgC', '2025-05-30 04:51:10', '2024-02-17 03:20:27'),
  (345752, N'mTDJgsPO HokvSy-vDK', 444, N'GrwtqzvSMx', N'YTDFOwvaHzkBgt', '2021-01-05 05:29:49', '2023-03-01 06:59:11'),
  (319345, N'Vak-VeuqvcocJLj', 868, N'ogSNEgaWxfV', N'IBORb', '2022-05-18 08:10:02', '2022-07-13 13:01:35'),
  (114975, N'EqG-S kIbhPbRuv', 262, N'PqQEgDgrC-qjz', N'QzOdJbdKfTNpPEkw', '2024-02-20 16:38:10', '2023-01-09 01:45:41'),
  (660357, N'oAMUEAc', 182, N'tRVQBbrfcQgl-WCF', N'OElVMzRoCWfyiKPLyMC', '2022-03-01 19:48:58', '2023-02-05 14:13:09'),
  (894791, N'mO__vQgJtXaVCZEiYAE', 795, N'eGr_ydxF', N'QnuFrMafWAkBHITQQG', '2024-04-23 18:01:07', '2023-09-22 20:17:44'),
  (817819, N'KhknKrpbgEjertJAB', 35, N'DcrRpctfxgyG', N'sIAl-', '2025-06-29 22:01:28', '2024-11-23 03:09:01'),
  (606539, N'OOVhX_hcCABpndeyfe', 802, N'tBUhsxyfFjZlgN', N'UHePaVgZJGQMpQOBB', '2024-12-22 08:11:33', '2023-02-23 18:10:56'),
  (839350, N'DoLYPBabfZlklHWfWkN', 668, N'QXpEw', N'fWyb _nhOloAoJgnKUI', '2022-12-01 14:25:23', '2025-06-17 19:44:32'),
  (305863, N'LhoGlrHInkCfk', 839, N'IzBhRscbOVyDMBh', N'GHWpjOsmML_JbIX', '2025-02-01 12:29:19', '2023-04-23 04:06:27'),
  (73727, N'PCjCzpcSkMIuI', 250, N'PNMTzutYCTMWKtlAiqHc', N'gZzJE', '2025-06-15 01:01:04', '2023-11-12 13:36:54'),
  (936564, N'WWrWvOORTTu_lKUZvWE', 680, N'hvkC-knX', N'jsX-lKtidraGQXvnNXCP', '2024-01-05 17:37:11', '2021-03-21 00:09:35'),
  (250328, N'JWCGlvRqlUmtj-VC', 440, N'PGizwbLTXX', N'mOBucfxoPhES_Mdh', '2022-11-10 23:02:51', '2021-08-18 15:49:16'),
  (309894, N'JQfcXW-NZuB', 150, N'YfhcFrXwRWlR', N'xDBwocDy', '2024-05-22 07:20:55', '2025-05-11 16:43:24'),
  (868835, N'ZIvY_uNTn_nlNiyTUjFN', 629, N'OzS_u-VQ_wU-', N'pDQMC_P', '2024-01-12 15:59:36', '2024-09-07 01:50:20'),
  (361509, N'R-XUP', 179, N'eJufLjIHa-lA', N'UTPaxV', '2022-05-16 04:19:56', '2022-03-10 06:02:44'),
  (456245, N'E_StQRwMgzMsuUr', 637, N'Bloq-pih', N'SErjWNyvRUxvVyHFrJRZ', '2023-12-09 11:43:03', '2025-04-24 03:46:46'),
  (997718, N'ntUwd', 538, N'RvOTFmZoyCCBM', N'RmmVSLsMulZXVaFNj', '2024-04-01 07:33:31', '2020-11-10 16:05:30'),
  (110966, N'EjopLGbhoWZrbee', 378, N'kdQeAtyf', N'qtQDFO_gxdA', '2023-01-09 17:26:01', '2021-01-06 18:52:48'),
  (835651, N'rZgvtwsEVZKw_jv QPe', 31, N'CPgUPbY', N'jlujrPfo', '2024-03-03 02:04:38', '2021-02-12 07:49:17'),
  (72588, N'Q xBNlDAWrd-c', 766, N'nraubPLxEzeYbAwmWw', N'CNBcN', '2022-09-02 05:04:40', '2023-11-07 00:19:01'),
  (963984, N'obmOpnRASs kqZLxYKk', 822, N'JoxHdA_ctPL', N'wkmTssCDJ-sd', '2022-06-04 15:49:22', '2021-08-29 23:44:55'),
  (492252, N'_x lWXNmUALigJNI', 296, N'vUbq', N'tuaXExvKbkq', '2023-04-05 19:07:53', '2025-05-19 13:22:13'),
  (284573, N'suRPDhzGwbN', 304, N'LMqdTNzTEV V', N'ttUwSCmQwGG', '2023-03-19 19:49:42', '2025-05-23 03:13:13'),
  (468687, N'bEoXY JBs_jvNPtx', 686, N'T-J-KryRvUamxz', N'KyfFfFopQAEBDrEtjl', '2023-06-15 15:41:15', '2022-11-15 17:30:40'),
  (233323, N'_wDEq_xpLTCB', 534, N'tWHXKVjfLdLSeqepu', N'zvCMWNcUNSe', '2024-02-12 07:26:33', '2020-11-20 01:10:49'),
  (341534, N'gNtvFNwgd_YDKexHZa', 633, N'Sv I-vnHfyg', N'U-DTCR-Kje', '2023-06-12 15:07:27', '2024-08-06 11:58:40'),
  (467129, N'_KUXJ_h_aJsPIIX', 471, N'aGwZjJSWNzpEtzshZyM', N'zkusxUr', '2022-10-05 05:54:58', '2024-01-02 16:23:37'),
  (668736, N'zIpFh', 768, N'-TCwxlcAJrm', N'ugyLg aFmFYixvOKik', '2022-04-04 03:29:16', '2025-08-01 20:35:21'),
  (495470, N'wgHEhfeT_ A', 393, N'WBIFdsbpazWGUbrj', N'UIlduDy', '2020-12-01 05:44:12', '2020-09-14 23:14:13'),
  (661989, N'MvbcIrkzQAJoioizabJD', 527, N'bVErAPP', N'y oksqqNMVMc', '2025-02-18 11:51:33', '2022-12-31 15:35:43'),
  (261189, N'_uCYypQinaN', 307, N'XfHTAzzjgWq', N'VSrM-gZjtqOMyk', '2023-11-24 02:44:35', '2022-12-24 03:17:43'),
  (653789, N'lvNKAnMCUvDBlDJRz', 332, N'DH--uheWL-wv', N'cjnQcli QKDvKzeiK', '2025-03-30 14:18:33', '2024-06-14 07:07:25'),
  (749723, N'maelWz-nxYpwyhc', 318, N'foEGUPZycfsDsjS', N'IAiQ_tKLfGg', '2022-06-04 15:07:51', '2021-03-04 02:06:47'),
  (586809, N'hckax', 308, N'vrlQO_UZwodZ WOyodbO', N'zywXuyHslaFFOIf', '2023-04-24 11:40:34', '2023-10-08 14:19:50');
INSERT INTO [stock_sangs] ([donneur_id], [nombrePoche], [created_at], [updated_at]) VALUES
  (777928, N'W GKt', '2021-08-21 18:47:28', '2022-09-19 08:33:00'),
  (417167, N'NcpIhWfw', '2021-07-09 23:18:43', '2025-06-20 19:41:36'),
  (300138, N'VPmnULQXbNE', '2022-01-14 21:12:34', '2022-10-25 04:56:56'),
  (995364, N'-JeCMyQzEZ', '2024-07-14 17:40:23', '2020-11-17 01:52:55'),
  (928766, N'tqPtd', '2024-03-24 18:18:44', '2021-06-14 08:29:51'),
  (538926, N'UWIw-MxoacjkT-sB', '2024-02-23 07:30:52', '2023-11-10 17:14:55'),
  (683346, N'zLnXAvnrwTNtuSNfrmB', '2021-11-24 08:20:55', '2022-10-20 04:27:30'),
  (948792, N'DztuLBcz', '2023-08-09 15:21:35', '2020-10-12 19:43:23'),
  (266452, N'mcUH_nHUZBKhl', '2024-04-26 14:37:44', '2025-07-30 11:46:46'),
  (665431, N'OYAftkIjCzIIvpk', '2021-01-31 13:59:48', '2022-08-30 19:00:45'),
  (568768, N'PegwtdXyXiNvzuruW', '2021-12-16 01:02:49', '2023-11-29 23:19:44'),
  (360158, N'NeydHMQFKb', '2022-01-22 12:04:55', '2022-09-15 04:08:44'),
  (298746, N'yDZcMTcbV-OhKZfCNHt', '2021-04-18 20:05:24', '2021-12-27 18:04:26'),
  (797608, N'XzeRx', '2024-06-30 23:38:20', '2020-09-16 08:25:25'),
  (222933, N'XFdIlqXQlnBp_JjLmP', '2022-12-17 03:14:57', '2024-05-11 14:05:43'),
  (897454, N'fGKVJAVVebQsjvuPHPA', '2024-11-29 20:07:22', '2024-12-28 04:45:08'),
  (258574, N'dUskzOzuFV CRn', '2022-06-07 19:46:23', '2022-09-08 19:16:18'),
  (744080, N'aBMUfxpUHTZskVoHzlUz', '2025-03-31 14:28:59', '2023-06-27 20:29:12'),
  (687178, N'LuIx SP', '2024-03-03 20:37:50', '2023-08-11 22:30:38'),
  (510215, N'c_-YpwsU', '2025-08-17 23:47:44', '2022-05-17 11:03:25'),
  (405804, N'vqVKuDJGJFoi', '2024-05-08 01:52:39', '2020-09-13 11:28:44'),
  (986539, N'JMXKNynqsuvYdnsl- qH', '2025-07-24 23:38:54', '2025-01-01 12:42:01'),
  (774723, N'KregmkjHZx', '2023-08-29 12:53:13', '2022-06-22 04:44:33'),
  (974666, N'LI_QqB_QWeLPwBM', '2024-11-13 05:01:18', '2022-01-09 04:14:51'),
  (929528, N'TdMVhZj_rEuUfoqqdJHp', '2020-12-04 04:45:12', '2024-10-20 06:01:33'),
  (924430, N'ZpOCiU', '2022-04-26 17:18:48', '2025-07-17 04:13:35'),
  (569000, N'Qv_LFohM', '2023-06-14 07:57:38', '2022-09-20 01:59:38'),
  (282923, N'AfDoFHK N zrkgBR', '2020-12-02 15:32:07', '2023-06-19 17:38:25'),
  (303458, N'U-nzakjOZ', '2025-07-24 04:13:15', '2025-07-07 07:47:54'),
  (582116, N'kEyXdPhGAAi', '2020-10-21 21:56:02', '2020-09-19 05:08:49'),
  (146140, N'MRnrIMW ryZzQcecRNw', '2022-04-26 13:00:28', '2021-09-04 07:33:06'),
  (510607, N'GTv_nLGUJM', '2020-12-15 22:13:37', '2023-09-21 19:23:06'),
  (659227, N'LncpVpzXljbGHMGbXlHF', '2024-05-17 21:42:32', '2023-09-29 01:43:27'),
  (314074, N'qDbzv', '2024-10-06 14:02:52', '2021-07-03 13:20:59'),
  (196642, N'CtmmHzFvVNfkdYAot', '2020-11-20 08:19:28', '2023-03-09 06:09:56'),
  (477827, N'UyJVmwQWEf', '2023-06-19 09:27:42', '2021-01-04 20:25:01'),
  (797857, N'ApEftMMEzRuGfkembTCV', '2021-04-23 09:26:19', '2024-08-25 06:43:41'),
  (804155, N'QCb wgKzYtli', '2021-05-06 00:38:36', '2021-05-01 10:59:41'),
  (85045, N'jHBcmXBX-VFu McrfUOs', '2024-06-10 19:05:08', '2021-07-24 10:14:32'),
  (710063, N'AyitoZqOZrejbn', '2021-11-18 13:59:17', '2025-03-01 08:48:21');
INSERT INTO [suppliers] ([code], [personne], [nom], [sigle], [compteCollectif], [qualite], [enCoursMax], [nContribuable], [nCNI], [adresse], [telephone], [quartier], [raisonSociale], [created_by], [updated_by], [created_at], [updated_at]) VALUES
  (N'jHVqRaqQceiNPXvIlV', N'inITeC', N'QuexMgwDNOFrGaC', N'yPYhhFDKzV', N'tcOt-ZKCFtgtB_YWs', N'UhxEThAziLLNMgv', 437, 376, 593, N'CSxyhrBQENOlAetH', N'PJxUZ', N'HJkQYDca', N'XOmygj', N'lx LZGgN', N'XICdw_ffgyiHHRTWEP', '2022-01-30 04:53:46', '2025-04-05 15:22:22'),
  (N'N-Su', N'L-PaVYal', N'tWKVTh', N'NxSEChpR', N'NBHrZ K_ nlnfldecE', N'OCFrGCItifpZY', 27, 614, 493, N'_lQSfzoK', N'zKOHLhyinntteJkuZTw', N'qAmmhdohkpp', N'pxHYDHrCEkvK_cIKai', N'eCaSHS', N'INRpUn', '2024-07-07 06:24:08', '2023-11-28 12:50:38'),
  (N'heZua', N'gALhcXLTJlBGRk', N'keetrUW', N'bVqPjgI_GdcR', N'T-UxrtpCpjAj', N'kV IzDXbYtHTHiPA', 419, 948, 977, N'oLVAyoVm', N'BmSOYvmVOtqSHfmt', N'waWtgsyPDxkC', N'lIzIEjx', N'v_xRsYenMXo', N'EnOaLUYaZBoUwGQ', '2020-12-05 05:52:41', '2022-06-13 23:19:48'),
  (N'UVuubzZOISUIQOA', N'gKY RXhk', N'_fhBPc', N'tLYBmJXWEnWFmE', N'wegni', N'OpswNFMb-v_fqqULrQ', 867, 631, 300, N'ymY u N Cf', N'KlFWQCFR vLwe', N'M_fmlaPTxMLGv-o', N'ifVOx gIdWK-WG -zqw', N'sgheq', N'gNMPJdLJq_ B', '2024-07-28 13:08:12', '2025-06-27 07:27:30'),
  (N'XMgzQ', N'XbjTngmrU', N'lq-Mq', N'aUOOLg', N'SSOaMPYkw t', N'gXVjamkCMJ', 3, 234, 846, N'GMgFVPTZsH-uAioreLQ', N'veRmgjRVcaP', N'Gsmqm', N'MODXtExVDeqyeITkRYZ', N'UWVWhHbalHiWr', N'puVblP-Wm', '2021-09-16 00:18:10', '2024-06-28 07:59:10'),
  (N'TXi-wwvhjzTmC_TBwJU', N'-UCqdQBKUs', N'wDKvWpBlqCM', N'LOvHbQQHfMtXs', N'wFyUxcfIbVGsEnJZDdS', N'HnYuJrfkYJrdL', 976, 522, 69, N'srt-EjiRXkNyU', N'J_GJmP_ aeOnK', N'uXQ aoiCXwm', N'dGjbkeYtcNSYRAP', N'HrUvBsYPv wfaZRp', N'DQmCa', '2022-01-17 02:34:51', '2023-01-23 13:53:14'),
  (N'lFKqIwUMvADyCAGCmljW', N'sEIGsrBKzYFoY', N'QOVIY', N'dnQTgmS_cA', N'RpsiFi-TQkR o_', N'OvUAVVszbuhWd Gs', 328, 247, 960, N'AvwpNlExoOFwRSe vrz', N'UIQbmVDmQpi', N'aooWk', N'QrUigZJbbMcWHbrmuYfz', N'iYPiEDJK_G ISbc', N'RMcLLoWlipGPpdAS', '2025-07-09 21:25:47', '2023-05-28 01:07:59'),
  (N'WpUgCe rMEYXzyLb', N'aqheXijBXpB', N'_lKAzUCmIU', N'HVFzRihpFIXFj', N'tZaLnlyhgfnYlEJSuxiL', N'ipBMZlFU', 543, 793, 620, N'zHiUC-prxUZIzMjN', N'oheeJWbfFDHWGuRt', N'axrv-eXZ', N'QgTadMof-FGvkCJKi', N'rLbxEt', N'sY HJHbNGalLp', '2022-03-18 12:20:23', '2020-10-11 04:16:32');
INSERT INTO [system] ([key], [value]) VALUES
  (N'eFAkLjUWFIpaPsq', N'_pywq'),
  (N'YUVGGOQYWcZjpZY', N'QaOxXlTuCJGFyDzal'),
  (N'VTpfKNhzZsRRtsEjs_S', N'-ldmwSbkgMmhh'),
  (N'qkUnCaSsWVacWLTnbSO', N'BqJEbOOnUP'),
  (N'czjZhZAfTlKZgf', N'eLjidIIzK_GFQ'),
  (N'OR_jn_QsJ', N'FgVHVe'),
  (N'_BSIvfNn', N'_RpRcnTEq'),
  (N'lrEJROoHITYAHFpIUTH', N'jzqCFEFBGqp');
INSERT INTO [taches] ([activite_id], [personnel_id], [code_tache_id], [intitule], [nature], [extrant], [debut], [fin], [desactiver], [created_by], [updated_by], [created_at], [updated_at]) VALUES
  (626293, 960795, 827833, N'kKsLjG', N'dXRoEtOKvyA', N'Gw Ab', N'FdbKgaUKnblgcFIuU', N'YdEJzpiMz qBZ_n', 0, N'lEQzkU', N'tXSRoAwb', '2022-08-01 21:12:49', '2023-10-03 19:26:31'),
  (998726, 216857, 822827, N'_eeXnf', N'pMcLYpnjscw', N'ECnuVv', N'IHoNFd Ol_D_ei', N'pEcdZ', 0, N'iV-knLiAp_XUC', N'tGoyqfCCSop_tkc-', '2021-03-25 03:51:52', '2020-10-06 18:36:18'),
  (895135, 73809, 716039, N'AHQLYcrCetq', N'lDMdnlOGxm tavXhlhQ_', N'kDQj-xO', N'KQIdAUAJDYFnwFrup', N'XwtixAg', 0, N'QpBecQYDB UomRCo', N'tObHbtaH', '2024-12-14 23:10:29', '2023-02-28 19:32:27'),
  (284069, 386735, 300269, N'aoUQVLgZPK', N'OJKEA', N'rkD-YoyTn-', N'ktMpUUmgTGJz', N'hQKhUpNY', 0, N'HRtJwwKr', N'tOdiDRewWTUtJc', '2025-04-16 18:52:19', '2021-01-25 15:07:32'),
  (751906, 387673, 683018, N'fY vZXfWLknhqtQoQB', N'jWBoOeCplCWsTtN CfLY', N'wAVkZKGDBUoBj', N'AmexGzqtuUWKYwbCTT', N'ZfufwYPmAbgbtgJ', 1, N'zzLur', N'uZbWufIMSz xNe', '2022-09-24 19:58:31', '2021-10-17 15:52:32'),
  (515829, 538350, 929275, N'ZRx_Ti WmbTZn', N'yHakB', N'WWMZbPycVsYKA', N'UcyB NyQhKGhbfz', N'nnqWFicqlk', 1, N'ogY BwIXhxOTZnii', N'N-fwoiwSq', '2022-08-13 10:42:41', '2025-06-08 01:49:26'),
  (604731, 336205, 561855, N'LrxjKXpi', N'erQGkpAoPh-bIPaYJ', N'KCgPf', N'QaYWtegrkXvfuRchN', N'ce- h-IVpf', 1, N'fAMbEdbRmKEWISvx_', N'fyNxfjW', '2022-03-13 14:25:51', '2025-03-29 12:02:31'),
  (435556, 894474, 76112, N'hRj_rvBv', N'GSIaR', N'lkWiVd', N'yJHEsU', N'PQfLlyjWqQpECAV', 0, N'rEJxwL', N'WdZsPCZs_UFWse', '2025-05-26 06:09:18', '2024-02-23 23:27:32');
INSERT INTO [taxes] ([plan_comptables_id], [code], [intitule], [description], [type], [sens], [created_at], [updated_at]) VALUES
  (125651, N'ptsDeOeG', N'PywaZmfTWHOB-h', N'oAzAVOSsz', N'kJBQXBvxEO', N'EDjCLeKaj MMcZsX', '2020-12-03 03:43:21', '2023-07-27 20:29:21'),
  (462283, N'nSjxXN', N'kTwLLdISemard', N'ZPZCD', N'mywCpShzUJRoRNXy', N'ewerbwxqNMlT', '2025-03-25 08:54:37', '2024-08-25 11:58:38'),
  (328269, N'oEjabxmMB_m', N'X_TGJczlpvQ', N'QXNxGFX-kOvc', N'XA-STz', N'LNrxmjXGA', '2022-12-02 23:21:56', '2023-02-10 12:23:13'),
  (351192, N'uGklnFniP', N'HYq_xf-eGfourefFRVLq', N'QMERCl', N'bDSoCSXuAZhxQcQemkv', N'NNCMtzJgy', '2021-09-18 03:28:24', '2021-06-16 16:51:44'),
  (899644, N'exhhtE_X_s', N'BHqFBKGVv', N'vjTiWaPNzGQgoPb', N'P JLpe tyVJo', N'lXOVHldt', '2024-11-17 22:14:07', '2020-09-20 23:45:59'),
  (702833, N'FxQfgls', N'uWORyYxIAIbrY', N'oQoAfWUjjMlfCio', N'WUUtfr Xof_khmP', N'kRMCK gSvDUJuUciRG', '2021-07-28 12:25:16', '2021-12-23 11:03:06'),
  (262959, N'LAnUELC_IhqiFO', N'TBz_TmcrurSBgw--ORwa', N'FLMXPadAVFplhL-i', N'VPaWoyaoAnuMu KCW', N'kSrCrGnU', '2022-12-12 08:36:01', '2024-04-15 19:24:51'),
  (217789, N'gKylbJZzpVMbk uJd', N'gICeTZSUYALEVsCjD', N'jbDOYYSQFmFz--JI', N'NiSruoWPshopaLtq', N'BJEYUKwFiB', '2025-06-20 17:02:22', '2020-11-24 05:57:56');
INSERT INTO [taxess] ([plan_comptables_id], [sectionAnalytique], [taxe1], [taxe2], [taxe3], [taxe4], [created_at], [updated_at]) VALUES
  (451325, N'LFNg-sJxsgmCO', N'wGJlWRaXGVw-L', N'fhjiAPtGXbfVH_kj', N'lsRopOp_nStlIMPl', N'yqHgFpkqoAHDgX', '2022-11-11 20:08:55', '2022-03-19 13:05:41'),
  (227532, N'LrGOiBaSQLNYVh', N'ixAtx-tLhFCFw', N'Mjl q', N'_RSToaclyoGS', N'OMvUBxiLDFIUwCcvZhh', '2020-11-10 07:26:46', '2021-03-30 17:21:46'),
  (648453, N'u-zifpYmKXTqmD', N'xaMqZjLrkKqYj_wkgMDd', N'oSdrMdOUf-wTQou', N'RqFTijxeWUQXF', N'mXIBwTDi', '2024-11-20 16:10:40', '2022-12-30 09:02:22'),
  (846532, N'CAEwsW_HkIuTBU', N'iA_RkG', N'DA betbBZMyIziQCwb', N'kePwc-kcxxYhfVtmCf', N'LrZHkskxq', '2023-01-30 20:47:18', '2024-08-10 02:55:09'),
  (300701, N'dJjqLZwSBa__Fkm', N'l qEIFO', N'VBYFOBzbRVj', N'TdlUOPMtG OkY_wde', N'DHWPgnMkoplTc', '2022-07-21 17:51:56', '2024-09-22 22:47:16'),
  (723277, N'YvFgB', N'UuyMBHBzMQx', N'FbqbviTnM', N'kRBuOnyvtErx', N'BUprUey_SAqii-_', '2020-10-15 00:01:33', '2022-09-20 19:49:33'),
  (119546, N'IaVadHwpc', N'rASJk', N'QWWFykWVKZeCLFsmHAM', N'ksjsXJkQjafEuKYRH', N'W-ExfcOPGWsBlv', '2025-05-12 22:23:19', '2022-08-17 19:07:23'),
  (106542, N'eDcetU', N'mOspeTHnD', N'WpqrU', N'WpzER-EZBVUkv jIIgQZ', N'jgcp_WZWDGCtjtOQH', '2022-09-13 11:59:05', '2024-05-23 01:45:21');
INSERT INTO [taxe_rates] ([name], [amount], [is_tax_group], [for_tax_group], [created_by], [updated_by], [business_id], [deleted_at], [created_at], [updated_at]) VALUES
  (N'rmGOU', 9447.48, 1, 1, 12329, 423287, 827655, '2022-08-29 15:48:24', '2022-03-08 01:43:11', '2025-01-06 20:19:38'),
  (N'NbAjXuRhNQYw', 5395.65, 1, 1, 938020, 894338, 429415, '2024-03-28 00:08:29', '2024-01-23 18:34:50', '2023-05-19 12:45:53'),
  (N's-sTgQ pcZcIv-z', 8885.99, 1, 1, 294906, 299627, 942420, '2024-11-07 10:31:21', '2024-08-22 15:35:16', '2025-03-02 03:18:05'),
  (N'oFWTrfem', 3385.14, 1, 1, 212215, 437992, 806365, '2022-09-10 02:00:18', '2024-09-01 00:50:28', '2022-04-03 00:48:13'),
  (N'vVwRSNurPq-R', 4046.47, 0, 0, 52002, 919460, 323030, '2023-04-05 21:53:16', '2022-09-20 07:40:53', '2021-02-08 06:58:41'),
  (N'ondumUYSALjlYa', 9140.46, 0, 0, 351041, 980183, 583258, '2021-11-09 07:23:17', '2022-01-10 23:16:15', '2021-04-17 00:09:57'),
  (N'kDdebHf-xWxJXBA', 736.42, 0, 0, 327263, 512344, 301888, '2020-12-24 01:55:38', '2023-03-04 12:15:34', '2022-01-06 12:11:16'),
  (N'hcnrhLkIvaRug-apIe', 9579.44, 0, 0, 408286, 764611, 575600, '2023-05-24 19:21:10', '2021-07-12 17:26:39', '2022-07-16 04:12:05');
INSERT INTO [tax_rates] ([business_id], [name], [amount], [is_tax_group], [for_tax_group], [created_by], [deleted_at], [created_at], [updated_at]) VALUES
  (97, N'lLuRzRkJNLgRg', 4246.8, 1, 0, 401167, '2020-08-30 22:15:26', '2024-04-30 23:55:54', '2021-10-14 02:23:37'),
  (357, N'FPPFANZ', 9090.11, 1, 0, 582191, '2022-09-10 21:06:43', '2024-02-12 21:53:22', '2025-06-16 01:41:57'),
  (395, N'skA-r', 2629.82, 0, 1, 325982, '2024-08-17 23:17:42', '2024-01-29 23:01:04', '2022-03-21 07:40:38'),
  (454, N'sXXR-jwsbzfoJtmaUdj', 4775.31, 0, 0, 721772, '2024-09-25 22:16:18', '2025-03-07 04:43:03', '2024-05-11 19:05:41'),
  (629, N'dK-hb', 4042.7, 0, 0, 537242, '2022-03-24 06:11:27', '2023-06-25 18:03:00', '2021-08-01 03:39:41'),
  (775, N'cpUyVtSIPNeFZG', 3436.09, 1, 1, 237460, '2024-05-12 18:37:25', '2024-10-15 15:39:56', '2020-10-20 21:07:16'),
  (309, N'Ufu_kfTaaflL', 373.73, 0, 0, 595433, '2023-03-27 12:39:57', '2023-10-19 08:41:18', '2020-12-08 17:28:51'),
  (727, N'FUyYne', 7567.6, 0, 0, 307851, '2024-04-09 15:46:37', '2021-07-29 15:29:58', '2024-06-29 09:27:43');
INSERT INTO [test_analyse_laboratoires] ([analyse_id], [nom_test], [resultat], [unite], [valeurs_reference], [commentaire], [created_at], [updated_at]) VALUES
  (245963, N'MaSLqPPXcLvsg', N'_c_jLLD nWzLiUyEQWt', N'X FGhhiOkeJ', N'XaVTn_wOaswlHPx', N'wJjdMSCweHy', '2023-01-08 22:34:56', '2021-09-12 11:09:21'),
  (638993, N'jfbnW', N'wSoBtyZiQv', N'kfkYsDXH', N'AwXSQEqfUE GguQgIGwD', N'CBAlWZQdINEuNGzt', '2024-11-05 09:57:16', '2024-04-10 12:59:22'),
  (80169, N'dJFZFHVpjU', N'KynyY', N'DQtoH', N'zIgaIlxGcPgCtwRIfXL', N'WnTk', '2024-06-29 19:24:56', '2022-12-07 19:02:27'),
  (29875, N'YLBDl_zifjHIXgw', N'hPNOyvI', N'wyQTj-Z _-mgj', N'ILVesPvH', N'JRtjpLoVjkjaDqWOf', '2022-10-03 22:06:25', '2020-09-01 00:51:52'),
  (427182, N'OdfolRfQuISgWtZynrAX', N'MpalSxpjeQBS', N'f YHzypjKZsRWqAiITWD', N'TUnPYSiD', N'RNtHe', '2021-02-03 04:41:28', '2021-12-17 05:09:41'),
  (386805, N'KQtM_fR', N'hBGJW-J_UDIPiSe', N'BNOCdryoFQ', N'OZV PnGXYJiUbMyQ', N'ajlSgypWYCXkP_', '2021-03-22 21:33:52', '2020-12-14 09:23:18'),
  (476409, N'DXIdOB', N'BEd-fUsDOdoMFcUBNpb', N'ZgPXptnbYFH-j F', N'VooQnqzm', N'dzPepGQpmskE', '2021-02-14 07:29:59', '2024-12-15 04:44:36'),
  (789737, N'VFEWr', N'rfNiokIfGhxgcpIF', N'JJVTHfqfaguaznZgMq', N'Uyy H XK_x', N'D-ZTGPSYAqZNtRRw', '2020-10-19 13:33:23', '2021-05-12 21:21:25'),
  (607991, N'KMElwEhaNPMDtQDHN_v', N'DfApCapNk_DyzSw', N'qiUpYMHFArqWGxljqZ', N'gbFJsjtKPcNnkEDWG', N'NVDVdREJjTvWtWPLvJt', '2022-04-24 08:29:28', '2021-10-31 13:13:16'),
  (363201, N'R jxUYdpoIx', N'dYfsMKBpDZuTTdJEeH', N'R-eoRyrRofLrjXNdKMHe', N'iFdxjsCQNRt--Tm', N'fzuwisqXPkUxaNfdbLw', '2023-12-09 05:48:04', '2024-11-20 12:28:03'),
  (850217, N'fUhRmyWsWMx', N'zyRdcWUeqGl', N'YXQQJX-BrutaAcDRYm', N'aNvzCGgpBNmKLh rEI', N'_Gd_ guxX_Tq', '2022-10-12 05:40:24', '2021-10-09 15:47:15'),
  (943522, N'HYhKLfIdL', N'KeUvnRIXKKgJa', N'_cOeQBiiON', N'HNoIXLgl', N'anamNI', '2024-04-04 11:17:24', '2023-05-04 23:41:00'),
  (200355, N'UJRAuQoT M', N'XgjtfgO_rJG', N'phpZJBsnqN_', N'HoPnh', N'MVXZQHZwvCYgu', '2021-05-16 06:40:51', '2025-05-07 00:47:03'),
  (784992, N'goEcZJZHJHPAMMkclSE', N'aYPunnTAdCniSWA', N'MIB -ASMM', N'vMRIVbSIuqQDiYBBiU', N'ZwPzEGbjlOegzW', '2021-08-15 05:53:15', '2023-11-27 16:08:31'),
  (429736, N'fbFRuHGXqnZTP', N'ZDpIplSOjW', N'iaapCG', N'qPSZhOmIZTtIk GdEpXP', N'qVwfhsmLHACBywgJqq', '2025-04-02 13:47:49', '2023-05-15 09:41:36'),
  (861413, N'-iidBjWbsUCCSiyB', N'FHAsaGP', N'IawCCZfwEuUOEJP', N'rhgOID__t dT zbh', N'AWovZiPlpxkw', '2023-05-31 15:50:03', '2021-06-10 14:01:53'),
  (879367, N'JDiAzzsxEpv', N'WWWxQpY-aWfKe', N'AnogADLqDFOT', N'CzJmy', N'zHszwhLkZklexDtIi', '2025-05-15 23:21:51', '2023-11-23 20:18:27'),
  (150451, N'wIiJOghGDjKk', N'rJW_vfV-SCe', N'GDSqpAV', N'XrkdJzS x fZW', N'DKv_COPbSIdfcu_YU', '2024-01-17 04:43:06', '2022-01-04 02:42:34'),
  (387998, N'c_RVBO', N'CgTvawtYrfdRCK', N'mwOsQl', N'DFhXyw_', N'JDSyarHTAjytlegt', '2021-11-02 09:28:50', '2022-01-08 09:32:25'),
  (341574, N'ePkOZnbr -Dpqy', N'mzCAu', N'Pw-VTYptYjGRb', N'_lDht', N'BQvEuI YGhUhboFeU', '2025-07-08 02:03:41', '2021-12-22 15:31:38'),
  (849237, N'r_lzYpSHafDdzQ', N'BDggfyZHE cYXoW', N'aBiOhNgFyD-FGRYdb', N'_oQhSmrtNsrhWzS', N'kJITfAxKBd', '2023-07-09 17:30:25', '2023-02-28 02:00:23'),
  (964847, N'SEFdQtvwaMy-', N'UTim_jyJPuptGV', N'xHxSmqfxlt-JeB_dthGH', N'IpG ibVzgCWAc', N'SZm TmxaGP klTP', '2021-07-19 15:40:23', '2021-10-22 14:29:42'),
  (298519, N'SlNzvrq tZjb-vzF', N'YASjtR', N'XugrBFVnJ RIvTAIzC', N'qJyoxAT', N'oYcYaq_lov', '2021-08-08 18:01:17', '2021-12-18 19:21:20'),
  (809438, N'zPlDtK', N'CHkakDXNZffpqlBZ', N'enYAjdGkHVAa', N'qORLDVikjZDDFkV', N'nsIlY-EFZYytUZbrO', '2024-04-17 03:17:56', '2025-06-24 15:57:33'),
  (855390, N'TNxDgsz nGqRQRJn', N'NCwCT', N'AnfEJ', N'HoSvBmKksiLPeToHFQtg', N'UzxzbGNc', '2023-07-19 10:36:59', '2021-09-02 06:02:07'),
  (12479, N'L-e_ohl yDBXeW', N'LFwTrpAiao', N'TZnwYBvWqTjiUrKcu', N'LAQU-', N'-d_jzO', '2023-09-07 00:45:30', '2021-06-26 15:39:49'),
  (151633, N'kYncI cU', N'MAKSGTI', N'mTOByuO', N'WjJoWUPUD', N'KPkQSOQ-EbiVLCgfA', '2025-03-26 01:36:45', '2024-09-20 01:36:49'),
  (137176, N'ZdUnojJDsAi_hTERk', N'eQsafyHdgQYmJbZVRC', N'ETchBFhbdV EdQY_M', N'tmHYTkIxL_s___gl', N'VDc KwWSUD', '2025-03-19 00:30:04', '2024-05-11 13:12:46'),
  (847433, N'qzOxwusXoSr', N'whxUF_K', N'mGLpISAsyuVis', N'dmXNuXqXQl oJ-jkfFi', N'WImWMyT', '2020-09-21 20:58:46', '2025-03-10 09:35:33'),
  (490818, N'zJmntHRvcdd', N'GnOvbvxUKpAqT', N'DdiNhXdKuI kc p', N'AOiTac', N'vWEokKhku', '2024-04-12 05:17:47', '2021-12-09 23:59:02'),
  (933822, N'cuHAdpkJZeCaMZrj_', N'zTMqrKWK', N'fAqLLcmxERlJIrtb', N'eMeC IG_mFrLQEQZwv', N'yrPyq', '2025-02-26 11:37:54', '2024-01-08 10:36:15'),
  (828361, N'EHpqzwVuiGEfZds', N'qSxV_SdPbjc', N'uMygue_DOBckJK', N'jrY ougFjNsBClj_ex', N'd-A_ xuvTwmMcAUrG', '2021-04-20 14:50:15', '2023-08-15 14:31:31'),
  (599398, N'BurAnGQNBCGQZokYpH', N'_c_MpumBmuiA', N'lDLyuWJMYvtBvJE-Wn', N'JTHTLv', N'oUFiCWqO', '2024-12-22 16:26:59', '2024-02-14 21:56:20'),
  (489060, N'vAiV_RWn', N'U OrDqbMyf_', N'alr_yxClTA', N'elazfwradVvDYukGnfU', N'HrUoJjnYn-a-hpZP-ZY', '2023-06-11 22:58:24', '2025-08-04 02:20:20'),
  (737220, N'-tsLpE-hpQeXCWU_CV_', N'FeHVtwjnfc', N'nUADIPhNn', N'gxHcNWT tcvU EjVgII', N'BanjQFiqIZ', '2024-05-22 12:50:59', '2023-07-07 18:12:31'),
  (333841, N'WrLvNgpBzXMu', N'gPNZbRcuBUWE', N'CnfhZiagxd', N'pJAEqOBbWXbgNGc', N'AuaD-Utz', '2024-12-02 10:24:23', '2020-10-19 08:48:14'),
  (727787, N'XRqTRGYGkMADVH kdaNM', N'HkuB_EyMWxQ', N'VxGUv', N'P_BxBtKiLbQX', N'TYEupNkrl-oEO', '2024-08-14 08:33:56', '2024-10-23 04:53:17'),
  (949238, N'V-vqWS_vONDANpL', N'rlvifGIgOclsiQJmBg', N'aMrqdtBfDny', N'EDSnOMCvEds', N'nbudY', '2024-04-26 00:32:06', '2021-12-30 23:15:34'),
  (497360, N'WydYaeCVJIKD-Uyywf', N'rRbNTmXtXO', N'ieZpEfrGu', N'GZfCiWelb', N'TQbHopbluQqIBm_', '2023-06-07 04:42:50', '2023-07-05 00:38:16'),
  (486182, N'PSaCtZVqhhB', N'qPYQHctRHLCvB-J_H', N'eaMBUlj', N'nnYBoqCoDfesufQQNkNq', N'lfpEZHnyKdCruTCdL', '2021-10-28 08:54:41', '2023-11-17 16:11:46');
INSERT INTO [ticketables] ([session_ticket_id], [ticketable_id], [ticketable_type], [created_at], [updated_at]) VALUES
  (401606, 170309, N'Am_kS', '2023-03-23 16:02:49', '2024-02-02 23:02:49'),
  (235360, 276833, N'RvESxgET', '2024-06-19 11:59:21', '2024-04-21 07:23:20'),
  (599833, 155308, N'mdBFiEeqaEDj', '2023-03-29 07:08:30', '2024-04-08 16:24:48'),
  (802026, 562965, N'aJUUrKtv xfBR', '2024-07-19 14:56:11', '2023-06-25 16:49:03'),
  (226186, 708215, N'RQZ-s', '2023-04-14 02:21:41', '2022-09-02 03:27:15'),
  (890104, 643333, N'JOxslVG T', '2024-02-25 05:00:51', '2023-07-26 22:38:20'),
  (980733, 249640, N'JeUJkDLwqP', '2024-07-24 18:45:21', '2023-06-13 17:16:00'),
  (410810, 74426, N'yLmNJIaRvGEJfdQngKRI', '2022-04-09 13:49:43', '2024-02-25 07:52:27');
INSERT INTO [tierces] ([nom], [ville], [adresse], [telephone], [raisonSociale], [created_at], [updated_at]) VALUES
  (N'BMdSjPGcsJr', N'Ion _LwFzK-UnDrL', N'M zdOoWZKLCrPUE', N'KVlScKznqCqkPF-jcZ', N'hwozfYbe', '2020-11-18 17:30:50', '2022-05-20 11:26:36'),
  (N'RSBXkHAPEC-fw_t', N'jGzuBRQE', N'-HxmneoCFlk', N'oamM_pq aDnFnRvGoJ', N'lT-raBjquhtJ XcB', '2025-04-14 05:21:43', '2021-11-24 05:06:19'),
  (N'xSisUGAiZVpxNoNd', N'RmuFgsbcKysEsoSr', N'ChnDDmiW', N'go_uvIBZqZXVzTxB', N'OFKnPHCylu cEcBeYo-Q', '2024-06-21 14:29:08', '2025-04-16 21:25:46'),
  (N'_kDzlNaPPGknDj', N'xMLBYCVDwnsn', N'mKsRlKhcyBXNLPPaQ', N'Mizac', N'XoZtNdAciTaNqZC', '2022-02-19 15:05:34', '2022-07-22 22:00:47'),
  (N'ZezOBjF', N'AbSKLeGj', N'iNs AgRP', N'oU-jhD-Wtdv-ScxalH', N'JDFqHXrzfuKNYSF', '2022-05-10 07:05:10', '2023-03-30 11:55:00'),
  (N'kILSj', N'cZUoTVHMkTW', N'T FmWkfmW', N'tKUobyYuuLl_gjXvhiA', N'VrHPlZfUWZQFGqnJoF', '2021-05-17 18:04:44', '2024-07-26 23:19:13'),
  (N'qSYEfrcuyTCgMCnuqP', N'fdaUuiS', N'nVVyDwSqDMJvW', N'-Q_ziwIo', N'eTCUtFP', '2020-11-25 07:54:57', '2021-03-02 10:52:55'),
  (N'BxYVvjncKY', N'hqCDmE', N'U_KHIeuRwEWe-yad-Dh', N'DMvytDcCMeeCa', N'EwMMfIR_aSBz- Xm', '2025-01-07 21:45:43', '2025-06-10 03:39:17');
INSERT INTO [timezones] ([country_code], [timezone], [gmt_offset], [dst_offset], [raw_offset], [created_at], [updated_at]) VALUES
  (N'kuaMRB', N'LgPEZxSuwkH', 1846.76, 9368.31, 6337.08, '2023-06-09 12:06:33', '2023-11-28 21:10:26'),
  (N'loLaujo_iIAo SdjWQ', N'L_AhUvhevk-dExIa zAx', 2747.25, 3169.14, 974.44, '2022-05-28 19:58:59', '2020-12-10 11:32:02'),
  (N'HrRbPGvUbqfDmuH', N'BUrYwMV_sSHuix Mhrt', 6918.62, 5423.16, 8859.17, '2022-08-27 20:50:47', '2025-06-08 08:14:35'),
  (N'WwIw-nOaFvbmu_GuxgXa', N'PHJLHRoFl', 9901.84, 4540.07, 3364.55, '2024-09-27 17:32:51', '2022-05-05 00:46:54'),
  (N'wkp qlKOVC', N'E-uw-bq', 9844.39, 9852.64, 8843.68, '2022-01-27 18:46:00', '2022-06-12 19:45:10'),
  (N'apSfKaRd', N'SAsJnS', 6363.47, 486.33, 8224.27, '2023-06-29 02:34:04', '2023-08-21 10:01:22'),
  (N'h_bSt', N'uRIIZ_gGsqN', 1947.5, 2261.11, 1.17, '2025-08-11 07:32:40', '2023-05-06 22:34:33'),
  (N'xXcGnAAOi', N'TDnmyruSIiZS _h', 5271.42, 5163.06, 3286.1, '2024-08-03 04:26:07', '2025-01-29 04:15:58');
INSERT INTO [transaction] ([demandeur_sang_id], [vente_id], [personnel_id], [stock_sang_id], [codeTransaction], [date], [created_at], [updated_at]) VALUES
  (207643, 281304, 929610, 938100, N'a_LToJnuijnaaT', N'gZjoJVKQMIJhPn VKtXz', '2024-12-27 22:05:04', '2025-03-15 20:20:09'),
  (560039, 359497, 721269, 944259, N'BMRTbtTDKYSiGgQk', N'laXbUWNgZcUHqw', '2023-03-26 21:16:19', '2022-06-08 03:54:24'),
  (331845, 274589, 949842, 110394, N'JNRxXUbU_E', N'BKrh--ShAavbTzQf X', '2025-07-21 02:46:59', '2021-03-17 13:24:28'),
  (293257, 115225, 957960, 567626, N'VXDKzeMJzPfrq', N'ZbfFYCBiVVy', '2025-06-13 14:19:31', '2024-07-27 18:03:03'),
  (234983, 935637, 159863, 151138, N'M-Nmdel_m', N'drYjNCPqvXWpSQNyXR', '2021-05-25 09:19:53', '2024-05-06 16:29:29'),
  (111719, 98852, 951841, 826167, N'BrgQUccGWaiM', N'lsEVNSbYRV_VHLgh fAl', '2021-10-20 14:58:02', '2022-07-19 04:30:29'),
  (828091, 526472, 828797, 932034, N'uggThp Q', N'oJpdp', '2020-10-07 02:32:46', '2025-03-27 23:07:05'),
  (285117, 515710, 208019, 153262, N'AysZPZoh', N'U-sT-tHlhkCHJwYtgr', '2021-06-19 18:28:39', '2022-09-25 23:25:21'),
  (789333, 505145, 696352, 347032, N'vSRnQDcaP_nF_k', N'VDvxoDmtSb', '2021-10-25 09:28:27', '2022-12-06 20:00:20'),
  (605910, 977540, 793674, 9084, N'hOJliSlgobAap', N'kgb-lg- MQTbcb_WhZ', '2023-02-23 03:58:34', '2021-03-12 01:22:40'),
  (989909, 560083, 8337, 362012, N'DiVcxLyChLii', N'PwVpn', '2020-10-28 08:59:22', '2021-04-03 07:10:38'),
  (368012, 192998, 566537, 598799, N'HyEYI', N'oFoxsyTcknmumo', '2024-12-04 21:41:01', '2022-09-30 11:24:53'),
  (561867, 482663, 304421, 160020, N'tmy_WRD', N'HQAwIFqJuDrAl', '2023-10-25 17:18:57', '2024-06-12 03:37:12'),
  (731315, 602424, 602202, 632616, N'A Yh-XdXNdsRJLDHHZnR', N'ptSDI', '2022-09-28 19:05:41', '2020-12-23 16:58:55'),
  (636540, 94623, 78745, 952484, N'gJWhrmPCPF', N'NfXAoTQkSS', '2022-07-11 02:22:16', '2020-10-13 00:09:48'),
  (62785, 682424, 98, 260059, N'JJMbCVI', N'QiuRiGDy', '2020-09-16 00:25:33', '2025-05-27 18:48:39'),
  (292618, 911088, 480258, 146075, N'ojLoRppHRk', N'wpBmSk_BoOUmICvjn', '2024-11-14 12:42:24', '2024-03-11 09:41:29'),
  (903744, 425687, 878494, 410176, N'smSajA', N'cJfSTWqbzOtf_jVfzvjx', '2024-08-12 11:19:34', '2024-12-09 11:14:34'),
  (941698, 716449, 304103, 657613, N'IhbEXj', N'_Y MVy', '2020-11-14 04:29:26', '2023-10-12 18:57:42'),
  (440186, 656509, 435475, 545643, N'PHWjXTwireHxYjSQpyL', N'pITpIlYUc', '2022-08-02 01:40:08', '2024-02-02 04:18:05'),
  (939043, 946429, 537085, 916241, N'nRENeMb_tBuGqnr', N'-cmvxaMXPuDs', '2025-01-27 13:07:55', '2023-04-30 04:44:20'),
  (796592, 741154, 749813, 330294, N'YlbeSdpeyr_', N'jIiImhcsC-YBQK', '2022-07-01 13:17:24', '2024-04-29 05:01:53'),
  (911929, 882364, 229347, 735266, N'TYbKlJtReWf-', N'xzxTXNHJHQOaurbMYJ', '2021-05-10 08:18:57', '2021-06-09 01:13:21'),
  (210379, 585340, 201447, 62533, N'gzc-vfUCKY', N'TDsemuA', '2023-10-04 03:37:44', '2022-08-11 19:43:16'),
  (118166, 947691, 713979, 933852, N'ssECCaH', N'mnTWs', '2023-09-21 16:49:15', '2022-10-12 06:35:39'),
  (814096, 932690, 92807, 632366, N'otB_P f', N'ljyAlIyJUxc', '2025-06-07 19:06:56', '2023-08-10 18:17:59'),
  (378273, 344662, 524066, 693810, N'qgoXbGG', N'wUUd aTywHm', '2022-11-21 10:45:32', '2024-10-16 15:20:38'),
  (779995, 376362, 939718, 927261, N'BMfdGtFffDeDZnWAc', N'LL-lvPVqVT', '2021-02-23 05:03:05', '2022-12-26 14:33:01'),
  (552360, 952152, 62422, 682350, N'bvmtgZLyed', N'sGnN-DPcVeNni', '2022-03-14 16:33:17', '2024-08-08 23:28:38'),
  (883971, 12189, 693510, 623077, N'oSs jaBbglb', N'ibu R', '2025-03-19 02:22:20', '2022-06-30 22:38:03'),
  (954160, 655448, 300129, 159785, N'qz sekPl', N'dzohARW', '2022-09-20 03:00:20', '2024-09-26 03:46:02'),
  (381898, 293781, 159497, 351374, N'hEdHsxgjuhL-', N'sqtPANm', '2025-02-27 14:17:39', '2023-10-05 21:33:39'),
  (953740, 219707, 960257, 407979, N'Wy-V_', N'BAT kkuJ', '2020-10-03 19:18:44', '2020-11-20 13:09:27'),
  (117789, 333122, 138747, 98412, N'UlvsVYxr', N'UOhrbrHrgwTOmUaam', '2022-09-18 20:45:21', '2024-10-17 21:31:01'),
  (436474, 631317, 821974, 139488, N'PWsLx-bzYKuGZ', N'LKEilsjoLmN SDQHdkoc', '2020-12-05 10:16:22', '2022-04-25 19:51:42'),
  (818583, 813802, 886747, 931061, N'gqbFGIJzUIYgUqgb', N'HO-EinLSbtqUlDRMEi', '2021-03-08 17:07:13', '2024-11-29 22:26:12'),
  (224393, 782765, 414010, 478514, N'TDhoG-xIjZ v', N'BgcW vUIHlemArZTrfl_', '2025-06-18 18:57:22', '2022-11-04 20:44:27'),
  (310000, 581343, 534834, 834860, N'lIRUXHLB hhtXhhVXwd', N'_FggrGsxe', '2024-03-24 20:02:35', '2021-04-24 16:16:52'),
  (926178, 307604, 844309, 828650, N'daeWvnKffDfmmb', N'hlM-Y', '2021-12-10 07:04:48', '2025-08-15 15:37:10'),
  (182977, 685197, 447058, 881354, N'IGceODZnsKp', N'-DnH-pEZy', '2023-07-09 15:32:57', '2023-06-03 14:16:44');
INSERT INTO [transactions] ([business_id], [location_id], [facturation_id], [prescription_id], [invoice_id], [res_table_id], [res_waiter_id], [type], [sub_type], [sub_transaction_type], [status], [is_quotation], [purchase_requisition_ids], [payment_status], [adjustment_type], [contact_id], [pay_term_number], [res_order_status], [customer_group_id], [invoice_no], [ref_no], [source], [subscription_no], [return_parent_id], [pay_term_type], [sub_status], [recur_interval], [document], [is_direct_sale], [is_suspend], [is_recurring], [show_commission_agent], [transaction_date], [total_before_tax], [expense_category_id], [expense_sub_category_id], [expense_for], [tax_id], [discount_type], [commission_agent], [commission_agent_label], [total_amount_recovered], [invoice_token], [recur_interval_type], [recur_repetitions], [recur_stopped_on], [recur_parent_id], [tax_amount], [discount_amount], [selling_price_group_id], [rp_redeemed], [rp_redeemed_amount], [shipping_details], [shipping_address], [shipping_status], [delivered_to], [shipping_charges], [shipping_custom_field_1], [shipping_custom_field_2], [shipping_custom_field_3], [shipping_custom_field_4], [shipping_custom_field_5], [additional_notes], [staff_note], [is_export], [export_custom_fields_info], [round_off_amount], [additional_expense_key_1], [additional_expense_value_1], [additional_expense_key_2], [additional_expense_value_2], [additional_expense_key_3], [additional_expense_value_3], [additional_expense_key_4], [additional_expense_value_4], [final_total], [credit_limit], [balance], [exchange_rate], [opening_stock_product_id], [custom_field_1], [custom_field_2], [custom_field_3], [custom_field_4], [import_batch], [import_time], [prefer_payment_method], [prefer_payment_account], [sales_order_ids], [transfer_parent_id], [types_of_service_id], [packing_charge], [packing_charge_type], [service_custom_field_1], [service_custom_field_2], [service_custom_field_3], [service_custom_field_4], [service_custom_field_5], [service_custom_field_6], [delivery_date], [is_created_from_api], [rp_earned], [order_addresses], [created_by], [updated_by], [created_at], [updated_at], [subscription_repeat_on], [round_off_label], [purchase_order_ids], [prescripteur_id]) VALUES
  (734, 154, 954018, 908863, 148678, 258, 177, N'kUXxKPdyLo AvlA', N'CEvn jdTLjkyyKYhrgMN', N'WFhIduGYUN', N'Cy HnqIGsK', 0, N'Oji-qkclzRLtR', N'uuldTQzYyaK-HvuHdhRj', N'h ToLQVxJ', 151, 312, N'uNZkuqzJUICjWk', 419, N'lyeIBAvlgbmausY_g', N'ZDqbdOrFmlMxepJGQHDw', N'xmOhhGjNToHDnnIcy', N'chTIgNFsXPj', 954, N'voFxLUVSkMpMV', N'bAeXYVkInOGSBQ', 8358.01, N'IzViL', 1, 1, 1, 1, '2021-02-20 16:32:53', 6046478431167803.0, 906, 844, 775825, 844, N'ZDIKqQKVUdsNscAIr', 5833129196206956.0, N'lINbVwm', 7865429782816132.0, N'HaEKkYhnfsuFofqMdWlr', N'IiQDx-uBrUyFMauvxIH', 771, '2023-06-23 16:51:14', 31, 4299433556027654.0, 9859277446982690.0, 988, 55, 594873883769415.6, N'AuwESJpEXxV', N'h_VbCgSvZeQl', N'jcYGCwPhaPlEiBze', N'jlJXpgdGCj', 126718499873385.02, N'f_HmSex', N'glcA-w-nkIHZ-r', N'NGNKmqiaRJG-Htiau', N'VCKunQFWLAwmN', N'Y tsXNu', N'd_VC Ys', N'rRDfZwFZ_R', 1, N'TZKhtzwS', 9646814586841272.0, N'jTcpGEQi', 7790485125200001.0, N'Izvnv Ste', 5049345829622511.0, N'hUPXRBgzOBYjGPiwic', 8449902419727439.0, N'eoZNAxwqGICtsHeAxrm', 1365048635825569.8, 6338407509951944.0, 658348482017520.0, 8773374008749366.0, 9097297990818506.0, 593, N'Ird kCpRIAmWIeSqKh', N'ixvfVDX', N'IEOqMouEWOuAdw', N'dYlWXeKMue', 697, '2021-10-01 00:04:44', N'UKimCwdxGxtffrphmvt', 158, N'BrubDWgsfRrNp-jXWvU', 961, 526, 4570351629461132.0, N'AVxwAMqJaZOTqjqNj', N'idcYpGeE_GbQwMOO', N'-gvIj', N'GVvrLNiOAtVuj-UlvVy', N'siwgby', N'bPs_-hSi', N'cHuWzboJOnWIs_Dv', '2023-03-24 17:06:09', 0, 71, N'Wcmblx', 330543, 963059, '2021-02-08 16:14:59', '2021-11-03 06:11:53', N'JVOBSJqSs', N'auJcmVuIFdEUUlNcd J', N'LIRxHYOmxaxgMfxaqNY', 331901),
  (636, 125, 204659, 60997, 595798, 669, 421, N'-SMjntNFY', N'KfoxFiMrLzjQyb', N'e aYv_', N'DnXlCTysj-PxPAzlZsT-', 0, N'zkBlHUS', N'LFJNCL', N'nJfMVtTI_Aayueksq', 990, 468, N'v_QYKLVJPQ wjaa', 531, N'Kgj RcKmKwgvQNj', N'OQrxbTRSrezEo PTeml', N'epUW-YT', N'Lc WYDRaPfHWAUd', 534, N'hG pIBH_elrM', N'-TjBiVj DiB', 7397.98, N'xK_LYNTw', 1, 1, 0, 0, '2022-12-15 18:45:27', 5375491688466751.0, 677, 909, 236812, 286, N'fMsaeKZK_ApcZiHGZ', 636338126452711.2, N'Jn-WsBvEyHpXbNr', 6269642846958586.0, N'PEFuhxaGPSrUHwwj lP', N'BhxhXUsdKFL', 809, '2022-03-12 23:18:39', 552, 6942429782554125.0, 9045578003951238.0, 634, 814, 2326838275918732.5, N'PoYosuKuACZGTjLXxlkn', N'C FfQcBlQJD', N'vSbyF-mkbXDEIIm', N'WECuNFXHrlwdYaKrsc', 6780609657315514.0, N'PLdq MY', N'AGDGbw_J', N'qyLlL-LTdtoA', N'ruvhW', N'XsxZMN', N'jHaiwg-lNAdhpktBEzJd', N'OKkt-EKMHxHtazqX_', 0, N'fmCsoNvvdZ', 293855047519472.3, N'gvEY_LOADhjHezgdqAdR', 8368979773428337.0, N'H hRpsKgWufRRUzyttX', 4031386388056694.5, N'DhYUPAJKYi', 1867829529314812.8, N'aAYHUPiibhs', 9753801491432602.0, 3029661525628216.5, 8592236237664442.0, 9637976933936006.0, 1303897969838311.2, 106, N'KxgF QUxYgS', N'ESUBdFEgJhpMaz', N'kIVJQkyEbqcDX YFZSz', N'H--UEklJVOPRMpvlX', 161, '2023-05-01 14:01:16', N'aczDKsGM', 227, N'VUbRolzBHjb-rU', 850, 30, 7668284650360535.0, N'P XLHlBZgB', N'xN-apVjSJUVHRyGnpmP', N'EzdLAuznQknyCP', N'KJhCVaYgTLfRTzq -rdK', N'GocFysaWqmBN', N'KMwleToWRqELHYHzT', N'v LAGbsYXmI_dWqgfWrC', '2023-03-29 04:24:19', 1, 612, N'xdCAESttGwhsb', 274118, 955302, '2023-04-23 08:23:28', '2020-12-21 08:02:28', N'ToXXoIMD', N'_sQJru', N'KhyBEbXwapuPSpnVwSq', 234264),
  (38, 519, 841526, 722997, 548806, 224, 938, N'shPR_tNjJTnvuIlBnY', N'_bFhZpDnkZBaPnQgN', N'eDSjel_GpYhLaBoEMLBT', N'eDZlhuXdbhIsjRRgh', 1, N'qLJGpDjxjtoYTUJwClY', N'ncHiu', N'GkdinHuHeWAa', 859, 903, N'mXgWvKqod', 607, N'NqKA _IQ', N'wFMelYNkpwIY', N'kKmeXixACcDkeKFa', N'MvqbqhbRLtriq', 944, N'QTji XmzNwM-sGeVEg', N'nP_by_dra', 6889.12, N'JwPSdcjUyczAmWFPpz', 0, 1, 1, 1, '2023-04-05 03:26:58', 5001413395488247.0, 618, 146, 151437, 545, N'sFKd_PvBiMb SoADL', 7076223982380351.0, N'tlABlWrARQpZte-sBp', 3056221502947075.0, N'qDpsEsbVhUFljLDq', N'i-tcLDdY SuId', 166, '2022-03-16 23:26:05', 159, 8011565662808222.0, 7799833945438682.0, 194, 238, 7606014770612258.0, N'QZLcsytmibRS mn', N'HINy-AAE', N'SSiLksZyL', N'_LJmQrWPMhdZ', 5017046330876312.0, N'jg_hoLJ ugurYKVCdSZ', N'bghWM-QQKhRlkXy', N'yBgXAggKntlCuzPWKS', N'HINank', N'TbOwDFjdvEPZEO', N'pdvbVp', N'u-NUo_txQT', 1, N'ucmISdPYRJ', 3147880963962272.0, N'OyDTSmm', 9463734760134550.0, N'TeXT_RPOp', 1314569749542958.8, N'LqmVySnIwLtiY', 6510994556444712.0, N'YhOImJhrnHqFra', 5904394218875166.0, 8674430580432679.0, 450170122017572.44, 9518515286888462.0, 7246461688519581.0, 422, N'ZhJ-pzsDqVA', N'hVWNIkJPYC', N'LM_tbPN', N'dygvAg p', 282, '2022-05-27 14:30:12', N'vGIdnjojx', 746, N'Avlkd', 823, 71, 7847674096758973.0, N'RHhefxBFB_', N'GodLZNUi uFMWUM-Cj', N'-izloRUigL-VOUVuoWGc', N'aqonGRitFy', N'thm LztoMZDEgEbcnef', N'arexOdp_SWIhlQ', N'hfztdtGLBhHQXLn', '2023-01-02 22:00:03', 0, 914, N'xoxipyUTS cwYF', 261754, 405914, '2021-07-19 06:45:02', '2021-03-12 04:42:59', N'KShbtXC', N'OpQxHGskQAfGUDQEY', N'iUryFrSYAFRrOcJt', 653678),
  (961, 403, 328824, 671333, 533438, 703, 389, N'EvHZbcPky_QuM', N'SIsLdfcdPxxHiPpOHx', N'BnIuizTf', N'E_VRZcOvBRz', 0, N'bcHfgwsZiGumMTaO', N'uO-ZyZuNduyFfOSzJ', N'aPtfVrKlHDzfarz', 291, 112, N'pUV-NPwiMscuvrrRD', 902, N'dNHfObOkpL', N'PulyPXxkoazvrnreU ee', N'KzXJmIEB', N'nsnDnMyQ', 409, N'mxYNcABD LSMJoUeE', N'pvtrXcHe', 7040.21, N'vvZV xYnsysVtXDnl', 0, 0, 1, 0, '2022-02-03 14:31:53', 2231019257426228.8, 380, 564, 746040, 788, N'jXUhGlypRFEwCmN', 7752415803980052.0, N'Xe-omNsI', 1730643745196519.5, N'sIqndg_juAbUcR', N'hZDlY-', 64, '2021-03-21 14:53:11', 853, 3908535282593579.5, 3896608411138484.5, 479, 588, 8673362991068226.0, N'T_l FAuIu', N'eJcHokrPJL', N'Jizm_sKsKzEAeGVNKP', N'_ahAozDJT-y', 3731361043433983.0, N'SsrSkFJcAmwG_HVMH pB', N'lYxOyXVN', N'rBOPyYWUjGkPSRXHXVL', N'Kps tAR_FcgUx', N'rdEKtdMyzJbfPfVRP', N'HaHicZhHap', N'CPlJ-ojGtxprWn', 1, N'qAyREu', 102949051200330.6, N'KMljCTBwKLGphBeJLWf', 4053006028806968.0, N'PZQLLwO gQMvKJH', 6901262590047130.0, N'mRQJJXrvjKRxvaxvkGVJ', 3587802989586327.5, N'GrwsZ', 6356157569875048.0, 4540315978207056.0, 7155638618246289.0, 7166265139597049.0, 3393983311190271.5, 548, N'fSOTGV', N'SIzBRAsxLYOH', N'gHBEzglJ', N'obxQQCeAs_dJZWOcLdXn', 500, '2020-12-13 04:32:02', N'RgV ubtL', 103, N'vrXkTxUGY', 145, 182, 549316722108178.5, N'Adg_pDScPguuuh', N'jCynDOmyNlobmI-A', N'Y-LqvVioaLMMqM', N'aUhrSUNyFoVCQwbfW', N'MxpDLbxQbXCdFwPLd', N'XwRFIgqXolabpbnARZ', N'tuHkTGiM', '2021-12-07 19:57:28', 0, 516, N'jtCQJFfck', 103366, 219280, '2021-02-27 09:00:57', '2021-12-16 02:19:44', N'XS-fvuysgfJr-B', N'y_HuCuNHbrFdIOZu', N'WnXKtdxd', 839505),
  (649, 457, 111750, 77041, 117589, 521, 399, N'fbBrQuYKdOLWG', N'oVmtcjLrEsUWHmcHEu', N'DUCYvRbCzCzBmyMycP', N'VjrwMYPeh', 0, N'wJyUOevb-', N'uovptl_M', N'afBh_hSe AGaTBZd', 874, 120, N'qVzDzBh', 321, N'TikRfpjigUizd', N'XGnk_v', N'wZVCFQm rBBKn', N'ou xbLF-', 851, N'gfoqaSgBRiGHZ-sM-vSF', N'NaBYCGgLokDZbTpVGXXA', 7378.34, N'jkfImaFhy', 1, 1, 0, 0, '2021-01-28 07:42:10', 5721621070795468.0, 770, 807, 901038, 175, N'JjOafYOqGmgDeF_', 4164108936507135.0, N'TrICzmYUS', 1422988722674448.8, N'hxFjb-oklziuTt', N'K-VFaIDqD', 861, '2021-09-28 11:19:26', 960, 2445011328944254.5, 6882212907470014.0, 363, 847, 876704831431938.1, N'rnP_CLttDZWvVnYnL', N'Ehp Rgcf', N'vwHDmycw_rxGlItqiRXH', N'_AptnENgAH -eri_RY', 2239705348457537.0, N'ZOATeLn-', N'siHZSKndaWFOlhE', N'nFBWE  lXaSPHSoOd', N'sqpxezHQR', N'wLySJ_-g-CoPwI bxxYO', N'-pvqrrgllPPOVMSb', N'aqPnvjcUR J-IgKlWt', 1, N'bBGTMPNVyhF', 7530753971651271.0, N'BR-PhR', 8886892665489353.0, N'tkZXHqUGtgSoEAFBWM', 8228710796845421.0, N'KDMcr t_XUsFUB', 8292225975304176.0, N'zTzBTTZw', 5894548335420094.0, 2774797459264116.5, 6106593053088698.0, 8130897960708746.0, 9692857048277618.0, 294, N'ICs-bBTIvrTH', N'IRePZRybRaREXIfCZnOc', N'MipQGoPL', N'oczHcKsZWZGQbmcSOpCT', 85, '2024-10-24 20:44:30', N'uvhkYRtMzouuFV', 85, N'MxKjhUXR Of', 972, 200, 8361789968427102.0, N'dSQHKA-JcQSdRgK', N'QHwkyiIVsoDgmiw', N'spehlQXTgpkjp', N'reYN qRlCHpfRJzWKJTT', N'fuIVHoMHaYmzzi', N'WBjEoLrabmWxq', N'RnPIriQmPtsY-Onnc', '2022-04-14 10:46:35', 0, 466, N'o-aIP_zBFSNOO', 546036, 835765, '2023-05-19 21:33:15', '2020-10-25 20:51:26', N'_DDtw', N'XxWe erWYPhUsk', N'TpybPlelGeSs', 744871),
  (852, 709, 597284, 826477, 259620, 594, 692, N'STGaKAotkVa', N'ZTcXCxMSeyUNL', N'JXfCcfNLrZ', N'pUQQWgIEJodNyT VwWSY', 0, N'AsvtWMj VPgswShu', N'ayhLwGHGvdt', N'QDrXydLkp', 152, 748, N'ClEpOTiHJRfj', 417, N'wfkhkm-', N'WtLGlOfKQJGpCFvAKnS', N'cfAURCEhcDyJaaV', N'YKWEsCEqEuJQ_ipcxUe', 373, N'vEfU-O', N'VhLtoOutgkhPnbcZii', 307.4, N'IbmegzbabWc-CQk', 1, 1, 1, 0, '2022-03-23 04:13:26', 8942660509145511.0, 708, 897, 689990, 498, N'gtcFfaa', 8912096763952022.0, N'WOzEAhnyijFcAyCV', 6834182499278545.0, N'JpguMaJbNe', N'ldfB_FS', 74, '2021-08-17 02:44:53', 998, 2312114266498058.5, 9560734539772480.0, 31, 598, 4694658661076535.0, N'QWkrMY_zZY_ANK', N'JYleoVx pkfxiAMa dOI', N'iJeVNwNq--', N'iEutuLoY', 6377935631806738.0, N'AUYFxTPtaEKKZERXYQq', N'RZhgmAF', N'_fqIYMALcZIPgvknOp', N'ZGMTv-zZsW', N'VqWE-zUwYyniAs', N'PvNEdd_', N'NmZHCMwCfmNbwPfAVR', 0, N'wMJhlG_ lAK', 4850277889949077.0, N'gaJGdcDckkjXowJmwyib', 2501475300949343.0, N'dmMHOeA', 3366130833691556.5, N'EFGyv', 6933276653048536.0, N'MXpvqY Oinsh', 1921312621735676.8, 4832793787750158.0, 9483991006096614.0, 4997513188448354.0, 3540356021897431.5, 380, N'YwzaLhZNY-vInDnesF', N'KhelIgDW', N'iWz BVLEjPpmn_RSBo', N'anIPrEFnLC', 9, '2023-11-06 16:21:14', N'uq_iJhVTw', 41, N'qSgEF_ddp_Kwo kwjEs', 793, 5, 5440103432582093.0, N'BfIQRzopm', N'yXQX-AH-xTPwygOhQU', N'CFIzluXwpRRXSpXA', N'aMkTJOglMOTBHvFuPLIG', N'ODwx_EbgDdUmzSCmed', N'-LNTt', N'IFRSV mkYiowqBhntOWj', '2021-06-25 15:23:35', 0, 793, N'aratkQQ', 418794, 803885, '2025-02-06 06:34:00', '2022-06-02 21:30:14', N'FkwBRCkWYqSNjMiGQxVP', N'RfQQTxdFxWyfSias', N'yIyyXtKuWUGLcShnFDz', 829928),
  (598, 943, 832333, 987307, 407988, 259, 813, N'_TsLLn', N'JNVlBksBae', N'n-tdbMMfu', N'lJizXV', 1, N'hGfrRrYoR', N'RGjxyqYKKFhbmO', N'pbzaZ RIukULS', 146, 212, N'iUMg_eyzFLiDhKwS', 601, N'sZhlNzIa', N'qjrXtebeOgY', N'qtJpp lbkRatEFT', N'EZXfa', 416, N'SNdpNJvUpVCTCKPGPpje', N'DbBapBlQfJH', 3122.41, N'uYlNi', 0, 1, 1, 1, '2024-10-14 08:34:35', 9634675846559666.0, 653, 652, 206201, 714, N'AVkPnNnRkUrumSy', 3784999985173468.5, N'I-Ell-hhFrd', 9314387484588452.0, N'cXRFvIpoThG', N's- xBsXBcuLbK', 332, '2021-10-18 15:48:44', 766, 9086644776728060.0, 1503698703539920.8, 804, 222, 5021390888757198.0, N'PczZ-pOcMZnWJbGNuFuS', N'EcklQEdZ_mYMUt wL', N'qmzPrybDRWJLS-Zpxq', N'uZJgSicHiP', 970249117329573.5, N'MhmCzaGFd', N'chNBZYHAsp-sTId', N'IpWQX', N'-bxhcfu', N'PgdzZZ', N'WY aaHh', N'AAdsLh-XVLhniQeuVPTU', 1, N'tppuwDmfkYT iUer', 6622610448741124.0, N'l iYwRfOtV', 262282977600092.34, N'IQSb-jMF', 7737460549538301.0, N'Ds_P_kXfxZMiXXag', 4612266073619596.0, N'tRFzsjuvcZEfVZzvch', 7338871509932430.0, 3716411509026177.5, 9993155136231172.0, 5243493981940751.0, 9368928775116128.0, 489, N'xGbVQK', N'hRJuAeFcfJzyx', N'zEO-U', N'BKbgquQZpwL', 123, '2023-12-16 08:19:44', N'pQkgUfKIOOypdJ', 783, N'VyjNltkpBJIjZ-z', 115, 984, 3309182014701173.0, N'TWps-oVdhWka', N'jJ_PqYv', N'GgCFl', N'KidQ-Mjui OEUqjs', N'onBjHVaUXehwWty', N'FtWno_DCxyUZhtKklUdV', N'IQjONb', '2021-02-02 07:22:25', 1, 443, N'NdKVf TW_', 450850, 44893, '2024-08-13 12:09:59', '2022-04-29 15:59:24', N'qGcC-yjbLjJYGZlOqbn', N'DppGGZ', N'peAEEZBkhYcUxHgzRJCd', 507015),
  (799, 910, 36014, 509152, 136366, 667, 121, N'pvjSZaWzGRsJEDUHBT', N'taQfHSJQRWq', N'SejEYv-okm', N'MIurS mCATV', 0, N'_gsaXMF', N'iFgcGSTm', N'l_yxvI', 186, 290, N'WtOdIYHb', 524, N'iCFcKqUOKmTToaWBWg', N'neelsDttoqpaOTl', N'hQrkhHuSOhtrZqfWW', N'qFJDnxn', 954, N'qllQI', N'UPqqHFlua', 1400.26, N'BjqAzgbWHUaCA', 0, 1, 1, 0, '2022-07-09 10:49:04', 7102779952431794.0, 756, 532, 226400, 259, N'rvdYtpB', 260044500702993.9, N'obFquM', 4468573979306206.5, N'boCREB', N'ofCgY-xdwiKj G', 383, '2020-12-02 22:15:24', 326, 7116921043559535.0, 7590191546428646.0, 166, 386, 6339341926608423.0, N'gOaIEJsesFC_dB TkAe', N'HhQhjnlioBrqv r', N'CHln-agjp_vnMwkrM -', N'fqLWveqH-', 8332183855818502.0, N'PE_WwYZPb', N'rZe_cVHIzrmarKBUVD', N'QLGMrkiad', N'i-xxMZgMV', N'Aj CXXOKqttsXy', N'fPEvV -qKwYYLzAA', N'tZ_ooropHNCzbMGeYjND', 1, N'PjTfDxWiBZBPAJw', 8030073700726891.0, N'KjBwJCRkQfHfRDjf', 4230383040600328.5, N'UDzztfcbx', 5415069040959852.0, N'AHTXmINuc', 6900128036273357.0, N'-g gaNMHoFNwnnDHFvX', 3999795298051104.0, 1652442835085940.0, 4768850251059538.0, 2531351424147944.0, 3338976177936732.0, 551, N'dHVtjseDqQ', N'KPdLLXm', N'nFBfnXmZpIWhNOGVa', N'QDE H', 356, '2021-07-07 16:19:52', N'BdWaICDEcVMRQXi', 56, N'KTybMjsrRaZhe', 136, 516, 7046518598162915.0, N'JlGxOZqZk', N'nOjYGpZvAQDvyMV', N'wjgbXTGcwQriW', N'DbXqxNBExhTycdqQvLYu', N'DhVcwaPdjB', N'_K rLlyEFPXBkOy', N'HkBLMEz_zYHpY tXSw', '2023-06-22 10:37:10', 1, 676, N'KovGXPwjdowwLlt- TJ', 912310, 655179, '2020-10-15 21:46:48', '2022-04-06 08:40:45', N'bdFWZrscbQc_AF', N'JyZurFNaKw', N'tKpSThVZXLbttKtOc', 360111),
  (379, 47, 36520, 65663, 40236, 194, 994, N'SoMPoethuYLUZG', N'cSQs_hVm', N'qDqyOHmmkNZHJC', N'BvriFIxxWShPoQo_-tlm', 1, N'TffrOed azn', N'JVfIeMT Xp', N'ZmRwIWy_gkPOyYYAI', 84, 801, N'EGarsAntcDfrfWaes', 792, N'sJKezNVTDzdQUwpQwoMZ', N'TMbPT', N'RfBBVKnmsLHGqWpTz', N'wyPpyNDRA_rKpMWMKyKE', 569, N'fSrpMh an', N'axrtEj', 583.54, N'ErKPFqVikOkl', 0, 0, 1, 0, '2025-05-20 01:31:36', 2727392030733765.0, 831, 668, 577950, 775, N'NcnptYABjoHD', 1270434842587371.2, N'bV-xcdU', 2105961258377230.2, N'VDESzohRm', N'EsNuyNJzNZCl', 32, '2020-12-31 17:49:55', 442, 326811281604051.4, 3721097266160801.0, 653, 479, 8254683848292264.0, N'IOQaVqkMloxeSsWsoso', N'ZDVVaEAVd', N'HnAlpcRKEnMCG', N'smkAMRbTiYqxMfeu', 10683459647411.46, N'OpwvrFIhJIk', N'Bj_wscjv qZIPJo', N'GzXIhjORFIbDu', N'NLMDeAmbHi fubm', N'xbNMvj_Q', N'PJMtulkzBFRzNB', N'bNRvJNJxwbjOBUHRRD', 0, N'yjahjW wKxGfPbDhiHlz', 819084777242986.5, N'oRARsif', 1412105043569810.2, N'ZUAcNgvWLxnfkCExFFMZ', 2543718123004974.5, N'nfIXamXWShNKlRgl', 8984628692583705.0, N'KxTOmKxlV', 5359985963069240.0, 304389999365560.75, 3017503335443686.5, 7067478636360797.0, 5551286216655547.0, 400, N'Yv_LXr-yDncWf', N'wAggSD', N'jNyBqnO AYKggGZH', N'nBaYlOOMPJczlNyEkg', 77, '2025-06-17 14:54:39', N'GMPulECqF', 268, N'NyqWpgQhoubggW', 678, 999, 4673775336054485.0, N'DooFpLXTUeUiD', N'DINvzLmZgoidpz', N'YYZu-imEH', N'XfZdjnLFk', N'QJSZJcA', N'JLhnWgCCwdoGnlz', N'AEROcsQhZISpOs', '2021-01-01 09:05:33', 0, 386, N'QzMy-- RzOkBFYkbz-', 266018, 134005, '2024-03-15 06:19:44', '2020-11-08 03:42:25', N'UjmMrWZVe', N'FLfhnjZzYEmd', N'JDGiO', 486102),
  (266, 269, 796527, 476333, 224126, 950, 534, N'UYgpLaO hAdg', N'VuJfR', N'obVBPiOEkOgp-arwjke', N'wYfSbVTYXVpaP', 0, N'ENUKMz_vh', N'ZokvUsFcdewGKVO', N'ylNDeYq', 431, 480, N'PieLrqKFO', 668, N'olkPIbedjeuOPNWjuR', N'_ydDiczFWnEf', N'ZFUJpTVxhS_aJ_GNw-Jp', N'ggWYkJtADuhJ VxkvAUC', 942, N'iMUyRwk', N'WwdxLaEWEY_LQx', 8735.27, N'pvggkyxvAOancoUx', 1, 1, 0, 1, '2023-06-28 19:29:19', 8075140302405704.0, 891, 316, 993337, 174, N'UDHkebYfBZJotgHf', 6317680980663392.0, N'NOGDLXyqqOO', 8347760047199477.0, N'hFHvEG', N'fkL Fig', 454, '2023-12-20 00:09:39', 926, 1345417429566937.5, 9660175482334738.0, 619, 180, 8481120759081697.0, N'yPBsTKAoiIKvLHl', N'JSb_KUN-xuJGygqtMiM', N'wigUwwqPzZfPMpCNo', N'gTaAdcKt', 7394413331710279.0, N'ShrsjnyvTLPMaHFDCi', N'mwzrkYDvwcFvfQ', N'IPvmMAIlFSqQKTvavU', N'QflvcLkCEAJBKg_a', N'dSl_KA', N'YtcHT-Dozt', N'QTWefJBmgrXjbqlxMOGM', 1, N'dXZdJgWScgJneLLjvcD', 7272661328034900.0, N'yVzPCKTAOzj', 8310526695286089.0, N'PKkNCgVua', 1638954475893675.8, N'U_iWyvOCpEt', 8737925099580580.0, N'UlbWAUyQ', 9596364472773590.0, 5703420544465880.0, 8261141277956673.0, 2656472999473936.5, 1232164837264494.5, 929, N'vKXQGTls_YTahj', N'pWHLVAWZaXjh_', N'NUHIYbNorE', N'JpNt zgxvYSztlk', 182, '2024-12-18 01:58:44', N'BoaHXGhHzUxeQIOJ', 736, N'ZEwUcKJiKkiAsXrVUqTi', 456, 739, 9603839288833798.0, N'blIj_iHOdsw-MYBOh c', N'LlOoAF', N'EjGOZQg_Z', N'fcHAqsYWr', N'OwrUXwv-sp', N'OVPnRfWRnXKwKdchi', N'U-wbfKNBjAv', '2021-03-21 00:46:03', 0, 790, N'OLnFzqoSqMGTg_MuKyWy', 374257, 670515, '2025-06-28 05:56:53', '2021-07-05 07:21:54', N'cLmhWR', N'KbZLuhlvjGT', N'jaifjkNdFbVHuyhmQ', 363815),
  (867, 226, 787759, 979144, 112847, 453, 172, N'Lu_Fa_fBsrdC', N'TvjHPGiIQT', N'aiuVm-ZWvEFHeqzamb', N'TMrEUGL-lDn', 1, N'WrfdEBRogdbIwYSVqhCA', N'TKhMQJtVRxMqW vTLF', N'l-_MFEeuXdhF lE', 95, 745, N'pacAoHMoLxUhsKoKSNI', 842, N'v_pDi_phZ-AmAFatyaS', N'OqxskC', N'OF-fLcHedQCjjLtt_rPo', N'VFmcvuIkSYb VzPzKqvT', 426, N'pNWOEgfygkdmysIFyPit', N'EX__AkEcqTU-uIPhz P', 7448.87, N'tkTIbvmrvrS', 1, 0, 1, 0, '2022-02-19 08:26:36', 9162037954089256.0, 125, 737, 49366, 499, N'YTklcerZ', 3213757103096856.0, N'bSyEXtvSjCdyKf', 7318998901161003.0, N'RekPWCtrWfDhzAXtUIS', N'zLTvxudNuYY', 191, '2023-05-21 14:13:08', 914, 7241774507506162.0, 1766505669856209.8, 104, 224, 11144862807830.34, N'JXL-CP_', N'osh_PeplO vba', N'NmgvLZEkc_DN rOmf', N'OkOFjHGb EAt', 1683772628323911.8, N'PkXlaMsKCwpnQmC', N'dZwYBQtFuVDEpCd', N'I  eUguF-omjhZZTg', N'Lx GnfiIzHCsgqCNxC', N'xXxEZgxMj', N'YLpmp', N'tfzTlgpFAm', 0, N'h-hpw', 5037903573800728.0, N'fnXyXXGLgwFeRNKykYe', 6818805102580296.0, N'FDdGvjBzStL', 3730035091787836.5, N'LJBQ _pDehc', 9537258567756848.0, N'bwhWqHpBFGzDbb', 8453187950127605.0, 9761514550974256.0, 4069370062794802.5, 6879427796028819.0, 9924776190390562.0, 814, N'oSlrexO', N'qLdA-g', N'MuZWCWQ gXy', N'ag LDbaeKk', 819, '2020-10-22 20:28:40', N'OBGRwX__FmDRKTmU', 716, N'GCisiNfajPPY', 692, 839, 299310168271080.8, N'oSty WFEA', N'SL_xEDHGxHl fvfkmB', N'wOWJMONQrJuKPv', N'yXyldJ', N'cTbcT', N'AoVMKSfQe-R', N'vWzHLVelJK-_PHUgL', '2021-07-15 04:18:52', 1, 24, N'opUclv', 840038, 973630, '2024-06-25 13:49:09', '2024-08-14 22:33:48', N'EVtpnPyaMCehCYhuiYSv', N'_qRpS', N'FwGekIhepozVu', 702047),
  (107, 596, 631823, 81428, 936677, 745, 992, N'gjM-GWFDQahK-wmhF', N'qTjq VX', N'cEMWgvYbGuFx', N'ccKQwVwNkQEW', 1, N'OBHrXkCGD', N'yB _AAzXDEWdf', N'ZscVFSMvmRTgCGO', 144, 515, N'clSR', 866, N'u_WTuTrdYDtXVdWxk', N'lQ-P_pvp_TiMpYWVNQg', N'oshYjg_hVnLGARgX', N'qeNoHjKxpbAeuDRA', 15, N'rBxcIGtM', N'wNa-DbiBGqN_XluU', 8954.01, N'dmqwlIYwbMciFKRo', 0, 0, 1, 0, '2024-08-12 17:26:50', 9470443983745776.0, 265, 637, 669836, 517, N'ymNCuMqHISlWer', 504022502083545.4, N'Wnl-rL', 3926892911893409.5, N'GpRxUXF_yXzJ', N'YaFSQ', 542, '2023-09-08 20:34:06', 862, 4736505066471222.0, 2682512322592807.0, 458, 290, 3243787738840070.5, N'K HLhcu_qw_ujHYGxL', N'bwxFVcwHe', N'_ggoDqCNt', N'--nCnXfV', 2640415681376145.0, N'gfAjZ', N'eZky-VcPeq', N'-gIrrBRRehGBe-MxxOKs', N'MM wL', N'ydRRFnIlSVAnYqaeANH', N'zvFXHpAzIHUPj', N'TBSncQK', 0, N'kewYxXxrJUGzDN', 7444889661227094.0, N'gyx_RkS', 4715070940534452.0, N'tojWEpDpJSlJDXga', 1538483917843640.5, N'lkLgngw-ZnaLKsUpMBNl', 1087666278421313.1, N'pMpdPoxh-', 8676818199538415.0, 2520380929971758.5, 5732556068736170.0, 8952537283292058.0, 9989494548033248.0, 555, N'JXlmZ', N'RQgkojX', N'dbMQIf_tfUAK', N'HQZZgHUtwvyCjISKAUF', 673, '2022-03-31 15:37:54', N'IEYBX', 578, N'lDLUSGPcy', 485, 975, 3924009065373743.5, N'VQRSfYgjlMigUKlAKQ', N'VxwfwXBHJUWZ', N'bgEvCR', N'IcMBRRYk_CuDTvkCRN', N'oXiRM', N'PKMTfBMG', N'DbemQH', '2023-04-19 07:53:24', 1, 41, N'uIBMDAsk', 629118, 984848, '2021-01-25 23:06:05', '2025-07-08 13:50:01', N'KbkmauFoOfAvXFPx', N'XmUmx-rDbvprDx', N'HIoHB', 826964),
  (147, 312, 648014, 658980, 907376, 417, 279, N'gVpcDKxkIe', N'hpDLw_HzR VHEEa', N'BuL ZK pWJdWNv-', N'CYXdqXnKWALjjY', 1, N'yNZpYijRI', N'mVawe', N'nUOKe xpeUW', 453, 374, N'qUezxrFehutdjS', 209, N'xzWYw_rX', N'EDjFgJb-uUvWk', N'MdAcTnEq-', N'IX iKA-__', 639, N'_aZmDyoySas', N'zGTWVlgqddT', 1879.67, N'UcOThXAccEtkh', 0, 0, 0, 0, '2021-07-28 22:33:29', 8538571381467257.0, 805, 263, 82170, 948, N'wtzkpsgVXIFCQwfBiDB', 8734833141037411.0, N'QRmutxt_tcNEjGbqQYt', 8179431192869021.0, N'VRpCWYXhO-ccEyt', N'u_SXHXGmsox_fCQwssV', 126, '2024-03-29 03:43:59', 838, 909801044409907.0, 6230938809407387.0, 307, 61, 3910365868751697.5, N'aNdVVacWae', N'iqOCyVrnm', N'hGoeLbyGSObJFPxxDnf', N'EIwBltPoAWma', 3083033298094690.5, N'siZotwS', N'p cCwyk', N'KpBNRV', N'HkMfuqzQ', N'M Fv_HSiy-QsvPot-iD', N'UBKUSmXwvvig', N'RxUcKdGHuL', 0, N'm-lVxLBMGqwpneM-aqJL', 6111422485241600.0, N'RZrfLIYkJdlAfVyURXZ', 9851187629974852.0, N'HsIJrJdurKNSS uGDW', 3687591608167103.5, N'eWtdNYEySBY', 7379469900930841.0, N'dRMzHlvzgeZ', 6741224232688795.0, 6614791901890551.0, 6385542325000320.0, 9813528667337996.0, 9280143337191576.0, 141, N'APaPYgKMDBKi_H', N'kMwrLvyTmxUca', N'EnrJ-_QUTvie', N'uB-cIYQXmliLUGt', 538, '2023-03-04 10:39:11', N'AUgt_QrEdY-FObZwnb', 662, N'HBwksESNdWrxxl', 337, 491, 4979573360240545.0, N'E_NtL', N'vPqVahkxzFhdPTm', N'DVGCNYZcn_VaMK_bgdOC', N'cxeTIARlDCn', N'aBKGRuoPmeZUX', N'RfuUq', N'DfpofdKbnEFJkZjCn', '2020-09-18 02:48:40', 0, 243, N'ytn ZAJdjxL mPkotM', 614445, 153079, '2021-01-01 20:13:16', '2021-08-13 15:57:26', N'_dmcO RK_oIPdnaD', N'J lMqzfHgWsnEesA', N'zptkjWrNq_gT_VSfNiL', 386218),
  (821, 849, 773453, 78514, 837372, 9, 627, N'SCSDQjDBnls', N'CVJsVqZolpDMLNt', N'diVYSeJesZRrMS', N'DGJfkeVh', 0, N'feZVdgHZr', N'QXLAYezOLnwgqLfN mN', N'TwmVPeIYKBU hejb', 315, 702, N'EKMXR', 647, N'EXYc-K', N'aBoYZimjAACtM_a_dFTo', N'iCcXnomZWNfCK', N'xmlPMx_JBrqjkVMxg', 544, N'DPbGgwQoD WzctJZi MB', N'-lTGrDfnpmQPhPyn', 6869.49, N'dZscM MSZRnaS zE', 0, 0, 1, 1, '2023-10-25 10:40:21', 8473071917570975.0, 750, 815, 152318, 226, N'TtwyQpL', 6569404294605082.0, N'PbHHhYIQmjfSPzML-pD', 7991815644689829.0, N'LGgMsr-hd', N'LKVYwbsoTxmkbJEA', 758, '2022-03-19 02:45:03', 746, 198335702297861.56, 9360886357343600.0, 417, 244, 688726427193188.1, N'KUiiyfXRisDbQYEDSko', N'-DbxurFhSsn_ pw', N'GdQqpkrqDHFcOFN_qGPM', N'buzFs zkKLbJnUWUm', 9442634631621392.0, N'TtqJcY WBQOO', N'qy XIGTnIVzYYy', N'NeyqNIECkl', N'GpyqWOvZl', N'nkmhJ', N'j_SkyUxteRsU', N'OTyKfOCtjYkavwAe', 0, N'EONPh oCRMVM', 2461428274476390.5, N'kAjoHjiVLgSrFQQxyHB', 2027800553461211.0, N'hZ-PDSjUo', 2365421839002390.5, N'sCWuquwURYn', 5348818187645599.0, N'SFHfvD', 3474412186864194.0, 8893494742743581.0, 8915173111942927.0, 1966938691585247.2, 7099579027171349.0, 702, N'hgxTvK', N'FsrjWImXTkaPk-rE', N'TlffwVnGwmfdDr', N'CsroW', 314, '2021-06-27 11:03:37', N'LurPFPlfJnHS', 494, N'NwHUSTjTnrR', 580, 347, 3078139475112003.0, N'uPBGhJNLhfN', N'k-jTIQIsk', N'jAsRTmvF', N'HsdWwiy-cL', N'LONuFEyCATmOXqgLcH', N'vwl-C_B_fT-YGUxiHc', N'bccWgszWfgIveLwWRMk', '2023-11-01 22:55:31', 1, 458, N'pvllDBlnEf cc', 221796, 332066, '2025-06-19 03:48:09', '2022-05-19 21:41:20', N'OaABYUWeTLNeR', N'bLQWpoUNVfCci', N'aVZNxIEqCIlXkXkSQ', 675538),
  (789, 833, 347363, 102283, 758072, 255, 339, N'aEIDo', N'usZIl-ueRCW', N'oNJEWmoAoA SXOyvuSEq', N'glPPyWCqyWgWnKCBeb-I', 0, N'sHRXzxO_BKOiqSf', N'GoVxMufKsdp', N'pdnylSf-rN', 90, 579, N'ACkYSDXUiJvcbc yi-B', 171, N'bhlVqXxHXwFSlwu TtC', N'IQjapWNTgTYy', N'YnWquUlakULaqW', N'lRr_XqAFFFeTSvKYGzGN', 654, N'MqEoSD', N'gU iDFbukPMWFp Ajn', 5896.97, N'coAGUWnHPytkm', 0, 0, 1, 0, '2021-10-15 05:54:21', 3684599113531301.5, 109, 826, 487090, 336, N'hdjYcPXDaRXXolA', 7994298473200029.0, N'oD vvUHFLOJLqWKGTEy', 9980633444549912.0, N'MDIbOaDXvqobd', N'MuCjegzmcTXVfCmVlsjW', 26, '2020-09-23 23:31:42', 277, 6320435538134007.0, 2176823368106326.5, 228, 926, 6601858685360199.0, N'rUDdUCfnSvsBoRek_Q', N'-QhEKHTIm', N'jEkspfXwZYZpGfOZVv', N'OswxrJ', 9300483078667348.0, N'rFymvcK--xlDw', N'gcmHHdYXpqDqyxNp', N'DjGjWII', N'vN_xILYxRVrYXek_pZI', N'pAIjBatHpPzksF', N'WCkHzA', N'bte_TslDvZllFDhhSm', 0, N'YKFKEGFtsAUeYi', 3917620596437953.0, N'uwJOHo', 2329745296183039.0, N'dKcpAKORkZcwJNNQ', 828554158722217.9, N'PzPcoGIgUyh', 4702238282125127.0, N'CKtiYkdTbXsxFrZcst', 1688701067640029.2, 1375637597626303.5, 4233386144116182.5, 7033137566631603.0, 8142819079799926.0, 301, N'gnbpXEuiwPVlMgqYZ', N'XtSsnV', N'EqKeZBMsEpqYYJWLnbW', N'NrqaIR', 220, '2022-10-18 02:11:58', N'crMjVMY', 779, N'lQBJ-NhOVTefKReIuz', 511, 478, 8636344546347023.0, N'TtQbzi', N'lxTTBDNWJMyZ', N'IrPfNxkw', N'--TWShZ', N'ETiwDBCJu', N'BlUGNYrshkpXvKdOyCZ', N'vBpGUGioLRlgqAryJTr_', '2022-01-23 01:00:29', 1, 876, N'b dAYucwDPXHPjNgo', 117231, 790360, '2025-08-05 05:54:07', '2022-07-18 14:27:08', N'aLfolM', N'hFoYzngBvtbNHVDlX pg', N'owFTfvgaBN', 460676),
  (979, 306, 188038, 220771, 268978, 592, 625, N'o_uiBzBBjw', N'ZZbWwoyFRHALFoyhW', N'uJDv-eIOWtoCS', N'LeQM_fwSQETKdp', 0, N'HGkODfeYsnfwgnZh', N'gYrcv', N'UrCyY-iMitUaKvPueNZ', 112, 40, N'VFibnkocGMX', 715, N'ozGeznLUJ', N'OjqKmlnTXLcfKGQPPG', N'fkuzRqdGVMUdGalgrUPI', N'XZDW_DLEx', 512, N'KyVmUFMSeWwN', N'SOKrUPRYjnU- AfM', 1654.8, N'_YxaPg-sYRWcQ_jgxbgz', 1, 1, 1, 1, '2022-11-20 19:04:55', 4390519784801523.0, 872, 835, 837621, 114, N'KnWiyy-q', 4874952822256159.0, N'nDzSwqU', 5807695025333321.0, N'XrIDH', N'ZiMko_pWEWQC', 819, '2020-09-14 16:58:04', 171, 3010005228967007.5, 724072893686829.0, 636, 877, 9761046266152332.0, N'aJf_hXVYWqsJFJLbTl', N'hFzNJm', N'DNgQj', N'dtfgmf PQgRfGPKJeAg', 2270947787203444.5, N'FxEds', N'svMXOrIA', N'IfRYOLCmXFBPFrdAmE', N'gWtbH', N'THaOCCejHvKefNw_Y', N'BKwUYLDM_K Qsf', N'slmzXpob', 1, N'qZzhHdfp', 3438341664472148.5, N'_sQvqBkMGzatS tkMU', 1024392359372386.9, N'N KefdHmg_JvQO', 2043713749505397.0, N'uWWJxUFn', 81357592176748.42, N'OMlxFA_efzc', 4016751758824889.0, 793407355580846.2, 4574225520905483.0, 2661722360487809.5, 9314252595948414.0, 864, N'ZZNAOJvGmzGHL', N'_jukShENvMzM', N'OWBCeyBwIUhZ', N'jj-Mnkix', 7, '2021-04-22 18:19:18', N'C EXOc', 343, N'-zgWlU MUioka l', 434, 253, 4053686556056935.5, N'XfDHSvVnw_Knbwyaj', N'zWDKEsKLF_JU', N'SmpOplYDr', N'hlLyBTsEFe-LJv', N'MNToYFLyj', N'stwXvzbsttDnrXjax', N'FLvQvTPlSIfaefUrqm', '2021-10-25 00:29:32', 0, 519, N'cqoWXCkszq', 641801, 806095, '2025-04-03 08:57:30', '2024-11-11 04:16:12', N'DkeoFisEAjBJO-', N'zVFLS', N'_tiofeXoViUsa-', 789783),
  (611, 943, 977114, 748971, 298958, 184, 765, N'ucvVeGaC', N'zngKhyyyY_hlG-', N'DBIYYNjgfNR-caX BAC', N'wGHwyr', 0, N'MOtiHX', N'mbvH-_E_VxB', N'GIyzeSAhPGy', 274, 644, N'--bIlNNJduE_i', 375, N'kevKEWSPUR', N'wosyrwIUexEdxIUbi', N'jzuGRtUXLRq_GEyKn', N'DdVLGWJ', 749, N'tP umj-mqGDoou', N'tyyTr', 6913.84, N'JKIyNLdpHYwUlB', 1, 0, 1, 0, '2025-07-09 14:29:02', 853032221125975.5, 693, 555, 344472, 656, N'DgteVS_fcXiuZZrVfIQ', 2054346463825972.2, N'tpJ-zMFvhImIbNGoQwd', 6860030285006068.0, N'FtrRuJgGpwQZMHvjwXda', N'wQEWptyaHphE_SF', 364, '2021-02-22 19:45:31', 382, 2698628891467925.5, 7741681143456122.0, 575, 407, 5124453232470921.0, N'pbnVm', N'ASpmapvz BmLEshbWlp', N'd__totokQfyVQwOP', N'kMDWnWwtnmP iQp', 7430038215550571.0, N'EC_PZUzVuvpVuk', N'tBcwo- css-noTFyeLF', N'utdGizDIxCnxdlQ', N'tVwvH', N'jTyfIyibsbEYBLqDiQp', N'R-gQajw i', N'QFdAVO', 0, N'SwTBPGjFshAZZfThe', 9922938038610864.0, N'uWpempTblcDbzagCkXr', 3404969107394057.0, N'yjREIrHARLDDmV-G', 2896718820162597.0, N'PEX-GMdfIXuRfp-fDCuj', 2279781242546835.5, N'wGkAKCi', 9236179979330774.0, 2911678879572160.5, 3554562631209352.5, 7681851018186305.0, 9560442960448488.0, 26, N'bkjEYOZAqZh', N'vatqNoksSYSnraz_hf', N'vHBOulz_Cs', N'zUzwLOc', 738, '2021-08-22 14:51:56', N'hfnpXYtA-GwZQyKqXX', 337, N'AgDypS', 916, 130, 9184263453766712.0, N'JPH_pnPPbsRkwh', N'drEaJvNRIHbf Ri', N'QQCprgc', N'wzxLA', N'Ek_S_tDZo', N'rRlRtwLG', N'YaZbLXQjCyC', '2025-03-28 23:12:01', 0, 281, N'PTxAU ijO_T EwNgj', 290647, 295488, '2022-08-17 19:46:34', '2022-06-21 11:02:25', N'oewtZqRJ-t', N'JXPRiyXQYJLtct', N'GfWiDyRluOkCfZffz XV', 649335),
  (373, 91, 603132, 545689, 557434, 316, 821, N'SqbFHhHPat', N'eVlaHp-M', N'dikGOxY-l VVuB', N'WCWIohpgytsVGKb-W', 0, N'UJEEoxudRmRBctXT', N'xHa  VrDsfDLR', N'wqQabGl', 745, 896, N'extRQuEFAX', 538, N'ZAXCticuwcNIUI', N'lcPhIA_bI', N'HC- oeZvtRNuQMmVjG', N'aJYLLOnKsTPcK', 948, N'YOg-CAZ', N'iQsxfTBPWSa_KzN', 1937.81, N'eyPlXT', 0, 0, 1, 0, '2025-07-29 16:24:51', 2335094565800190.0, 62, 486, 197717, 276, N'jwpyAjsUGc_uapw', 6845362155413527.0, N'ydw yowPVpcBQbRb', 2552545144819876.5, N'VdQzysN', N'aPG  qLecieETzx', 843, '2021-04-26 18:54:07', 551, 9877303382126710.0, 305763993329191.1, 404, 347, 5703768280433956.0, N'MxtajOKhUuCvY', N'qD-VRZaUkOau', N'LDSsMusFRyCyu', N'xmKGh', 5111780862028048.0, N'DsnGIjQTDQOptqks', N'eoVNJDeMJGz', N'Ete-y', N'wlZj_yziyEwKysmWtKM', N'pxtaRkYcG-wV', N'QBsA EUQ WSWw', N'oHwoPtn', 1, N'rKcaWF', 7602618304571562.0, N'FACp-XQt', 7677515163363376.0, N'jM-ZaLJfTtwHbET', 5435436809569727.0, N'Ndh XTApxInutKpEq', 3401250285472655.5, N'CzEtl_PxvtZKezgwxJ', 3398725429344898.5, 1763279470737928.5, 1524732118858202.0, 9632671066267770.0, 1021453043108295.8, 57, N'FuUzPZc', N'xkZRuae Q', N'MaueTu', N'FiSDkb', 50, '2024-10-01 12:36:56', N'xYbSRzYqvsj_w', 604, N'BUxtRLHQQAymGt', 308, 408, 5975966743320699.0, N'tQdShVl', N'X aRVkVSVlH-iz Czizb', N'ZiYW-', N'OL SZPbsd', N'iltgLVQvIS', N'AZroizvrnJGydokMZv', N'FGQozH', '2024-02-18 06:24:34', 1, 254, N'CjxHRC', 409290, 695948, '2022-05-22 01:39:30', '2021-01-18 22:06:30', N'tjZFWmxQbaoZti xcMK', N'HD-Dwelj', N'acomYM', 152365),
  (274, 31, 123280, 838224, 483100, 876, 538, N'xoIwovoKk-TzLj', N'YkaXzTxYQgjePrc', N'dLVU-', N'maAwYVPecZjoRFzfLaPI', 0, N'CwGBJQBLmlnRJUfijhdh', N'tjEDPMZBXNF-fATq', N'gTKe_yM-H_', 843, 210, N'qbclzGhbA', 244, N'tPfdeiTehlvDIE', N'jUwalPBflRGOLQnSrMiy', N'bgnHhus', N'pTxaCDl', 806, N'hNHkrMdaIfAHMbVl', N'EjclEChy', 9297.14, N'HC_MhBLzUrDsoNuIjIxX', 1, 0, 1, 0, '2025-05-26 13:27:16', 4376846329864485.5, 987, 15, 536835, 71, N'VnqCM-CpcuEIwBVUV', 263694288956601.84, N'IwRhOvEnyklHprrQpsJr', 6582842668460390.0, N'elKrDAMHFWfiuNqm', N'bpBgwktQEJiAHOPacdNJ', 571, '2020-09-08 06:13:33', 13, 3987752155505991.5, 7044825579423026.0, 795, 124, 5722890927091926.0, N'EwxAwLoe-FVRacnkuphp', N'QNciU', N'NMVSdpYMw', N'mtIaEZJvVfh', 6042038344848818.0, N'suhkrtCHQEiRC LP', N'owyzilFdbH_kO', N'mHEEkrxWMwnCMaYHBgc', N'dpUpXNiwWoh-TWJA', N'ZWflVh', N'sNS-JA', N'IfliZ', 1, N'ICJcNajFtfnxBFBoLLWd', 4959572609945501.0, N'wXOSy WHVubw', 8787292833005104.0, N'-WW_BpdlowptLiVpidax', 6059772400187193.0, N'yLVSkMPfvJqWtuqPCN_', 1004522756563597.2, N'Awmbz', 7159505282752842.0, 8278214988305855.0, 6928253039100941.0, 1198076535225803.8, 3357097472997261.5, 750, N'BvyJT', N'zfXtOaoITMPXVhi', N'cET-DwLnFIaEiaOyOD', N'BfBZHhZZOUA', 572, '2023-01-14 00:55:39', N'ouoi D', 397, N'LFdWof RtPr', 132, 74, 8169628504047700.0, N'c PpZLkHKsa', N'kgyHOgpp', N'HsmnKbu', N'JVbcGxwCASvixSPOxqs', N'lRyQoriQiqcpFLjPEv', N'qjsxYgnNojHd', N'EjzwjwSpVkRpJx GG', '2022-01-20 18:40:01', 0, 11, N'bDFjjoncZLYF-HWGA', 195706, 460662, '2025-02-26 16:41:48', '2021-03-30 10:04:15', N'oofzNe gpUHp-', N'dDSwZQw', N'iKuxxDOlQnNSMW', 157520),
  (115, 263, 321619, 26095, 883532, 129, 56, N'E MuX', N'IGAWesgujA', N'StoycuehTqtw', N'WY YZ', 1, N'FsJdLtRtc', N'xNn-tBdC-e', N'TBzEZckhFtivV', 850, 30, N'IfXnmMqznxnOVQ', 4, N'cTwBK ArZj-vgrOX', N'g_YFxfmk', N'wugIUcCpUfFevtOp', N'OLdtyh', 103, N'wOGCjZZI HaDCvqf', N'aceUIdVzxjzzeGKbhBAF', 6598.24, N'wvzfreU', 1, 1, 1, 1, '2022-10-13 18:44:35', 1595477858392191.2, 830, 976, 493317, 96, N'kQyf_nrG-NArqBeoSKbF', 7173194543276561.0, N'pmWaEhmHZfwyDl', 2037312115885375.8, N'gULlvOhi NSZRDcRW', N'FjShDXcDyRoFpeWDzz', 686, '2024-03-25 23:02:45', 347, 3681056139992918.5, 527346618632522.6, 556, 212, 7649210034351678.0, N'XoygBPV Xru', N'wLM W', N'AumbQxozin', N'fLKdpsbrr', 7514594694360350.0, N'sEurfqaB', N'ckUzlBvy-zapa', N'xbZtJHa csnedxizJQD', N'BMeOS', N'gJgeWlfNRaW_Je', N'vmsANsJvI', N'DSemy', 0, N'pIBYHDVjGDk-egxB', 4915637357072850.0, N'KuCEGhkjpgi', 3559555674069924.0, N'vYuyGKVWw', 7845726820174606.0, N'tIhOq-fCikcp', 3678363385192325.0, N'rrkVrQ_LFnGyRpWgZx', 1072276510797464.1, 125221541053580.62, 2641596096471230.5, 9373069598717492.0, 2359932016002886.0, 49, N'JIWNY', N'wFJvdzmhvp', N'cpXcGDomBopXv-aIhs', N'Nzwuqb_U GhrYyBQnp', 131, '2021-07-21 07:15:43', N'cgnUfLRiCIVcR_xdIWJu', 548, N'FBwyFhQdEfgW', 771, 246, 6240192178764949.0, N'twXhPOFtYVCM', N'PM_TJKhHWDyF', N'ZecVA', N'CjEYSAtpXr', N'BZZpjnSerxw', N'kIAboI wM', N'VqTNBQlqQlIwsbbzGzy', '2021-05-07 02:08:50', 1, 513, N'oQqLnJKvHW SRukWr', 518918, 549951, '2022-08-05 11:05:43', '2021-05-15 06:52:47', N'mNWkETV', N'N_TEcTFr', N'njqBVIEPTLDPpZ eG', 885530);
INSERT INTO [transaction_payments] ([transaction_id], [is_return], [business_id], [amount], [method], [payment_type], [transaction_no], [card_transaction_number], [card_number], [card_type], [card_holder_name], [card_month], [card_year], [card_security], [cheque_number], [bank_account_number], [paid_on], [created_by], [updated_by], [note], [document], [payment_ref_no], [paid_through_link], [gateway], [is_advance], [payment_for], [parent_id], [created_at], [updated_at], [account_id]) VALUES
  (470, 1, 573, 7614841810242691.0, N'wfeRNGOUgC', N'p-YYdsHrZtqbBGUru', N'wWCPnbvRVFJxDtj  E', N'wdFjEjzqwtHZrnYC', N'ZZJUK-SdmCiZtjsFNC', N'uWvLSpXB', N'dAE ssfIFQAEs', N'WEDai', N'LYBHLJHx', N'KReaq', N'vBXKxQNDJZSlRNmYHReW', N'rl_JcbX_m', '2022-04-03 06:04:40', 978114, 349805, N'SznkRVkqQaTnxSfy', N'ksBmarILgTp', N'dWFirqjIJMrzE', 1, N'_btcLMiEPYKqupfG', 1, 880, 239, '2021-09-27 10:45:25', '2024-05-09 22:14:06', 139),
  (329, 0, 600, 7891280436996423.0, N'mqlMHHco', N'rbHzgIlwNq QNrMpMRcc', N'V-kzzTKUcnbKuScZ', N'JWDrUqB', N'DAIGMM', N'AeGQTrB', N'YOtOxLkLhAV-RkHfQ', N'eBHnsrC', N'AmYS-QdgpWeTuI', N'wAPvn', N'fht-rJnn', N'csrQnHRXARoOI Us', '2024-09-01 15:48:48', 434220, 809700, N'NjjLQsXyNKlvf', N'UIxib', N'MMVmk', 1, N'VTPNAVXSGk_N', 0, 996, 979, '2022-08-01 13:48:09', '2024-01-20 13:37:48', 729),
  (538, 0, 746, 5850697348138351.0, N'VYMsSYKRiyQHOOAErYn', N'FyeCuvaZtwhLJwem', N'FFwZOsjvjU', N'mJ_ e', N'Ll_JEDeedMvZweQ_', N'Y_hYq', N'oouVWHGaNNrj-Sy', N'cxlqmSq', N'wOlhoHhix', N'JsbZf', N'IaHCzUehA', N'ABBZsSHQO_RUVRNfjyzl', '2021-03-04 23:01:48', 327128, 343460, N'qNvmluJv', N'poJVZMYjgHhB', N'tPBdViLphstRkWqM', 1, N'CqduNwiV X__anxhitC', 0, 891, 682, '2020-10-08 09:40:46', '2022-09-30 17:54:14', 528),
  (892, 0, 100, 4648368192416731.0, N'mydbOY', N'mnko-MRci', N'kNYHgmYRcEpieQs-r', N'Fd-rFZySvinvNXlpKT', N'HNidmcTOyyErL', N'IUYqxR _lTIxXYNzz', N'T_LBdafZYn', N'vsHnahzmTORHoJ Alf_', N'iUV_vuA X', N'ujltB', N'-xMpNN_SywwMJ_Ufwnn', N'IaZRHQT', '2025-07-19 00:36:55', 55292, 456224, N'-Rb FsKotdIf', N'OsRdDuzm', N'_CvzGZWnWJNrwM', 1, N'IseqNaa_vyo', 1, 446, 95, '2025-06-24 02:46:31', '2024-02-29 17:42:45', 864),
  (668, 1, 731, 1266165851039506.8, N'ndNQTghbiFHV', N'OwEMHF_oqbKSBbPJcP', N'- UYAbmrnCWUyFp', N'IeXz-CfDKsnThDhvf', N'b tpan IMCBqo', N'NRoCmAE_zidHFZ l', N'GsYqahlrSqGlXqJTM', N'fT FdYmwCzUPvCajd', N'I AuvvcenNVAyuePaaG', N'AKBcH', N'AAhmH_', N'CYWxwZdqYzIGNzQ HEBE', '2022-06-18 21:16:14', 403954, 390732, N'wIDzKtGOhb', N'SGebo', N'yNYhVFDn WmNineD', 0, N'VWtra', 0, 245, 637, '2022-05-21 18:53:12', '2024-11-11 05:41:48', 309),
  (392, 0, 218, 6504069486902732.0, N'gLIpqbQrFnLl', N'HEusQbKuJOYMZyBhRC', N'__omxpEyd', N'UAiCu', N'ZaVlPJIX mv', N'tnmiWi', N'Zca_OTVYCEKzXAyB-', N'YNvMEVuOalvqZNgxCEk', N'yaMMvaBlRVP', N'dhkNn', N'fRBbr-kzosmcEk', N'DriDYtjXsFQ', '2022-11-11 05:38:56', 518812, 433289, N'HouCfKwnhtltuRufYN', N'P-eYiCVxfN_', N'HVrvHUPrmxZm', 0, N'qrIDgpqctyZRJpWm', 0, 691, 736, '2025-02-25 15:56:59', '2024-05-29 16:31:29', 408),
  (980, 0, 348, 3575931034791071.0, N'qOjJ-rh', N'DDxUFUOjojRoFHc', N'BRtqcc', N'lYQIlCjEPRPdSkN_qoKH', N'NgSNm', N'-th-g NcsXXiu-', N'biVtWYhG_jFTeuwAQ', N'KiMpJZdQxmt-qm', N'kFgicUTOhjxISHh-', N'IodVF', N'iNSPVcxBwuQdrcZy', N'wgGdVSXmozoYhpg', '2024-02-02 01:30:26', 799421, 352365, N'NsLnpBu', N'dnzeJxtKDH', N'YV_sRvwdxYz_FYJqq-', 0, N'zjXvEWCoZnFu', 0, 716, 118, '2024-12-07 10:58:31', '2022-05-06 17:06:59', 125),
  (898, 0, 448, 1830910183969055.5, N'G-pp-RuA', N'tTWfCakVMXagCVU_una', N'LWwemOUWYdx', N'CbHccVCPd', N'YBmrCjTQ', N'xnfw-Z', N'hHjkukL_AX tmvq', N'XEYmuvz D', N'UwFogKWjyj bz CQkv', N'EkArf', N'RzluSQODCgiuSXd', N'LuRZcMWyC E_fQRP', '2022-04-09 06:24:43', 260933, 220607, N'umwsnhEVRhXKuoW', N'EXlsBURZneJ-s', N'HavtHFg', 0, N'ubYExCmRenc', 0, 362, 114, '2020-09-29 01:25:24', '2022-04-18 19:06:29', 615),
  (783, 1, 239, 2599799696015108.0, N'TMakt', N'MpErN_SdoVOEdD', N'kjhd TloUS-qZk_J', N'xVgMbxYnQVaGzJyS', N'dtPVCVAJKpzBjLCqH', N'hBMTtyaQ-', N'NO Jd_', N'BmEK-TOK M-Qu', N'TOKZ o TQnLO', N'BxGwS', N'sia_Pr', N'AQoyBc', '2024-10-14 06:19:36', 128753, 662172, N'QCRJURRWhn', N'PboXBcxqrAnvyAWopZQI', N'AdAPxmUAKkVmgKe', 0, N'bRIbU-Z', 0, 45, 384, '2025-02-06 02:16:04', '2021-08-14 13:00:12', 692),
  (664, 1, 368, 7663920125834540.0, N'swyTfxyFcU_TCRtPwR', N'XCGAi', N'JDafg-Yvw', N'QkSCUbMZpCEITQP', N'Tz_lRmnxO', N'MFYdAb bkdrukz', N'GfHmrn zMLEUJdhcJoq', N'DZZkB-EAuTpBW', N'UsD-EQULZLsLZcB', N'XzPum', N'BiOsKFfbyTJHy', N'NDZK_sklFb_PgwEy', '2024-04-12 00:35:17', 715224, 994790, N'zXAgbQKokYvURnY', N'rFpasXIdnZhzUYQZ', N'pHuEgfbrYt_WXoWZhef', 0, N'YIcuCgeHXvqoA', 1, 538, 390, '2023-03-17 01:09:57', '2024-04-16 05:16:45', 282),
  (248, 0, 150, 8849962219618170.0, N'RciytrmbIc', N'_CE nO iMdTuUR', N'fsqC_xs-d-HIKClhs', N'_sEYYPASjMRXWelRkPDI', N'-HZpbhhA', N'eBdOux', N'xDuDeccWoWHdpU', N'RsAEaYITzrfl _meHB', N'j_roPDRZtRBebaR', N'qcMaP', N'qhbgBHIo Wd_xG', N'IuGKNshtfQxTLrA', '2021-10-02 01:18:19', 572926, 257198, N'qYmClB', N'bwgvPkZ_Zsqi', N'rZnNQLuiWGhUV YhVr', 1, N'nbQJazeiNLIJvB', 1, 580, 392, '2023-07-21 02:34:27', '2025-02-12 15:42:21', 989),
  (123, 1, 933, 3539066762304431.5, N'tvahSKBi', N'Ri-gBNDLsKY', N'PBTCTAJBgmQe', N'xbYUGXAso', N'aJUxiQzXrP', N'UxBjbgDMBktq', N'sFBDUuU', N'u_QmfKAIFiGLGe', N'HTBsoadAni', N'rjwYJ', N'mAExlfl', N'faebalb i-Xzwp', '2021-02-05 03:55:23', 805892, 509998, N'EngAg', N'iEamTD', N'TvXmDP eXiHa', 0, N'aCELjvoTX', 1, 440, 346, '2020-11-09 01:32:45', '2025-06-12 11:23:47', 836),
  (127, 0, 205, 4010434060931385.0, N'JGluN', N'gyhGnlncdZqcbQ_m', N'la_AimUFi', N'bGzJSKOQWcFyz', N'CvPsjGp SLQJjm', N'XaijrPk', N'IQYOoNYR _kDXSG', N'Ds_KLgaMCgVUJ_O', N'yRhYdTMMsejos', N'OYixv', N'_HnUivhskjKCr', N'UUWrxiBgUrCxBHlioNA', '2025-01-03 04:22:34', 939634, 29198, N'fBSeIWrGpHzwUcK', N'AQ_neTVG', N'_Yw Kw', 1, N'DhGvCnttOc tb', 0, 990, 687, '2021-01-10 12:55:06', '2025-06-22 15:50:28', 951),
  (465, 0, 949, 5451329341256176.0, N'blvHa', N'BJqYTsYOKDHRRH_OC', N'HZeUrasQuIKmeDQ', N'AKoWwkcheY', N'wWpaRuAeFTtxMOXK', N'XmrkPDzKqHeyd_', N'MdHSpMnj-CGLZgeh', N'V KEwodsoamKkHPSw', N'-lfuCAYZKoQHvOpfihE', N'mwvQD', N'dfFTtdwSv', N'YoaAtsKSvxaEKR', '2024-09-21 19:11:34', 243964, 878550, N'LnnZzvrf', N'- IIRxVHb', N'dJjyFcFZbTXBgQLHQFl', 1, N'AZeB gwuFi', 0, 110, 952, '2024-05-15 13:24:40', '2022-01-31 07:41:48', 300),
  (528, 0, 475, 5213551336233990.0, N'YKUmIcPGkrzsVfmSgHu', N'YWnkgDAC', N'sibCXHurGhi', N'DmSI MrdJd', N'kNKyS_Nup HkaEPQYG', N'vHiGWS', N'shZWfn', N'zkuZoPwceYcE', N'GHcnt-Nb_Tmm', N'XE Cb', N'ZiYVTbkGBJCkxH-u', N'rjJZxlwdko_CA', '2022-12-19 17:19:44', 188622, 285617, N'TmUtgmqPeJXJdUKf', N'hXINWrQjRHpoEPwkBrY', N'aMXhD_FUFMcAENCx-ofe', 0, N'pzhpipeb', 0, 301, 34, '2021-12-12 04:05:16', '2020-09-10 07:22:28', 510),
  (685, 0, 819, 5126796069832347.0, N'AdfbmideDnsyLcrq', N'cIvPWOlFmgRCxfB', N'FSzAO', N'LRPAKyeq-p-NV', N'jQimOCYpeD', N'TTWzsSn-EBZyhYcpszP', N'rABfowIamRFN', N'YuopMTZfDObnJZAeyVFH', N'ZCATAqV', N'guEeq', N'h-lSM WuHhkN', N'TMkVRoeec', '2025-08-08 10:34:29', 968630, 978051, N'BxrEMcjXX', N'SZAODZGjosDA_oaqfino', N'Da_YZJQWlnlVizp', 1, N'sJNCUAxJlGGxMBmdsyl', 0, 486, 476, '2024-04-20 01:57:13', '2025-03-17 06:06:17', 942),
  (289, 0, 820, 9632159786575334.0, N'zbjwxjXAQ', N'ehVTdSVH wuUpbBoCc', N'kxIAQWVBZyO_', N'BXtyp', N'pxueb', N'RyHXLKhBkdh', N'LkTuncxEmA', N'dMaVeMb', N'm_ePG', N'NTwsK', N'S SYSzescnHKxRh', N'hb tKcpRtyoGxWmq', '2024-09-16 13:12:51', 303206, 713019, N'-KlrpBrpaaJjmC', N'zBuujEQ', N'ZgpOAwbnDhKxkO', 1, N'kdrJbVXsC', 0, 447, 9, '2023-10-04 05:35:20', '2025-01-02 19:01:16', 492),
  (253, 1, 837, 5343176632951248.0, N'wseoSmYbJxb DdKDKiIS', N'MRd DI', N'r kOiV', N'OR eAsaFxfAaaZuhDSLk', N'Az_IBjlgZIGrBupPW', N'PuEJBq', N'KFYceTfP', N'__-rPUeJkFyk', N'yCBYZru', N'XfbMC', N'Ynn mSgP', N'RoZOdCMzDMvqXJ', '2021-03-03 19:54:09', 795902, 8099, N'rmLfkhAQW', N'XzkLCMM slwyxPlP', N'cavqgFCX-J asnamju', 0, N'RRw JnPNaiXq', 0, 925, 551, '2025-02-10 00:02:46', '2025-05-21 15:07:36', 109),
  (692, 1, 141, 2402763353124616.0, N'QLdNcinXQYpH', N'XFvuy', N'xcLMkwmYKnnw', N'geh-eFgxy', N'y plkTRlNR', N'OnKBRHoeKXf', N'LGFkszl-tjrazFIm', N'HqEfHkjTFlyoeqeT', N'tLpILEuNCqsBI', N'Elagj', N'WUtigBMQj-srHPIh', N'NfDCxrtxXE', '2025-06-04 07:40:53', 292130, 318042, N'agzDlZioWKlpGb', N'AiFMuMj', N'YdTHWKCwCpJIv', 0, N'ggYqzAmrqxw', 0, 527, 354, '2023-04-10 15:37:44', '2023-09-29 05:20:33', 158),
  (168, 1, 924, 619690451663329.5, N'QpUhlmQtiIYjyct', N'bb_DfIuNkeMbzif', N'yRNErpe', N'cufuSTGmgJ', N'gSusla _y aABPFHI', N'FkLkpk', N'X DKKs_-Gbg', N'lrZGCex', N'y_pHQRSQbfZuUeU', N'_zFo', N'AHkhgNYt', N'MkGfR S', '2025-02-01 10:07:16', 210344, 959459, N'abstN TDTiggaFlwD', N'Blgds', N'nznMPuQjsBIEzvr', 1, N'bYFbC WqtMKm', 0, 344, 124, '2024-05-07 10:29:07', '2021-07-13 19:40:30', 439);
INSERT INTO [transaction_sell_lines] ([transaction_id], [departement_id], [product_id], [variation_id], [examen_id], [acte_medical_id], [quantity], [is_paid], [requires_ticket], [is_ticket_generated], [secondary_unit_quantity], [quantity_returned], [unit_price_before_discount], [unit_price], [line_discount_type], [transaction_sell_line_type], [type], [line_discount_amount], [unit_price_inc_tax], [item_tax], [tax_id], [discount_id], [lot_no_line_id], [sell_line_note], [so_line_id], [so_quantity_invoiced], [res_service_staff_id], [res_line_order_status], [parent_sell_line_id], [children_type], [sub_unit_id], [created_at], [updated_at], [prescripteur_id], [quote_part_percentage], [quote_part_amount], [patient_reference_id]) VALUES
  (265, 910219, 140089, 429, 399932, 798756, 73221116710718.84, 0, 1, 0, 9440715957772500.0, 2613215517697086.0, 6137396240445938.0, 6742258889674294.0, N'aS_VdTNofFzGrzD', N'iDsOqcOmNkxo OoYBJ_', N'_vGcwqvJPckBtQOmPsJk', 3541386858817177.0, 2223235302670438.8, 474285775160385.75, 686, 319, 800, N'LTczQKk', 788, 7352842151473081.0, 400, N'_rNEU_IFKOU gkk-', 522, N'fVJswUL_ngL', 290, '2023-11-02 09:30:52', '2022-06-18 14:53:55', 795815, 2087220539030954.0, 127648017489313.53, 54404),
  (411, 370324, 985062, 120, 307135, 981981, 3083179800858929.5, 1, 0, 1, 5984598594356497.0, 2782476254555586.0, 387285929844212.2, 6958372049564675.0, N'_CrAlhbJcpBYDOqvGF', N'wxFNvED', N'fSZeyaXseGZ', 4509993819424729.0, 3132943300514539.0, 9200685059080044.0, 624, 138, 816, N'KScGM yE VMY_cd', 955, 3089038539169029.0, 539, N'cgsqotCMty', 235, N'NaRJmOu', 98, '2024-07-04 18:28:05', '2022-11-03 14:03:45', 530008, 9172928471730400.0, 3813361173990771.5, 410890),
  (164, 446767, 471078, 224, 222028, 303282, 7611407759525591.0, 1, 0, 1, 2259487003777695.0, 1379941025189169.8, 4112862802211167.0, 8596529865628033.0, N'EalhWPXgpdhTdxema', N'_fCnlwvgt', N'pYOVXKpBD', 6356105901468762.0, 7086204782603109.0, 4240280386771204.5, 575, 96, 26, N'cBKBcvcB', 126, 6823899904544374.0, 977, N'xuSJqrxhLE', 809, N'tL-x MdpGZ', 963, '2023-04-09 11:48:50', '2022-08-26 14:19:27', 916047, 7120562394595281.0, 9467791492515670.0, 243470),
  (482, 525525, 730961, 652, 870905, 913480, 6892763625670134.0, 1, 0, 1, 1578739778859003.0, 4865917510064073.0, 432828580586048.8, 7023195808343682.0, N'AIUBx_', N'SbdgEh', N'usLNFKmKRbzwQ_VtOwkA', 598162447843134.6, 5617059706314339.0, 8816683686304032.0, 791, 44, 105, N'NSTITIHH', 290, 1773960707112102.2, 699, N'AdeFmfKQkJmraXB', 151, N'pigcYtZk', 82, '2023-11-12 00:06:52', '2022-09-18 04:37:21', 281338, 201103261626997.0, 9656053080737144.0, 155457),
  (420, 949236, 227985, 17, 667052, 480627, 2789200726219852.5, 1, 1, 1, 7896743663576659.0, 130856588714869.38, 6300565145295393.0, 4013103260223427.5, N'HKJsnyPnLBl', N'VS SvLoJ_uFXzHYq', N'nwrxipGwELPeIyIn-', 3974291025462476.5, 9650946611575070.0, 7123192589443630.0, 145, 38, 431, N'PWQDZk_', 732, 522465922690229.5, 457, N'dowETYdsP', 392, N'qrOgnPnEshYn', 966, '2020-11-03 15:59:50', '2024-01-19 16:07:48', 274608, 3141095549873883.5, 9927476637211650.0, 960564),
  (816, 403232, 331602, 267, 697778, 592348, 7519531396736450.0, 0, 1, 1, 865552341916230.4, 4712488517592454.0, 9763079588885986.0, 3545143805143472.5, N'ggijpWVvjZYYeilUbs', N'bOsirKjkqwsFVDNfCs', N'ekFtmWmJlo Zr', 5902304018625782.0, 5110362821198772.0, 9802640356134786.0, 953, 392, 106, N'NQPsWNVjPSTiBHVYqWxO', 488, 1626074731963421.8, 605, N'EhdwrbaqxyQQXQNiRIS', 116, N'CKIrypBWywQ-PiixR', 754, '2023-06-12 07:57:40', '2021-08-30 10:44:35', 210479, 6753349238354964.0, 1993434869520479.5, 252696),
  (130, 960109, 174556, 394, 33926, 310340, 1953243889575903.0, 0, 1, 1, 9285859206619606.0, 9494226142240568.0, 6335525764876202.0, 8181007221545995.0, N'uKXCQdZ LFX', N'XUyKJjub', N'm mCzfpGEsyOwPNXTst', 3625142233588594.0, 9082773737637216.0, 925712019684239.5, 292, 187, 28, N'rvl kKOFhYkurl_oNZ', 746, 6960135301011942.0, 488, N'oJqUZDNIuyGrKeIv-', 29, N'DnTLoKDAfmQdEbA', 328, '2023-05-14 19:14:13', '2025-08-19 00:18:49', 195665, 3242746347959556.5, 1417440172159895.0, 769216),
  (994, 973524, 674268, 386, 489343, 60386, 6725255346208779.0, 1, 0, 0, 9397209978818866.0, 3838312632905128.5, 3980871460010748.5, 699093098258250.0, N'kEjcTYmTaQENmdMqpQUb', N'KLEhzKNnc', N'k-dKNmlNEVQKP', 7518361677626942.0, 2738411044420882.0, 3288034494923856.0, 865, 350, 735, N'dPeQrIgAWrewVBr-FdAW', 393, 9825223006999208.0, 238, N'QxhzZyDTyJ', 668, N'WGObjJzSQ', 953, '2025-08-14 03:26:52', '2023-09-15 00:18:37', 150732, 1900445699062592.8, 8544684627497507.0, 574033),
  (694, 371498, 236775, 555, 181565, 563604, 1136122752735178.0, 1, 0, 0, 1207516575482222.5, 1667314331676725.8, 6677000001154600.0, 5621059454328008.0, N'RVrbsyjJwWeYdhigWv', N'kkanqbQyg', N'KRTPx-IPGUk', 3249054101847519.5, 4489534794611491.5, 1080555631569112.2, 801, 546, 620, N'pbsdveTNMtFHCzqkqL', 343, 8408608208027727.0, 638, N'MGBNMo', 195, N'DL-UbYuzDIs', 643, '2022-04-09 14:15:06', '2024-09-14 00:08:43', 193549, 41300345783004.12, 5911529148349804.0, 371508),
  (523, 77759, 750762, 359, 412794, 252856, 6884922507954043.0, 1, 0, 0, 2751685493720995.5, 3425049337587592.5, 1043357982171350.1, 4537777622475005.0, N'bTxkgZAmATjf-YGXIZY', N'ak_nFtEH', N'blrfzzNHbPvlDFiGb', 9592986876650956.0, 1582937389834471.2, 5716783278454909.0, 513, 806, 757, N'kppYKHQCLqLbAzMj', 552, 5590192001957681.0, 627, N'tobvuxmta_yDxq_B', 591, N'Hi-meHPZbftl_-_gXB', 98, '2021-02-26 23:05:21', '2021-11-15 16:36:26', 419500, 8758190793171499.0, 4688531834754756.0, 526760),
  (400, 299810, 310854, 35, 97845, 921159, 9023179819916032.0, 0, 1, 0, 1615309444867158.0, 2896381787359939.5, 1252432369822763.5, 8734768015721714.0, N'w adJyqp-u', N'IWloCVeja', N'sXkxyYwAX-zpGSPlC', 8659887578678663.0, 1455216629739149.0, 8428527796110136.0, 185, 655, 244, N'nIAs-L', 120, 7399000589036601.0, 274, N'WSwb MpRLwjaapjtP', 789, N'AIKdpx_BVgIZOH', 315, '2023-01-10 02:30:34', '2022-11-10 09:52:36', 94540, 7383673032182491.0, 5543802828107617.0, 757501),
  (173, 615863, 754169, 701, 413969, 927792, 2368273372146582.0, 0, 1, 0, 3129360109499217.5, 2170291048564490.0, 6834986986174869.0, 1402309096807628.0, N'EKqCcLbZT Q', N'qmIykR', N'caSySYxGh', 6083984260648736.0, 7883292260373658.0, 8937265885682395.0, 791, 323, 594, N'OdFjHl lAWMYbWUWNB', 410, 6006109368725071.0, 171, N'SOYIePbX', 278, N'j-IL-THLNoP-UDDPoJwU', 976, '2024-08-17 12:16:58', '2025-06-29 22:03:30', 264049, 2017298558370507.2, 8625595692741809.0, 991840),
  (735, 347822, 970235, 369, 589485, 405181, 1972948010539776.8, 1, 1, 0, 7334778657370744.0, 3460567356910533.5, 655116995874172.0, 529779409917078.25, N'chWSAxjRYJV-vV Mj', N'dJPhSxFJaufqaD', N'ZKGHZZUOBdH_e', 1178852179000855.5, 5613626709631266.0, 964032782263699.6, 367, 624, 655, N'rN ANfDaK', 184, 400616370478704.7, 108, N'_FB oHZlU_QopSwaEZtb', 731, N'rK_josPUKmfd_SWZW B', 451, '2022-11-03 01:59:31', '2024-07-12 06:37:38', 557060, 3851758280303665.5, 5701429549696262.0, 250470),
  (157, 795593, 846588, 415, 183496, 778166, 5069521427250034.0, 1, 0, 1, 9452676113247748.0, 7859076202798151.0, 6758985549971396.0, 7549884631015923.0, N'-ekALTRFGRpsz-T', N'ceDGShVfalSzBuK', N'HepLUFECmIRktB', 480881596804145.75, 7224241558834447.0, 1025492622421393.4, 280, 911, 270, N'IfLLRhyPveiLsOiae', 19, 1541279458615219.0, 866, N'_tWXxkVZjgRe fkr', 730, N'qX-oHiNCCMLRh_Q', 79, '2023-07-07 21:18:50', '2025-06-06 08:09:00', 430794, 9355852443944778.0, 4733644111998682.0, 126606),
  (157, 68635, 752448, 156, 257644, 141043, 3142623751459348.0, 1, 0, 0, 6037300043707963.0, 9076570081318202.0, 8192040964309829.0, 4761965706469539.0, N'dJQDi', N'tQ_yp', N'OAOGi', 4918677148601949.0, 8593603778888954.0, 1888285066033117.5, 198, 293, 121, N'moYTim-', 504, 4982616674141167.0, 870, N'iM NfuuIEeJE', 920, N'tYVpmHXEO', 800, '2020-12-26 15:21:44', '2025-06-03 05:05:33', 424402, 609373698932996.8, 1722892638768995.8, 610341),
  (109, 537309, 582895, 503, 927825, 692983, 9987713314329450.0, 0, 0, 0, 3756876891756686.5, 6159578570519252.0, 6707889861534770.0, 9189031104032534.0, N'-xpcUv-RDGt', N'BOldg', N'fxj_tV', 3343189460186980.5, 2267969715462289.0, 3630404557518106.5, 289, 494, 299, N'RzErQre-znNcLiWx', 31, 196871917975886.0, 310, N'htlOkmZUuE-BYKLSqLX', 647, N'BJaWB', 848, '2021-07-09 22:31:45', '2021-12-01 22:59:12', 540801, 4663915353197006.0, 8745065219697029.0, 804772),
  (938, 222918, 295938, 108, 425968, 910276, 9285763547646804.0, 1, 1, 0, 1767720783827207.0, 9733399012561878.0, 1446916867936097.8, 3584763500481754.5, N'RVAPKl', N'vhRGwynW', N'Vxx_qWAydqQgKr', 4536644085132047.0, 6079061897980473.0, 7562440863574670.0, 277, 953, 26, N'cCUKAvXOlaBWgDxxYSa', 270, 6632521709562682.0, 877, N'nL WB-peHyllqwMAn', 450, N'aySyZARFkv', 351, '2021-05-29 17:46:38', '2022-03-16 07:16:25', 831341, 6958267003051939.0, 1155066272905636.0, 756573),
  (942, 591089, 145933, 879, 69836, 63366, 353250058880035.8, 1, 0, 0, 616848468153005.1, 3196541003686290.5, 8847614921622144.0, 4200292408533143.0, N'QSIZK-Zc', N'vwvmfEGONgFtv_', N'pkrXeTTTKJFatCY', 6043346995081806.0, 440075342077661.5, 3898446352732667.5, 94, 868, 610, N'gvdsKorwaAub', 145, 7659011204475836.0, 853, N'IqoGyXAud', 174, N'suFbQmOyzunhDUbQW', 451, '2022-08-26 03:01:53', '2021-08-30 15:37:37', 871207, 6086182042759865.0, 6892392222153382.0, 913019),
  (579, 969096, 606269, 234, 987494, 376331, 36514311901550.97, 1, 1, 0, 8675718236553119.0, 3988161651088836.0, 8539266338206598.0, 1955684522334383.2, N'YoZldnIn-yT', N'YAUaIj', N'wdkKxaAxRI', 3779878054533881.5, 4660821463031243.0, 6869931109285079.0, 211, 961, 677, N'dGqiwZIqDmsfUXJm', 517, 7459526851154328.0, 745, N'G_d aTFGc', 408, N'nV_Fcn rnlGzwX', 119, '2023-10-20 12:25:51', '2021-10-22 17:28:14', 312409, 8769932399242968.0, 1580410969764100.0, 144861),
  (789, 178872, 42079, 843, 251627, 331226, 1012272624272732.0, 1, 0, 0, 3726697488470449.5, 9831307178532566.0, 1180065221823448.8, 2982104005323753.5, N'kCpqdJrbijiTvZbxm', N'ZvyUmbKqXTs_vee', N'T-UfaGzReHLQ', 96491883111673.45, 2347382260654648.0, 5440280245311205.0, 435, 707, 314, N'AbYBGfSMGNnPBS', 949, 3363123088887582.0, 67, N'TXMAIydEmE', 836, N'TEudLdc_lSv', 247, '2021-01-10 10:01:59', '2022-08-30 12:18:35', 263146, 9725028329528658.0, 5507551427649616.0, 688473);
INSERT INTO [transaction_sell_lines_purchase_lines] ([sell_line_id], [stock_adjustment_line_id], [purchase_line_id], [quantity], [qty_returned], [created_at], [updated_at]) VALUES
  (146, 549, 966, 2279841891984471.0, 1082093868549232.1, '2024-09-08 02:51:17', '2024-01-09 04:33:16'),
  (852, 108, 266, 3602134500601849.0, 4929746793145816.0, '2022-09-04 06:24:59', '2021-10-04 08:20:17'),
  (23, 270, 6, 4447849149116220.0, 2527466386443199.0, '2020-09-24 14:44:03', '2022-06-24 05:23:43'),
  (977, 610, 856, 2874357936286430.0, 8283610951103841.0, '2024-09-24 03:52:59', '2025-02-03 03:20:28'),
  (872, 376, 732, 3429456374227814.0, 6428588389787233.0, '2022-09-26 05:41:51', '2025-04-29 06:01:11'),
  (415, 267, 498, 9567283538902846.0, 5976233283389397.0, '2023-01-30 08:56:49', '2024-02-05 05:56:24'),
  (148, 167, 359, 4649938732482692.0, 9466791046054798.0, '2023-11-09 15:07:09', '2021-12-05 14:17:20'),
  (431, 199, 395, 9841864441784052.0, 3474888036182274.5, '2024-03-31 18:29:34', '2023-09-15 08:27:07'),
  (378, 716, 849, 6065110416266412.0, 4791597129204680.0, '2024-03-16 13:44:34', '2024-02-13 12:05:51'),
  (501, 259, 653, 5383445430201027.0, 644991561158752.0, '2022-06-08 11:30:41', '2024-10-23 14:05:09'),
  (875, 376, 690, 9320719214939470.0, 3681264441448589.5, '2023-08-03 06:50:54', '2025-02-23 12:02:09'),
  (294, 779, 868, 9773266828856966.0, 7858083589900198.0, '2025-04-29 17:49:54', '2022-10-21 00:59:13'),
  (787, 997, 384, 2950768065947954.0, 5597902570165814.0, '2021-04-14 12:37:41', '2021-04-21 22:52:18'),
  (870, 899, 255, 3945327212904427.0, 8287865245393745.0, '2021-12-21 03:45:26', '2023-07-21 14:32:19'),
  (350, 853, 822, 1064790975213115.8, 1167354771598546.5, '2021-05-11 12:13:03', '2023-06-07 20:35:10'),
  (299, 994, 911, 1502840181700840.8, 6006814113613963.0, '2023-12-15 22:34:31', '2022-05-28 23:13:10'),
  (912, 13, 516, 2872671890070962.5, 8858920419793982.0, '2024-07-02 20:31:33', '2022-03-03 21:19:58'),
  (820, 510, 633, 5631081783883277.0, 502708981613903.0, '2022-05-13 17:37:51', '2024-05-21 16:18:03'),
  (468, 978, 938, 9825805878917950.0, 1571099165671151.5, '2021-12-15 16:40:54', '2022-02-08 20:17:55'),
  (542, 873, 239, 8465111609731300.0, 9196819857239914.0, '2021-05-04 17:25:56', '2024-02-01 22:57:48'),
  (348, 125, 983, 473487169773855.2, 2145418827849394.8, '2023-03-02 23:59:24', '2020-12-12 15:45:09'),
  (335, 974, 607, 3535517768392865.0, 952951809920215.0, '2023-08-31 07:32:08', '2024-09-18 21:02:20'),
  (920, 69, 291, 3369237154620899.0, 7962988396635448.0, '2023-08-25 11:24:53', '2021-08-27 22:56:00'),
  (834, 776, 99, 3516401351493859.5, 831752633298499.2, '2025-05-03 06:14:45', '2020-12-16 23:04:58'),
  (630, 455, 603, 4445543244966755.5, 3351295785180829.0, '2023-04-28 11:00:37', '2023-10-15 11:32:37'),
  (791, 551, 558, 3967784911376651.5, 9514872438322806.0, '2022-01-18 04:05:51', '2022-08-18 16:22:24'),
  (507, 792, 4, 6083634134502767.0, 1099769364833256.2, '2021-11-24 17:35:19', '2024-08-16 05:37:59'),
  (706, 749, 649, 822194525268290.5, 7862973008561873.0, '2021-08-08 19:09:17', '2025-05-01 00:08:15'),
  (615, 653, 85, 7971020827860389.0, 8884298548044800.0, '2023-06-10 23:46:06', '2023-05-05 04:38:40'),
  (145, 790, 650, 4219640549694363.5, 1753957458111334.8, '2022-09-30 11:43:14', '2022-08-01 05:54:19'),
  (981, 204, 438, 6489536947525640.0, 1307624308244630.5, '2022-09-07 01:18:52', '2020-11-08 01:43:46'),
  (442, 936, 96, 7672461428344026.0, 8374662757290103.0, '2020-09-22 02:51:36', '2021-02-08 11:35:31'),
  (911, 140, 262, 4492399981126702.5, 8960422339126686.0, '2021-06-07 11:28:12', '2020-10-13 16:45:39'),
  (455, 594, 497, 1125430547715576.9, 965305840951287.1, '2022-05-05 11:20:38', '2023-12-27 14:25:27'),
  (928, 476, 778, 8623143002839250.0, 8980259784087349.0, '2025-03-16 04:48:24', '2022-08-15 14:03:12'),
  (855, 442, 843, 264848936243311.53, 7643213256376250.0, '2024-08-05 17:47:59', '2021-07-25 08:29:52'),
  (477, 286, 951, 9319331523667886.0, 8148384680803012.0, '2021-10-20 00:13:49', '2023-09-18 02:48:29'),
  (600, 657, 328, 7088208056883036.0, 672735055348293.6, '2024-01-14 21:19:01', '2023-05-22 00:32:29'),
  (595, 784, 772, 6387791157259505.0, 260931906118753.16, '2024-01-05 23:33:00', '2021-05-06 12:28:01'),
  (93, 148, 665, 2829471037028174.0, 4775320366246666.0, '2022-12-01 04:19:39', '2022-06-15 20:21:54');
INSERT INTO [transferts] ([patient_id], [service_id], [personnel_id], [date_enregistrement], [transfert_date], [structure_accueil], [status], [auteur], [motif], [created_by], [updated_by], [created_at], [updated_at]) VALUES
  (812594, 920520, 762968, N'UKLEKFin-au_VPPa', N'QXXjpgkfvuqgrOHySRrs', N'NPDzaQqtzwsh', N'GdB_mHDFpzJFH', N'xUWhvSKOBIhTepZb', N'-YZ_VKjRHLGwJnPq-ksu', 508804, 770655, '2023-02-23 17:30:41', '2024-03-08 19:29:44'),
  (804851, 221600, 34248, N'CegibIyZSzvMlWxqa', N'eCqjItjHhVOTurqo_eB', N'pkHFEm', N'RqcoeZj', N'OABZXFr pwccwBRbd', N'yWzNMhmTRrpqrTCGK', 272938, 332841, '2022-08-23 20:46:14', '2024-05-17 13:59:07'),
  (547013, 71229, 570290, N'f-BUPtQBaACVF-VPIMH', N'ZKTauKPDGV', N'zSfnibfhyjoeRy', N'bdIqFIDL', N'glYzJpbqZaOyFMEtXi', N'XcdhM_mdsLdo_lrw', 825471, 787483, '2025-05-27 02:58:50', '2023-01-06 08:41:51'),
  (70647, 949416, 125862, N'LlVWbyLrwSS-eWKxxyC', N'uFurSGQ_QNsCav', N'ZELpN', N'LLLPN_znDXt', N'rGKig_maBxPAa', N'DsRIkHWesceme', 833210, 768438, '2022-04-07 17:09:11', '2020-09-01 23:34:19'),
  (248607, 88337, 353448, N'jTBhkGZO_', N'CCiIzzAWp', N'nFwkRkT NMK M', N'NVZMgyGN-B_', N'gdrTmJRlQ', N'HPIZSABYnKHg', 803805, 278157, '2021-04-26 05:58:32', '2020-09-30 00:53:35'),
  (502039, 722666, 926759, N'qYvSW', N'WqlhGxnHtP_wPt', N'fxrHS', N'bZB yqZ-O-e_ix', N'deCM HzbaXP-iHOORN', N'cqLlOlmpoJPIMwwY', 134092, 274314, '2021-04-14 18:33:46', '2021-09-02 07:53:56'),
  (792493, 23310, 716250, N'ut-LBr', N'k_VJSDv', N'luHdEw', N'vzlxdSksj-PbY', N'PzxneKwZa', N'tZkxoVaFzIypg', 858702, 73617, '2022-02-18 15:18:54', '2023-06-07 04:10:28'),
  (213205, 530041, 875681, N'dJZyNG_ClmyjwzMVjdSS', N'PeicqkFxpavfO', N'ycRkUhiD-FacRM', N'Jt EEfdAUbzUXWqXrh', N'yWSXWOFsed', N'mkmHCNa', 203295, 905520, '2022-10-09 18:02:03', '2022-11-05 00:57:04');
INSERT INTO [transfert_caisses] ([caisse_id], [caisse_id2], [date], [montant], [motif], [created_at], [updated_at]) VALUES
  (875399, 209323, N'P qwDVUH dheVhqT_O', N'S vKmyRNZH', N'VF WjM', '2024-09-19 05:34:46', '2025-04-27 22:58:32'),
  (433856, 192330, N'y zyD', N'bsUqkdBdmg', N'PysPqLjlAYJqHhz_', '2021-06-07 03:21:08', '2025-01-18 00:46:41'),
  (176302, 373570, N'TXeHg', N'iRQM HnLX', N'hgUAjrTK', '2024-07-12 00:48:30', '2023-09-23 23:00:58'),
  (767971, 158491, N'XSn_-dUrmaoJdI', N'SwXSe', N'PWhznvooOr', '2022-02-14 22:45:05', '2024-11-13 07:57:37'),
  (656272, 110283, N'JFepeKOSZMBhZLYxc', N'o usPePZY', N'VqnOzbFm', '2022-06-20 00:30:05', '2020-12-13 03:03:41'),
  (13721, 773123, N'AdBzYlEe-YyXbMwb', N'_PicIIWj_', N'KoZVOscbDPcoFOepQXA', '2024-04-24 19:23:43', '2024-11-19 02:28:09'),
  (51117, 789571, N'HoSUU-hy', N'qzctWlnA PefNiWUX', N'StfhQMQJYyRUzrXNrMLt', '2022-04-19 21:16:45', '2022-10-22 07:06:16'),
  (56766, 527476, N'hGnSXXQsMMbZCS', N'NQVdkAnOsdN_z', N'kIonufXq L-L', '2024-11-17 14:19:50', '2023-02-12 23:47:34');
INSERT INTO [transmissions] ([exercice_budgetaire_id], [service_id], [service_id2], [numBordereau], [typeBordereau], [dateBordereau], [dateReception], [etat], [objet], [observation], [desactiver], [created_by], [updated_by], [created_at], [updated_at]) VALUES
  (423661, 299929, 192912, N'HlL-qTN', N'TjkkpsONpFORuYVYYup', N'mQRnSAbdoiQpV', N'jmrPpVO-xk', N'cKBZtBUtzFNf-q', N'KutkxVDXPe-RCxEjy', N'dvApS', 0, N'bzGcl lsaMWxg RkaSTu', N'yajeLkHYoOwhLOJHmJn', '2023-03-03 22:46:16', '2022-09-22 05:15:23'),
  (917346, 487391, 903702, N'MCNdBLiWsGjiQm', N'Hf__v', N'IyrHYbcrGqa', N'U_OPHfotc', N'SJiPUsZM', N'LVvLFGrCSTU-gf Va', N'vUMwyIkAr', 1, N'bZYo_', N'gOhduHjGtvWr', '2023-11-23 21:54:12', '2025-05-13 04:36:06'),
  (480611, 115272, 993539, N'nLGtYKeCZRtSz', N'EjFhwqWGnFx', N'PHX_ouzLZX h', N'mFqpserT lGW HqPUX', N'mkHwORAn-OrMFi', N'RIxiENgzDnLcPXAyu', N'dGqLzy', 1, N'drrNxm', N'OYkmIDQaFrPIbhADL', '2025-06-07 04:12:37', '2023-09-10 16:33:55'),
  (966282, 814703, 377821, N'nTaWIMmpIbrbECl', N'uAmhM', N'CoKuvuyQLBrJ', N'KN_ VPwGY_P', N'Hncar-boFdKRXK', N'JRJgJxgIYEhxps BF', N'iEoXBkHXjkFHc', 0, N'EWngGzg vujLCdovkVvr', N'giYfI-K_hkOCVPlzTXV', '2021-06-02 05:24:23', '2022-03-25 07:24:41'),
  (627577, 26106, 924779, N'-lflGTdbZkrMySDXJ', N'HBmdmHiE', N'MWTdBErJORIOnlyeRs', N'iQfXIL hKDpJz-d', N'oz-nFBvBRjop', N'sMXqG-', N'crrTN', 1, N'qmVgieut lKWo', N'KzHe-zFuqXWKOjQCfE', '2025-04-30 04:09:52', '2021-06-04 16:32:02'),
  (907705, 261601, 557069, N'tywuCukrRk_S', N'vVJAVmXtpucQLJF_uzXG', N'_ BOlmpmVukvvVLExP', N'Z_HlWgWM', N'lqMPc_NuKybkHcJZAT-E', N'bbhxFvasj_lPr', N'Fv_sPWHNvkUCs', 1, N'sbbqk_- setlLCRSDYW', N'kOqgh', '2023-05-05 20:39:07', '2024-02-19 04:31:22'),
  (245702, 141584, 783930, N'bIwfbNWdsDexB', N'okGZSUKGPiIzIt-nMqBO', N'PZXIRV', N'_NeNsoMtHV', N'bGFxZJLE-kubU_mdG', N'cn-vWmLretgcqCK', N'hRcViwnLDqhussIulb', 1, N'YcbkhcIZNXjTqKu', N'CRzkl', '2022-09-04 19:56:26', '2023-05-03 06:13:03'),
  (576183, 737725, 812152, N'q_NmBhuQvgsl-kw_Qfnw', N'JtTWNybwu', N'H-jMh zeeEGEBKkBj_Ly', N'qfBFeJtYTWJBlxKTXPl', N'qCR lrWOka', N'AMNfZ', N'GLosv', 1, N'GyjjuOGzvyVbHAPcKsSc', N'zgbvglzCkoE', '2025-03-25 23:38:10', '2021-08-01 14:03:17');
INSERT INTO [types_of_services] ([name], [description], [business_id], [location_price_group], [packing_charge], [packing_charge_type], [enable_custom_fields], [created_at], [updated_at]) VALUES
  (N'mIYdA', N'EnnChpOuaRvjKrC', 401, N'HofpaAyPaDvQa', 3189782743235986.0, N'bKzgKvIkqMEvjNJFadd', 0, '2023-10-12 06:53:30', '2021-11-17 08:46:26'),
  (N'YlGEyGmhsAt', N'UzxPeskla', 531, N'DpNDF', 4146651461571562.0, N'XYEFyfdOOdcpTb', 1, '2025-07-16 11:02:47', '2021-08-01 20:48:51'),
  (N'QwAHrRb_n', N'gTPNlgmwLl', 115, N'ptzrABndgthntarE', 6208125494024374.0, N'VdqutyuYaCyT h', 0, '2025-04-29 15:00:38', '2025-06-06 10:58:16'),
  (N'UDgFkoozyg qnN J', N'DHTvCOG', 720, N'dhU-ueVtajLBdjVP', 4953138259903382.0, N'ZrIQLCnxEOzNKgLp', 0, '2025-03-06 08:40:45', '2021-03-07 21:35:46'),
  (N'TMcO-rDmCte-oLla', N'Z-VyjWXBJVYGV-RycZOH', 550, N'tArBNVKotpfNWVFt', 7032312041476338.0, N'zyGsGrkVfdTvS', 1, '2023-09-30 06:22:38', '2023-01-31 10:14:14'),
  (N'eQFacTH wcXMrcrMp_', N'acdzjkMx', 620, N'HW_XGLttA fXd', 8455974101213068.0, N'pFRXbz', 0, '2021-09-17 21:39:33', '2024-10-18 12:20:42'),
  (N'fxb_FYmKkyJxqWcouT', N'mXvSGXENjjWGfyvaH B', 793, N'gocaFWATpoQ', 2389054031486557.0, N'Q_VgIExD', 1, '2022-05-11 04:07:48', '2021-12-23 23:42:28'),
  (N'BGfBtVBi', N'OvPrA-wRNHM F_iNCd', 935, N'zLpXpImmjT', 6057356961489526.0, N'yKdxAzHiDva vnfrf-', 1, '2022-10-26 15:57:35', '2022-11-02 22:29:18');
INSERT INTO [type_comptes] ([code], [intitule], [created_at], [updated_at]) VALUES
  (N'CXMANTvWmB', N'jzxWfcLEPSNIHRdpJEZ_', '2023-10-25 10:52:20', '2020-11-06 06:03:37'),
  (N'mPi-EQV', N'KJXWXrDvnI_q-_', '2022-04-06 12:14:23', '2022-06-22 16:06:24'),
  (N'qfVWzbkw_hUP', N'fdwLkEMfTXk-YkBG', '2024-02-05 04:58:51', '2021-09-08 00:04:34'),
  (N'sSDfKinIKlHSrGTQC', N'xxgxxxA lk', '2022-09-16 14:52:15', '2023-05-29 01:45:52'),
  (N'CkPeyVCDi', N'_aTvG_ ZfrtAb-VlKi', '2021-09-03 15:19:47', '2020-10-28 04:39:35'),
  (N'neqcsG I-l', N'cosre', '2022-08-26 20:56:12', '2022-03-23 22:32:49'),
  (N'BQrlaUHSQBReU', N'EZ_pS oiZvLmCXZvn', '2024-01-14 09:42:26', '2021-02-06 23:46:49'),
  (N'DXTFLmFBokcgvOu', N'AcuSOKhCmlvspkcwLrXw', '2024-02-10 13:32:11', '2024-08-19 00:19:42');
INSERT INTO [type_conditionnements] ([intitule], [created_at], [updated_at]) VALUES
  (N'TaOFJy', '2022-01-26 02:22:14', '2021-09-09 20:26:19'),
  (N'zik--Qg', '2021-08-28 05:16:46', '2021-07-11 06:42:40'),
  (N'WeuUeTHDmkWtoHXk', '2021-05-17 08:37:08', '2021-11-19 05:18:11'),
  (N'cdeHL_oYUOgEhCe', '2021-07-11 20:45:00', '2021-06-01 08:43:31'),
  (N'cJUuZJIxOZ', '2023-10-28 16:47:45', '2024-01-27 21:42:46'),
  (N'FMyx_eAjnPls', '2021-01-18 01:52:50', '2023-10-05 22:11:33'),
  (N'VfcqoohDYsnVrmhjG', '2024-08-26 07:42:07', '2020-09-01 13:15:24'),
  (N'inAUL', '2025-02-12 09:38:22', '2025-05-13 19:48:52');
INSERT INTO [type_consultations] ([code], [nom], [categories], [montant], [created_at], [updated_at]) VALUES
  (N'BZKjamBkg', N'jS_NBCaGAEmy', N'O_Kb aM', N'AZsnIF', '2022-11-15 06:11:37', '2025-02-24 21:49:16'),
  (N'IO-qf', N'mVCIthzAVmwXIKEE', N'mFFXY_jsqlDP', N'hGj_digpeDx', '2025-03-16 06:16:11', '2023-08-27 09:07:53'),
  (N'hzq-mq_TNcxC', N'nkIuNZyfPtkgX', N'HFK_ssOSyMzKBeKwDdkP', N'DKnzIBSxlOOCqX_J', '2024-09-03 05:43:53', '2023-03-12 05:03:58'),
  (N'LP_tYOhxUjgtG', N'xL crCLW', N'czUqla', N'ouKmGzDBFcLVAUJzjS', '2025-07-29 23:11:33', '2025-04-16 13:02:22'),
  (N'y_FBl wObP vJwdiKjiM', N'pLlVXqMuAicHVOByhOth', N'XKrQQ GyVv', N'THfhvZSOiaiFqcz', '2024-01-31 03:21:10', '2024-11-15 13:12:16'),
  (N'uiS_lPDomvOiKrIwdKr', N'inMLC', N'djvejirQ-', N'cLNU-nkcjU', '2021-06-15 07:55:42', '2024-09-18 13:32:07'),
  (N'YDhOJZJARlY', N'zcMQdxVfqz_FBBVMW', N'OG sAMlQmMfSPTOfkhGS', N'whh_D', '2023-02-19 09:17:10', '2023-08-24 07:00:21'),
  (N'nEylFP_', N'pmLK_zmPgvEDiKhnV_RL', N'SxrqGh-ZKq_s', N'VNuhldSPl', '2025-06-22 20:27:30', '2025-04-13 20:38:21'),
  (N'PSteZjlFtAV', N'ouya_-TTQiDi', N'HrVYegPShjO', N'uobiTho-x', '2023-07-14 03:32:27', '2024-11-28 03:26:20'),
  (N'xtOHarELO', N'UCmteZSl', N'UQgNUrKwMVV', N'tQ-CUqjOY', '2020-11-24 09:10:24', '2021-09-23 13:25:36'),
  (N'bW-sCXc OiRwJ', N'deTfSWWznUNvzQNJIi', N'iMFERD', N'DUyhgCtdwNeP Ws', '2022-05-09 06:31:10', '2022-03-13 01:53:02'),
  (N'TOVgagZlCHezU', N'WZifuQZNjiTQI-G', N'UfpeFVM', N'JfHfqPXpOA  czTowcg', '2021-06-10 20:30:03', '2024-05-06 02:26:49'),
  (N'YFfm fJ', N'OVASEmwrvsFOEmmm_ON', N'VsTNSV', N'TGXMkgnnIY_-byPFaIo', '2022-02-07 11:53:05', '2024-10-19 12:30:43'),
  (N'scEpc', N'EhDTWJYp', N'OSadwCLaj', N'TGinUBIypKMMoF_', '2023-04-05 02:39:59', '2023-11-17 17:21:18'),
  (N'DOBFn', N'VugaJaDYgz', N'nsRiR-BwlZjxRvQH', N'Bo-kmsIuAhHG', '2020-10-12 13:59:18', '2021-11-02 17:44:21'),
  (N'-U rxkBbpI_fAf', N'iiJTlmlqDeYCtXlYmwWK', N'_nRgZDlBadOYFz-BgDj', N'hvkk-TUcUDCOI', '2025-01-10 16:18:53', '2024-08-28 05:16:13'),
  (N'hgJgGHgTbGosbgSWpQ', N'YQtAfawachp', N'XsZD_wxJKvId', N'zIiKxfFgZYBNl_PQ', '2021-05-28 23:25:28', '2021-09-30 15:48:51'),
  (N'pOYYrfYz', N'cxXosgayeKlgVYYHD', N'TupDjtlWqysQKqRZYzXv', N'TFclaX', '2024-09-28 05:14:01', '2023-03-08 09:21:21'),
  (N'FWZnHjMgYJnJjCbG', N'XBazYpgkXKM', N'_C ALWWN', N'sjevfOWhOQnMe_t', '2023-11-13 06:59:58', '2021-07-10 21:08:28'),
  (N'CSrqwar-S', N'VnMOInP-', N'uMVcwCsY', N'ajvmetnUB_SLLjDoYAQ', '2024-09-13 00:35:39', '2025-03-13 01:29:48'),
  (N'pcuZGEeavehNnmoZjp', N'GCeURLDq', N'FDPPJ', N'npxCqZacltFUVWfjMPD-', '2025-05-24 10:48:00', '2024-08-29 09:22:19'),
  (N'qvFwe', N'szCflxGovVhJ bdfjSSO', N'j pzkpokdwSgjQupr', N'TwkJILkobvbJd', '2024-08-11 22:20:16', '2022-09-08 16:18:59'),
  (N'o BItNpvCHuozXGl', N'melLxchLs', N'TZgYJkrF vhW', N'FwOLLzfobY', '2022-09-18 13:59:45', '2021-10-20 18:52:10'),
  (N'uHbXl-lwYy', N'jr-nPMXOyaavfQkC', N'dwUDzzn', N'lLRt_oc', '2023-08-14 18:38:42', '2023-08-11 02:56:56'),
  (N'JXk-MXpcv txXYusiPC', N'BUOVRWFzkLBSPIQyW', N'ASLlGOz', N'tYWuHTZZ', '2021-01-19 00:21:04', '2021-02-23 09:16:29'),
  (N'kn_GSjGA BTtAOpeUM', N'wL-zlt_RG-UAP', N'nRLhnTaGLf_A', N'rJxwyuXrcYSmIgY', '2024-03-17 11:18:51', '2023-09-24 15:53:35'),
  (N'ZacZVKKppvi', N'wqKldrAp gjmQDtvj', N'fFRfTjfHtvbozhcJPkQ', N'sdXsboZoGAg', '2022-08-27 03:51:17', '2024-01-07 14:50:47'),
  (N'uDHyDpBY_xrTBEfleoYJ', N'akNNrnL-mZS', N'uZPpNJZkSME', N'PxcWHoKFKMI-dYETttv', '2024-11-30 23:13:18', '2023-06-30 17:40:15'),
  (N'NBBZhJV', N'vT-dyjwJgFPh', N'RYkWXMdZCMMYtjNsqfaw', N'zWaLfSjUdMkoomR', '2021-06-30 04:31:32', '2021-01-27 07:30:17'),
  (N'_zk TvPIeklwW -', N'YVHVMLppZ WpibOKwOhE', N'_ SKXr', N'OysDrJOAiGyMJDRKNOk', '2024-12-16 03:10:31', '2020-10-15 22:24:42'),
  (N'XlpJKqjwVKmzkeJZX', N'nXUEQBRVl', N'oigbZowBTSBfMyAu', N'EjdXcSO bEkOR', '2024-04-17 21:19:48', '2021-09-15 01:20:15'),
  (N'NQVPI', N'eVWHjdPAL QrsBgboM', N'xZjqcFwIonwkyDiE', N'rNazmjp', '2024-10-13 16:13:13', '2023-05-26 02:34:56'),
  (N'XZ_IHl_BVNj', N'jZ-PRCwNYoJ', N'QkcoEknfbZCluCtE', N'-c Pj', '2021-08-18 03:44:47', '2025-05-28 20:27:38'),
  (N'JdtQW_mtVCclWj', N'tFGQ-nAknIlHv', N'cl-vnp', N'T_mRmgB', '2021-06-23 13:21:30', '2021-01-24 23:34:17'),
  (N'DjdtXhPzOdvWbJsjDNKu', N'QNS-GIju C wPkimG', N'uN yWHJpBqpmWRobRC', N'TAPXlTJilG', '2023-11-25 04:56:06', '2023-04-19 05:30:31'),
  (N'hLxWLVRiNcaEDXfSDUSC', N'lkacboJ-IyU', N'vLqhoojgmWdGZflgTZ', N'EorwMrZHiOu', '2021-07-25 17:07:56', '2025-05-30 15:20:12'),
  (N'nqrfdENy', N'BRwzFpVmV', N'dLwgjNiMYC', N'VmiXJZOrdLwMb', '2023-07-11 14:14:57', '2023-11-26 17:27:04'),
  (N'hSmDc', N'tE JZPeYY', N'jxFYHH', N'-kmHaIlsSXuFj', '2024-09-27 05:44:06', '2024-04-09 21:10:54'),
  (N'GiCmql', N'MNuPrBa-rK', N'igwPfWZPjnIJX', N'NPyei', '2021-10-23 12:43:25', '2022-02-11 05:51:14'),
  (N'VQSSQfvrcP', N'T_QaWfsWdSh_ghUsVjl', N'hjTRskPEZ-NcyUBPer', N'BWbFtWeUzRU', '2021-08-09 05:30:52', '2022-10-15 02:58:07');
INSERT INTO [type_examens] ([code_type_examen], [categorie_id], [libelle], [pathologie], [unite], [resultat], [details], [created_at], [updated_at]) VALUES
  (N'FMEJYwx', 405415, N'XgSRYsuh UBAnf_avrNl', N'uv TyWlt', N'zMF-PtLTy', N'tIeBanhZfsFIGVptTr', N'OSZK fJu-kIwfCeK', '2023-08-01 01:22:54', '2021-11-21 09:27:42'),
  (N'pnGQsr_-k-JCAeZRy', 99978, N'dfLrgUxT gvloxb', N'b-GNXVRDcrEQoL ekKX', N'ansmIJjSfFYaFx', N'wezmQW', N'zouWxcZc_rD', '2021-04-21 12:37:45', '2023-03-06 04:39:04'),
  (N'bvytN', 311512, N'hRWzbnDFViOjH y', N'fNAarvgNgIx', N'sJXKXi', N'dFdBi', N'PMrkZtke_ZWYK', '2024-12-11 15:10:38', '2024-08-27 13:33:13'),
  (N'mgHwTKaTWUPI', 743691, N'yoBrZuw_XKDHy', N'Jn_xfLEBP', N'bsBElXYyT', N'MbCkjXfn', N'KXjvuMbBRU', '2021-01-16 23:59:53', '2024-04-22 06:04:43'),
  (N'bqx_qKTWtKTGBh', 92657, N'qD bdVk_VLVIKX', N'KJxilNJkeA k ms zl', N'KvzPJCTZwyAjmj', N'wCjjC', N'iRBUmGOCz', '2022-02-21 18:32:56', '2024-03-02 01:21:26'),
  (N'ZPPdfXZdieoJUQfUd-k', 392021, N'qaljQ', N'MwpmzBum YnXOyEk', N'LXPQuHWfPPHF PCZ', N'FFXQjCghz', N'uF_Z', '2021-10-09 04:34:05', '2023-04-25 01:19:20'),
  (N'riIwCYpqqggjdRn', 110927, N'iif Do_iltuZdo', N'yvHgBcL rW', N'-eqngsGciuhj', N'EvvflQzpeLMKnHn', N'qQvZkquVpxCezCbeLNiQ', '2020-11-16 12:19:10', '2021-04-07 17:28:19'),
  (N'wDagSBsCcblUA', 238138, N'qlaoYWm', N'OTsmOVbim', N'qeyWTKODlbANnAt', N'okdxg-EBo', N'XHcuBCxxCOrIPmDta', '2023-05-26 03:52:02', '2025-02-13 18:35:32');
INSERT INTO [type_of_services] ([name], [description], [business_id], [location_price_group], [packing_charge], [packing_charge_type], [enable_custom_fields], [created_at], [updated_at]) VALUES
  (N'MhsljKd_lNjTxO', N'SRFvijYEzAK', 61, N'fRZlifgYkx-Njg', 407454624278174.0, N'phC_eXFJAz xX', 0, '2021-02-10 14:13:15', '2024-01-15 05:01:27'),
  (N'DGTrT', N'hJFeqHFCguRMx', 577, N'Jc-NhBrtI-TRBVCKZ', 4652837863370716.0, N'KxuM', 1, '2021-03-31 16:08:23', '2024-07-11 13:49:40'),
  (N'tAHBA', N'IRHVjp EuMjXFPmQg', 100, N'MeE_h', 7856635786373146.0, N'fFhwWegyuzMVs-Njqo', 0, '2023-12-29 08:25:22', '2024-01-24 16:46:37'),
  (N'ToSFhC_xQ', N'JPgZAiGpDKiVtVLbZK', 812, N'udjpkIsRCotWPMnpxJw', 3456834114434441.5, N'mxuScwY', 0, '2021-12-20 12:18:37', '2025-01-12 23:11:53'),
  (N'SSRVAQ', N'gaIuYeghTmmMlKtgG', 782, N'vElbPTwajdYbGwlVq', 823454803952035.1, N'PbXQ_tdyF', 1, '2020-10-27 00:28:27', '2024-01-13 02:16:30'),
  (N'D-Sds_d', N'HHhxULsQ', 815, N'gwY VSbR j', 8699544763353655.0, N'xAvtOujOhoyKEROiCSu', 0, '2022-06-13 21:29:02', '2021-11-28 02:26:56'),
  (N'oLALcx', N'h_BNVcj', 325, N'YRcU d', 5534142398938220.0, N'hXYmJv', 1, '2022-11-19 08:52:25', '2021-02-26 01:16:19'),
  (N'BAZoN', N't_lfAbeDTFXEoFwT', 185, N'iAPoC', 2421263821243443.5, N'BvyYAi', 0, '2024-08-03 20:36:46', '2021-03-01 20:57:14');
INSERT INTO [type_ordres] ([created_at], [updated_at]) VALUES
  ('2022-12-23 18:13:14', '2024-08-04 13:33:36'),
  ('2024-10-18 10:30:34', '2023-08-31 06:35:07'),
  ('2025-04-15 17:56:43', '2021-06-03 14:08:50'),
  ('2024-06-25 22:15:18', '2022-06-05 08:17:31'),
  ('2024-10-04 14:57:47', '2022-04-03 10:29:28'),
  ('2024-09-05 23:15:25', '2022-11-18 10:59:52'),
  ('2022-07-08 19:16:51', '2023-08-20 18:17:59'),
  ('2022-11-27 12:46:02', '2024-05-14 21:31:31');
INSERT INTO [type_prelevements] ([code], [nature], [details], [created_at], [updated_at]) VALUES
  (N'kNchfyRH', N'qftCDBaPWx-Ee', N'NJaAPzSUD', '2022-08-31 20:25:09', '2022-11-14 04:58:23'),
  (N'MbBiXVINEvJjAqFFv', N'bPwJEejRRnWgIGf', N'lsUEfvAiBqnLoEt', '2021-01-18 08:38:59', '2021-07-18 06:44:15'),
  (N'EffiBAsmD-PBjVx', N'ihgpLiEoVf', N'kYMPKQJxgCcNuGGid', '2022-02-21 09:25:19', '2021-07-24 07:29:01'),
  (N'eap-fJyRPZZ_oTF', N'uZNlreIBPegvDPZ', N'tGLdg-aUYQ', '2022-12-29 14:04:00', '2022-11-01 07:41:30'),
  (N'MnDIOGYUekl', N'qWNibUzJnrz', N'rLVfV AaeexovqAW', '2023-10-19 13:39:44', '2025-02-21 16:37:16'),
  (N'NSgitUqoEmldeRMSq', N'qnsrqTAfBNX_', N'nsAzEEbvP', '2024-12-19 10:10:27', '2025-07-07 13:20:00'),
  (N'zHYUtIGzG', N'EViQnJ Sf', N'-nCWY-XYYxIUGVEf', '2022-04-01 16:12:30', '2021-03-08 02:54:17'),
  (N'lXZijnUWkN', N'ovpQ xPUkyXxChqSAP', N'RHEamEWyEZshirX', '2021-08-04 00:59:18', '2020-11-07 18:17:24');
INSERT INTO [unites] ([quantite], [created_at], [updated_at]) VALUES
  (N'VgSzrbUaMec', '2025-07-16 22:14:51', '2023-12-31 04:18:03'),
  (N'eiLtoMOcApzm', '2021-02-20 14:28:27', '2024-01-07 03:03:43'),
  (N's ayyyunALpNFabeM_', '2022-07-05 19:23:06', '2023-10-24 15:57:17'),
  (N'CTzfylUjrcyW', '2025-08-17 21:35:07', '2022-07-01 16:10:42'),
  (N'rP-ZAxFHIpTNBusPaT', '2025-04-19 00:50:45', '2022-12-10 22:34:36'),
  (N'pUgVzZ', '2021-02-22 11:43:02', '2021-03-20 14:21:03'),
  (N'cHBSWeJkXhY', '2024-12-16 11:55:39', '2021-07-07 21:27:51'),
  (N'LvRepL', '2024-10-02 16:26:30', '2024-01-14 16:06:08');
INSERT INTO [units] ([business_id], [actual_name], [short_name], [allow_decimal], [base_unit_multiplier], [base_unit_id], [created_by], [updated_by], [deleted_at], [created_at], [updated_at]) VALUES
  (738, N'JzujCgzfSYoVeDXXAs', N'cssdXnIav', 1, 2215770854035358.2, 958843, 106606, 116197, '2023-05-17 19:19:03', '2024-12-01 13:37:40', '2021-06-30 04:57:31'),
  (363, N'zTZkHxI wIxdFQbN', N'kIsGY -GMAanwJINnFYQ', 1, 1423194978515836.0, 313392, 634481, 658063, '2020-10-06 11:34:01', '2021-08-06 14:24:55', '2020-10-20 02:57:29'),
  (59, N'JTtPq', N'u-VSK', 0, 4568936837194493.0, 103623, 575675, 408816, '2021-01-29 18:21:49', '2024-04-13 15:12:11', '2022-12-14 07:46:57'),
  (834, N'C-ujsX', N'c hmtz', 0, 3013495792385345.5, 16106, 742304, 315567, '2020-08-31 14:17:10', '2022-12-10 06:23:36', '2023-01-13 10:59:22'),
  (223, N'tu-rD', N'jrYW mjIBtOxT', 0, 8115249502941452.0, 552462, 964325, 193456, '2021-05-25 07:29:45', '2022-03-11 07:51:48', '2022-09-05 16:01:10'),
  (149, N'lyMtiESmqj-', N'vrQfqwfcK', 0, 8222742934993060.0, 332703, 332468, 417186, '2022-06-19 04:23:31', '2024-06-25 05:18:28', '2023-12-25 04:11:20'),
  (260, N'kybGI', N'LOjapkYh-KyXTwuKv', 0, 6525273284839110.0, 194408, 847368, 249484, '2022-09-05 14:06:52', '2021-11-03 07:51:47', '2024-08-27 00:19:29'),
  (240, N'cTJaSqzxkd iwqx', N'guhkMJTZoUFg kebEPpS', 0, 4136433089865350.0, 39020, 40213, 981329, '2021-05-18 23:54:07', '2020-08-28 20:39:53', '2023-01-23 10:29:58');
INSERT INTO [urgentistes] ([code], [nom], [prenom], [age], [specialite], [email], [telephone], [created_at], [updated_at]) VALUES
  (N'tSWC_huSPOXLKHmF C', N'wsCgNQIWemlg', N'JbxVtgbQ', 639, N'tVt o', N'dvbOW-wXjwPIiHKxKw', 699, '2024-10-01 03:50:07', '2025-04-22 18:49:13'),
  (N'jmNgK', N'msbYuaIn g Rikoob', N'AxDXSkVkdErdtj', 189, N'wKbfFljiMbIPS_C', N'NwqHBznRk', 815, '2022-02-01 16:48:02', '2025-06-03 08:55:25'),
  (N'ZKhxOMIShjP sVWdfuG', N'Yf-mSmcQDs', N'COHtKKCjNAL', 435, N'_Kju_mww', N'iV_RmY_GH vLVLXU', 676, '2025-07-23 23:58:12', '2024-12-20 19:54:16'),
  (N'eJCpmCR O_v_-', N'TkcvF', N'H_wcyLukkAHt', 252, N'guXvoUAHXqnsKVtXuU', N'iWWuaaMaIXybXvJdI', 687, '2025-06-02 00:43:50', '2021-07-28 09:02:24'),
  (N'I_wLpvboOgSBLOt', N'iLTbibJTl_TGqgUTaW', N'ReQZXznCGiR', 483, N'hueThWg-', N'AKZrNDQ_EalnHYFZP', 611, '2021-05-08 10:56:23', '2022-08-17 06:37:17'),
  (N'-YZhWfTVjpDTc', N'awHCOxlFJHf-FydG', N'VULjBUmDeOOsCI', 884, N'Qvdjq', N'NxBwTRh_PWtUcleYJ', 327, '2025-03-26 06:49:05', '2024-01-11 11:22:28'),
  (N'dSwNalMcKQNzQmCaggi', N'EmHdHoHGqLGFY', N'tvtthcCCqcTsaoWfMBk', 530, N'uXNErsWN', N'mkBidEZeSJKrEApLtrM', 301, '2023-09-16 16:11:56', '2022-09-23 18:09:55'),
  (N'QnZzbtmhCtrAXAN', N'CUBaLZZPZQWnQolU rtx', N'EwROO', 961, N'BmLwDA', N'lvrMWUNBshRJWZ', 794, '2024-11-26 03:26:53', '2023-08-30 21:01:12');
INSERT INTO [users] ([user_type], [business_id], [is_cmmsn_agnt], [cmmsn_percent], [selected_contacts], [dob], [marital_status], [blood_group], [contact_number], [fb_link], [twitter_link], [social_media_1], [social_media_2], [permanent_address], [current_address], [guardian_name], [custom_field_1], [custom_field_2], [custom_field_3], [custom_field_4], [bank_details], [id_proof_name], [id_proof_number], [available_at], [paused_at], [allow_login], [code], [nom], [prenom], [last_name], [username], [prefix], [telephone], [tel_whatsapp], [date_naissance], [lieu_naissance], [profil], [email], [email_verified_at], [password], [status], [nationality], [cni], [quartier_id], [adresse], [sexe], [poids], [taille_m], [taille_cm], [groupe_sanguin], [nom_pere], [nom_mere], [situation_matrimoniale], [personne_contacter], [tel_pers_contacter], [details], [is_active], [desactiver], [remember_token], [created_at], [updated_at], [language]) VALUES
  (N'zVmPpg-bLIFsLq', 561995, 1, 3916008429398350.0, 0, '2024-04-11', N'mAW-P_mcJwRYAaurQ', N'uAeQUXN', N'WJGSFvNGf-guPN', N'BKVPCVlR', N'kghVxQsGQKAd', N'OFSwJNgbLXnSaU', N'_Vb pnWlpdtULrp', N'KE_iQI', N'XVajUNeuxWwRKfX', N'KdvkZDshZA-', N'WWZzGrOOBWy', N'DmWMJ', N'nZMgdRI', N'Al-I_yIgCMfGvcwStt', N'glAjerINmD-JaYK', N'WfoJqjkYMoI', N'BGa GeDrWp', '2024-06-23 06:02:29', '2021-06-28 07:35:38', 1, N'DevLv V', N'PdMLYActxZzULez-AK', N'U_I-jWVPIzmkjLT', N'blhWCiqxZxWuLRSCcQ', N'v zUdVssPEpfCbCj', N'usshxZ', N'weHHLLaHGCbglHr', N'DChXEGRN_kSCTteXfRn', N'VenMaO-YJUVkwcaR', N'fhddqnPGYbYUjZhoaPp', N'lYihualFvyavj', N'stbievmYL LiPj', '2021-05-08 15:02:46', N'qptzib', N'wMGcRXQ oc', N'KNAnSB', N'mkuNtCBQAiwp OAihkaf', 135027, N'HBs_N', N'oBiNFlbIxdxy', N'Eb_qs-zroEVOASO', N'SVAAB', N'lLs_MypMIMTuilLA_xf', N'shRtqa-DJkZa-WMagHWH', N'GdWjniGMTsTBfuOpX', N'nNCj_mKZb-ZZYo', N'VlzZGInAfbHuxgCetAB', N'oSErd', N'yYtqf', N'GEGmbFPg', N'wgUOjP', 0, N'dqQxsntImKTt', '2024-05-21 16:55:40', '2023-10-18 10:39:46', N'Mw_sX'),
  (N'Y-s -c-YOPApWqtf', 732916, 0, 5302822526539667.0, 1, '2022-12-27', N'itXAXglqhFVRDXC yl', N'R_qwIN', N'uhLViBJ  CzkwtaC', N'TluPcclhESW', N'zcN_nCU_ me', N'iUuhqulYBKjOE', N'ATajAVOA', N'tFNQbJqFmaj', N'TIAdWVgiMINwU-', N'brwBEblyO', N'eoBr_qemVxm', N'UgvGKSzTDur', N'P_sejUlUcO', N'EVeU-WsJdWMaVNCo', N'N_sIUKzF', N'JCTPNafjOWK', N'Ytp-NbzjAJtI', '2020-10-15 16:59:40', '2023-06-23 01:02:54', 0, N'-bNaIoLMTOYG', N'flbNZNPBWFyKHsDtV S', N'JnRx-NjCR CPEOphC', N'UGwOMDACBNOWT-HEuaa', N'aTQpPiIrp-QfNk_bIOXp', N'wpyieMNYSTG Ga-QTM', N'nBITajTLcJcu_', N'VLhXGP', N'AUdJMTCsS-oJdYg_SGN', N'frsUfy', N'muvwGZRuF bAohMNjt', N'TmIvgvVnE', '2022-08-10 02:57:35', N'yJoIe-diLWnMd', N'DMqnVNlUHURrMhQEXb', N'WvrRgiRja', N'-vVo eDYDpHd_Ag', 133501, N'ypKdG- oKOBMNhK', N'TmVWZUwhyUe-XQ', N'OdvvsWgkjR', N'A_GAMmA', N'qijASyzGO', N'kgOMioz gc', N'jLuDmLpPTENwJJhnq', N'GqrE whoCUTeoS', N'-FXiSuL-voEV', N'mZYShJ_QdkVOkJcyBTQz', N'WdarvLnTsSkdEMAG', N'pqKvJsC', N'ZneunwtoCyvvVRQJx', 1, N'JAplkFuxHPBTmfYsRH_i', '2022-09-18 05:47:11', '2022-10-26 19:25:23', N'B qHfht'),
  (N'XjN-QCSn', 329478, 1, 9403599890744732.0, 0, '2020-11-04', N'A_uzX_', N'f-jR_b', N'RSQu-ZXaRNBA', N'zAHQVEc', N'mILWSsDFLof', N'eLYDFQRhqZn_', N'TaTTUyWZTiMQuopnohHA', N'yFLaiGj-YoyLCsecfKw', N'yBczb', N'Z_UvlS-_YOigiqhr', N'zZJtrhlMpTNpdjogw', N'QO_DInHoJkk', N'QywXZA', N'wFyRCtdtoCkdEAJc', N'fLen_HoauPyj', N'NXPApfNyl', N'zogPXL_FWx-edo', '2023-06-06 04:36:07', '2024-11-24 13:39:16', 1, N'hD vGNRQhlJKsl', N'rgzIQioaN', N'XiPzVRdHo_UPqE', N'msNxhMCOGDJrqqelT', N'vTLEeIW', N'IWQTvFkwWvwqycbhGYp', N'ZoeM -PRWs_', N'keuod', N'yiBydqwAKlTs rlLZ', N'xzhSVTBwJPXm', N'hTvV caGYLD_jm', N'zLseWlClGqHCeDgbUB', '2025-01-11 14:46:38', N'eyvaZWIXBqIa TB', N'YgGN kGniedDx-nZyb', N'bxnNskdtJnP', N'MkBnDbbccEUuBcKybg', 177000, N'wDfTsDbwWXcfgyoRli', N'SfX_iTfOJ_g', N'ujGcriY', N'MtaIXQr', N'rFjjzYgAUXB-gpEWgtDL', N'zewKZqnB aLRPmiV', N'oxSIztoBMt', N'aGEgMTY', N'xqgVj', N'jhrnoPHCY', N'dsTaF', N'bWbzbz', N'IbCaZ O', 1, N'ccyDgw', '2025-02-17 23:25:27', '2023-05-31 18:12:04', N'eIjjdD'),
  (N'cELYE_WIadbfbYKMPPuz', 906164, 1, 7642414615864029.0, 0, '2023-08-13', N'jebAwAMYbWIAqPc', N'lMEKbt', N'htJ_xUp_S', N's-tjWGFQxdLIPy', N'rkrzNgpuptN', N'zIz akJmaKZy', N'DgWkAgZVD_cKHIKXHY', N'OSmNGJyQenT', N'KraYaoltpbKS', N'ircSOTwNGOUQLr', N'pNNda', N'XpgnwVz Flew-L', N'EitVHQLlFwHYpG', N'swzVQomcEpwY', N'ydWlHWxS', N'zS DNcgDKXFAN', N'FAGWWWjiPxoErUS', '2024-11-06 12:43:05', '2022-04-19 17:03:12', 0, N'gem-mgs X-K', N'ylGTo_JpR', N'hLcGkJPWNa-WjmwHBMR', N'Kc JZ', N'NDOeiXQPxQk', N'rkeOBfj_WZfEWxzG', N'qnpXo', N'yGbtUdJYhmzurM', N'zsZs', N'tJsn t', N'zjOCzedbxmEo', N'FuSJZDd_ZUKmmfJnRef', '2020-11-17 18:24:39', N'LTjIpJftbWnyNauww', N'vtqnJiNGrdLSoudX', N'dqgXfGX nrKJAGjed', N'MHuiEG_FEgP-iHzKg', 965989, N'NVGzToiqT', N'EoDHt_dn', N'TrlgqrnSSZB', N'MnntVN_RYTzZMqiL', N'GmFvzuOBqZi', N'MY-fqtUP-AJRjBjgi', N'xNAdtisj tuzkV', N'MMwzL d_fYxFkcKl', N'rBvOremtmXBI', N'rlKGJNl rQloJV', N'vKUDDiWQhAtblRq', N'ZU_drjPQAUxoZ_', N'aiLOPzsDqO OkMJjIgOB', 0, N'kZotgOAN-', '2022-02-23 16:06:31', '2021-08-23 06:56:40', N'tw Fcv'),
  (N'YhbtYGKHBut', 949308, 0, 3999974072861097.5, 0, '2021-12-21', N'mx-Nk-ypEjGNyqYxHg', N'yZBj-Xx x', N'yAslr', N'SGZXZVZ_Yc', N'GpMRrrmTdjbvN_zyi', N'TpGeBQubIDkLH', N'bGfQzOmYgQb', N'WMwrGhciPpBP-xijp', N'muOJmPmmZRdxCMt', N'IybkbEZ', N'JipSBoToKHfKGZcxP', N'kQrYGRIJJjcNd_', N'uFHSr', N'cJHH-uEDvP', N'FDrdU', N'aD-MpJENUzuTxZI v', N'acNgrNE_ie xig', '2021-06-14 21:08:42', '2025-07-01 12:04:11', 0, N'_wVDdWgKpw', N'iACcTLv-NNbtj', N'fYdXzzsAdPxHEClLOq', N'xqdNSODz', N'DK ChmghSSKkk', N'bupYPSxD_mKgy_', N'tuJnvccbhnxtkxG', N'eBIkckxj', N'nFYOG-uNaJ', N'fR gOIpDai', N'_qACoXhvxHzBV-OWMqrf', N'EHC  C OTJWO', '2022-04-05 17:12:17', N'WTmPafrgjCrWp', N'ZOmlf', N'fbCQAkQffFkoSGP', N'MpFwoTAbk', 598940, N'HPFY AHTcKixVDUNgQH', N'OCSQckdLhBypbr_bN', N'bvNJXjsYacUYkFLwxmU', N'ZRQDkKmQzkZF', N'plABtFmZz', N'pTgbyMPSYeN', N'TSINF', N'XmEKqY_gnRvSWBMGg', N'jbrogmQYbXO', N'vCad-XQVypl', N'W sLhO', N'uirtjmUd', N'ty-Nx  tDZaQMiKLB', 1, N'qeZFhkSVss', '2024-04-01 16:20:23', '2022-01-17 01:05:35', N'nhkBD'),
  (N'BBqyI_BGPmaERz', 727317, 1, 7508296145643371.0, 1, '2022-11-15', N'VytPARwRupJuQNT', N'YTsVGpAMI', N'_UDpDVBBybeMz', N'nsKAj', N'CpbtvOWgUCNPUpHvm', N'fGJDwfSpMOj vRSZTxK-', N'xgaXuFZmHBNT', N'lAKweXCVIb pcDRz', N'VOxGgLnpzY', N'OfLqspU', N'UZ_RaNLFm', N'NzotJjzvXcY-S', N'HZBoAPBtKsdeLotGqqD', N'puVILmCS-JlkAVAbNs_R', N'FnwkoMvYcwKwVmSpLY', N'lwphruoAvUBR', N'UROaZb', '2024-09-23 19:40:35', '2025-02-01 12:03:56', 0, N'Ch jwZyFjY', N'zGfIumhTRSeHpQi', N'VsYWwwmOLeBr_hnheOTy', N'uNXCP_hhDqKgh', N'TveZSiIJeAPfo', N'wKLnLgWNsHFk', N'_jhQHxM', N'Lgp-cnf', N'LNXTllUvEIwM', N'rAOCZNVcDjSDv', N'Ox-MjyUkFugp_mVFnoxP', N'srPKt', '2025-04-09 15:06:40', N'pdVVoZEcMSyrElQQLv', N'FDpNcFHKOCOvQGvAHe h', N'RxeyVE_NPOiMtwFezyx', N'NqMwwNfdwvkUKLDMMh_', 19779, N'ZiVcon', N'UUdFQLrfCvGXyNEVUpj', N'qfOYHnZLu', N'ipUhrkKawZArKh', N'eaVwONkDogg', N'y ZJhwKwemoc_XFDP', N'SBRJRYKWdM', N'tEvpZPKGdujJwE', N'ywvltfgSMlOyRHHXAJn', N'sBDSBjW', N'FVebj', N'OEAWFY AVm-LvsH', N'ZPVBt-phyRi_R', 1, N'QWEH X jAYkue', '2024-07-14 10:53:39', '2024-08-17 04:28:30', N'GyDvhH'),
  (N'oylZLLjiL', 764793, 0, 302115045037663.06, 0, '2020-10-23', N'mFU-EKvqeMk', N'xAsvxhqBCZ', N'FxOctJ-zUaUKSgV', N'taOcMnclhwgwNUBvJmx', N'PbfbKOaUBxun', N'dfhOqAiWwbG', N'kXmrFVfOVGUxDt', N'FWxmnT', N'PVsgbNway', N'YaKlDp', N'aSAObQKSPE', N'PUCHRPCErAlgwXtZ', N'skztPQSRTt', N'QxPSfLnRKLvRtU', N'wOECXHo', N'sZjJOBa', N'tuOqeFcmh cDlHgd', '2025-05-01 13:00:27', '2025-04-14 18:29:34', 1, N'nL XZVijLILYKmx', N'RhsrTlOqlK', N'bdZjZsy', N'IYNuz_X', N'rrlnvc', N'kHJEbxCpqyxsCu', N'iMfntgiip', N'gjgOiV', N'ayPzwpjLfnjitOemPBe', N'XjgtzX', N'oZkJHavk', N'SW gAnL', '2025-03-15 02:38:17', N'jOlhDrG_CemXhxShyUe', N'jbculbVXfLogYW', N'FXuTSH', N'aQqFWEHu XAaasSmbGCJ', 410101, N'YcocPTzb', N'uVGCXtLLXPTgGLpd', N'hqXfeI RSwkcXzq_rwG', N'aV_cESiQyVRQKcPuZOiU', N'fNhoe', N'EGSLjqXcPjF', N'B_flIllPcGlUHNBAseHc', N'BLjfCF', N'AHgxXUamv', N'VQRWMUiqPtIASJBwTP', N'paPxZyjRCNGZ Q', N'RQFouZpDlY', N'rE-NlcsMbchqXm Vy', 0, N'jmuPeRuDGEnpg', '2022-12-25 08:19:35', '2024-11-29 21:47:06', N'PCtjHz'),
  (N'IRfjNHYm JfVrzJ', 654829, 0, 4225954913151423.0, 1, '2024-07-24', N'uGS AhHf', N'lZRP_zpy', N'pSiCdgRJ', N'quFMIUXowV', N'jCReImjCGvAqpJbg', N'EyjGIIxtISS', N'_ pZbiNjYNyxAshGDq', N'vMwuStHLvBGFM', N'xvSnIfgmLkcEAT', N'dY_XnYMvk', N'eIMXywUbPOCqEsllY', N'O_GzyrBgC-rsm', N'ZnmoDeqepQJuozSsU', N'lvwOOUXcnA unwBu', N'XFvPrnntXtmZnP', N'_rNntOYeHzoVwqKs', N'RfIZmTEqUqakBmt-', '2022-10-30 20:16:09', '2024-06-22 21:24:42', 0, N'JXyBOLAsNtC', N'KcJPGijDSXjX L', N'rdSqddTc-zyymVDXzMgg', N'xHzAdmZk', N'USSpKUqDTwExVH', N'YUMN-J', N'qjOSKLFx', N'IcEvmFwOFK qzYh', N'BpxqkPvicy', N'qZImgdFrlDuWY', N'tsyRLqK', N'HasvafK', '2022-09-15 00:31:20', N'fwVdCjfWKbRNW-', N'PvjNKT', N'xH_FKsqujGG', N'nhi_yWYwrFmiZlPVNkeo', 948881, N'aM aE', N'ojIIxOEoBsB_ZTFQEAn', N'jvhqE', N'L dRcIQgSsuz', N'zzz-Te_dhhjr', N'XEKfygnlTLYa nZBR', N'tBdBy_QPqdU', N'czcplPIEBadvcsQlX', N'k oWnL_LTm-Rv', N'rcKeWsaHUDrq', N'MwWrrZRMwpkT', N'VPvwF-_Hqd', N'h_qZS LfkbNSCYP-LAs', 1, N'Uevfi_iyi-gH_Hhdj', '2025-08-09 23:03:23', '2025-05-22 06:44:57', N'dvPHc'),
  (N'uCPjSD', 380793, 1, 3980797110251358.5, 1, '2023-04-14', N'MEsre IcQH_g', N'FMyJEFgn', N'fgVeiwAyIJATGXTyyxCx', N'WmBKKQFDddjYsWLeFl', N'IGgrgcpZrJn PkbT HD', N'ZaJACatqNV', N'ojtiQoSD', N'qVAnYTuGQREj', N'WRVTYsQV', N'UElnSq', N'VEzxzEL', N'aMdWecYYYu-gFDUoyk', N'QxhiuehycCBBILccCTp', N'higkXQZNfBQbTAmi', N'GlRPdgSPWEcwLdrcm', N'dxzQNXkReu', N'dzOyVHqm', '2023-04-23 11:44:07', '2023-06-04 00:58:03', 1, N'uLZrwSymwI', N'ojz-u MhYpJIBxl', N'qMjyKaTsB', N'BSkNVqhaQKZPHon-e', N'jezhr', N'CgwowWthcG', N'xxSBp zdS-qQi', N'CJdqMCQBnctWTqj', N'WftsJREHYtDMS', N'o-GFxFiwjR_Cxp', N'yIZrc', N'accrVUPpUKFXVqX', '2024-06-12 19:33:28', N'JNPyhZdXeWs_gke', N'_B-SeJkcwQDmX', N'CeHFkcnrRqSAnr', N'yTIBMAbF_i_YbM', 824636, N'NUt-pdWDrHGZhEP-I', N'sFpyiU_', N'ECWsetgpbVLdrtrbj', N'Caxg', N'sbZdsbrp E cufnydb-', N'_mvxEm_lNW', N'SAzDhJGoqOsqfBn', N'shHXg', N'EvLDTNLdrCVtEpAYpZ', N'TCUBZnNtglKtjcISU VS', N'udBMnXpZr-S', N'JwfGE', N'ye-heaXNqEtUdNu', 1, N'WxKeuM', '2024-08-28 04:17:26', '2025-05-30 05:58:37', N'asNei'),
  (N'LUDsN', 956428, 0, 3277806702841013.0, 1, '2023-06-22', N'CkPwcAB', N'q eFbXeh', N'ypbGyHUNZ', N'mqd nDCmXLI', N'ecwYvHmZGQcjbH_St', N'RZRoDhk', N'lPvNvcVRRAHGGQdHjC', N'aor-MicBVc', N'fo_NH', N'IDOknIXPRfsSAZq', N'ba-EOlkfwQo', N'oTvm-gvlMQtR-_Ba-Zz', N'Seu-tzhjqgaQprEkGaQL', N'kdDmEV', N'Sk-IXrM', N'DhDZBmHmW-po', N'VJpLYUrjLeHbAdqqK', '2024-12-19 20:52:43', '2021-11-19 23:28:30', 1, N'UzqYdwlqqVNGNGrc', N'CZS ZVtb', N'OooGDDgae-dtgZpj h', N'_DjsnKiD XMwdFb', N'yM-yJxfvdDM-vKAhbsv_', N'shdyxttoyZ_', N'EEDaaygC bLpXUJpMS', N'xgPxbSpSvaGJN', N'ilDJJxQAq BCqoV_w', N'Ia-mSIcQrQhBSY', N'vWsEqw_qR Qj', N'UBRdlYFhC', '2024-06-26 14:00:06', N'XkSsLytdnrD_y', N'YPS f-OwgXZU_BP', N'BpGaN', N'JwdjWWLrNkZ', 814971, N'PRM_K', N'RLVCupCPSbPFX_ de', N'sywhtYeQks swzZJZb', N'YYIUcWSUqE', N'rcdOQnZvpNpl', N'cdJbsWuj', N'nBkjJw-iXwWLiqYKaHI', N'E_UTJTEiKWKOe', N'GrwpHvllrDbRX', N'If_SNTcv eCzN', N'G-CE_IIGLnMKts', N'RVeqtqlseELrl_', N'AzhLEIe', 1, N'PQTXPgbqAilP', '2025-06-28 02:22:43', '2022-01-18 20:47:24', N'QGfMJK'),
  (N'UKWhz', 903671, 0, 6869025494739338.0, 0, '2024-03-05', N'bbUiFIv', N'CozFCgC-sg', N'RDewCLOAANZOLx', N'KFjd UFddVtnJaIwxM', N'XSuEjTTR', N'MAxobcAxFh', N'yUGZJni', N'__PeBu -uO', N'uMtCYmH FdIGiBeLkwE', N'dZvMxLce', N'Hd--AgO', N'ueqoCl', N'g FlMPByhfZ', N'fDQKGJdRCGkVWbTjC gw', N'VsEucBncORZNLU', N'yxbthbuPh', N'FUw_QEf', '2021-06-17 19:41:52', '2020-10-30 02:22:55', 1, N'ytiR-Nk', N'yXEAVSJrvZCbH-rV', N'JCaHf', N'NpbPMdzW', N'I-RsBdvMrc', N'IfmfvcMXyXVLCNH', N'GcZEyvlOAW-gQSvlOb', N'USv_t', N'ruXGllwWNCE', N'M_BFqTiJrT', N'FCgeyvIkD', N'cHvD swwiIkz', '2021-06-07 09:14:54', N'OUVaG_oLoSQL', N'k-_nkryjbuoIutyChIb', N'fCjkIjeU', N'yD-z-vVy', 356822, N'eDiMoF_dUIQyaN', N'xDEkwYk', N'tQB auL', N'EEUvnoTZMPLGRiOKvGX', N'UbmIOIzRzq', N'UDB YaAlNb', N'R_uj xeNh_Bj', N'GtLKdtRVDob_g', N'WFi-e', N'Qc_eBaapWqwAdyiJHr', N'OUyzsvjvDiwmGda-aJ', N'qLGVJQIhOchwIKzB', N'lqogGEgRW', 1, N'WgsYiI', '2020-08-24 16:27:30', '2022-12-27 12:03:40', N'SCwMXor'),
  (N'On pfdsTcDw', 514848, 1, 5864157889377321.0, 1, '2025-07-10', N'xirAkS', N'lGDeHzOp', N'-lITgLaumnku', N'fPwIO', N'ADraO', N'sYuJuimtdFCHc_Xqvbb', N'RH-KrHKsADiqEauhKZ', N'lgBXqzsk', N'RHCatUdHgDGUk', N'jcycnkUXyCkmO', N'ZRYdyqKS-ewekJYyoVwn', N'Q r-P js-', N'QuMnPROSM', N'PExHNYHcKoNlwbZCdTGS', N'bmcvJbhpnFoFcPFmn', N'Zg_AjXJJwRCqgm', N'XFmrI-bxJxrPmHmgZsYf', '2023-03-09 22:35:39', '2024-10-15 16:10:56', 0, N'edmveGUuvwSsN', N'x_kJh', N'FlM-qyQQJehR', N'umutWTJggNKjZJJjJj', N'gkGizminA', N'rxsPbtbLmEcGW-tR', N'StOtcJPkdVjTvgmweobz', N'FymhaX-JpFHXzHqhWQ', N'DcQRrOnNU_ZT', N'-bulwThvzns', N'beaJuRkagrkS VG', N'MJIMEHIJBdazDE', '2023-01-10 12:28:19', N'qCKlCGlYjX', N'-RUEx', N'CkEFw', N'AfCagblHe yBeEE', 999260, N'qGVDvQhCjsofJaQj', N'HUfHqDZ', N'QO_OIr coaAmsmXSQLGJ', N'FCVW BsmJFizfX', N'uLJAAo-fBqNq', N'-caUa', N'v-ZwwkoDrcpU', N'IoXompCZN', N'CGTnt', N'ldaQPa', N'sYvFiVrnDt-XBGeNGmT', N'DibbLpfABZwQf', N'ZaFGQwpPKdmpYjVphA', 0, N'eQoJNNMOcn', '2022-06-03 17:26:54', '2023-05-28 04:55:05', N'MxNFKU'),
  (N'gb_KEbffnbKfymrTc', 241455, 0, 8048977661335356.0, 1, '2024-01-29', N'qXFqyMZFkvwjRkbfnSt', N'YH os', N'_yDkEIWpTwbfE', N'KGtXu', N'aaKTvOAvnmA', N'fylyu_LVjBHZ_EUngaTu', N'NYwqQhMJGckbt Pu', N'cCewVHVYP', N'TJhwSvpNvJPKRRz_nlG', N'kTYELWPVGbCWUiqgP', N'DHXUsiuDOrMTZU', N'TxILU-bpkwPtHJRxKQh', N'JafgyjXhJCHIJgCQ', N'eiWIRvFRlRFNUrN', N'FNUcgzJUfKLmTHcUTLB', N'kWstihtwlciABXg', N'-JzSwlGjNjnlSJZnLen', '2023-05-17 09:19:26', '2020-10-01 09:31:15', 0, N'ZsLfH', N'usqGt iowTmHgU', N'OWgJA', N'MMFsiNjpKLmnSNlo', N'coirIozoZT-OiyFdp', N'dJDIbYLeCrRO', N'xn_AKKFxsvqyhsnweGD', N'RlGYb', N'eyFqPWwAdEiGeg', N'PjlRKx', N'xXLbAvdLasxEG', N'LkX-fGoinqDc Ycgyt', '2022-12-14 09:14:15', N'vNm-wTtt_', N'oeqFVtPCin', N'UerYz', N'vaQwCgWPRoufbQKTz', 115702, N'aQhqelKGT-aAXkyF cY', N'bWBGJpvyPNuTsCkO', N'xFVLhVhgU', N'rR BRnoOdKOHCe', N'pyuWPBKX_MWxGIUzkzV', N'lFOaL', N'Jzn li', N'FeGdX-teKpqBzcyZ_mCR', N't-MzW-', N'RtkWacs', N'MsZesL', N'JaKFndrxZeG', N'p-FymgxMEcNqTHkkjqa', 0, N'Aqd-Qis_X_InZ', '2024-11-18 07:58:37', '2020-10-10 18:00:15', N'HQKOKF'),
  (N'aOpvvc qB', 837324, 0, 4917548132198779.0, 1, '2020-10-07', N'wOLnajNP_r', N'kxuo_', N'-tpazW', N'LRdTAL', N'csIMdRGHO', N'NBHGXptoMzbuUNemMFn', N'qnEdulLvt', N'IqjjVaDTuX-G', N'QNlqgOhK F', N'AwnxZh', N'oKeCsvuiXf', N'uurOhcZtk', N'tDaqMXsdo', N'nGmcJOkpQHxFMDw', N'ECvLUvL_MY-UPPkmRQdz', N'Gssu-AMrQE_mYaf', N'jSWpmCsHanQBqUcY_', '2023-08-27 15:14:03', '2024-03-30 07:34:17', 0, N'KAgoGYPtiSZpF-J', N'NKUAcWTn JPZD', N'bNHjClOYplLyUlvi', N'INrgnbRCE-MrpDf', N'pWqXNqU', N'puUZeJqk-Xk', N'Gvacyr RtEGSiHKxqXZy', N'OsJkpAKlYLaHsGac', N'oKxPvyLHt-', N'WiUOI_QRLx', N'FGsYCiNMGYx', N'Q_CrcLvEystp', '2024-10-19 23:38:45', N'lOT-UQJRcAcVej', N'OuERHXzky', N'hHgRBFIKZ', N'YLaqbnenkHlllba', 898405, N'DRyoW', N'UvrqRTJBv', N'tGzWExLU FRaeV', N'altR-EgCowZDvC', N'zoStwNpzbxw', N'tPAGcbUp', N'TKblmJ_VmqU', N'SJIwv', N'QWtLVsMdyQ Ydst', N'grSMgpwBA', N'RVhpRqZzDwBpxhcqh', N'gi_cgsgWhySmAw-nbLj', N'sNosZatemIvkqTvL', 0, N'KItovZmYGG', '2021-11-19 22:07:47', '2023-10-02 15:06:42', N'TAngcW'),
  (N'ncxQCc', 511636, 1, 4535485599251360.0, 1, '2023-01-18', N'KNyHSclMPvykmI', N'vdvihXW A', N'NVlOFCTelJaRiTS-qew', N'PfLgeu', N'XdnyftlfxAIXt sfumLH', N'-LDsJDSovu--KPR-P QA', N'HbNCGFyADl', N'UBQDVChTrxRmgzDWp', N'aYIyhaeldNu', N'QqIQW', N'HJvQJyFTwPoMcuzCx', N'akgm kZTQbzGOje', N'ZnmzgwdocAcLNDCkkc-', N'Oslud-ubosloa-', N'MulqtwvGauJVbxYR', N'r YLegNWhzcS', N'hvdFvdERU', '2021-01-09 15:52:33', '2020-12-08 02:41:21', 1, N'IOcjdwiMb Mt', N'JrWBNDvTXSiwx', N'dZakmGT_hYmz_', N'GwarNbYCE', N'RxRapynDAURbw_AJn', N'XGDxFACWzXkELdi _', N'SMCFkyCliEJitVyQuJm', N'dmipqxcmVI', N'QvtwBBl yjft_gSG', N'Al HnNgDC_guH ZUwHs-', N'JvFoDxChREJkt-dRkk', N'eQPqcqgIrz_cKqJulo', '2023-09-24 21:30:18', N'gfYsviSokWxeTTBLiH', N'k-HCWfxIwTDDM', N'KAu_dRKPdL', N'HYRpSdCnR', 798911, N'eGqFbF-ikRxp_R_aEYx-', N'Q-xItHwD', N'UwSml', N'oVq Um', N'C SJUaSZaN _ctQ', N'VvOrltx', N'K I-emOGcQMADmJ', N'SwJF_ZCGcemJ', N'QYiicMJ-GgPMw TR', N'KJHamCdXzcKBtxvQG-NQ', N'lNlJWpDQnLDSLAABk', N'Z-goLguJ_m -xSyNoJ', N'WcLSvmOFqxxXEk', 1, N'uiYdGUTp', '2024-11-17 19:50:51', '2023-09-08 04:36:00', N'LHRRiCs'),
  (N's_CuUvwndaGjxlKZDg', 549440, 0, 3484174579731762.5, 1, '2022-11-29', N'XsXngUTmJHHnc', N'uGMDIfQg', N'gX-Jdz _T_dAwS', N'BvcuvbUaV', N'PqrwGPFI', N'sFGmuBJiv', N'gPPBsZIgXACFFiYz', N'SDtwT', N'BYkAnwOgBcVZ Le', N'PFDElz', N'tqETR_ nKvjyiFCDL', N'L-uqRoNwazMqYzd-Ob t', N's-YOXuJEiWqdUCkVcwn', N'aqnvGkAdEXVtB', N'otFbywlJbGt', N'PPuYvCq-oJgVDJrjg-', N'-BOmmrWArszHeYlHJRtu', '2024-01-18 12:47:05', '2024-07-29 22:28:08', 0, N'ZxpYtcsU Eyoa', N'yiFKatySV SLG', N'-qquO', N'BGflu', N'gSXID', N'YisQ', N'VHJqkW lvyIbxHU', N'wfotmVpNmUYhoT', N'GfKJIPXYYDDGQ', N'RhxKVuupLvkwv', N'DwtRO', N'WymmAqvZeN', '2023-11-02 08:10:32', N'ztMMbZxZDXZcGJhSEqzU', N'nICJNkR', N'mu-uMMBPH', N'qHYxcYcUPKrNZdTzbbb', 790865, N'_MEAG', N'xpQUlxKCwaoMIUlisM', N'lYE_DnhvDlZ', N'NTrgmNgju', N'totiPMbIQZcbNhIx', N'SNZPqwdpQiD', N'vpURmJHmnKLpr', N'LKGAVeMyea', N'_acMbKzcRdwTtPxzDj', N'BVFROYGnzHPtbQVui', N'TqjYsx', N'IScDeqDVUH', N'tBSNrb', 1, N'l OeMeISxWYNBqAYm', '2022-08-12 00:50:21', '2023-08-09 18:34:34', N'SbFZJ'),
  (N'DYMNT hzqhXqv', 89111, 0, 9190318922819918.0, 1, '2021-05-09', N'j-OhF-KKJRac', N'PWZhYi', N'uxWTmDRe_QKxieyH', N'--k-bLcZZovRpYELJgPG', N'CiovWsclM ubbFEECA', N'McluT__UN', N'pFvsXe fK', N'qf mr', N'p JFetiFnj', N'MglXBkhmLG', N'ibbbxMLccyF YSGP', N'DGzRZ-OUjqkcm', N'OaErZ', N'vJebMINPI', N'MqRGQaeqR', N'TwjHOpiVqQGm', N'kYCAmrEkmcAVAUJ', '2023-05-27 01:50:59', '2025-02-13 07:19:17', 1, N'WsLIT fze-LsG', N'glALlR', N'-WQz_kFhL_F', N'DWDzuT', N'vhBxk _', N'QwYkwLKpOuCmtsXzfhGf', N'sOueKkJDVVZwCjn pie', N'rllmUpusWrPIn', N'vpHdevtgM', N'ZcWJgRlAlbtxiErk_MK', N'JvwcR-MSqBbV-YKdK', N'dUbMyF_IA', '2021-08-20 19:52:07', N'vlsRsWaFkkxTuWqmeAcP', N'RWiK-CjUgQgtrKCEUdu', N'azPWteX_GjZOUd', N'bBZZzUcDEVN', 258721, N'UNmBdMvxK', N'bANaQLrZftv', N'iwug', N'dexzBbRnKBqIKii', N'g ANNygTwrmleP', N'qtChiluEOJXKvzmlU', N'yQZaAdRqNZEMJFtCfjaQ', N'DRV_d', N'grirovcdW_', N'oQNRC', N'nwgPKjcWuBEns', N'pyXyitM_OiwWxALg', N'B C-mTKNtIxMAAeRno_N', 0, N'vZHUEXQvxTqTH', '2023-07-22 14:46:08', '2023-11-11 22:07:35', N'sPfhtV'),
  (N'A_-tzTAlKgsPEG', 488391, 0, 7668226473648749.0, 0, '2023-04-14', N'FfHfetMQzeGf fTZuMd', N'NWNrCCr', N'ez_HoQwfCPpphgC', N'QiaQn', N'qa-eAJmjnYblfv', N'SOmyThJpXxpbnTGDEJuX', N'NCkEQbHSdqjqIVoKglVf', N'F_IagUqEhnkRBiD', N'aebNrWmqYINN', N'hxaHnGIJHikcKbr', N'jDYDVBzUlm-hOeXz_LZc', N'fBzwBlIFZa', N'-rMNJxVO_j', N'BOCsa', N'HkhirEwnx-DhRaspTNL', N'eXMHYV', N'CuUwiPWeTiWPhwAmmKN', '2023-01-04 11:48:13', '2022-06-15 00:08:33', 0, N'AVpZOR_uI', N'SrShsdE', N'MmvfvcONqdvKdkXN', N'fEhrNq', N'MVZpJ-CfyAKH', N'WjIAcu_-vhTbEabeDh', N'kDBGJNiz_ENc_SOI', N'ElT_LbEO', N'cbcSxPD', N'boLOitXJeu', N'xFHkMllh_CnUgfpx', N'jqQblS', '2023-06-22 07:49:58', N'CqGeuHHjUr', N'ZOeNeGS_NV', N'tadPhLA-', N'AkN-m IJjQpIW', 491177, N'PlOIe-', N'WQGLlluEJkn', N'eTztBRgc-Bdr', N'ylgbaLHYEFmrDHLTF', N'wqCNSHxp_rE_Fbu-', N'-CxQkeB', N'FBaItd', N'QnIEHfazsjGtxM', N'tKovcV', N'ENGNI_EQOOv_', N'TwTCTZXi_iGp', N'gjaQDtu', N'lAhdV', 1, N'kAjDmJ', '2024-08-15 11:59:05', '2023-07-22 15:39:40', N'tMxHwK'),
  (N'hTlRTNfkgIFxWpQthm', 168834, 1, 896573901446241.5, 1, '2022-06-03', N'ZHicwdtcDCNqePNB', N'RflvyEuf', N'eWaqC', N'zpKyTyFBU', N'YNjf_Q_wcmmdrFo', N'G f_JozTkp', N'tFYVN-QR-WwJUS', N'EGNLpLfBecM', N'NU biRoHx_VoCi', N'eCWDrSC PC_MXvzduX_', N'A_AXNhy', N'bOvzaTR', N'VWVtkWaOZ-gBkrreU', N'hMtkGQFH', N'Hu_pEJtnBpg', N'ac_vvC', N'gVPQcE', '2021-11-17 04:16:38', '2021-12-21 09:00:52', 0, N'rooTvwkKqXZBlzoQJ', N'TAxPW', N'PNwgi', N'FEY_cDUbPOw', N'g-FUUT AWEjyiIB', N'XbUONPTAzeY', N'DIsfSqAKNrGCp', N'VYO CjLcg-', N'QueeELQNi', N'CRfCvE', N'xgufZfMeszu-hel', N'TonLpPXOtFBBWPsG-a', '2024-10-02 07:59:23', N'kWUquHrsnIwbIDUvwa', N'gWIeYwbMj_XOFv', N'HupxEb', N'xcjJfqtMN-Ozd', 786836, N'ZjYnoDkckNEJNmob', N'GZQHWo', N'TIM ETQuhU', N'KTLVNm-Az', N'ic_SZtKNWkqlSppJ', N'OTcuU', N'cAcfdatZs', N'HD wYkMujE-t', N'ejsRFjVafMassZbO', N'lrlAWndy VTyI', N'scTIVrbMinZtLg', N'oD oPvItHBVHV', N'A--ovuCvZ_GwhU', 1, N'nlwKz', '2024-03-30 23:28:00', '2020-12-26 18:15:02', N'YtSvN'),
  (N'IyEgxCWtiPeFJlUOSmT', 701376, 0, 4797477116554507.0, 0, '2020-11-20', N'hOrkK_aj HWMZSeYYe_D', N'BkDkGACpnM', N'nIHEmKozSib_s', N'CzmZp vEJmceYF', N't_Pp_GxRe _KChNkz', N'frbmHEHaHAZpguJrWlr', N'DtjywMn', N'lPGXHaPmJy', N'IzfaZ', N'IrQjzojhqNSNsaohCvF', N'xWkAWAbHmlW', N'zCiIJvFOIraY', N'PlnFLBkEr', N'xmJPKzDtR', N'UyoB HFVexLKESjAFpGK', N'STHnhZGXWoOVKXC-OL', N'BOiTExa I', '2021-01-25 20:03:42', '2020-09-30 18:11:54', 0, N'sUaAu', N'OTAZ-WofmxENr', N'SpHUHDoiGpijZ', N'nmUaAGIfJdwZk', N'ACTnQ dGdewKmGtmLia', N'VNpVVGdR', N'ETaPAhnAxjqaNldAHPUR', N'CrSJviJt', N'fYEhY', N'BFJC uTDClytj_hV', N'CFRvVyX JlpFPWUXSW', N'NtsAVeXQiqK', '2022-04-26 00:53:20', N'NLgugDaylQKOyv', N'HJXQRM YYiXRu-boV', N'mKn-VPr', N'vYrvH', 578749, N'NHS-Oc_lYBkou', N'etZXm_g-OQp', N'PaOsKNH-aSvFsIvLL', N'dUNrMGT', N'P-JteHJG RYkpSv', N'ZWqNPFnnlEReZrn', N'owQs_EGDygxdyrF w', N'puDjEObgIleGFXXinBc', N'VdJTIlXUAK', N'-VmBKqMaqrB-GFKlPDt', N'Ex RSjXkfWqCh BdJqxj', N'aiMUQBhGJVj', N'OCMj_jVAZI_d', 0, N'VXYDDgad-dbUxvwrKS', '2023-04-25 17:44:13', '2024-11-07 17:46:48', N'hotWB');
INSERT INTO [user_contact_access] ([user_id], [contact_id], [created_at], [updated_at]) VALUES
  (30033, 155, '2024-11-06 15:33:24', '2025-04-05 21:39:23'),
  (873339, 441, '2025-01-07 21:45:38', '2021-07-26 15:32:01'),
  (942900, 861, '2020-10-31 22:37:38', '2021-11-20 10:28:57'),
  (80425, 493, '2020-10-23 15:24:47', '2024-07-21 18:12:40'),
  (434452, 280, '2024-02-07 20:51:28', '2025-08-04 06:18:33'),
  (735490, 144, '2024-06-29 13:38:30', '2022-01-16 13:03:31'),
  (742044, 251, '2022-07-09 14:23:54', '2021-02-19 21:15:43'),
  (51981, 896, '2021-11-04 14:12:07', '2021-04-12 20:10:28'),
  (109965, 507, '2024-12-27 21:40:18', '2023-12-21 05:07:17'),
  (487630, 235, '2021-11-17 01:44:46', '2022-09-05 18:07:04'),
  (881879, 137, '2021-01-15 18:32:55', '2020-11-10 14:48:44'),
  (493851, 922, '2023-09-28 13:47:38', '2024-07-03 21:07:34'),
  (83432, 348, '2021-04-27 12:44:20', '2023-08-17 23:53:30'),
  (452795, 634, '2024-05-20 00:20:55', '2021-08-30 14:14:30'),
  (312893, 799, '2021-12-06 21:27:30', '2021-08-30 20:54:51'),
  (991671, 839, '2024-06-06 21:23:43', '2021-11-13 10:56:22'),
  (228961, 203, '2020-11-02 13:20:27', '2024-09-24 17:33:03'),
  (164987, 981, '2023-02-10 01:31:41', '2024-10-13 07:32:34'),
  (222476, 234, '2024-11-29 07:39:57', '2021-12-22 21:00:11'),
  (25145, 188, '2022-01-27 04:28:13', '2021-02-18 22:22:19'),
  (961571, 365, '2025-01-18 03:10:29', '2023-04-18 11:08:52'),
  (456703, 320, '2021-01-04 08:23:17', '2024-12-03 14:51:17'),
  (271835, 269, '2021-09-03 20:03:02', '2025-05-04 11:28:58'),
  (789705, 6, '2024-06-06 17:17:51', '2020-09-26 02:36:15'),
  (606267, 639, '2021-03-15 11:44:17', '2025-02-21 16:20:42'),
  (242504, 331, '2021-08-16 12:53:37', '2022-02-11 05:01:42'),
  (489439, 117, '2021-12-02 12:55:29', '2022-05-21 13:20:30'),
  (160944, 894, '2024-04-27 01:37:24', '2025-01-27 11:12:52'),
  (183640, 120, '2022-03-13 11:34:52', '2022-04-08 12:36:55'),
  (607689, 269, '2021-09-05 09:38:22', '2022-02-10 14:40:51'),
  (472251, 813, '2020-11-26 06:16:22', '2022-03-03 15:20:06'),
  (895648, 147, '2025-08-05 01:48:33', '2020-11-20 12:47:44'),
  (58630, 915, '2025-08-11 19:47:12', '2020-12-21 02:47:40'),
  (825050, 396, '2025-03-05 23:16:49', '2022-03-17 15:36:11'),
  (104606, 649, '2025-01-16 04:48:14', '2022-04-23 08:57:36'),
  (916064, 942, '2024-06-30 07:07:46', '2024-04-11 00:21:12'),
  (699534, 145, '2022-09-24 23:19:25', '2021-06-14 22:44:39'),
  (357967, 791, '2022-11-26 16:40:46', '2024-04-28 01:38:38'),
  (378590, 541, '2025-07-30 10:15:18', '2025-01-23 17:55:25'),
  (285655, 474, '2024-10-09 07:20:05', '2022-10-26 02:29:59');
INSERT INTO [valeursps] ([indicateursps_id], [n], [realisation], [estimation], [n1], [n2], [created_by], [updated_by], [created_at], [updated_at]) VALUES
  (731158, N'GNjNMWQAFMNPcgpNDx', N'npK-Z', N'z-hVRQT-OyWWdoPkQ', N'_gbphWxANlvXtBqVU_T', N'TZCQnKiQspWxyQMt_L_', N'cQPWVMTjPvlD', N'PblPosXUOWQH', '2024-11-08 16:19:54', '2023-12-13 12:01:47'),
  (566569, N'KIhsbcihKmfINxq', N'vztzTGU', N'o_qWLaiv HJgZTAUNk', N'BFkschOXq_jU', N'MkaIHQUk', N'DKVovrIROBvM', N'ppIOAJOnuZGlT', '2021-09-16 01:24:51', '2021-02-23 20:38:47'),
  (924653, N'smHjrtD', N'cxXzfH-Xxy', N'ToMRKdUd-', N'BzoRbJHBS', N'njrHZ__xizi', N'T_-FXJWvBB', N'YsFNiHpEIBfkjYtQZ', '2024-03-12 13:03:35', '2022-10-16 09:21:00'),
  (628284, N'EVSwERyynflt', N'RmSkPHewbzn', N'-sTIfpirXXfPYt', N'CQ bSkDvM', N'CwPae_EENf', N'cuNLgHFKXQ', N'nHZyWLchy', '2020-10-22 15:14:05', '2023-12-13 01:26:03'),
  (56601, N'vyutyfEhMIua', N'WhexBmgLF', N'eGMZGvuwnN', N'xkooDAowWf--FeL', N'RSxhgCs', N'iIDcQjIks', N'LZg ityuhOG-qNn', '2020-12-31 04:48:00', '2025-08-09 01:44:19'),
  (98950, N'EvSvekXHelcYYLZwOK', N'mPQnTWJKzSzCBsvUn_A-', N'UFBTOE-', N'mrWxh_MOVrAv_hMsBY', N'onoYPUDkOtxX', N'SojUkyigjZNf', N'eedBKP', '2023-12-19 23:18:36', '2023-01-25 18:43:44'),
  (512263, N'rwGloBBH GkhNqEgyvu', N'UlzIaRfSVx', N'-AodcFDtzTfYUxj', N'oAQymGt', N'fRBvHVToXGiXWNLpSv R', N'WtaAireno', N'hrnPqeqezNpaIr_DdN', '2023-02-02 08:15:21', '2025-05-12 05:40:45'),
  (477422, N'NINsKllMnglMEo', N'iZQ-gBCSzFRBV', N'iHAwdIzvXGem', N'KjgC-GwB m', N'JFSZSuMpaBF', N'kqJPrVpeAPU', N'RRmFTbiYBazb', '2021-11-14 02:10:28', '2022-11-28 13:56:19');
INSERT INTO [valeur_actions] ([indicateur_actions_id], [n], [realisation], [estimation], [n1], [n2], [created_by], [updated_by], [created_at], [updated_at]) VALUES
  (722708, N'FzT-qhkvpFkPBecx', N'mElAcdqjs', N'EkTqDYLXiLgFJMjO_', N'IqpD_FPUCUDnbMBL', N'GXWXyeIrci', N'iMwFezkuLDkgSV_', N'JSKwuD-', '2025-07-30 20:18:08', '2021-10-05 02:03:01'),
  (994776, N'weBcKhD_xaiZlS', N'xBUxVytzvrVKBwnGqkB', N'dYH-aDJiBMQBlQOkvi', N'OTiUfBrBWV', N'u_MPv', N'S_nHUaKr', N'SqRCMzfm', '2024-12-30 10:52:36', '2022-12-13 05:54:28'),
  (497374, N'EIbTxsSuwkEHvT--mBYt', N'nZnJSbpOSRQ', N'mtpHb', N'mxgdWTE--gMvzCw', N'NxAeuxkNJiU', N'NHtEfrF_JtswbdRJrSuS', N'lTU_fDmHzbq', '2022-04-09 02:04:08', '2022-06-17 00:07:53'),
  (684081, N'X-wtZlBNLmiuO', N'uUjnVYJv_E-W', N'-zouATMciTXqkV', N'EwCcLdgNRgqA', N'rKmKYueSx qFn', N'CkijDHdv B', N'dZNuWOLYPUtBDvYYLOXH', '2024-09-09 21:01:52', '2023-08-01 02:50:02'),
  (73749, N'OKnbssHdp VrV', N'OFJS dhWPc-eh_Ex', N'AWVEuayCCzg', N'IlFDZRK', N'aRQyaqLCp', N'FbgmOwKxGjwPNng', N'ccNPfxmsd EUHO', '2023-06-13 01:21:01', '2023-09-03 01:41:43'),
  (777952, N'ucoIhFUBW_ga', N'mibGSIKTNYyZbzGuFt', N'qBu_BMmqlZHJyLzdLoz', N'qfnBSpxT-Bf hx', N'xRHNdnpaw', N'VRSYuH-rCEHCnLKMGVg', N'eaODWr', '2023-07-07 19:01:11', '2021-08-05 04:18:28'),
  (874356, N'Y_BEE', N'DW bkubzluz', N'jRc-WkJBlad_', N'eBYQaEDIbDBwQ', N'chLsuRtlSEjPKvSFLfi', N'bguCoATFHsE_OiNmO', N'XzIEASl', '2024-10-11 07:33:36', '2024-11-03 15:18:37'),
  (877656, N'PprTT-sM n', N'eYLXjcpABzUQhpAOI', N'WnzmXzxudIuLvQMKtuJU', N'BXwSYv', N'jNCtbcEf', N'OiTPWvFWDkRiJIObPe', N'UjihDTZeH', '2022-03-15 11:59:59', '2024-06-29 11:24:52');
INSERT INTO [valeur_activites] ([indicateur_activites_id], [n], [realisation], [estimation], [n1], [n2], [created_by], [updated_by], [created_at], [updated_at]) VALUES
  (455723, N'rTHYeuXEQSfkp', N'CjcNIKAsXOVis', N'yxwtgltVjMkXGgONuhDE', N'fHTcuZCFwy', N'KhJhtrHMiDwJu U', N'thq-KyvnrRBr-DQTok', N'HoPHn nPv-HG', '2022-11-09 19:50:04', '2024-04-14 07:51:28'),
  (254766, N'LptZxHy', N'rML_ rRdnrC', N'zP-cESZiat', N'llfEorEfl TOOFeeT', N'xcdvEXZPTkSC_V', N'M-YXNq', N'YqUbmLXERF', '2023-09-20 21:17:12', '2021-11-28 20:24:13'),
  (998043, N's nokvvqvCHoCGf', N'PhaMSHHCs', N'aWeo -vgEL--JW', N'VQNNC UpBtU-Zwwa-raf', N'YBwKLOIRDQq_A', N'RBGBvjkfuEOZM', N'PaRafC', '2022-05-29 13:05:24', '2021-05-23 21:23:23'),
  (206741, N'kTDh--a', N'hFlfWfLRqjffRfSFT', N'tAKTYSWU', N'AzwSUHXr-bMjYAzFn', N'lMPFNkFH', N'lVgnijgSpTxekslA', N'k-DFeslUd', '2022-07-19 17:10:31', '2024-08-21 14:26:33'),
  (161126, N'jNTHNe-kpVXCLyPz', N'tUEqS', N'YU-WFaCkUXaDOv', N'yBPb-irFgStVhS', N'ZwFjtWAcxQkQ-TI', N'pAMjL-EdtBovNIdIRLsN', N'bg PRHFpZMOPdGOlcx', '2025-05-15 15:23:40', '2022-08-26 06:24:59'),
  (284100, N'lNYwYML', N'nzncahHPSZrcm', N'KmMdbPhW_oW', N'y_IC_bXzdZB', N'DLUPFF', N'A  UTwGYhcI IqVwmFLg', N'JzVC_q', '2023-08-27 23:16:11', '2022-04-02 03:27:09'),
  (37530, N'ydwTaaxlrpvFscZp', N'tzHLswlCwNlE', N'Eje_tzQlsVUaUazXY', N'SahgWHzs_TtREn-dCntb', N'cbBoiDxNjpQrUAGTSImj', N'Kt_ReZlRQwqkGgWlu', N'JNKTiaimepBXLKIHSTV', '2024-01-07 16:20:48', '2022-03-03 15:05:25'),
  (728485, N'l-vUPlGfZkpI', N'WDGGPZIds', N'RlXxjdNiBBwqjdVoNsE', N'VnWC_Gk_lskveCuUi', N'suZAoXN', N'qb EOJWRsJMRQ', N'Em-qalnYka', '2024-04-06 04:26:50', '2021-01-30 09:41:24');
INSERT INTO [variations] ([name], [product_id], [sub_sku], [product_variation_id], [variation_value_id], [default_purchase_price], [dpp_inc_tax], [profit_percent], [default_sell_price], [sell_price_inc_tax], [created_at], [updated_at], [deleted_at], [combo_variations]) VALUES
  (N'nERTB', 906672, N'EJMzRHOTruK', 828, 590, 5420747003854789.0, 3304060462007542.0, 4051184022028041.5, 9196711013240650.0, 8741107303540826.0, '2022-08-16 20:31:46', '2023-03-10 19:17:13', '2023-08-01 21:09:05', N'fibK'),
  (N'hMZ VdDzQuQ', 433329, N'-RrmHzO-DKA', 751, 818, 1660514743499848.0, 6624739530130921.0, 9080217632514450.0, 7953068585537910.0, 7147759575730509.0, '2022-05-13 00:56:42', '2023-10-26 21:07:55', '2021-12-27 23:54:09', N'D KQyeBVjSrefByjTjg'),
  (N'AOgFd-mEhkvBIXTOZV', 302687, N'QISDwIHvCmnte_mL_-BT', 219, 87, 4325704412073612.0, 7580690977364078.0, 4933303310573949.0, 4728581770505552.0, 6569472966541902.0, '2021-04-11 13:45:43', '2022-02-18 02:55:54', '2024-06-19 04:57:36', N'lqYk_VEqECxJ-MDH'),
  (N'LUjvgueQSUETtu', 766679, N'hdEGFSjDPStGytD e', 567, 270, 1259375666519780.8, 6535158734630910.0, 6758567234927609.0, 5577863073188565.0, 7727361226431753.0, '2024-12-25 14:24:50', '2023-08-08 11:21:39', '2022-12-22 21:45:55', N'revDEa'),
  (N'rz-cIdKlA-Den', 629932, N'bkY XSGrnYPklOffZmF', 118, 869, 3700298617125462.5, 3092959527323158.0, 3652046694790537.0, 5013943080597243.0, 7580035973408848.0, '2025-02-04 18:16:44', '2021-04-06 20:05:23', '2024-09-03 08:24:09', N'rkvtrMkTjOsIJW'),
  (N'NmIUHZcAWParYyP', 251200, N'_fgeJM-j', 526, 532, 4057655809362381.5, 8853485714310055.0, 9646117385728314.0, 9561659807123732.0, 8323226551785693.0, '2024-11-11 09:42:49', '2021-05-30 11:55:51', '2021-08-10 05:46:59', N'XekUQK'),
  (N'bgpjTNSDKCEQdgK', 862486, N'kvqNForYcTuvMZ', 579, 341, 6804481486746106.0, 7883389979601149.0, 7282583587384520.0, 1216410200569273.5, 5239797031746722.0, '2021-10-10 15:34:22', '2021-06-23 15:05:07', '2021-01-21 15:22:14', N'KdKSa'),
  (N'XvtVpHXDgDvg Sv', 790835, N'eiQZkOug', 773, 850, 8626631512207800.0, 4487250841570812.5, 1860654774079445.5, 9467493410382946.0, 97380926961859.73, '2021-05-28 11:44:05', '2023-11-03 08:01:47', '2022-03-15 09:59:31', N'aSEwT');
INSERT INTO [variation_group_prices] ([variation_id], [price_group_id], [price_inc_tax], [created_at], [updated_at], [price_types]) VALUES
  (365, 97996, 4227599981076889.5, '2023-06-14 20:06:59', '2022-05-23 14:15:40', N'IQPLmYWtqbS'),
  (141, 689636, 3837203824723363.0, '2021-10-28 01:22:59', '2025-08-16 08:33:32', N'_EtnFszyLDuh bHw'),
  (704, 845634, 6301607810690999.0, '2023-03-24 12:32:55', '2023-09-10 10:08:49', N'ForL__tUzZpOxeDL'),
  (427, 934638, 2314451865334169.5, '2023-04-29 14:46:32', '2020-10-14 21:49:44', N'nYLVfHwNa iT'),
  (674, 874495, 3969591742338273.0, '2023-05-26 19:12:58', '2023-08-09 15:54:00', N'NqhfkXZEDG'),
  (744, 943190, 9810251300814030.0, '2024-04-05 18:58:14', '2025-06-16 15:37:35', N'_WU_CFR'),
  (113, 318090, 4487144951432523.5, '2024-01-28 00:16:43', '2023-01-28 08:14:24', N'SsdekdpZNrjb'),
  (124, 420401, 6059234585225343.0, '2021-08-30 05:18:23', '2023-11-05 04:23:58', N'fSKFkOd_yii');
INSERT INTO [variation_location_details] ([product_id], [product_variation_id], [variation_id], [location_id], [qty_available], [created_at], [updated_at]) VALUES
  (464, 383, 508, 785, 6255455072061546.0, '2022-06-09 07:42:47', '2024-07-17 16:11:27'),
  (660, 509, 901, 517, 504591822083874.1, '2022-02-01 18:32:23', '2025-07-06 09:58:53'),
  (491, 586, 313, 555, 1598196695169660.2, '2024-07-05 11:26:18', '2022-07-06 09:11:00'),
  (956, 720, 902, 240, 753936018736534.0, '2020-09-23 04:43:10', '2021-05-14 10:59:11'),
  (865, 764, 384, 672, 6464401298761374.0, '2022-06-25 07:08:35', '2022-05-12 00:13:52'),
  (798, 688, 990, 654, 8170521826637245.0, '2021-03-03 20:37:33', '2020-10-03 04:38:45'),
  (193, 272, 55, 929, 9931228833764138.0, '2023-05-15 02:57:46', '2023-07-20 03:07:30'),
  (442, 28, 491, 686, 7744101906417814.0, '2024-08-07 07:28:12', '2025-07-11 12:16:00'),
  (94, 630, 752, 782, 9435380081482320.0, '2025-06-12 13:44:23', '2022-07-18 08:51:25'),
  (74, 97, 838, 278, 241097806741070.72, '2022-05-18 04:00:06', '2024-02-05 06:37:01'),
  (34, 49, 285, 389, 2494890403200900.0, '2020-11-03 02:17:07', '2025-01-23 08:58:35'),
  (125, 463, 881, 540, 1447595680764587.2, '2020-10-28 21:41:43', '2023-07-08 22:27:03'),
  (540, 159, 84, 484, 9984960827704952.0, '2021-02-02 13:19:57', '2024-05-06 12:17:10'),
  (80, 793, 335, 384, 9919102551425224.0, '2024-04-04 03:20:53', '2025-06-10 05:45:56'),
  (989, 550, 111, 366, 2267829226204244.5, '2022-03-28 07:42:49', '2020-11-12 02:35:04'),
  (877, 663, 674, 480, 1343883917440304.0, '2023-10-07 22:29:43', '2020-09-05 04:15:11'),
  (173, 495, 966, 459, 8333526561057137.0, '2023-06-12 13:36:53', '2024-07-23 09:20:32'),
  (560, 932, 1000, 752, 4636301078670999.0, '2023-07-09 19:34:26', '2024-04-29 21:01:31'),
  (8, 689, 134, 903, 5128346508813570.0, '2023-10-21 12:49:05', '2022-05-07 00:41:54'),
  (961, 501, 430, 430, 5843570121770905.0, '2023-10-16 19:16:21', '2025-08-10 13:18:54');
INSERT INTO [variation_templates] ([name], [business_id], [created_at], [updated_at]) VALUES
  (N'ZuWQE-Q', 654, '2021-01-22 15:21:15', '2022-08-28 07:23:43'),
  (N'VCghNdGlMR', 936, '2022-11-30 23:14:43', '2021-06-29 02:32:17'),
  (N'SMyCx- Zf', 423, '2020-09-11 20:23:07', '2020-08-30 07:35:43'),
  (N'hdVhMWrusI', 833, '2021-04-12 00:20:00', '2023-05-02 04:21:37'),
  (N'QCPfNmedcl', 754, '2025-07-05 04:09:58', '2023-09-07 12:27:20'),
  (N'Pnsrj', 679, '2023-09-17 12:03:08', '2024-03-16 18:53:20'),
  (N'toIctUqlNsBrLhjcwA', 650, '2024-08-29 03:55:44', '2021-02-24 14:38:13'),
  (N'pBBqQht_-BZMoQ', 229, '2024-12-11 16:53:02', '2021-02-17 09:18:21');
INSERT INTO [variation_value_templates] ([name], [variation_template_id], [created_at], [updated_at]) VALUES
  (N'eIGnXQXsusrdKIAsNYOh', 853, '2020-11-09 17:04:04', '2022-09-11 07:04:15'),
  (N'fGUuMVnxSsgad', 746, '2024-04-05 08:48:27', '2025-07-21 18:04:27'),
  (N'OGmEMDjKdSztnNk', 224, '2022-03-20 16:55:40', '2023-08-17 09:25:18'),
  (N'vBZGxnufozgC', 568, '2021-02-25 17:57:59', '2022-04-18 12:23:27'),
  (N'VTpeUaCGXRhvaq zg', 691, '2023-08-06 11:55:55', '2022-09-22 16:37:59'),
  (N'zD_nHqUTJnPrnwIDogE', 605, '2022-12-12 07:57:16', '2024-08-06 03:22:34'),
  (N'uNpnoSOUPDy', 726, '2023-01-14 07:57:54', '2024-06-15 14:39:16'),
  (N'GjHNcUnPkPvPCy', 549, '2024-08-13 16:21:42', '2025-02-07 02:15:42');
INSERT INTO [ventes] ([facturation_id], [caisse_id], [client_id], [departement_id], [reglement_id], [user_id], [code], [quantite], [reference], [motif], [commentaire], [dateVente], [montant], [montant_verser], [reste_payable], [montant_rendre], [difference_rendu], [etat], [created_at], [updated_at]) VALUES
  (505693, 434626, 785928, 997883, 592817, 494367, N'ap a-KlOjs WWMnL', 769, N'WxGVwcIp', N'SS_BjjScStfDW', N'qrZJlMYwguwdmLEWVFNO', N'VyKAOIfeUc', N'ZcXgBaIK b', N'gozF ciBQP_', N'eCXezWdkdaCExhGr', N'xUmYl myYRZcpkRyj', N'OJwFGU nM-iZbmtnwJhO', N'qk qOGvy', '2021-06-18 05:15:52', '2023-08-10 20:09:37'),
  (709559, 891915, 757210, 673351, 819239, 224509, N'_  uDSW', 538, N'GtKemndyTosnIPDrWy', N'jPnCvsj', N'UtfzLx', N'cwv-qxvzPzCrKKIB mRR', N'ZoJkv_G', N'Ebiofo', N'_cRmwPR', N'duJyoOKrMRkdZhzXN', N'ZNHfDZrkYvs', N'DZkHxNTxXlgBzouM', '2025-06-06 03:27:23', '2024-06-26 03:38:36'),
  (65517, 671826, 211799, 390658, 586725, 521016, N'woGA j', 13, N'riIGrgpOCYTCd', N'yBgfDKJbW', N'BgVSjXSWCGlHfZ-iBcG', N'ZeoNmo-zoLJUoWwieV', N'bnjFeGlV', N'Jy-n-rEfBXrPduKLVg', N'gH aAJwzy', N'sn_aQI', N'aVJCA_H cgzXuxnS', N'teJaSTnWpooEZjoCGdj', '2023-11-17 14:31:52', '2020-11-27 15:57:19'),
  (619949, 629635, 693149, 170431, 842498, 202912, N'OXIRhwrVIDQtn', 747, N'VmWC_', N'jAg-ydOfvjVXM', N'cNLQAg jkTv Omqm', N'tSKFarYjxpxsTQxy', N'eHADjjzz_BruEAi', N'lxfvNO', N'yESTLsaiXB', N'gaJzOgskBOtyv', N'lfxAReSTFBfVks__s', N'kBsGGfmFdOsrr_tzBUxv', '2023-12-29 14:10:24', '2025-03-14 04:46:12'),
  (135075, 848251, 167152, 382847, 19553, 14799, N'pOOIr_ v', 944, N'sthfxqWRCCpj-', N'kidrL', N'OQEmFTa-DT', N'oHeGU', N'DKS_abo vst', N'sJldjsMiTEkVksa', N'-vKhRG', N'IVrccjDyqAGJhxHPGJ', N'JGqLhlKnsmXXbTUCiEz', N'zkfOCMDaLdpahUf', '2023-03-01 16:29:37', '2021-08-31 12:42:30'),
  (68911, 519743, 568823, 611099, 361820, 74239, N'BKoacFcCAUOulgiCiqul', 716, N'XMkRheqAo RgjKo', N'mP_ZV Werw', N'KLFGKVGQum', N'tJfzqKC', N'UqFxkufFqCFnw', N'qsDJA-Jbqsao', N'slKQri_nvNYhUDi_X', N'FztsBzxXNIsmBqN_', N'ePMqXT aV', N'XLeayxyqaz vFt D', '2020-10-04 17:25:14', '2025-07-27 22:20:02'),
  (841529, 744994, 790296, 125642, 26862, 770827, N'iaolFoYRZ_', 971, N'JbGLMV', N'Uxscm', N'vKYGSfflvgu', N'btVFCszHBlwRSX', N'ZUedhe', N'-JbvHqHQ', N'E tpBcNewqcGU', N'zorQ NEPr-EaUwpPmlbe', N'ietkeJybjk', N'wphLHfEkImDyfz', '2021-02-07 05:37:15', '2023-07-12 17:31:21'),
  (834509, 716053, 192383, 952925, 44493, 557471, N'FoimQIUigDI WHrpc', 28, N'ePytzMvz', N'cIfucFiZaJaN-fvFfbB', N'wzpBb', N'ANRAXEkDQziYamQ', N'nVqnXIzR', N'W-XbrY_tGgdC', N'OCJ qqaQKewo', N'YbRaciUWAyyd_RPqYC', N'rZDfUE', N'qmojfjYc', '2023-03-14 02:18:18', '2023-03-28 06:02:04'),
  (384600, 832137, 272396, 954450, 446709, 184925, N'zPmpa-yL_p_tkVXuP-', 633, N'-KGdnvalkSMkl', N'C-pFi__ckc', N'PlFSAbWDoybu', N'FBTqjbEZdNigDwV', N'cltTMjwxQJQAcBcqP', N'kpMyVftXMCIhMAfhWhxl', N'RNMseinL_iYN Kf', N'DiwExwsksIfooO Z', N'tmQyvzqHuxiwGglQGi', N'qgh-ytirC', '2024-08-30 20:58:17', '2022-09-20 02:38:17'),
  (953556, 392121, 36368, 412401, 795790, 662250, N'D-QpOCIjYgoDm', 467, N'iDoZf', N'chnylxkwuAxdrYRmRf', N'fizeXzmGkLZnK_fzi', N'ptSmI', N'hRWKC', N'mmGrjUKxfYQXL-o', N'_wA_NwQAA', N'RZgrEWCZ', N'p CmSQwtHV', N'anZxjmVJKwtuy', '2021-12-06 13:21:26', '2022-04-17 00:18:49'),
  (796761, 367563, 397472, 163719, 599898, 232541, N'pdMj-KQMd Gloeht', 345, N'_ NWJ', N'XPIx_zkTen', N'fKRayURHUjAxBfz PYm', N'UmEJSYiwOVR-TFNpLd', N'byDUJL', N'fAAooTuQfszcpzNlDH', N'MtExNdYWUFwUEGixOat_', N'LIvcrMtJRXNFithj', N'oFLiPcFg', N'NeGzyrpvtAftn x-y', '2023-04-24 19:41:53', '2022-10-30 22:48:16'),
  (642380, 414788, 981913, 876275, 929381, 384556, N'yUtGHKm', 407, N'WbTpEZhgmsApcryrj', N'JixJsjYboNeRnrbk', N'vNaqhcyB', N'-ZgEpKXSwmUz-AAdqtIl', N'-DuWXqeLjEcTdAAuvHn', N'UEKi_MS IWZL', N'vySrrC_wYMIbHGdCgvn', N'-K CvohpLSEZWw', N'ohZGtlN', N'yPFCIsOdeulNREdn', '2024-06-29 22:00:55', '2021-05-05 01:01:05'),
  (513057, 948912, 477500, 320637, 574120, 343974, N'viJdmtQyVvDcS BelMu', 15, N'tFteeBWRYFk', N'J_DCfts', N'AmpCrAlsDc-oTmr', N'-v-omlVgeLjZossrwDRZ', N'Ow_tbW_', N'X-MbTOxM vro-qzN', N'WeBVeGOr_d', N'hgxYxMZH', N'WkWwCwvUgMyChaft', N'qfQGEDjsNdH_bCt', '2022-10-15 19:13:27', '2021-11-24 22:27:28'),
  (514865, 93767, 952494, 451534, 982256, 441578, N'PrcvWS', 550, N'OEFryGjhXjOi', N'gHAKhJCPoDHPwNJjm', N'F_uEMzUXx euTk', N'PpkSRUUwznJr', N'dLgURgwEt _czO', N'KCjMR', N'bcD_CjnusbFVBXILAU', N'tLsExpG WKvqdqINY', N'bCQMcZEm', N'LtnCjWoYr-iRNQJQCW', '2023-03-15 14:28:14', '2022-11-22 15:24:47'),
  (165598, 350838, 832702, 974914, 822843, 184927, N'cHUmru', 911, N'FdimvhjsrJxgjsds', N'fhDxeTc oN-NMH bd', N'azKACcQp', N'AfIYHYG', N'zjXoityZHrrLPD', N'ABQihhdxPvyEU', N'ldaMEQe_BzXJvwPfaYOU', N'ftX-XvYJGPketU', N'qxWdaBolhub_G_VrFBa', N'yoWoTwaL', '2025-05-12 15:42:24', '2022-03-22 21:19:47'),
  (779147, 402218, 452464, 165051, 198689, 175236, N'zPNcJpMcEMAgDajMod s', 728, N'wARZ_lxHDrmPAEIQfO', N'GmCmikcvCPXYDPAATYc', N'bNgEYOO cHdrP', N'vsLpDfUuyiI', N'wdEmfyIcCsJJP', N'JXtdf-FIYv', N'SsFKIzl_kNZCo', N'XVALMko', N'bTUXgffW_z_hDbnnR', N'KAlzeHLbvrVvWQ', '2022-11-20 09:14:02', '2024-03-22 09:59:18'),
  (878973, 531610, 702849, 464674, 541200, 992627, N'n-WUPhAJP-cwaevAmnFa', 308, N'UVi-XzD_LxUbaVO', N'jYTFnvr_UbjYt', N'StLavs-puXpzXcT', N'-Qj e', N'WPooNXfuiwUaHoxdTUy', N'iwHX_cFLLLW', N'VisoPgx UNnFC sht', N'IDlNnocTqo-axSJys', N'HUTy_a', N'W_KWkQnNieiG swoNB_C', '2020-12-14 08:19:05', '2023-09-13 17:10:18'),
  (854134, 387462, 875429, 90919, 73156, 825992, N'Zk_ebd', 672, N'xYnfvFls', N'UZcJEN-', N'Z_kBpa_KD', N'cdpi-MMhWCgrIpP_anx', N'gFvTvQKHCfYMCLFSi', N'sBE eLobLtIAuIoepcf', N'PkrNmIqtPTyeGKWo', N'AgyRnaE', N'NzRFpypef_fEe jbt', N'kBYfCGNndvRl', '2023-10-04 09:27:21', '2021-08-06 12:35:34'),
  (203470, 602491, 484442, 765728, 94666, 53538, N'faQUlXFxuzo-gG', 809, N'AEqEUR', N'oYj-jvcATbCo', N'BlobVFPcLwQGJAxvz', N'ncGeSji_x', N'TxEKcpvRggaEd', N'kFMrujmgdU', N'xTuOKbUGHeZe', N'JehqiJJbkY', N'JqoHDYiJz', N'WkpyL_goScAMP', '2022-10-04 02:33:31', '2025-06-04 17:08:05'),
  (136641, 49013, 50499, 748422, 93225, 426565, N'igpuCXhQTh', 129, N'_gyWOVQmUJtHF_hSm', N'ml CBGDhuxFJOj', N'XBPwYIbr-rOU', N'WchEAwrxPtPw', N'Jxe nwSbm', N'KOjCbtblDG', N'TRAlDHkKfBN', N'GqcCONbT', N'OGH-NVWeHYoxu', N'KicimmdFfMrYfYOpaR-', '2020-09-21 23:49:53', '2024-02-06 12:03:58'),
  (978296, 656052, 780398, 796314, 87125, 529464, N'oNTTdILIQwvplqeVjx', 624, N'cdpmaUgnjsNwYCanzzj', N'jOMUPYXMUjC_oGFshLWj', N'dmWtJeMfGmo', N'VFzkgfFfe', N'ttckoe_t SBxOs', N'yZOeOEFCEYnphW', N'jzUoPdfw_XfB_hxi', N'NASQQcBTNDkih', N'WxgEpBPHiEeZYMwMcPe', N'CBglFHqlfbke', '2023-06-08 00:00:39', '2023-02-26 00:56:54'),
  (494989, 650957, 828455, 917909, 374907, 111951, N'AithO fJ', 245, N'xgjLrkhIgiKuoRY', N'-hLFbLrKgWbA', N'GCWfGgwWHlvclzYqT', N'ovBtN', N'geGyP', N'htmd RQGCfhpvwPP', N'-EMRigZ-JmMELvIvV', N'WsgCdhGotHNQPaQCA p', N'IVnlicLpmL', N'MdQfqu', '2020-10-25 20:29:59', '2020-11-17 14:06:37'),
  (260940, 796137, 242003, 314288, 762129, 726011, N'KpTVM', 468, N'OvimFwnn', N'dwZQBYkl', N'UaNTQ-o', N'NbFqEFqvQ', N'AtnsmZMjtyMwwMSjozwZ', N'MTCfiU lnEeTDsdMQHW', N'_WwZJNBZw', N'JqGgD', N'ZnZURMldRzd_lzwL', N'sF_DFLufWqdNOyfNAm', '2025-07-06 05:25:27', '2022-09-15 05:23:32'),
  (995734, 359069, 871742, 425798, 111082, 15690, N'kzLMw', 224, N'wckRfY_vabuxjJG', N'XpfTwSXxv', N'MryplLUCdGgagHS_Lwn', N'oMpYdO_s', N'tCcNjROocnKIPTlDgA', N'LBFEIrkju', N'-mWPohZMXsBH-TZyuwEg', N'x BDXkkmsocj', N'TSQ_RApNQpvG', N'mSji ULL', '2022-05-18 04:05:49', '2023-12-02 21:00:07'),
  (442466, 741449, 368637, 367513, 846542, 732786, N'ZDIfYSSAcZrqgCfAtz-U', 11, N'_erxajJpKLP', N'mH r_wApilEz', N'WWxXBXduLJ', N'IdpUJpqMD', N'zRxyHKaOL', N'HUgGCKidAdxFvvUz', N'cjbazOFxQxmrA', N'DfyrO_aRmnQ', N'JwxuSRzW', N'wvHVSV', '2020-08-25 16:05:12', '2022-04-30 03:14:26'),
  (879518, 662402, 484561, 851518, 41602, 620792, N'MGrraIZTPwUnyq', 697, N'cXa_TpRF', N'OiLGoFyL', N'iaurIcgOAtrwVwLiGvH', N'LC_yzk', N'cNVPIWcqLjcIT', N'LqAksRYWsDbwm r', N'mVtfHVA', N'nbtxY', N'tOEv_p_-qBqbCYIqo', N'vRbNoskFHOZZJtIM', '2023-06-24 20:55:28', '2021-12-09 15:48:46'),
  (501337, 211359, 558225, 793420, 501767, 287698, N'WzwpCTzf', 450, N'ULIiEcBO', N'hHNzaRrMjMzTCyAfv NH', N'JvuEsAfN', N'm_HWhAjvPVuBGwKvuDGH', N'bPIeUselwxNzszJ', N'UKGgXeOJovi wq', N'GShaUrH_', N'uYvBRMPUdboN-', N'ONyFJdehdwjKKWPVkG', N'ftxmqPMnCrvqMi', '2024-02-18 17:53:26', '2022-06-21 02:07:20'),
  (522257, 558931, 111229, 549532, 564970, 518332, N'NUtIbzWbdQMULfZLS', 565, N'lJaStsmi', N'GyQszBr', N'dpJPgrcphnCNqnxgr', N'dfMShke', N'lLy dREbXkVFC', N'vNzeCXwWRsOtck', N'bbpxTZ', N'-eltG-CQDF', N'-xgEuWgVlnY', N'bjltyo rtgzBdUXHM', '2022-11-12 10:55:18', '2021-04-29 11:47:50'),
  (242298, 11436, 649210, 430398, 806789, 752655, N'FDxsX_UHXPrFYMb QB', 621, N'rHCCLSMikOkXikJB', N'Hm-pgVkbEfgG Z', N'teVnLYeRSElfEH', N'wuTVMfVsXG', N'qYG-wkJXaf', N'wNtSc', N'XatjfAfSaGeSETP', N'duHJz szi', N'NkghzRLeJBQcs', N'pbxSvStFrEBqdvThm', '2022-12-29 17:43:59', '2025-07-25 12:08:05'),
  (218280, 960459, 417270, 800548, 200239, 698060, N'rqPZ-bjmYXc_BRa', 569, N'EvVnrsWyhVpBmNloqwQ', N'ainTQRDdRUpSIdndusNz', N'_SewSV-sebgM-w', N'QNUj St_KZ', N'yOteFERYMgaCTH', N'vkxSp', N'MyGen-TVzCATEWZ', N'_A_qtJYUZAkIRIIZgDN', N'VOGwYlnPFxjT-opm', N'rvoXdlFtKzqrUf', '2023-07-02 00:20:37', '2021-02-26 06:56:22'),
  (645997, 609860, 586736, 615078, 202433, 878272, N'Dyk-Yzmmhfk_sNTeIy', 254, N'ToWIwtHTiouj_yfpwvn', N'lAK lCsWnvjE', N'UOeWmTdGEXBV', N'TP_RadAArsCCCays', N'HhzhKQw -TBrVZgrxcg', N'SaKJgoIAj-SKASOtLGEJ', N'qamp jG', N'VBaiNMkko GODlsmtWo', N'uclSijKZKi', N'H eh_YOFVQrBqa', '2020-09-28 11:28:57', '2022-02-05 01:24:36'),
  (638731, 206312, 121161, 628188, 74811, 995224, N'LebcAQsTH', 362, N'wjQtBWf', N'gudOvZBaNxgeYKuJuVlV', N'YiIhgnJeoeTIR', N'AEXPxpKbvOuEp', N'iGUlUeZWUgq', N'dJyZZLCgqiFHvuUz', N'ggqVKnd', N'HOQGYBEa Vs', N'NUzagEMCkZFpLKZJIY_', N'd__CoMxmIjPuRXZe', '2022-01-31 17:20:18', '2023-01-21 11:23:48'),
  (487267, 60709, 295441, 496095, 981048, 149131, N'QrGjIkzF', 268, N'dKRjPLF', N'WmIGpwyokD', N'rGqsjmeBOlhJL', N'UbqcxFjVEv', N'iZhOP', N'ROWObvsN', N'xTBECqyaTx', N'UDEr-PssYZLuL', N'uahOzD', N'stqnCCP', '2020-09-01 02:23:10', '2022-12-03 01:48:35'),
  (63065, 63233, 627261, 932261, 500782, 466466, N'AfdiLs', 422, N'INwRKsHeKpCRLdRfC', N'uKrZv', N'hFZn-DPl', N'ygyJdreadXMfgSgjLB', N'zu_PLXLd_pHMiOWu', N'nbOKMhkXZOpqu', N'ZmWSPYiL', N'I_aBXydZWf', N'UaOmbiMwTKt', N'jaFMctuxkwHJ', '2025-03-13 03:38:11', '2024-12-24 13:17:36'),
  (500368, 196582, 470104, 225846, 413472, 810082, N'-BPHYueaWiguHaWMO', 2, N'YoRHAKft', N'JErELWmCeoDjh_njiLDT', N'a-MnePErth', N'GExsk_XDvqbEqVrPGQK', N'AqZJumqPc', N'AVIZsYObdrQpCed', N'hJzGQIYwJRPK', N'SdrBRyZhYmfMMa', N'waAfRJp', N'DJoISCVqvHNVtFhLZ', '2022-06-18 04:20:25', '2023-09-04 21:20:34'),
  (263818, 41702, 640260, 960921, 170206, 802856, N'CSJJRPTj', 923, N'uwWnMzNgHCTvLprjJkI', N'kyLfKPJ hdXrNPBqBGJk', N'sRgpfyoGGkcjaWabDb', N'BBZSxCFCK', N'BLtJjzkwYV', N'YkDJykxSXcPyq', N'PgoRrVsIUZ_', N'TLscdOHXHoDUqKCVThZ', N'LNJjtgwH dG FWrp_IG', N'VZkP OO', '2023-09-12 15:11:12', '2024-11-21 01:33:51'),
  (952139, 778388, 474927, 211516, 327648, 77662, N'FhVzE', 228, N'fTMDtg', N'CIYVq SgJIqx-PYFJ', N'VKpRYksC-', N'z_PaaJQnIBaOL', N'taAsOHPabvUNnI-pAp', N'gVwMGtgWtkP-Z', N'zsWujjObEVfzmv', N'RVCASRIEqrnDjFvs', N'_crQroZRCeXmMsERPnn-', N'YNqbUe_XV', '2023-02-20 13:16:26', '2020-12-10 17:58:02'),
  (613357, 760455, 515420, 694676, 638489, 950945, N'gnrbaOlB', 75, N'KeK qyFTkanuRp R', N'VMoUinyJLaeW', N'CdBeFZzha tuWw', N'_CAySslfSfGJnndXGl-', N'AGkdJFDyQdvSgT', N'yzCVArGuC', N'UpIwjQvvNiI', N'AXUD pinMsXDilqnRX', N'ZbiLEvpNFhmoiTwSAB', N'j-qQDvD', '2022-01-31 21:13:32', '2021-03-08 20:04:32'),
  (905078, 846823, 159342, 806571, 82503, 713494, N'eKNxiCgIaUpFxMeKLm', 242, N'TnrnrRPOsxkHKGJfWZb', N'-HXYc-eAUpNxf-PofcA', N'cILc CHuQiOMUTPL', N'tHFbhiIah uiVm', N'g_JAyqY', N'ZZtEZcop_DeKK', N'uielNGXlGopAzYDa', N'zqNPWLTSpVNik_Bmljuf', N'DoBbxnGDSq', N'EGGz-zUSxHmtKKPCOng', '2025-06-15 13:56:55', '2021-11-24 20:18:58'),
  (419364, 495023, 973043, 189319, 526615, 46901, N'OhnAw-igb', 804, N'eJOKFkERp', N'lvhgXOAJHvYqzdR', N'NJ kaW-c', N'BoZcD', N'nIwsgfnuFhIeeERm', N'lo XFU_WnE--ekL', N'QoUakcEmsEmasz-vNaX', N'ZWWVgUKpKEKHT', N'dIahBQyuatrpLVmWm', N'bNKLdCxzP AI', '2024-09-22 21:15:42', '2020-12-08 14:18:44');
INSERT INTO [villes] ([region_id], [nom], [created_at], [updated_at]) VALUES
  (630781, N'PzoEK_anty', '2023-06-04 13:39:48', '2022-10-21 10:20:31'),
  (569361, N'MoMfAEngc-bU_AS', '2024-10-10 18:08:17', '2021-05-06 11:16:59'),
  (771852, N'mXfhNIObMbCpabvGSuK', '2025-03-02 03:08:42', '2023-08-21 06:13:33'),
  (575060, N'dvNiFPVOgGcdvHQe', '2023-02-16 18:35:57', '2021-06-27 05:45:21'),
  (661574, N'OXMcLdH', '2025-05-13 02:43:56', '2022-10-16 01:20:26'),
  (709470, N'SRVHcrG_RNhtH', '2025-08-06 16:18:19', '2025-02-07 15:08:30'),
  (266516, N'EmzW_jMTTxGHa', '2022-06-16 17:54:17', '2025-02-04 00:05:24'),
  (473863, N'BfpWkSLevlwSE-siFU', '2025-03-01 11:54:00', '2024-08-20 16:43:15');
INSERT INTO [warranties] ([name], [business_id], [description], [duration], [duration_type], [created_at], [updated_at]) VALUES
  (N'GxctBGbmryUVWQpnOiU', 391, N'PbIMwwmdpHQCAuIPxrD', 490, N'RECLhChi', '2024-11-21 19:21:53', '2024-04-05 10:05:31'),
  (N'RmUewi', 421, N'psNEkQvYtbsSqNJH', 261, N'_eDawSQ_', '2021-02-01 02:41:20', '2024-04-12 21:03:12'),
  (N'pOcgFvlCAnTCSL', 277, N'DKuDeJl pk-thA cRaF', 497, N'pnWSCq GxTEcC', '2021-05-13 09:21:08', '2024-05-02 18:07:08'),
  (N'oRflh_AgJGW-', 610, N'utxkmBIMBlYODEfR', 172, N'vkEeP', '2021-05-03 17:29:05', '2023-03-04 03:51:58'),
  (N'PbdIst_', 756, N'rKbZy', 21, N'YegUVlUUx', '2022-09-27 08:33:52', '2025-05-17 16:00:37'),
  (N'BdaGyMkZZbSd', 293, N'bVBNaJgYKniyobVBLK', 970, N'QEexvPxJvPG', '2025-02-24 07:17:07', '2021-04-04 10:50:19'),
  (N'uSAcibuaROKn', 703, N'PVHfan', 967, N'SwAnYDWGJdP', '2022-11-05 22:29:07', '2024-08-20 19:45:21'),
  (N'-fZOisjMi', 738, N'tzunG', 681, N'TvvX_hFYprIlaTO', '2024-09-02 17:24:34', '2022-02-28 22:15:41');

PRINT 'Re-enabling constraints (NOCHECK, not validated)...';
IF OBJECT_ID(N'[accouchements]', N'U') IS NOT NULL ALTER TABLE [accouchements] CHECK CONSTRAINT ALL;
IF OBJECT_ID(N'[accounts]', N'U') IS NOT NULL ALTER TABLE [accounts] CHECK CONSTRAINT ALL;
IF OBJECT_ID(N'[account_transactions]', N'U') IS NOT NULL ALTER TABLE [account_transactions] CHECK CONSTRAINT ALL;
IF OBJECT_ID(N'[account_types]', N'U') IS NOT NULL ALTER TABLE [account_types] CHECK CONSTRAINT ALL;
IF OBJECT_ID(N'[accreditations]', N'U') IS NOT NULL ALTER TABLE [accreditations] CHECK CONSTRAINT ALL;
IF OBJECT_ID(N'[achats]', N'U') IS NOT NULL ALTER TABLE [achats] CHECK CONSTRAINT ALL;
IF OBJECT_ID(N'[acte_carrieres]', N'U') IS NOT NULL ALTER TABLE [acte_carrieres] CHECK CONSTRAINT ALL;
IF OBJECT_ID(N'[acte_medicals]', N'U') IS NOT NULL ALTER TABLE [acte_medicals] CHECK CONSTRAINT ALL;
IF OBJECT_ID(N'[acte_medical_departement]', N'U') IS NOT NULL ALTER TABLE [acte_medical_departement] CHECK CONSTRAINT ALL;
IF OBJECT_ID(N'[acte_medical_types]', N'U') IS NOT NULL ALTER TABLE [acte_medical_types] CHECK CONSTRAINT ALL;
IF OBJECT_ID(N'[acte_soin_demandes]', N'U') IS NOT NULL ALTER TABLE [acte_soin_demandes] CHECK CONSTRAINT ALL;
IF OBJECT_ID(N'[acte_soin_recuses]', N'U') IS NOT NULL ALTER TABLE [acte_soin_recuses] CHECK CONSTRAINT ALL;
IF OBJECT_ID(N'[actions]', N'U') IS NOT NULL ALTER TABLE [actions] CHECK CONSTRAINT ALL;
IF OBJECT_ID(N'[activites]', N'U') IS NOT NULL ALTER TABLE [activites] CHECK CONSTRAINT ALL;
IF OBJECT_ID(N'[activity_log]', N'U') IS NOT NULL ALTER TABLE [activity_log] CHECK CONSTRAINT ALL;
IF OBJECT_ID(N'[affectations]', N'U') IS NOT NULL ALTER TABLE [affectations] CHECK CONSTRAINT ALL;
IF OBJECT_ID(N'[affectation_personnels]', N'U') IS NOT NULL ALTER TABLE [affectation_personnels] CHECK CONSTRAINT ALL;
IF OBJECT_ID(N'[agences]', N'U') IS NOT NULL ALTER TABLE [agences] CHECK CONSTRAINT ALL;
IF OBJECT_ID(N'[analyses_laboratoires]', N'U') IS NOT NULL ALTER TABLE [analyses_laboratoires] CHECK CONSTRAINT ALL;
IF OBJECT_ID(N'[annees]', N'U') IS NOT NULL ALTER TABLE [annees] CHECK CONSTRAINT ALL;
IF OBJECT_ID(N'[annee_academiques]', N'U') IS NOT NULL ALTER TABLE [annee_academiques] CHECK CONSTRAINT ALL;
IF OBJECT_ID(N'[appareils]', N'U') IS NOT NULL ALTER TABLE [appareils] CHECK CONSTRAINT ALL;
IF OBJECT_ID(N'[articles]', N'U') IS NOT NULL ALTER TABLE [articles] CHECK CONSTRAINT ALL;
IF OBJECT_ID(N'[article_achetes]', N'U') IS NOT NULL ALTER TABLE [article_achetes] CHECK CONSTRAINT ALL;
IF OBJECT_ID(N'[article_necessaires]', N'U') IS NOT NULL ALTER TABLE [article_necessaires] CHECK CONSTRAINT ALL;
IF OBJECT_ID(N'[article_vendus]', N'U') IS NOT NULL ALTER TABLE [article_vendus] CHECK CONSTRAINT ALL;
IF OBJECT_ID(N'[banques]', N'U') IS NOT NULL ALTER TABLE [banques] CHECK CONSTRAINT ALL;
IF OBJECT_ID(N'[banque_sangs]', N'U') IS NOT NULL ALTER TABLE [banque_sangs] CHECK CONSTRAINT ALL;
IF OBJECT_ID(N'[barcodes]', N'U') IS NOT NULL ALTER TABLE [barcodes] CHECK CONSTRAINT ALL;
IF OBJECT_ID(N'[beneficiaires]', N'U') IS NOT NULL ALTER TABLE [beneficiaires] CHECK CONSTRAINT ALL;
IF OBJECT_ID(N'[besoins]', N'U') IS NOT NULL ALTER TABLE [besoins] CHECK CONSTRAINT ALL;
IF OBJECT_ID(N'[bon_cmd_adms]', N'U') IS NOT NULL ALTER TABLE [bon_cmd_adms] CHECK CONSTRAINT ALL;
IF OBJECT_ID(N'[bon_prise_en_charges]', N'U') IS NOT NULL ALTER TABLE [bon_prise_en_charges] CHECK CONSTRAINT ALL;
IF OBJECT_ID(N'[bon_sortie_consomptibles]', N'U') IS NOT NULL ALTER TABLE [bon_sortie_consomptibles] CHECK CONSTRAINT ALL;
IF OBJECT_ID(N'[brands]', N'U') IS NOT NULL ALTER TABLE [brands] CHECK CONSTRAINT ALL;
IF OBJECT_ID(N'[budgets]', N'U') IS NOT NULL ALTER TABLE [budgets] CHECK CONSTRAINT ALL;
IF OBJECT_ID(N'[bulletin_examens]', N'U') IS NOT NULL ALTER TABLE [bulletin_examens] CHECK CONSTRAINT ALL;
IF OBJECT_ID(N'[bulletin_examen_examen]', N'U') IS NOT NULL ALTER TABLE [bulletin_examen_examen] CHECK CONSTRAINT ALL;
IF OBJECT_ID(N'[bulletin_prescrits]', N'U') IS NOT NULL ALTER TABLE [bulletin_prescrits] CHECK CONSTRAINT ALL;
IF OBJECT_ID(N'[bulletin_servies]', N'U') IS NOT NULL ALTER TABLE [bulletin_servies] CHECK CONSTRAINT ALL;
IF OBJECT_ID(N'[bulletin_servie_examen]', N'U') IS NOT NULL ALTER TABLE [bulletin_servie_examen] CHECK CONSTRAINT ALL;
IF OBJECT_ID(N'[business]', N'U') IS NOT NULL ALTER TABLE [business] CHECK CONSTRAINT ALL;
IF OBJECT_ID(N'[business_locations]', N'U') IS NOT NULL ALTER TABLE [business_locations] CHECK CONSTRAINT ALL;
IF OBJECT_ID(N'[business_location_product_information]', N'U') IS NOT NULL ALTER TABLE [business_location_product_information] CHECK CONSTRAINT ALL;
IF OBJECT_ID(N'[cahier_disciplines]', N'U') IS NOT NULL ALTER TABLE [cahier_disciplines] CHECK CONSTRAINT ALL;
IF OBJECT_ID(N'[caisses]', N'U') IS NOT NULL ALTER TABLE [caisses] CHECK CONSTRAINT ALL;
IF OBJECT_ID(N'[caisse_transactions]', N'U') IS NOT NULL ALTER TABLE [caisse_transactions] CHECK CONSTRAINT ALL;
IF OBJECT_ID(N'[carrieres]', N'U') IS NOT NULL ALTER TABLE [carrieres] CHECK CONSTRAINT ALL;
IF OBJECT_ID(N'[cash_denominations]', N'U') IS NOT NULL ALTER TABLE [cash_denominations] CHECK CONSTRAINT ALL;
IF OBJECT_ID(N'[cash_registers]', N'U') IS NOT NULL ALTER TABLE [cash_registers] CHECK CONSTRAINT ALL;
IF OBJECT_ID(N'[cash_register_transactions]', N'U') IS NOT NULL ALTER TABLE [cash_register_transactions] CHECK CONSTRAINT ALL;
IF OBJECT_ID(N'[categories]', N'U') IS NOT NULL ALTER TABLE [categories] CHECK CONSTRAINT ALL;
IF OBJECT_ID(N'[categories_salles]', N'U') IS NOT NULL ALTER TABLE [categories_salles] CHECK CONSTRAINT ALL;
IF OBJECT_ID(N'[categorie_comptables]', N'U') IS NOT NULL ALTER TABLE [categorie_comptables] CHECK CONSTRAINT ALL;
IF OBJECT_ID(N'[categorie_examens]', N'U') IS NOT NULL ALTER TABLE [categorie_examens] CHECK CONSTRAINT ALL;
IF OBJECT_ID(N'[categorie_products]', N'U') IS NOT NULL ALTER TABLE [categorie_products] CHECK CONSTRAINT ALL;
IF OBJECT_ID(N'[categorie_salles]', N'U') IS NOT NULL ALTER TABLE [categorie_salles] CHECK CONSTRAINT ALL;
IF OBJECT_ID(N'[certificats]', N'U') IS NOT NULL ALTER TABLE [certificats] CHECK CONSTRAINT ALL;
IF OBJECT_ID(N'[chapitres]', N'U') IS NOT NULL ALTER TABLE [chapitres] CHECK CONSTRAINT ALL;
IF OBJECT_ID(N'[class_scolaires]', N'U') IS NOT NULL ALTER TABLE [class_scolaires] CHECK CONSTRAINT ALL;
IF OBJECT_ID(N'[clients]', N'U') IS NOT NULL ALTER TABLE [clients] CHECK CONSTRAINT ALL;
IF OBJECT_ID(N'[code_actions]', N'U') IS NOT NULL ALTER TABLE [code_actions] CHECK CONSTRAINT ALL;
IF OBJECT_ID(N'[code_activites]', N'U') IS NOT NULL ALTER TABLE [code_activites] CHECK CONSTRAINT ALL;
IF OBJECT_ID(N'[code_journals]', N'U') IS NOT NULL ALTER TABLE [code_journals] CHECK CONSTRAINT ALL;
IF OBJECT_ID(N'[code_s_programmes]', N'U') IS NOT NULL ALTER TABLE [code_s_programmes] CHECK CONSTRAINT ALL;
IF OBJECT_ID(N'[code_taches]', N'U') IS NOT NULL ALTER TABLE [code_taches] CHECK CONSTRAINT ALL;
IF OBJECT_ID(N'[commandes]', N'U') IS NOT NULL ALTER TABLE [commandes] CHECK CONSTRAINT ALL;
IF OBJECT_ID(N'[comptes]', N'U') IS NOT NULL ALTER TABLE [comptes] CHECK CONSTRAINT ALL;
IF OBJECT_ID(N'[conditionnements]', N'U') IS NOT NULL ALTER TABLE [conditionnements] CHECK CONSTRAINT ALL;
IF OBJECT_ID(N'[constante_vitales]', N'U') IS NOT NULL ALTER TABLE [constante_vitales] CHECK CONSTRAINT ALL;
IF OBJECT_ID(N'[consultations]', N'U') IS NOT NULL ALTER TABLE [consultations] CHECK CONSTRAINT ALL;
IF OBJECT_ID(N'[consultation_diagnostics]', N'U') IS NOT NULL ALTER TABLE [consultation_diagnostics] CHECK CONSTRAINT ALL;
IF OBJECT_ID(N'[consultation_documents]', N'U') IS NOT NULL ALTER TABLE [consultation_documents] CHECK CONSTRAINT ALL;
IF OBJECT_ID(N'[consultation_parametre_patients]', N'U') IS NOT NULL ALTER TABLE [consultation_parametre_patients] CHECK CONSTRAINT ALL;
IF OBJECT_ID(N'[consultation_patient_plainte]', N'U') IS NOT NULL ALTER TABLE [consultation_patient_plainte] CHECK CONSTRAINT ALL;
IF OBJECT_ID(N'[consultation_suivis]', N'U') IS NOT NULL ALTER TABLE [consultation_suivis] CHECK CONSTRAINT ALL;
IF OBJECT_ID(N'[contacts]', N'U') IS NOT NULL ALTER TABLE [contacts] CHECK CONSTRAINT ALL;
IF OBJECT_ID(N'[contrats]', N'U') IS NOT NULL ALTER TABLE [contrats] CHECK CONSTRAINT ALL;
IF OBJECT_ID(N'[corps_metiers]', N'U') IS NOT NULL ALTER TABLE [corps_metiers] CHECK CONSTRAINT ALL;
IF OBJECT_ID(N'[cours]', N'U') IS NOT NULL ALTER TABLE [cours] CHECK CONSTRAINT ALL;
IF OBJECT_ID(N'[currencies]', N'U') IS NOT NULL ALTER TABLE [currencies] CHECK CONSTRAINT ALL;
IF OBJECT_ID(N'[customer_groups]', N'U') IS NOT NULL ALTER TABLE [customer_groups] CHECK CONSTRAINT ALL;
IF OBJECT_ID(N'[deces]', N'U') IS NOT NULL ALTER TABLE [deces] CHECK CONSTRAINT ALL;
IF OBJECT_ID(N'[dechets]', N'U') IS NOT NULL ALTER TABLE [dechets] CHECK CONSTRAINT ALL;
IF OBJECT_ID(N'[demandeur_sangs]', N'U') IS NOT NULL ALTER TABLE [demandeur_sangs] CHECK CONSTRAINT ALL;
IF OBJECT_ID(N'[demande_equipements]', N'U') IS NOT NULL ALTER TABLE [demande_equipements] CHECK CONSTRAINT ALL;
IF OBJECT_ID(N'[departements]', N'U') IS NOT NULL ALTER TABLE [departements] CHECK CONSTRAINT ALL;
IF OBJECT_ID(N'[depots]', N'U') IS NOT NULL ALTER TABLE [depots] CHECK CONSTRAINT ALL;
IF OBJECT_ID(N'[depot_caisses]', N'U') IS NOT NULL ALTER TABLE [depot_caisses] CHECK CONSTRAINT ALL;
IF OBJECT_ID(N'[destinataires]', N'U') IS NOT NULL ALTER TABLE [destinataires] CHECK CONSTRAINT ALL;
IF OBJECT_ID(N'[discounts]', N'U') IS NOT NULL ALTER TABLE [discounts] CHECK CONSTRAINT ALL;
IF OBJECT_ID(N'[discount_variations]', N'U') IS NOT NULL ALTER TABLE [discount_variations] CHECK CONSTRAINT ALL;
IF OBJECT_ID(N'[donneurs]', N'U') IS NOT NULL ALTER TABLE [donneurs] CHECK CONSTRAINT ALL;
IF OBJECT_ID(N'[echantillons_laboratoires]', N'U') IS NOT NULL ALTER TABLE [echantillons_laboratoires] CHECK CONSTRAINT ALL;
IF OBJECT_ID(N'[echellons]', N'U') IS NOT NULL ALTER TABLE [echellons] CHECK CONSTRAINT ALL;
IF OBJECT_ID(N'[element_salaires]', N'U') IS NOT NULL ALTER TABLE [element_salaires] CHECK CONSTRAINT ALL;
IF OBJECT_ID(N'[eleves]', N'U') IS NOT NULL ALTER TABLE [eleves] CHECK CONSTRAINT ALL;
IF OBJECT_ID(N'[emplois]', N'U') IS NOT NULL ALTER TABLE [emplois] CHECK CONSTRAINT ALL;
IF OBJECT_ID(N'[enabled_modules]', N'U') IS NOT NULL ALTER TABLE [enabled_modules] CHECK CONSTRAINT ALL;
IF OBJECT_ID(N'[engagements]', N'U') IS NOT NULL ALTER TABLE [engagements] CHECK CONSTRAINT ALL;
IF OBJECT_ID(N'[enseignants]', N'U') IS NOT NULL ALTER TABLE [enseignants] CHECK CONSTRAINT ALL;
IF OBJECT_ID(N'[equipements]', N'U') IS NOT NULL ALTER TABLE [equipements] CHECK CONSTRAINT ALL;
IF OBJECT_ID(N'[etat_caisses]', N'U') IS NOT NULL ALTER TABLE [etat_caisses] CHECK CONSTRAINT ALL;
IF OBJECT_ID(N'[examens]', N'U') IS NOT NULL ALTER TABLE [examens] CHECK CONSTRAINT ALL;
IF OBJECT_ID(N'[examens_imagerie_fichiers]', N'U') IS NOT NULL ALTER TABLE [examens_imagerie_fichiers] CHECK CONSTRAINT ALL;
IF OBJECT_ID(N'[examens_imagerie_resultats]', N'U') IS NOT NULL ALTER TABLE [examens_imagerie_resultats] CHECK CONSTRAINT ALL;
IF OBJECT_ID(N'[examens_valeurs_normales]', N'U') IS NOT NULL ALTER TABLE [examens_valeurs_normales] CHECK CONSTRAINT ALL;
IF OBJECT_ID(N'[exercice_budgetaires]', N'U') IS NOT NULL ALTER TABLE [exercice_budgetaires] CHECK CONSTRAINT ALL;
IF OBJECT_ID(N'[expense_categories]', N'U') IS NOT NULL ALTER TABLE [expense_categories] CHECK CONSTRAINT ALL;
IF OBJECT_ID(N'[facturations]', N'U') IS NOT NULL ALTER TABLE [facturations] CHECK CONSTRAINT ALL;
IF OBJECT_ID(N'[familles]', N'U') IS NOT NULL ALTER TABLE [familles] CHECK CONSTRAINT ALL;
IF OBJECT_ID(N'[fiche_detenteurs]', N'U') IS NOT NULL ALTER TABLE [fiche_detenteurs] CHECK CONSTRAINT ALL;
IF OBJECT_ID(N'[fonctions]', N'U') IS NOT NULL ALTER TABLE [fonctions] CHECK CONSTRAINT ALL;
IF OBJECT_ID(N'[formes]', N'U') IS NOT NULL ALTER TABLE [formes] CHECK CONSTRAINT ALL;
IF OBJECT_ID(N'[fournisseurs]', N'U') IS NOT NULL ALTER TABLE [fournisseurs] CHECK CONSTRAINT ALL;
IF OBJECT_ID(N'[grilles]', N'U') IS NOT NULL ALTER TABLE [grilles] CHECK CONSTRAINT ALL;
IF OBJECT_ID(N'[group_sub_taxes]', N'U') IS NOT NULL ALTER TABLE [group_sub_taxes] CHECK CONSTRAINT ALL;
IF OBJECT_ID(N'[hospitalisations]', N'U') IS NOT NULL ALTER TABLE [hospitalisations] CHECK CONSTRAINT ALL;
IF OBJECT_ID(N'[hospitalisation_actes]', N'U') IS NOT NULL ALTER TABLE [hospitalisation_actes] CHECK CONSTRAINT ALL;
IF OBJECT_ID(N'[hospitalisation_suivis]', N'U') IS NOT NULL ALTER TABLE [hospitalisation_suivis] CHECK CONSTRAINT ALL;
IF OBJECT_ID(N'[hospitalisation_types]', N'U') IS NOT NULL ALTER TABLE [hospitalisation_types] CHECK CONSTRAINT ALL;
IF OBJECT_ID(N'[hosp_administrations_medicaments]', N'U') IS NOT NULL ALTER TABLE [hosp_administrations_medicaments] CHECK CONSTRAINT ALL;
IF OBJECT_ID(N'[hosp_indicateurs_qualite]', N'U') IS NOT NULL ALTER TABLE [hosp_indicateurs_qualite] CHECK CONSTRAINT ALL;
IF OBJECT_ID(N'[hosp_interventions]', N'U') IS NOT NULL ALTER TABLE [hosp_interventions] CHECK CONSTRAINT ALL;
IF OBJECT_ID(N'[hosp_parametres_vitaux]', N'U') IS NOT NULL ALTER TABLE [hosp_parametres_vitaux] CHECK CONSTRAINT ALL;
IF OBJECT_ID(N'[hosp_plannings_soins]', N'U') IS NOT NULL ALTER TABLE [hosp_plannings_soins] CHECK CONSTRAINT ALL;
IF OBJECT_ID(N'[hosp_transmissions]', N'U') IS NOT NULL ALTER TABLE [hosp_transmissions] CHECK CONSTRAINT ALL;
IF OBJECT_ID(N'[imputations]', N'U') IS NOT NULL ALTER TABLE [imputations] CHECK CONSTRAINT ALL;
IF OBJECT_ID(N'[indicateursps]', N'U') IS NOT NULL ALTER TABLE [indicateursps] CHECK CONSTRAINT ALL;
IF OBJECT_ID(N'[indicateur_actions]', N'U') IS NOT NULL ALTER TABLE [indicateur_actions] CHECK CONSTRAINT ALL;
IF OBJECT_ID(N'[indicateur_activites]', N'U') IS NOT NULL ALTER TABLE [indicateur_activites] CHECK CONSTRAINT ALL;
IF OBJECT_ID(N'[info_societes]', N'U') IS NOT NULL ALTER TABLE [info_societes] CHECK CONSTRAINT ALL;
IF OBJECT_ID(N'[inscriptions]', N'U') IS NOT NULL ALTER TABLE [inscriptions] CHECK CONSTRAINT ALL;
IF OBJECT_ID(N'[invoices]', N'U') IS NOT NULL ALTER TABLE [invoices] CHECK CONSTRAINT ALL;
IF OBJECT_ID(N'[invoice_details]', N'U') IS NOT NULL ALTER TABLE [invoice_details] CHECK CONSTRAINT ALL;
IF OBJECT_ID(N'[invoice_items]', N'U') IS NOT NULL ALTER TABLE [invoice_items] CHECK CONSTRAINT ALL;
IF OBJECT_ID(N'[invoice_layouts]', N'U') IS NOT NULL ALTER TABLE [invoice_layouts] CHECK CONSTRAINT ALL;
IF OBJECT_ID(N'[invoice_schemes]', N'U') IS NOT NULL ALTER TABLE [invoice_schemes] CHECK CONSTRAINT ALL;
IF OBJECT_ID(N'[lecon]', N'U') IS NOT NULL ALTER TABLE [lecon] CHECK CONSTRAINT ALL;
IF OBJECT_ID(N'[lecons]', N'U') IS NOT NULL ALTER TABLE [lecons] CHECK CONSTRAINT ALL;
IF OBJECT_ID(N'[lettre_missions]', N'U') IS NOT NULL ALTER TABLE [lettre_missions] CHECK CONSTRAINT ALL;
IF OBJECT_ID(N'[lignetransmission_bons]', N'U') IS NOT NULL ALTER TABLE [lignetransmission_bons] CHECK CONSTRAINT ALL;
IF OBJECT_ID(N'[ligne_achats]', N'U') IS NOT NULL ALTER TABLE [ligne_achats] CHECK CONSTRAINT ALL;
IF OBJECT_ID(N'[ligne_transmission_mandats]', N'U') IS NOT NULL ALTER TABLE [ligne_transmission_mandats] CHECK CONSTRAINT ALL;
IF OBJECT_ID(N'[liquidations]', N'U') IS NOT NULL ALTER TABLE [liquidations] CHECK CONSTRAINT ALL;
IF OBJECT_ID(N'[lits]', N'U') IS NOT NULL ALTER TABLE [lits] CHECK CONSTRAINT ALL;
IF OBJECT_ID(N'[mandats]', N'U') IS NOT NULL ALTER TABLE [mandats] CHECK CONSTRAINT ALL;
IF OBJECT_ID(N'[marches]', N'U') IS NOT NULL ALTER TABLE [marches] CHECK CONSTRAINT ALL;
IF OBJECT_ID(N'[matieres]', N'U') IS NOT NULL ALTER TABLE [matieres] CHECK CONSTRAINT ALL;
IF OBJECT_ID(N'[media]', N'U') IS NOT NULL ALTER TABLE [media] CHECK CONSTRAINT ALL;
IF OBJECT_ID(N'[mercuriales]', N'U') IS NOT NULL ALTER TABLE [mercuriales] CHECK CONSTRAINT ALL;
IF OBJECT_ID(N'[methode_analyses]', N'U') IS NOT NULL ALTER TABLE [methode_analyses] CHECK CONSTRAINT ALL;
IF OBJECT_ID(N'[missions]', N'U') IS NOT NULL ALTER TABLE [missions] CHECK CONSTRAINT ALL;
IF OBJECT_ID(N'[model_has_permissions]', N'U') IS NOT NULL ALTER TABLE [model_has_permissions] CHECK CONSTRAINT ALL;
IF OBJECT_ID(N'[model_has_roles]', N'U') IS NOT NULL ALTER TABLE [model_has_roles] CHECK CONSTRAINT ALL;
IF OBJECT_ID(N'[mois]', N'U') IS NOT NULL ALTER TABLE [mois] CHECK CONSTRAINT ALL;
IF OBJECT_ID(N'[mouvement_caisses]', N'U') IS NOT NULL ALTER TABLE [mouvement_caisses] CHECK CONSTRAINT ALL;
IF OBJECT_ID(N'[natures]', N'U') IS NOT NULL ALTER TABLE [natures] CHECK CONSTRAINT ALL;
IF OBJECT_ID(N'[nature_ecos]', N'U') IS NOT NULL ALTER TABLE [nature_ecos] CHECK CONSTRAINT ALL;
IF OBJECT_ID(N'[niveaux]', N'U') IS NOT NULL ALTER TABLE [niveaux] CHECK CONSTRAINT ALL;
IF OBJECT_ID(N'[notes]', N'U') IS NOT NULL ALTER TABLE [notes] CHECK CONSTRAINT ALL;
IF OBJECT_ID(N'[notices]', N'U') IS NOT NULL ALTER TABLE [notices] CHECK CONSTRAINT ALL;
IF OBJECT_ID(N'[notifications]', N'U') IS NOT NULL ALTER TABLE [notifications] CHECK CONSTRAINT ALL;
IF OBJECT_ID(N'[notification_templates]', N'U') IS NOT NULL ALTER TABLE [notification_templates] CHECK CONSTRAINT ALL;
IF OBJECT_ID(N'[nouveaux_nes]', N'U') IS NOT NULL ALTER TABLE [nouveaux_nes] CHECK CONSTRAINT ALL;
IF OBJECT_ID(N'[observation_medicals]', N'U') IS NOT NULL ALTER TABLE [observation_medicals] CHECK CONSTRAINT ALL;
IF OBJECT_ID(N'[operations]', N'U') IS NOT NULL ALTER TABLE [operations] CHECK CONSTRAINT ALL;
IF OBJECT_ID(N'[op_types_anesthesies]', N'U') IS NOT NULL ALTER TABLE [op_types_anesthesies] CHECK CONSTRAINT ALL;
IF OBJECT_ID(N'[op_types_interventions]', N'U') IS NOT NULL ALTER TABLE [op_types_interventions] CHECK CONSTRAINT ALL;
IF OBJECT_ID(N'[op_types_operations]', N'U') IS NOT NULL ALTER TABLE [op_types_operations] CHECK CONSTRAINT ALL;
IF OBJECT_ID(N'[ordonnances]', N'U') IS NOT NULL ALTER TABLE [ordonnances] CHECK CONSTRAINT ALL;
IF OBJECT_ID(N'[ordonnance_prescrites]', N'U') IS NOT NULL ALTER TABLE [ordonnance_prescrites] CHECK CONSTRAINT ALL;
IF OBJECT_ID(N'[ordonnance_servies]', N'U') IS NOT NULL ALTER TABLE [ordonnance_servies] CHECK CONSTRAINT ALL;
IF OBJECT_ID(N'[ordonnateurs]', N'U') IS NOT NULL ALTER TABLE [ordonnateurs] CHECK CONSTRAINT ALL;
IF OBJECT_ID(N'[ordres]', N'U') IS NOT NULL ALTER TABLE [ordres] CHECK CONSTRAINT ALL;
IF OBJECT_ID(N'[ordre_entrees]', N'U') IS NOT NULL ALTER TABLE [ordre_entrees] CHECK CONSTRAINT ALL;
IF OBJECT_ID(N'[orientations]', N'U') IS NOT NULL ALTER TABLE [orientations] CHECK CONSTRAINT ALL;
IF OBJECT_ID(N'[paies]', N'U') IS NOT NULL ALTER TABLE [paies] CHECK CONSTRAINT ALL;
IF OBJECT_ID(N'[parametres]', N'U') IS NOT NULL ALTER TABLE [parametres] CHECK CONSTRAINT ALL;
IF OBJECT_ID(N'[parametre_patients]', N'U') IS NOT NULL ALTER TABLE [parametre_patients] CHECK CONSTRAINT ALL;
IF OBJECT_ID(N'[partenaires]', N'U') IS NOT NULL ALTER TABLE [partenaires] CHECK CONSTRAINT ALL;
IF OBJECT_ID(N'[password_reset_tokens]', N'U') IS NOT NULL ALTER TABLE [password_reset_tokens] CHECK CONSTRAINT ALL;
IF OBJECT_ID(N'[pathologie_chroniques]', N'U') IS NOT NULL ALTER TABLE [pathologie_chroniques] CHECK CONSTRAINT ALL;
IF OBJECT_ID(N'[patients]', N'U') IS NOT NULL ALTER TABLE [patients] CHECK CONSTRAINT ALL;
IF OBJECT_ID(N'[patient_plaintes]', N'U') IS NOT NULL ALTER TABLE [patient_plaintes] CHECK CONSTRAINT ALL;
IF OBJECT_ID(N'[patient_references]', N'U') IS NOT NULL ALTER TABLE [patient_references] CHECK CONSTRAINT ALL;
IF OBJECT_ID(N'[payements]', N'U') IS NOT NULL ALTER TABLE [payements] CHECK CONSTRAINT ALL;
IF OBJECT_ID(N'[payment_patient_reference]', N'U') IS NOT NULL ALTER TABLE [payment_patient_reference] CHECK CONSTRAINT ALL;
IF OBJECT_ID(N'[pays]', N'U') IS NOT NULL ALTER TABLE [pays] CHECK CONSTRAINT ALL;
IF OBJECT_ID(N'[periodes]', N'U') IS NOT NULL ALTER TABLE [periodes] CHECK CONSTRAINT ALL;
IF OBJECT_ID(N'[periode_academiques]', N'U') IS NOT NULL ALTER TABLE [periode_academiques] CHECK CONSTRAINT ALL;
IF OBJECT_ID(N'[permissions]', N'U') IS NOT NULL ALTER TABLE [permissions] CHECK CONSTRAINT ALL;
IF OBJECT_ID(N'[personnels]', N'U') IS NOT NULL ALTER TABLE [personnels] CHECK CONSTRAINT ALL;
IF OBJECT_ID(N'[personnes]', N'U') IS NOT NULL ALTER TABLE [personnes] CHECK CONSTRAINT ALL;
IF OBJECT_ID(N'[personne_contacters]', N'U') IS NOT NULL ALTER TABLE [personne_contacters] CHECK CONSTRAINT ALL;
IF OBJECT_ID(N'[plan_comptables]', N'U') IS NOT NULL ALTER TABLE [plan_comptables] CHECK CONSTRAINT ALL;
IF OBJECT_ID(N'[plan_comptable_matieres]', N'U') IS NOT NULL ALTER TABLE [plan_comptable_matieres] CHECK CONSTRAINT ALL;
IF OBJECT_ID(N'[prelevements]', N'U') IS NOT NULL ALTER TABLE [prelevements] CHECK CONSTRAINT ALL;
IF OBJECT_ID(N'[prescripteurs]', N'U') IS NOT NULL ALTER TABLE [prescripteurs] CHECK CONSTRAINT ALL;
IF OBJECT_ID(N'[prescripteur_quote_parts]', N'U') IS NOT NULL ALTER TABLE [prescripteur_quote_parts] CHECK CONSTRAINT ALL;
IF OBJECT_ID(N'[prescriptions]', N'U') IS NOT NULL ALTER TABLE [prescriptions] CHECK CONSTRAINT ALL;
IF OBJECT_ID(N'[prescription_acte_medicals]', N'U') IS NOT NULL ALTER TABLE [prescription_acte_medicals] CHECK CONSTRAINT ALL;
IF OBJECT_ID(N'[prescription_examens]', N'U') IS NOT NULL ALTER TABLE [prescription_examens] CHECK CONSTRAINT ALL;
IF OBJECT_ID(N'[prescription_items]', N'U') IS NOT NULL ALTER TABLE [prescription_items] CHECK CONSTRAINT ALL;
IF OBJECT_ID(N'[prescription_medications]', N'U') IS NOT NULL ALTER TABLE [prescription_medications] CHECK CONSTRAINT ALL;
IF OBJECT_ID(N'[prescription_prescription_types]', N'U') IS NOT NULL ALTER TABLE [prescription_prescription_types] CHECK CONSTRAINT ALL;
IF OBJECT_ID(N'[pricing_rules]', N'U') IS NOT NULL ALTER TABLE [pricing_rules] CHECK CONSTRAINT ALL;
IF OBJECT_ID(N'[primes]', N'U') IS NOT NULL ALTER TABLE [primes] CHECK CONSTRAINT ALL;
IF OBJECT_ID(N'[prime_corps_metiers]', N'U') IS NOT NULL ALTER TABLE [prime_corps_metiers] CHECK CONSTRAINT ALL;
IF OBJECT_ID(N'[printers]', N'U') IS NOT NULL ALTER TABLE [printers] CHECK CONSTRAINT ALL;
IF OBJECT_ID(N'[products]', N'U') IS NOT NULL ALTER TABLE [products] CHECK CONSTRAINT ALL;
IF OBJECT_ID(N'[product_categories]', N'U') IS NOT NULL ALTER TABLE [product_categories] CHECK CONSTRAINT ALL;
IF OBJECT_ID(N'[product_information]', N'U') IS NOT NULL ALTER TABLE [product_information] CHECK CONSTRAINT ALL;
IF OBJECT_ID(N'[product_locations]', N'U') IS NOT NULL ALTER TABLE [product_locations] CHECK CONSTRAINT ALL;
IF OBJECT_ID(N'[product_racks]', N'U') IS NOT NULL ALTER TABLE [product_racks] CHECK CONSTRAINT ALL;
IF OBJECT_ID(N'[product_variations]', N'U') IS NOT NULL ALTER TABLE [product_variations] CHECK CONSTRAINT ALL;
IF OBJECT_ID(N'[proformats]', N'U') IS NOT NULL ALTER TABLE [proformats] CHECK CONSTRAINT ALL;
IF OBJECT_ID(N'[provenances]', N'U') IS NOT NULL ALTER TABLE [provenances] CHECK CONSTRAINT ALL;
IF OBJECT_ID(N'[purchase_lines]', N'U') IS NOT NULL ALTER TABLE [purchase_lines] CHECK CONSTRAINT ALL;
IF OBJECT_ID(N'[quartiers]', N'U') IS NOT NULL ALTER TABLE [quartiers] CHECK CONSTRAINT ALL;
IF OBJECT_ID(N'[reanimations]', N'U') IS NOT NULL ALTER TABLE [reanimations] CHECK CONSTRAINT ALL;
IF OBJECT_ID(N'[reference_counts]', N'U') IS NOT NULL ALTER TABLE [reference_counts] CHECK CONSTRAINT ALL;
IF OBJECT_ID(N'[reformes]', N'U') IS NOT NULL ALTER TABLE [reformes] CHECK CONSTRAINT ALL;
IF OBJECT_ID(N'[regions]', N'U') IS NOT NULL ALTER TABLE [regions] CHECK CONSTRAINT ALL;
IF OBJECT_ID(N'[reglements]', N'U') IS NOT NULL ALTER TABLE [reglements] CHECK CONSTRAINT ALL;
IF OBJECT_ID(N'[rendez_vous]', N'U') IS NOT NULL ALTER TABLE [rendez_vous] CHECK CONSTRAINT ALL;
IF OBJECT_ID(N'[ressources]', N'U') IS NOT NULL ALTER TABLE [ressources] CHECK CONSTRAINT ALL;
IF OBJECT_ID(N'[resultat_examens]', N'U') IS NOT NULL ALTER TABLE [resultat_examens] CHECK CONSTRAINT ALL;
IF OBJECT_ID(N'[res_product_modifier_sets]', N'U') IS NOT NULL ALTER TABLE [res_product_modifier_sets] CHECK CONSTRAINT ALL;
IF OBJECT_ID(N'[ribs]', N'U') IS NOT NULL ALTER TABLE [ribs] CHECK CONSTRAINT ALL;
IF OBJECT_ID(N'[roles]', N'U') IS NOT NULL ALTER TABLE [roles] CHECK CONSTRAINT ALL;
IF OBJECT_ID(N'[role_has_permissions]', N'U') IS NOT NULL ALTER TABLE [role_has_permissions] CHECK CONSTRAINT ALL;
IF OBJECT_ID(N'[saless]', N'U') IS NOT NULL ALTER TABLE [saless] CHECK CONSTRAINT ALL;
IF OBJECT_ID(N'[salles]', N'U') IS NOT NULL ALTER TABLE [salles] CHECK CONSTRAINT ALL;
IF OBJECT_ID(N'[salle_accouchements]', N'U') IS NOT NULL ALTER TABLE [salle_accouchements] CHECK CONSTRAINT ALL;
IF OBJECT_ID(N'[selling_price_groups]', N'U') IS NOT NULL ALTER TABLE [selling_price_groups] CHECK CONSTRAINT ALL;
IF OBJECT_ID(N'[sell_line_warranties]', N'U') IS NOT NULL ALTER TABLE [sell_line_warranties] CHECK CONSTRAINT ALL;
IF OBJECT_ID(N'[services]', N'U') IS NOT NULL ALTER TABLE [services] CHECK CONSTRAINT ALL;
IF OBJECT_ID(N'[session_tickets]', N'U') IS NOT NULL ALTER TABLE [session_tickets] CHECK CONSTRAINT ALL;
IF OBJECT_ID(N'[soins]', N'U') IS NOT NULL ALTER TABLE [soins] CHECK CONSTRAINT ALL;
IF OBJECT_ID(N'[source_financements]', N'U') IS NOT NULL ALTER TABLE [source_financements] CHECK CONSTRAINT ALL;
IF OBJECT_ID(N'[sous_programmes]', N'U') IS NOT NULL ALTER TABLE [sous_programmes] CHECK CONSTRAINT ALL;
IF OBJECT_ID(N'[sous_types]', N'U') IS NOT NULL ALTER TABLE [sous_types] CHECK CONSTRAINT ALL;
IF OBJECT_ID(N'[specialites]', N'U') IS NOT NULL ALTER TABLE [specialites] CHECK CONSTRAINT ALL;
IF OBJECT_ID(N'[statuts]', N'U') IS NOT NULL ALTER TABLE [statuts] CHECK CONSTRAINT ALL;
IF OBJECT_ID(N'[stocks]', N'U') IS NOT NULL ALTER TABLE [stocks] CHECK CONSTRAINT ALL;
IF OBJECT_ID(N'[stock_adjustment_lines]', N'U') IS NOT NULL ALTER TABLE [stock_adjustment_lines] CHECK CONSTRAINT ALL;
IF OBJECT_ID(N'[stock_mouvements]', N'U') IS NOT NULL ALTER TABLE [stock_mouvements] CHECK CONSTRAINT ALL;
IF OBJECT_ID(N'[stock_movements]', N'U') IS NOT NULL ALTER TABLE [stock_movements] CHECK CONSTRAINT ALL;
IF OBJECT_ID(N'[stock_sangs]', N'U') IS NOT NULL ALTER TABLE [stock_sangs] CHECK CONSTRAINT ALL;
IF OBJECT_ID(N'[suppliers]', N'U') IS NOT NULL ALTER TABLE [suppliers] CHECK CONSTRAINT ALL;
IF OBJECT_ID(N'[system]', N'U') IS NOT NULL ALTER TABLE [system] CHECK CONSTRAINT ALL;
IF OBJECT_ID(N'[taches]', N'U') IS NOT NULL ALTER TABLE [taches] CHECK CONSTRAINT ALL;
IF OBJECT_ID(N'[taxes]', N'U') IS NOT NULL ALTER TABLE [taxes] CHECK CONSTRAINT ALL;
IF OBJECT_ID(N'[taxess]', N'U') IS NOT NULL ALTER TABLE [taxess] CHECK CONSTRAINT ALL;
IF OBJECT_ID(N'[taxe_rates]', N'U') IS NOT NULL ALTER TABLE [taxe_rates] CHECK CONSTRAINT ALL;
IF OBJECT_ID(N'[tax_rates]', N'U') IS NOT NULL ALTER TABLE [tax_rates] CHECK CONSTRAINT ALL;
IF OBJECT_ID(N'[test_analyse_laboratoires]', N'U') IS NOT NULL ALTER TABLE [test_analyse_laboratoires] CHECK CONSTRAINT ALL;
IF OBJECT_ID(N'[ticketables]', N'U') IS NOT NULL ALTER TABLE [ticketables] CHECK CONSTRAINT ALL;
IF OBJECT_ID(N'[tierces]', N'U') IS NOT NULL ALTER TABLE [tierces] CHECK CONSTRAINT ALL;
IF OBJECT_ID(N'[timezones]', N'U') IS NOT NULL ALTER TABLE [timezones] CHECK CONSTRAINT ALL;
IF OBJECT_ID(N'[transaction]', N'U') IS NOT NULL ALTER TABLE [transaction] CHECK CONSTRAINT ALL;
IF OBJECT_ID(N'[transactions]', N'U') IS NOT NULL ALTER TABLE [transactions] CHECK CONSTRAINT ALL;
IF OBJECT_ID(N'[transaction_payments]', N'U') IS NOT NULL ALTER TABLE [transaction_payments] CHECK CONSTRAINT ALL;
IF OBJECT_ID(N'[transaction_sell_lines]', N'U') IS NOT NULL ALTER TABLE [transaction_sell_lines] CHECK CONSTRAINT ALL;
IF OBJECT_ID(N'[transaction_sell_lines_purchase_lines]', N'U') IS NOT NULL ALTER TABLE [transaction_sell_lines_purchase_lines] CHECK CONSTRAINT ALL;
IF OBJECT_ID(N'[transferts]', N'U') IS NOT NULL ALTER TABLE [transferts] CHECK CONSTRAINT ALL;
IF OBJECT_ID(N'[transfert_caisses]', N'U') IS NOT NULL ALTER TABLE [transfert_caisses] CHECK CONSTRAINT ALL;
IF OBJECT_ID(N'[transmissions]', N'U') IS NOT NULL ALTER TABLE [transmissions] CHECK CONSTRAINT ALL;
IF OBJECT_ID(N'[types_of_services]', N'U') IS NOT NULL ALTER TABLE [types_of_services] CHECK CONSTRAINT ALL;
IF OBJECT_ID(N'[type_comptes]', N'U') IS NOT NULL ALTER TABLE [type_comptes] CHECK CONSTRAINT ALL;
IF OBJECT_ID(N'[type_conditionnements]', N'U') IS NOT NULL ALTER TABLE [type_conditionnements] CHECK CONSTRAINT ALL;
IF OBJECT_ID(N'[type_consultations]', N'U') IS NOT NULL ALTER TABLE [type_consultations] CHECK CONSTRAINT ALL;
IF OBJECT_ID(N'[type_examens]', N'U') IS NOT NULL ALTER TABLE [type_examens] CHECK CONSTRAINT ALL;
IF OBJECT_ID(N'[type_of_services]', N'U') IS NOT NULL ALTER TABLE [type_of_services] CHECK CONSTRAINT ALL;
IF OBJECT_ID(N'[type_ordres]', N'U') IS NOT NULL ALTER TABLE [type_ordres] CHECK CONSTRAINT ALL;
IF OBJECT_ID(N'[type_prelevements]', N'U') IS NOT NULL ALTER TABLE [type_prelevements] CHECK CONSTRAINT ALL;
IF OBJECT_ID(N'[unites]', N'U') IS NOT NULL ALTER TABLE [unites] CHECK CONSTRAINT ALL;
IF OBJECT_ID(N'[units]', N'U') IS NOT NULL ALTER TABLE [units] CHECK CONSTRAINT ALL;
IF OBJECT_ID(N'[urgentistes]', N'U') IS NOT NULL ALTER TABLE [urgentistes] CHECK CONSTRAINT ALL;
IF OBJECT_ID(N'[users]', N'U') IS NOT NULL ALTER TABLE [users] CHECK CONSTRAINT ALL;
IF OBJECT_ID(N'[user_contact_access]', N'U') IS NOT NULL ALTER TABLE [user_contact_access] CHECK CONSTRAINT ALL;
IF OBJECT_ID(N'[valeursps]', N'U') IS NOT NULL ALTER TABLE [valeursps] CHECK CONSTRAINT ALL;
IF OBJECT_ID(N'[valeur_actions]', N'U') IS NOT NULL ALTER TABLE [valeur_actions] CHECK CONSTRAINT ALL;
IF OBJECT_ID(N'[valeur_activites]', N'U') IS NOT NULL ALTER TABLE [valeur_activites] CHECK CONSTRAINT ALL;
IF OBJECT_ID(N'[variations]', N'U') IS NOT NULL ALTER TABLE [variations] CHECK CONSTRAINT ALL;
IF OBJECT_ID(N'[variation_group_prices]', N'U') IS NOT NULL ALTER TABLE [variation_group_prices] CHECK CONSTRAINT ALL;
IF OBJECT_ID(N'[variation_location_details]', N'U') IS NOT NULL ALTER TABLE [variation_location_details] CHECK CONSTRAINT ALL;
IF OBJECT_ID(N'[variation_templates]', N'U') IS NOT NULL ALTER TABLE [variation_templates] CHECK CONSTRAINT ALL;
IF OBJECT_ID(N'[variation_value_templates]', N'U') IS NOT NULL ALTER TABLE [variation_value_templates] CHECK CONSTRAINT ALL;
IF OBJECT_ID(N'[ventes]', N'U') IS NOT NULL ALTER TABLE [ventes] CHECK CONSTRAINT ALL;
IF OBJECT_ID(N'[villes]', N'U') IS NOT NULL ALTER TABLE [villes] CHECK CONSTRAINT ALL;
IF OBJECT_ID(N'[warranties]', N'U') IS NOT NULL ALTER TABLE [warranties] CHECK CONSTRAINT ALL;