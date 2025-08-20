use memoBachelor

GO
IF OBJECT_ID(N'[accouchements]', N'U') IS NULL
BEGIN
    CREATE TABLE [accouchements] (
        [id] BIGINT IDENTITY(1,1) NOT NULL,
        [numero_accouchement] NVARCHAR(191) NULL,
        [patient_id] BIGINT NULL,
        [medecin_id] BIGINT NULL,
        [sage_femme_id] BIGINT NULL,
        [salle_accouchement_id] BIGINT NULL,
        [service_id] BIGINT NULL,
        [business_id] INT NULL,
        [location_id] INT NULL,
        [date_admission] DATETIME2 NULL,
        [date_debut_travail] DATETIME2 NULL,
        [date_accouchement] DATETIME2 NULL,
        [type_accouchement] NVARCHAR(50) NULL,
        [presentation_fœtale] NVARCHAR(50) NULL,
        [duree_travail] INT NULL,
        [complications] NVARCHAR(MAX) NULL,
        [semaines_grossesse] NVARCHAR(191) NULL,
        [statut] NVARCHAR(50) NULL,
        [examens_prenatal] NVARCHAR(MAX) NULL,
        [antecedents_obstetricaux] NVARCHAR(MAX) NULL,
        [created_at] DATETIME2 NULL,
        [updated_at] DATETIME2 NULL
        , CONSTRAINT [PK_accouchements] PRIMARY KEY ([id])
    );
END
GO
IF OBJECT_ID(N'[accounts]', N'U') IS NULL
BEGIN
    CREATE TABLE [accounts] (
        [id] BIGINT IDENTITY(1,1) NOT NULL,
        [business_id] INT NULL,
        [name] NVARCHAR(191) NULL,
        [account_number] NVARCHAR(191) NULL,
        [account_type_id] INT NULL,
        [account_type] NVARCHAR(50) NULL,
        [note] NVARCHAR(MAX) NULL,
        [account_details] NVARCHAR(MAX) NULL,
        [created_by] INT NULL,
        [is_closed] BIT NULL,
        [deleted_at] DATETIME2 NULL,
        [created_at] DATETIME2 NULL,
        [updated_at] DATETIME2 NULL
        , CONSTRAINT [PK_accounts] PRIMARY KEY ([id])
    );
END
GO
IF OBJECT_ID(N'[account_transactions]', N'U') IS NULL
BEGIN
    CREATE TABLE [account_transactions] (
        [id] INT IDENTITY(1,1) NOT NULL,
        [account_id] INT NULL,
        [type] NVARCHAR(50) NULL,
        [sub_type] NVARCHAR(50) NULL,
        [amount] DECIMAL(18,2) NULL,
        [reff_no] NVARCHAR(191) NULL,
        [operation_date] DATETIME2 NULL,
        [created_by] INT NULL,
        [transaction_id] INT NULL,
        [transaction_payment_id] INT NULL,
        [transfer_transaction_id] INT NULL,
        [note] NVARCHAR(MAX) NULL,
        [deleted_at] DATETIME2 NULL,
        [created_at] DATETIME2 NULL,
        [updated_at] DATETIME2 NULL
        , CONSTRAINT [PK_account_transactions] PRIMARY KEY ([id])
    );
END
GO
IF OBJECT_ID(N'[account_types]', N'U') IS NULL
BEGIN
    CREATE TABLE [account_types] (
        [id] INT IDENTITY(1,1) NOT NULL,
        [name] NVARCHAR(191) NULL,
        [parent_account_type_id] INT NULL,
        [business_id] INT NULL,
        [created_at] DATETIME2 NULL,
        [updated_at] DATETIME2 NULL
        , CONSTRAINT [PK_account_types] PRIMARY KEY ([id])
    );
END
GO
IF OBJECT_ID(N'[accreditations]', N'U') IS NULL
BEGIN
    CREATE TABLE [accreditations] (
        [id] BIGINT IDENTITY(1,1) NOT NULL,
        [imputation_id] BIGINT NULL,
        [personnel_id] BIGINT NULL,
        [dateEffet] NVARCHAR(191) NULL,
        [dateFin] NVARCHAR(191) NULL,
        [typeAccred] NVARCHAR(191) NULL,
        [created_at] DATETIME2 NULL,
        [updated_at] DATETIME2 NULL
        , CONSTRAINT [PK_accreditations] PRIMARY KEY ([id])
    );
END
GO
IF OBJECT_ID(N'[achats]', N'U') IS NULL
BEGIN
    CREATE TABLE [achats] (
        [id] BIGINT IDENTITY(1,1) NOT NULL,
        [reglement_id] BIGINT NULL,
        [code] NVARCHAR(191) NULL,
        [reference] NVARCHAR(191) NULL,
        [emetteur] NVARCHAR(191) NULL,
        [motif] NVARCHAR(191) NULL,
        [commentaire] NVARCHAR(191) NULL,
        [created_at] DATETIME2 NULL,
        [updated_at] DATETIME2 NULL
        , CONSTRAINT [PK_achats] PRIMARY KEY ([id])
    );
END
GO
IF OBJECT_ID(N'[acte_carrieres]', N'U') IS NULL
BEGIN
    CREATE TABLE [acte_carrieres] (
        [id] BIGINT IDENTITY(1,1) NOT NULL,
        [categorie_id] BIGINT NULL,
        [echellon_id] BIGINT NULL,
        [personnel_id] BIGINT NULL,
        [referenceContrat] NVARCHAR(191) NULL,
        [typeCarriere] NVARCHAR(191) NULL,
        [dateSignature] NVARCHAR(191) NULL,
        [created_at] DATETIME2 NULL,
        [updated_at] DATETIME2 NULL
        , CONSTRAINT [PK_acte_carrieres] PRIMARY KEY ([id])
    );
END
GO
IF OBJECT_ID(N'[acte_medicals]', N'U') IS NULL
BEGIN
    CREATE TABLE [acte_medicals] (
        [id] BIGINT IDENTITY(1,1) NOT NULL,
        [code] NVARCHAR(191) NULL,
        [departement_id] BIGINT NULL,
        [acte_medical_type_id] BIGINT NULL,
        [nom] NVARCHAR(191) NULL,
        [montant] NVARCHAR(191) NULL,
        [duree_moyenne] INT NULL,
        [description] NVARCHAR(MAX) NULL,
        [est_acte_therapeutique] BIT NULL,
        [is_active] BIT NULL,
        [metadata] NVARCHAR(MAX) NULL,
        [necessite_prescription] BIT NULL,
        [created_at] DATETIME2 NULL,
        [updated_at] DATETIME2 NULL,
        [montant_minimum] DECIMAL(18,2) NULL,
        [montant_maximum] DECIMAL(18,2) NULL
        , CONSTRAINT [PK_acte_medicals] PRIMARY KEY ([id])
    );
END
GO
IF OBJECT_ID(N'[acte_medical_departement]', N'U') IS NULL
BEGIN
    CREATE TABLE [acte_medical_departement] (
        [id] BIGINT IDENTITY(1,1) NOT NULL,
        [departement_id] BIGINT NULL,
        [acte_medical_id] BIGINT NULL,
        [quantite] DECIMAL(18,2) NULL,
        [prix] DECIMAL(18,2) NULL,
        [created_at] DATETIME2 NULL,
        [updated_at] DATETIME2 NULL
        , CONSTRAINT [PK_acte_medical_departement] PRIMARY KEY ([id])
    );
END
GO
IF OBJECT_ID(N'[acte_medical_types]', N'U') IS NULL
BEGIN
    CREATE TABLE [acte_medical_types] (
        [id] BIGINT IDENTITY(1,1) NOT NULL,
        [code] NVARCHAR(191) NULL,
        [label] NVARCHAR(191) NULL,
        [category] NVARCHAR(191) NULL,
        [color] NVARCHAR(191) NULL,
        [form_template] NVARCHAR(191) NULL,
        [created_at] DATETIME2 NULL,
        [updated_at] DATETIME2 NULL
        , CONSTRAINT [PK_acte_medical_types] PRIMARY KEY ([id])
    );
END
GO
IF OBJECT_ID(N'[acte_soin_demandes]', N'U') IS NULL
BEGIN
    CREATE TABLE [acte_soin_demandes] (
        [id] BIGINT IDENTITY(1,1) NOT NULL,
        [hospitalisation_id] BIGINT NULL,
        [acte_medical_id] BIGINT NULL,
        [vente_id] BIGINT NULL,
        [personnel_id] BIGINT NULL,
        [qte_achetes] INT NULL,
        [qte_recus] INT NULL,
        [reste] INT NULL,
        [created_at] DATETIME2 NULL,
        [updated_at] DATETIME2 NULL
        , CONSTRAINT [PK_acte_soin_demandes] PRIMARY KEY ([id])
    );
END
GO
IF OBJECT_ID(N'[acte_soin_recuses]', N'U') IS NULL
BEGIN
    CREATE TABLE [acte_soin_recuses] (
        [id] BIGINT IDENTITY(1,1) NOT NULL,
        [acte_soin_demande_id] BIGINT NULL,
        [personnel_id] BIGINT NULL,
        [created_by] BIGINT NULL,
        [updated_by] BIGINT NULL,
        [nombre_recus] INT NULL,
        [nbre_restant] INT NULL,
        [date_debut_admission] DATETIME2 NULL,
        [date_fin_admission] DATETIME2 NULL,
        [created_at] DATETIME2 NULL,
        [updated_at] DATETIME2 NULL
        , CONSTRAINT [PK_acte_soin_recuses] PRIMARY KEY ([id])
    );
END
GO
IF OBJECT_ID(N'[actions]', N'U') IS NULL
BEGIN
    CREATE TABLE [actions] (
        [id] BIGINT IDENTITY(1,1) NOT NULL,
        [personnel_id] BIGINT NULL,
        [sous_programme_id] BIGINT NULL,
        [code_action_id] BIGINT NULL,
        [intitule] NVARCHAR(191) NULL,
        [objectif] NVARCHAR(191) NULL,
        [abreviation] NVARCHAR(191) NULL,
        [desactiver] BIT NULL,
        [created_by] NVARCHAR(191) NULL,
        [updated_by] NVARCHAR(191) NULL,
        [created_at] DATETIME2 NULL,
        [updated_at] DATETIME2 NULL
        , CONSTRAINT [PK_actions] PRIMARY KEY ([id])
    );
END
GO
IF OBJECT_ID(N'[activites]', N'U') IS NULL
BEGIN
    CREATE TABLE [activites] (
        [id] BIGINT IDENTITY(1,1) NOT NULL,
        [personnel_id] BIGINT NULL,
        [sous_programme_id] BIGINT NULL,
        [code_activite_id] BIGINT NULL,
        [action_id] BIGINT NULL,
        [intitule] NVARCHAR(191) NULL,
        [objectif] NVARCHAR(191) NULL,
        [abreviation] NVARCHAR(191) NULL,
        [desactiver] BIT NULL,
        [created_by] NVARCHAR(191) NULL,
        [updated_by] NVARCHAR(191) NULL,
        [created_at] DATETIME2 NULL,
        [updated_at] DATETIME2 NULL
        , CONSTRAINT [PK_activites] PRIMARY KEY ([id])
    );
END
GO
IF OBJECT_ID(N'[activity_log]', N'U') IS NULL
BEGIN
    CREATE TABLE [activity_log] (
        [id] BIGINT IDENTITY(1,1) NOT NULL,
        [log_name] NVARCHAR(191) NULL,
        [description] NVARCHAR(MAX) NULL,
        [subject_type] NVARCHAR(191) NULL,
        [event] NVARCHAR(191) NULL,
        [subject_id] BIGINT NULL,
        [causer_type] NVARCHAR(191) NULL,
        [causer_id] BIGINT NULL,
        [properties] NVARCHAR(MAX) NULL,
        [batch_uuid] NCHAR(36) NULL,
        [created_at] DATETIME2 NULL,
        [updated_at] DATETIME2 NULL,
        [business_id] INT NULL
        , CONSTRAINT [PK_activity_log] PRIMARY KEY ([id])
    );
END
GO
IF OBJECT_ID(N'[affectations]', N'U') IS NULL
BEGIN
    CREATE TABLE [affectations] (
        [id] BIGINT IDENTITY(1,1) NOT NULL,
        [patient_id] BIGINT NULL,
        [service_id] BIGINT NULL,
        [service_id2] BIGINT NULL,
        [objet] NVARCHAR(MAX) NULL,
        [auteur] NVARCHAR(MAX) NULL,
        [created_at] DATETIME2 NULL,
        [updated_at] DATETIME2 NULL
        , CONSTRAINT [PK_affectations] PRIMARY KEY ([id])
    );
END
GO
IF OBJECT_ID(N'[affectation_personnels]', N'U') IS NULL
BEGIN
    CREATE TABLE [affectation_personnels] (
        [id] BIGINT IDENTITY(1,1) NOT NULL,
        [personnel_id] BIGINT NULL,
        [service_id] BIGINT NULL,
        [date] NVARCHAR(191) NULL,
        [created_at] DATETIME2 NULL,
        [updated_at] DATETIME2 NULL
        , CONSTRAINT [PK_affectation_personnels] PRIMARY KEY ([id])
    );
END
GO
IF OBJECT_ID(N'[agences]', N'U') IS NULL
BEGIN
    CREATE TABLE [agences] (
        [id] BIGINT IDENTITY(1,1) NOT NULL,
        [banque_id] BIGINT NULL,
        [code] NVARCHAR(191) NULL,
        [adresse] NVARCHAR(191) NULL,
        [created_at] DATETIME2 NULL,
        [updated_at] DATETIME2 NULL
        , CONSTRAINT [PK_agences] PRIMARY KEY ([id])
    );
END
GO
IF OBJECT_ID(N'[analyses_laboratoires]', N'U') IS NULL
BEGIN
    CREATE TABLE [analyses_laboratoires] (
        [id] BIGINT IDENTITY(1,1) NOT NULL,
        [echantillon_id] BIGINT NULL,
        [technicien_id] BIGINT NULL,
        [validateur_id] BIGINT NULL,
        [service_id] BIGINT NULL,
        [type_analyse] NVARCHAR(191) NULL,
        [priorite] NVARCHAR(50) NULL,
        [statut] NVARCHAR(50) NULL,
        [resultats] NVARCHAR(MAX) NULL,
        [conclusion] NVARCHAR(MAX) NULL,
        [debut_analyse] DATETIME2 NULL,
        [fin_analyse] DATETIME2 NULL,
        [valide] BIT NULL,
        [date_validation] DATETIME2 NULL,
        [created_at] DATETIME2 NULL,
        [updated_at] DATETIME2 NULL
        , CONSTRAINT [PK_analyses_laboratoires] PRIMARY KEY ([id])
    );
END
GO
IF OBJECT_ID(N'[annees]', N'U') IS NULL
BEGIN
    CREATE TABLE [annees] (
        [id] BIGINT IDENTITY(1,1) NOT NULL,
        [annee] NVARCHAR(191) NULL,
        [created_at] DATETIME2 NULL,
        [updated_at] DATETIME2 NULL
        , CONSTRAINT [PK_annees] PRIMARY KEY ([id])
    );
END
GO
IF OBJECT_ID(N'[annee_academiques]', N'U') IS NULL
BEGIN
    CREATE TABLE [annee_academiques] (
        [id] BIGINT IDENTITY(1,1) NOT NULL,
        [dateDebut] NVARCHAR(191) NULL,
        [dateFin] NVARCHAR(191) NULL,
        [created_at] DATETIME2 NULL,
        [updated_at] DATETIME2 NULL
        , CONSTRAINT [PK_annee_academiques] PRIMARY KEY ([id])
    );
END
GO
IF OBJECT_ID(N'[appareils]', N'U') IS NULL
BEGIN
    CREATE TABLE [appareils] (
        [id] BIGINT IDENTITY(1,1) NOT NULL,
        [code] NVARCHAR(191) NULL,
        [nom] NVARCHAR(191) NULL,
        [marque] NVARCHAR(191) NULL,
        [cathegorie] NVARCHAR(191) NULL,
        [taille] INT NULL,
        [created_at] DATETIME2 NULL,
        [updated_at] DATETIME2 NULL
        , CONSTRAINT [PK_appareils] PRIMARY KEY ([id])
    );
END
GO
IF OBJECT_ID(N'[articles]', N'U') IS NULL
BEGIN
    CREATE TABLE [articles] (
        [id] BIGINT IDENTITY(1,1) NOT NULL,
        [unite_id] BIGINT NULL,
        [type_conditionnement_id] BIGINT NULL,
        [produit_id] BIGINT NULL,
        [famille_id] BIGINT NULL,
        [forme_id] BIGINT NULL,
        [fournisseur_id] BIGINT NULL,
        [plan_comptable_matiere_id] BIGINT NULL,
        [taxes_id] BIGINT NULL,
        [categorie_comptable_id] BIGINT NULL,
        [code] NVARCHAR(191) NULL,
        [codeBarre] NVARCHAR(191) NULL,
        [conditionnmentDefaut] NVARCHAR(191) NULL,
        [uniteVente] NVARCHAR(191) NULL,
        [prixAchat] NVARCHAR(191) NULL,
        [categorieAchat] NVARCHAR(191) NULL,
        [coefficientVente] NVARCHAR(191) NULL,
        [prixVente] NVARCHAR(191) NULL,
        [categorieVente] NVARCHAR(191) NULL,
        [dernierPrixAchat] NVARCHAR(191) NULL,
        [prixRevient] NVARCHAR(191) NULL,
        [qteSeuilCritique] NVARCHAR(191) NULL,
        [qteSeuilMin] NVARCHAR(191) NULL,
        [qteSeuilMax] NVARCHAR(191) NULL,
        [qteOptimale] NVARCHAR(191) NULL,
        [qteMAxCmd] NVARCHAR(191) NULL,
        [datePeremption] NVARCHAR(191) NULL,
        [unitePoids] NVARCHAR(191) NULL,
        [poidsNet] NVARCHAR(191) NULL,
        [coutStockage] NVARCHAR(191) NULL,
        [autresCharges] NVARCHAR(191) NULL,
        [coutTransport] NVARCHAR(191) NULL,
        [created_at] DATETIME2 NULL,
        [updated_at] DATETIME2 NULL
        , CONSTRAINT [PK_articles] PRIMARY KEY ([id])
    );
END
GO
IF OBJECT_ID(N'[article_achetes]', N'U') IS NULL
BEGIN
    CREATE TABLE [article_achetes] (
        [id] BIGINT IDENTITY(1,1) NOT NULL,
        [unites_id] BIGINT NULL,
        [type_conditionnements_id] BIGINT NULL,
        [produits_id] BIGINT NULL,
        [familles_id] BIGINT NULL,
        [achats_id] BIGINT NULL,
        [dateExpiration] NVARCHAR(191) NULL,
        [quantile] NVARCHAR(191) NULL,
        [prixUnitaire] NVARCHAR(191) NULL,
        [created_at] DATETIME2 NULL,
        [updated_at] DATETIME2 NULL
        , CONSTRAINT [PK_article_achetes] PRIMARY KEY ([id])
    );
END
GO
IF OBJECT_ID(N'[article_necessaires]', N'U') IS NULL
BEGIN
    CREATE TABLE [article_necessaires] (
        [id] BIGINT IDENTITY(1,1) NOT NULL,
        [unite_id] BIGINT NULL,
        [conditionnement_id] BIGINT NULL,
        [produit_id] BIGINT NULL,
        [famille_id] BIGINT NULL,
        [achat_id] BIGINT NULL,
        [dateExpiration] NVARCHAR(191) NULL,
        [quantile] NVARCHAR(191) NULL,
        [created_at] DATETIME2 NULL,
        [updated_at] DATETIME2 NULL
        , CONSTRAINT [PK_article_necessaires] PRIMARY KEY ([id])
    );
END
GO
IF OBJECT_ID(N'[article_vendus]', N'U') IS NULL
BEGIN
    CREATE TABLE [article_vendus] (
        [id] BIGINT IDENTITY(1,1) NOT NULL,
        [unites_id] BIGINT NULL,
        [type_conditionnements_id] BIGINT NULL,
        [produits_id] BIGINT NULL,
        [familles_id] BIGINT NULL,
        [ventes_id] BIGINT NULL,
        [dateExpiration] NVARCHAR(191) NULL,
        [quantite] NVARCHAR(191) NULL,
        [prixUnitaire] NVARCHAR(191) NULL,
        [created_at] DATETIME2 NULL,
        [updated_at] DATETIME2 NULL
        , CONSTRAINT [PK_article_vendus] PRIMARY KEY ([id])
    );
END
GO
IF OBJECT_ID(N'[banques]', N'U') IS NULL
BEGIN
    CREATE TABLE [banques] (
        [id] BIGINT IDENTITY(1,1) NOT NULL,
        [banque_id] BIGINT NULL,
        [nom] NVARCHAR(191) NULL,
        [sigle] NVARCHAR(191) NULL,
        [code] NVARCHAR(191) NULL,
        [adresse] NVARCHAR(191) NULL,
        [created_at] DATETIME2 NULL,
        [updated_at] DATETIME2 NULL
        , CONSTRAINT [PK_banques] PRIMARY KEY ([id])
    );
END
GO
IF OBJECT_ID(N'[banque_sangs]', N'U') IS NULL
BEGIN
    CREATE TABLE [banque_sangs] (
        [id] BIGINT IDENTITY(1,1) NOT NULL,
        [groupe_sanguin] NVARCHAR(191) NULL,
        [sacs_restant] INT NULL,
        [created_at] DATETIME2 NULL,
        [updated_at] DATETIME2 NULL
        , CONSTRAINT [PK_banque_sangs] PRIMARY KEY ([id])
    );
END
GO
IF OBJECT_ID(N'[barcodes]', N'U') IS NULL
BEGIN
    CREATE TABLE [barcodes] (
        [id] INT IDENTITY(1,1) NOT NULL,
        [name] NVARCHAR(191) NULL,
        [description] NVARCHAR(MAX) NULL,
        [width] FLOAT NULL,
        [height] FLOAT NULL,
        [paper_width] FLOAT NULL,
        [paper_height] FLOAT NULL,
        [top_margin] FLOAT NULL,
        [left_margin] FLOAT NULL,
        [row_distance] FLOAT NULL,
        [col_distance] FLOAT NULL,
        [stickers_in_one_row] INT NULL,
        [is_default] BIT NULL,
        [is_continuous] BIT NULL,
        [stickers_in_one_sheet] INT NULL,
        [business_id] INT NULL,
        [created_at] DATETIME2 NULL,
        [updated_at] DATETIME2 NULL
        , CONSTRAINT [PK_barcodes] PRIMARY KEY ([id])
    );
END
GO
IF OBJECT_ID(N'[beneficiaires]', N'U') IS NULL
BEGIN
    CREATE TABLE [beneficiaires] (
        [id] BIGINT IDENTITY(1,1) NOT NULL,
        [fournisseur_id] BIGINT NULL,
        [personnel_id] BIGINT NULL,
        [tierce_id] BIGINT NULL,
        [nom] NVARCHAR(191) NULL,
        [type] NVARCHAR(191) NULL,
        [created_by] NVARCHAR(191) NULL,
        [updated_by] NVARCHAR(191) NULL,
        [created_at] DATETIME2 NULL,
        [updated_at] DATETIME2 NULL
        , CONSTRAINT [PK_beneficiaires] PRIMARY KEY ([id])
    );
END
GO
IF OBJECT_ID(N'[besoins]', N'U') IS NULL
BEGIN
    CREATE TABLE [besoins] (
        [id] BIGINT IDENTITY(1,1) NOT NULL,
        [code] NVARCHAR(191) NULL,
        [référence] NVARCHAR(191) NULL,
        [emetteur] NVARCHAR(191) NULL,
        [motif] NVARCHAR(191) NULL,
        [commentaire] NVARCHAR(191) NULL,
        [coutTotal] NVARCHAR(191) NULL,
        [created_at] DATETIME2 NULL,
        [updated_at] DATETIME2 NULL
        , CONSTRAINT [PK_besoins] PRIMARY KEY ([id])
    );
END
GO
IF OBJECT_ID(N'[bon_cmd_adms]', N'U') IS NULL
BEGIN
    CREATE TABLE [bon_cmd_adms] (
        [id] BIGINT IDENTITY(1,1) NOT NULL,
        [beneficiaire_id] BIGINT NULL,
        [imputation_id] BIGINT NULL,
        [numBCA] NVARCHAR(191) NULL,
        [objet] NVARCHAR(191) NULL,
        [duree] NVARCHAR(191) NULL,
        [montantHT] NVARCHAR(191) NULL,
        [tauxTVA] NVARCHAR(191) NULL,
        [tauxIR] NVARCHAR(191) NULL,
        [fraisGestion] NVARCHAR(191) NULL,
        [dta] NVARCHAR(191) NULL,
        [reduction] NVARCHAR(191) NULL,
        [etat] NVARCHAR(50) NULL,
        [desactiver] BIT NULL,
        [created_by] NVARCHAR(191) NULL,
        [updated_by] NVARCHAR(191) NULL,
        [created_at] DATETIME2 NULL,
        [updated_at] DATETIME2 NULL
        , CONSTRAINT [PK_bon_cmd_adms] PRIMARY KEY ([id])
    );
END
GO
IF OBJECT_ID(N'[bon_prise_en_charges]', N'U') IS NULL
BEGIN
    CREATE TABLE [bon_prise_en_charges] (
        [id] BIGINT IDENTITY(1,1) NOT NULL,
        [code] NVARCHAR(191) NULL,
        [fournisseur_id] BIGINT NULL,
        [type_compte_id] BIGINT NULL,
        [patient_id] BIGINT NULL,
        [created_at] DATETIME2 NULL,
        [updated_at] DATETIME2 NULL
        , CONSTRAINT [PK_bon_prise_en_charges] PRIMARY KEY ([id])
    );
END
GO
IF OBJECT_ID(N'[bon_sortie_consomptibles]', N'U') IS NULL
BEGIN
    CREATE TABLE [bon_sortie_consomptibles] (
        [id] BIGINT IDENTITY(1,1) NOT NULL,
        [exercice_budgetaire_id] BIGINT NULL,
        [service_id] BIGINT NULL,
        [unite_id] BIGINT NULL,
        [type_conditionnement_id] BIGINT NULL,
        [produit_id] BIGINT NULL,
        [famille_id] BIGINT NULL,
        [ordre_entree_id] BIGINT NULL,
        [quantiteDemance] NVARCHAR(191) NULL,
        [quantiteservie] NVARCHAR(191) NULL,
        [dateComptable] NVARCHAR(191) NULL,
        [created_at] DATETIME2 NULL,
        [updated_at] DATETIME2 NULL
        , CONSTRAINT [PK_bon_sortie_consomptibles] PRIMARY KEY ([id])
    );
END
GO
IF OBJECT_ID(N'[brands]', N'U') IS NULL
BEGIN
    CREATE TABLE [brands] (
        [id] INT IDENTITY(1,1) NOT NULL,
        [name] NVARCHAR(191) NULL,
        [description] NVARCHAR(MAX) NULL,
        [created_by] BIGINT NULL,
        [updated_by] BIGINT NULL,
        [deleted_at] DATETIME2 NULL,
        [created_at] DATETIME2 NULL,
        [updated_at] DATETIME2 NULL,
        [business_id] INT NULL
        , CONSTRAINT [PK_brands] PRIMARY KEY ([id])
    );
END
GO
IF OBJECT_ID(N'[budgets]', N'U') IS NULL
BEGIN
    CREATE TABLE [budgets] (
        [id] BIGINT IDENTITY(1,1) NOT NULL,
        [sous_programme_id] BIGINT NULL,
        [activite_id] BIGINT NULL,
        [tache_id] BIGINT NULL,
        [exercice_budgetaire_id] BIGINT NULL,
        [destinataire_id] BIGINT NULL,
        [source_financement_id] BIGINT NULL,
        [nature_eco_id] BIGINT NULL,
        [ae] NVARCHAR(191) NULL,
        [cp] NVARCHAR(191) NULL,
        [ae1] NVARCHAR(191) NULL,
        [ae2] NVARCHAR(191) NULL,
        [cp1] NVARCHAR(191) NULL,
        [cp2] NVARCHAR(191) NULL,
        [desactiver] BIT NULL,
        [created_by] NVARCHAR(191) NULL,
        [updated_by] NVARCHAR(191) NULL,
        [created_at] DATETIME2 NULL,
        [updated_at] DATETIME2 NULL
        , CONSTRAINT [PK_budgets] PRIMARY KEY ([id])
    );
END
GO
IF OBJECT_ID(N'[bulletin_examens]', N'U') IS NULL
BEGIN
    CREATE TABLE [bulletin_examens] (
        [id] BIGINT IDENTITY(1,1) NOT NULL,
        [patient_id] BIGINT NULL,
        [consultation_id] BIGINT NULL,
        [personnel_id] BIGINT NULL,
        [code_bulletin] NVARCHAR(191) NULL,
        [statut] NVARCHAR(191) NULL,
        [observations] NVARCHAR(MAX) NULL,
        [updated_by] INT NULL,
        [created_by] INT NULL,
        [created_at] DATETIME2 NULL,
        [updated_at] DATETIME2 NULL
        , CONSTRAINT [PK_bulletin_examens] PRIMARY KEY ([id])
    );
END
GO
IF OBJECT_ID(N'[bulletin_examen_examen]', N'U') IS NULL
BEGIN
    CREATE TABLE [bulletin_examen_examen] (
        [id] BIGINT IDENTITY(1,1) NOT NULL,
        [bulletin_examen_id] BIGINT NULL,
        [examen_id] BIGINT NULL,
        [created_at] DATETIME2 NULL,
        [updated_at] DATETIME2 NULL
        , CONSTRAINT [PK_bulletin_examen_examen] PRIMARY KEY ([id])
    );
END
GO
IF OBJECT_ID(N'[bulletin_prescrits]', N'U') IS NULL
BEGIN
    CREATE TABLE [bulletin_prescrits] (
        [id] BIGINT IDENTITY(1,1) NOT NULL,
        [bulletin_examen_id] BIGINT NULL,
        [examen_id] BIGINT NULL,
        [code_bulletin_prescrit] NVARCHAR(191) NULL,
        [created_at] DATETIME2 NULL,
        [updated_at] DATETIME2 NULL
        , CONSTRAINT [PK_bulletin_prescrits] PRIMARY KEY ([id])
    );
END
GO
IF OBJECT_ID(N'[bulletin_servies]', N'U') IS NULL
BEGIN
    CREATE TABLE [bulletin_servies] (
        [id] BIGINT IDENTITY(1,1) NOT NULL,
        [ordonnance_id] BIGINT NULL,
        [examen_id] BIGINT NULL,
        [code_bulletin] NVARCHAR(191) NULL,
        [updated_by] INT NULL,
        [created_by] INT NULL,
        [created_at] DATETIME2 NULL,
        [updated_at] DATETIME2 NULL,
        [bulletin_examen_id] BIGINT NULL,
        [patient_id] BIGINT NULL
        , CONSTRAINT [PK_bulletin_servies] PRIMARY KEY ([id])
    );
END
GO
IF OBJECT_ID(N'[bulletin_servie_examen]', N'U') IS NULL
BEGIN
    CREATE TABLE [bulletin_servie_examen] (
        [id] BIGINT IDENTITY(1,1) NOT NULL,
        [bulletin_servie_id] BIGINT NULL,
        [examen_id] BIGINT NULL,
        [created_at] DATETIME2 NULL,
        [updated_at] DATETIME2 NULL
        , CONSTRAINT [PK_bulletin_servie_examen] PRIMARY KEY ([id])
    );
END
GO
IF OBJECT_ID(N'[business]', N'U') IS NULL
BEGIN
    CREATE TABLE [business] (
        [id] INT IDENTITY(1,1) NOT NULL,
        [name] NVARCHAR(191) NULL,
        [currency_id] BIGINT NULL,
        [start_date] DATE NULL,
        [tax_number_1] NVARCHAR(100) NULL,
        [tax_label_1] NVARCHAR(10) NULL,
        [tax_number_2] NVARCHAR(100) NULL,
        [tax_label_2] NVARCHAR(10) NULL,
        [code_label_1] NVARCHAR(191) NULL,
        [code_1] NVARCHAR(191) NULL,
        [code_label_2] NVARCHAR(191) NULL,
        [code_2] NVARCHAR(191) NULL,
        [default_sales_tax] INT NULL,
        [default_profit_percent] FLOAT NULL,
        [owner_id] BIGINT NULL,
        [time_zone] NVARCHAR(191) NULL,
        [fy_start_month] TINYINT NULL,
        [accounting_method] NVARCHAR(50) NULL,
        [default_sales_discount] DECIMAL(18,2) NULL,
        [sell_price_tax] NVARCHAR(50) NULL,
        [logo] NVARCHAR(191) NULL,
        [sku_prefix] NVARCHAR(191) NULL,
        [enable_product_expiry] BIT NULL,
        [expiry_type] NVARCHAR(50) NULL,
        [on_product_expiry] NVARCHAR(50) NULL,
        [stop_selling_before] INT NULL,
        [enable_tooltip] BIT NULL,
        [purchase_in_diff_currency] BIT NULL,
        [purchase_currency_id] INT NULL,
        [p_exchange_rate] DECIMAL(18,2) NULL,
        [transaction_edit_days] INT NULL,
        [stock_expiry_alert_days] INT NULL,
        [keyboard_shortcuts] NVARCHAR(MAX) NULL,
        [pos_settings] NVARCHAR(MAX) NULL,
        [weighing_scale_setting] NVARCHAR(MAX) NULL,
        [enable_brand] BIT NULL,
        [enable_category] BIT NULL,
        [enable_sub_category] BIT NULL,
        [enable_price_tax] BIT NULL,
        [enable_purchase_status] BIT NULL,
        [enable_lot_number] BIT NULL,
        [default_unit] INT NULL,
        [enable_sub_units] BIT NULL,
        [enable_racks] BIT NULL,
        [enable_row] BIT NULL,
        [enable_position] BIT NULL,
        [enable_editing_product_from_purchase] BIT NULL,
        [sales_cmsn_agnt] NVARCHAR(50) NULL,
        [item_addition_method] BIT NULL,
        [enable_inline_tax] BIT NULL,
        [currency_symbol_placement] NVARCHAR(50) NULL,
        [enabled_modules] NVARCHAR(MAX) NULL,
        [enabled_client_modules] NVARCHAR(MAX) NULL,
        [date_format] NVARCHAR(191) NULL,
        [time_format] NVARCHAR(50) NULL,
        [currency_precision] TINYINT NULL,
        [quantity_precision] TINYINT NULL,
        [ref_no_prefixes] NVARCHAR(MAX) NULL,
        [theme_color] NCHAR(20) NULL,
        [created_by] INT NULL,
        [enable_rp] BIT NULL,
        [rp_name] NVARCHAR(191) NULL,
        [amount_for_unit_rp] DECIMAL(18,2) NULL,
        [min_order_total_for_rp] DECIMAL(18,2) NULL,
        [max_rp_per_order] INT NULL,
        [redeem_amount_per_unit_rp] DECIMAL(18,2) NULL,
        [min_order_total_for_redeem] DECIMAL(18,2) NULL,
        [min_redeem_point] INT NULL,
        [max_redeem_point] INT NULL,
        [rp_expiry_period] INT NULL,
        [rp_expiry_type] NVARCHAR(50) NULL,
        [invoice_mode] NVARCHAR(50) NULL,
        [email_settings] NVARCHAR(MAX) NULL,
        [sms_settings] NVARCHAR(MAX) NULL,
        [custom_labels] NVARCHAR(MAX) NULL,
        [common_settings] NVARCHAR(MAX) NULL,
        [is_active] BIT NULL,
        [created_at] DATETIME2 NULL,
        [updated_at] DATETIME2 NULL,
        [validity_period_session_ticket_consultation] INT NULL,
        [validity_period_session_ticket_chirugie] INT NULL,
        [validity_period_session_ticket_laboratoire] INT NULL,
        [validity_period_session_ticket_hospitalisation] INT NULL
        , CONSTRAINT [PK_business] PRIMARY KEY ([id])
    );
END
GO
IF OBJECT_ID(N'[business_locations]', N'U') IS NULL
BEGIN
    CREATE TABLE [business_locations] (
        [id] INT IDENTITY(1,1) NOT NULL,
        [business_id] INT NULL,
        [location_id] NVARCHAR(191) NULL,
        [name] NVARCHAR(256) NULL,
        [landmark] NVARCHAR(MAX) NULL,
        [country] NVARCHAR(100) NULL,
        [state] NVARCHAR(100) NULL,
        [city] NVARCHAR(100) NULL,
        [zip_code] NCHAR(7) NULL,
        [invoice_scheme_id] BIGINT NULL,
        [sale_invoice_scheme_id] INT NULL,
        [invoice_layout_id] BIGINT NULL,
        [sale_invoice_layout_id] INT NULL,
        [selling_price_group_id] INT NULL,
        [print_receipt_on_invoice] BIT NULL,
        [receipt_printer_type] NVARCHAR(50) NULL,
        [printer_id] INT NULL,
        [mobile] NVARCHAR(191) NULL,
        [alternate_number] NVARCHAR(191) NULL,
        [email] NVARCHAR(191) NULL,
        [website] NVARCHAR(191) NULL,
        [featured_products] NVARCHAR(MAX) NULL,
        [is_active] BIT NULL,
        [default_payment_accounts] NVARCHAR(MAX) NULL,
        [custom_field1] NVARCHAR(191) NULL,
        [custom_field2] NVARCHAR(191) NULL,
        [custom_field3] NVARCHAR(191) NULL,
        [custom_field4] NVARCHAR(191) NULL,
        [deleted_at] DATETIME2 NULL,
        [created_at] DATETIME2 NULL,
        [updated_at] DATETIME2 NULL
        , CONSTRAINT [PK_business_locations] PRIMARY KEY ([id])
    );
END
GO
IF OBJECT_ID(N'[business_location_product_information]', N'U') IS NULL
BEGIN
    CREATE TABLE [business_location_product_information] (
        [id] BIGINT IDENTITY(1,1) NOT NULL,
        [product_id] BIGINT NULL,
        [location_id] BIGINT NULL,
        [quantity] INT NULL
        , CONSTRAINT [PK_business_location_product_information] PRIMARY KEY ([id])
    );
END
GO
IF OBJECT_ID(N'[cahier_disciplines]', N'U') IS NULL
BEGIN
    CREATE TABLE [cahier_disciplines] (
        [id] BIGINT IDENTITY(1,1) NOT NULL,
        [eleve_id] BIGINT NULL,
        [motif] NVARCHAR(191) NULL,
        [sension] NVARCHAR(191) NULL,
        [dateFait] NVARCHAR(191) NULL,
        [created_at] DATETIME2 NULL,
        [updated_at] DATETIME2 NULL
        , CONSTRAINT [PK_cahier_disciplines] PRIMARY KEY ([id])
    );
END
GO
IF OBJECT_ID(N'[caisses]', N'U') IS NULL
BEGIN
    CREATE TABLE [caisses] (
        [id] BIGINT IDENTITY(1,1) NOT NULL,
        [personnel_id] BIGINT NULL,
        [intitule] NVARCHAR(191) NULL,
        [sigle] NVARCHAR(191) NULL,
        [adresse] NVARCHAR(191) NULL,
        [details] NVARCHAR(191) NULL,
        [created_at] DATETIME2 NULL,
        [updated_at] DATETIME2 NULL
        , CONSTRAINT [PK_caisses] PRIMARY KEY ([id])
    );
END
GO
IF OBJECT_ID(N'[caisse_transactions]', N'U') IS NULL
BEGIN
    CREATE TABLE [caisse_transactions] (
        [id] BIGINT IDENTITY(1,1) NOT NULL,
        [caisse_id] BIGINT NULL,
        [vente_id] BIGINT NULL,
        [montant] DECIMAL(18,2) NULL,
        [type] NVARCHAR(191) NULL,
        [type_transaction] NVARCHAR(191) NULL,
        [payment_status] NVARCHAR(191) NULL,
        [created_by] NVARCHAR(191) NULL,
        [updated_by] NVARCHAR(191) NULL,
        [created_at] DATETIME2 NULL,
        [updated_at] DATETIME2 NULL
        , CONSTRAINT [PK_caisse_transactions] PRIMARY KEY ([id])
    );
END
GO
IF OBJECT_ID(N'[carrieres]', N'U') IS NULL
BEGIN
    CREATE TABLE [carrieres] (
        [id] BIGINT IDENTITY(1,1) NOT NULL,
        [categorie_id] BIGINT NULL,
        [echellon_id] BIGINT NULL,
        [personnel_id] BIGINT NULL,
        [dateEffet] NVARCHAR(191) NULL,
        [numReference] NVARCHAR(191) NULL,
        [dateSignature] NVARCHAR(191) NULL,
        [signataire] NVARCHAR(191) NULL,
        [created_at] DATETIME2 NULL,
        [updated_at] DATETIME2 NULL
        , CONSTRAINT [PK_carrieres] PRIMARY KEY ([id])
    );
END
GO
IF OBJECT_ID(N'[cash_denominations]', N'U') IS NULL
BEGIN
    CREATE TABLE [cash_denominations] (
        [id] BIGINT IDENTITY(1,1) NOT NULL,
        [business_id] INT NULL,
        [amount] DECIMAL(18,2) NULL,
        [total_count] INT NULL,
        [model_type] NVARCHAR(191) NULL,
        [model_id] BIGINT NULL,
        [created_at] DATETIME2 NULL,
        [updated_at] DATETIME2 NULL
        , CONSTRAINT [PK_cash_denominations] PRIMARY KEY ([id])
    );
END
GO
IF OBJECT_ID(N'[cash_registers]', N'U') IS NULL
BEGIN
    CREATE TABLE [cash_registers] (
        [id] INT IDENTITY(1,1) NOT NULL,
        [business_id] INT NULL,
        [location_id] INT NULL,
        [user_id] BIGINT NULL,
        [status] NVARCHAR(50) NULL,
        [closed_at] DATETIME2 NULL,
        [closing_amount] DECIMAL(18,2) NULL,
        [total_card_slips] INT NULL,
        [total_cheques] INT NULL,
        [denominations] NVARCHAR(MAX) NULL,
        [closing_note] NVARCHAR(MAX) NULL,
        [created_at] DATETIME2 NULL,
        [updated_at] DATETIME2 NULL
        , CONSTRAINT [PK_cash_registers] PRIMARY KEY ([id])
    );
END
GO
IF OBJECT_ID(N'[cash_register_transactions]', N'U') IS NULL
BEGIN
    CREATE TABLE [cash_register_transactions] (
        [id] INT IDENTITY(1,1) NOT NULL,
        [cash_register_id] INT NULL,
        [amount] DECIMAL(18,2) NULL,
        [pay_method] NVARCHAR(191) NULL,
        [type] NVARCHAR(50) NULL,
        [transaction_type] NVARCHAR(191) NULL,
        [transaction_id] INT NULL,
        [created_at] DATETIME2 NULL,
        [updated_at] DATETIME2 NULL
        , CONSTRAINT [PK_cash_register_transactions] PRIMARY KEY ([id])
    );
END
GO
IF OBJECT_ID(N'[categories]', N'U') IS NULL
BEGIN
    CREATE TABLE [categories] (
        [id] BIGINT IDENTITY(1,1) NOT NULL,
        [name] NVARCHAR(191) NULL,
        [business_id] INT NULL,
        [short_code] NVARCHAR(191) NULL,
        [parent_id] INT NULL,
        [created_by] BIGINT NULL,
        [category_type] NVARCHAR(191) NULL,
        [description] NVARCHAR(MAX) NULL,
        [slug] NVARCHAR(191) NULL,
        [deleted_at] DATETIME2 NULL,
        [created_at] DATETIME2 NULL,
        [updated_at] DATETIME2 NULL
        , CONSTRAINT [PK_categories] PRIMARY KEY ([id])
    );
END
GO
IF OBJECT_ID(N'[categories_salles]', N'U') IS NULL
BEGIN
    CREATE TABLE [categories_salles] (
        [id] BIGINT IDENTITY(1,1) NOT NULL,
        [nom] NVARCHAR(191) NULL,
        [code] NVARCHAR(10) NULL,
        [description] NVARCHAR(MAX) NULL,
        [couleur] NVARCHAR(7) NULL,
        [actif] BIT NULL,
        [created_at] DATETIME2 NULL,
        [updated_at] DATETIME2 NULL
        , CONSTRAINT [PK_categories_salles] PRIMARY KEY ([id])
    );
END
GO
IF OBJECT_ID(N'[categorie_comptables]', N'U') IS NULL
BEGIN
    CREATE TABLE [categorie_comptables] (
        [id] BIGINT IDENTITY(1,1) NOT NULL,
        [code] NVARCHAR(191) NULL,
        [intitule] NVARCHAR(191) NULL,
        [type] NVARCHAR(191) NULL,
        [created_at] DATETIME2 NULL,
        [updated_at] DATETIME2 NULL
        , CONSTRAINT [PK_categorie_comptables] PRIMARY KEY ([id])
    );
END
GO
IF OBJECT_ID(N'[categorie_examens]', N'U') IS NULL
BEGIN
    CREATE TABLE [categorie_examens] (
        [id] BIGINT IDENTITY(1,1) NOT NULL,
        [code_categorie] NVARCHAR(50) NULL,
        [libelle] NVARCHAR(100) NULL,
        [description] NVARCHAR(MAX) NULL,
        [created_at] DATETIME2 NULL,
        [updated_at] DATETIME2 NULL
        , CONSTRAINT [PK_categorie_examens] PRIMARY KEY ([id])
    );
END
GO
IF OBJECT_ID(N'[categorie_products]', N'U') IS NULL
BEGIN
    CREATE TABLE [categorie_products] (
        [id] INT IDENTITY(1,1) NOT NULL,
        [name] NVARCHAR(191) NULL,
        [business_id] INT NULL,
        [short_code] NVARCHAR(191) NULL,
        [parent_id] INT NULL,
        [created_by] BIGINT NULL,
        [category_type] NVARCHAR(191) NULL,
        [description] NVARCHAR(MAX) NULL,
        [slug] NVARCHAR(191) NULL,
        [deleted_at] DATETIME2 NULL,
        [created_at] DATETIME2 NULL,
        [updated_at] DATETIME2 NULL
        , CONSTRAINT [PK_categorie_products] PRIMARY KEY ([id])
    );
END
GO
IF OBJECT_ID(N'[categorie_salles]', N'U') IS NULL
BEGIN
    CREATE TABLE [categorie_salles] (
        [id] BIGINT IDENTITY(1,1) NOT NULL,
        [name] NVARCHAR(191) NULL,
        [created_at] DATETIME2 NULL,
        [updated_at] DATETIME2 NULL
        , CONSTRAINT [PK_categorie_salles] PRIMARY KEY ([id])
    );
END
GO
IF OBJECT_ID(N'[certificats]', N'U') IS NULL
BEGIN
    CREATE TABLE [certificats] (
        [id] BIGINT IDENTITY(1,1) NOT NULL,
        [dateDelivrance] NVARCHAR(191) NULL,
        [created_at] DATETIME2 NULL,
        [updated_at] DATETIME2 NULL
        , CONSTRAINT [PK_certificats] PRIMARY KEY ([id])
    );
END
GO
IF OBJECT_ID(N'[chapitres]', N'U') IS NULL
BEGIN
    CREATE TABLE [chapitres] (
        [id] BIGINT IDENTITY(1,1) NOT NULL,
        [code] NVARCHAR(50) NULL,
        [libelle] NVARCHAR(50) NULL,
        [created_at] DATETIME2 NULL,
        [updated_at] DATETIME2 NULL
        , CONSTRAINT [PK_chapitres] PRIMARY KEY ([id])
    );
END
GO
IF OBJECT_ID(N'[class_scolaires]', N'U') IS NULL
BEGIN
    CREATE TABLE [class_scolaires] (
        [id] BIGINT IDENTITY(1,1) NOT NULL,
        [intitule] NVARCHAR(191) NULL,
        [created_at] DATETIME2 NULL,
        [updated_at] DATETIME2 NULL
        , CONSTRAINT [PK_class_scolaires] PRIMARY KEY ([id])
    );
END
GO
IF OBJECT_ID(N'[clients]', N'U') IS NULL
BEGIN
    CREATE TABLE [clients] (
        [id] BIGINT IDENTITY(1,1) NOT NULL,
        [user_id] BIGINT NULL,
        [depot_id] BIGINT NULL,
        [plan_comptable_id] BIGINT NULL,
        [patient_id] BIGINT NULL,
        [business_id] INT NULL,
        [code] NVARCHAR(191) NULL,
        [compte_collectif] NVARCHAR(191) NULL,
        [qualite] NVARCHAR(191) NULL,
        [en_cours_max] NVARCHAR(191) NULL,
        [n_Contribuable] NVARCHAR(191) NULL,
        [updated_by] INT NULL,
        [created_by] INT NULL,
        [created_at] DATETIME2 NULL,
        [updated_at] DATETIME2 NULL
        , CONSTRAINT [PK_clients] PRIMARY KEY ([id])
    );
END
GO
IF OBJECT_ID(N'[code_actions]', N'U') IS NULL
BEGIN
    CREATE TABLE [code_actions] (
        [id] BIGINT IDENTITY(1,1) NOT NULL,
        [code] NVARCHAR(191) NULL,
        [created_at] DATETIME2 NULL,
        [updated_at] DATETIME2 NULL
        , CONSTRAINT [PK_code_actions] PRIMARY KEY ([id])
    );
END
GO
IF OBJECT_ID(N'[code_activites]', N'U') IS NULL
BEGIN
    CREATE TABLE [code_activites] (
        [id] BIGINT IDENTITY(1,1) NOT NULL,
        [code] NVARCHAR(191) NULL,
        [created_at] DATETIME2 NULL,
        [updated_at] DATETIME2 NULL
        , CONSTRAINT [PK_code_activites] PRIMARY KEY ([id])
    );
END
GO
IF OBJECT_ID(N'[code_journals]', N'U') IS NULL
BEGIN
    CREATE TABLE [code_journals] (
        [id] BIGINT IDENTITY(1,1) NOT NULL,
        [vente_id] BIGINT NULL,
        [code] NVARCHAR(191) NULL,
        [type] NVARCHAR(191) NULL,
        [intitule] NVARCHAR(191) NULL,
        [numeroPiece] NVARCHAR(191) NULL,
        [compteTresorerie] NVARCHAR(191) NULL,
        [rapprochement] NVARCHAR(191) NULL,
        [created_at] DATETIME2 NULL,
        [updated_at] DATETIME2 NULL
        , CONSTRAINT [PK_code_journals] PRIMARY KEY ([id])
    );
END
GO
IF OBJECT_ID(N'[code_s_programmes]', N'U') IS NULL
BEGIN
    CREATE TABLE [code_s_programmes] (
        [id] BIGINT IDENTITY(1,1) NOT NULL,
        [code] NVARCHAR(191) NULL,
        [created_at] DATETIME2 NULL,
        [updated_at] DATETIME2 NULL
        , CONSTRAINT [PK_code_s_programmes] PRIMARY KEY ([id])
    );
END
GO
IF OBJECT_ID(N'[code_taches]', N'U') IS NULL
BEGIN
    CREATE TABLE [code_taches] (
        [id] BIGINT IDENTITY(1,1) NOT NULL,
        [code] NVARCHAR(191) NULL,
        [created_at] DATETIME2 NULL,
        [updated_at] DATETIME2 NULL
        , CONSTRAINT [PK_code_taches] PRIMARY KEY ([id])
    );
END
GO
IF OBJECT_ID(N'[commandes]', N'U') IS NULL
BEGIN
    CREATE TABLE [commandes] (
        [id] BIGINT IDENTITY(1,1) NOT NULL,
        [type] NVARCHAR(191) NULL,
        [code] NVARCHAR(191) NULL,
        [nom] NVARCHAR(191) NULL,
        [marque] NVARCHAR(191) NULL,
        [dure] INT NULL,
        [patient] NVARCHAR(191) NULL,
        [medecin] NVARCHAR(191) NULL,
        [fonction] NVARCHAR(191) NULL,
        [qualification] NVARCHAR(191) NULL,
        [tel] INT NULL,
        [formation] NVARCHAR(191) NULL,
        [taille] INT NULL,
        [date] DATE NULL,
        [date_jour] DATE NULL,
        [detail] NVARCHAR(191) NULL,
        [paye] BIT NULL,
        [execute] BIT NULL,
        [created_at] DATETIME2 NULL,
        [updated_at] DATETIME2 NULL
        , CONSTRAINT [PK_commandes] PRIMARY KEY ([id])
    );
END
GO
IF OBJECT_ID(N'[comptes]', N'U') IS NULL
BEGIN
    CREATE TABLE [comptes] (
        [id] BIGINT IDENTITY(1,1) NOT NULL,
        [agence_id] BIGINT NULL,
        [numero] NVARCHAR(191) NULL,
        [cle] NVARCHAR(191) NULL,
        [nature] NVARCHAR(191) NULL,
        [created_at] DATETIME2 NULL,
        [updated_at] DATETIME2 NULL
        , CONSTRAINT [PK_comptes] PRIMARY KEY ([id])
    );
END
GO
IF OBJECT_ID(N'[conditionnements]', N'U') IS NULL
BEGIN
    CREATE TABLE [conditionnements] (
        [id] BIGINT IDENTITY(1,1) NOT NULL,
        [unites_id] BIGINT NULL,
        [type_conditionnements_id] BIGINT NULL,
        [code] NVARCHAR(191) NULL,
        [created_at] DATETIME2 NULL,
        [updated_at] DATETIME2 NULL
        , CONSTRAINT [PK_conditionnements] PRIMARY KEY ([id])
    );
END
GO
IF OBJECT_ID(N'[constante_vitales]', N'U') IS NULL
BEGIN
    CREATE TABLE [constante_vitales] (
        [id] BIGINT IDENTITY(1,1) NOT NULL,
        [patient_id] BIGINT NULL,
        [user_id] BIGINT NULL,
        [poids] NVARCHAR(191) NULL,
        [taille] NVARCHAR(191) NULL,
        [imc] NVARCHAR(191) NULL,
        [poul] NVARCHAR(191) NULL,
        [temperature] NVARCHAR(191) NULL,
        [frequence_cardiaque] NVARCHAR(191) NULL,
        [pression_arterielle] NVARCHAR(191) NULL,
        [date] DATETIME2 NULL,
        [created_at] DATETIME2 NULL,
        [updated_at] DATETIME2 NULL
        , CONSTRAINT [PK_constante_vitales] PRIMARY KEY ([id])
    );
END
GO
IF OBJECT_ID(N'[consultations]', N'U') IS NULL
BEGIN
    CREATE TABLE [consultations] (
        [id] BIGINT IDENTITY(1,1) NOT NULL,
        [business_id] INT NULL,
        [location_id] INT NULL,
        [vente_id] BIGINT NULL,
        [patient_id] BIGINT NULL,
        [personnel_id] BIGINT NULL,
        [session_ticket_id] BIGINT NULL,
        [acte_medical_id] BIGINT NULL,
        [service_id] BIGINT NULL,
        [code] NVARCHAR(191) NULL,
        [date_consultation] DATETIME2 NULL,
        [diagnostic_initial] NVARCHAR(MAX) NULL,
        [traitement_initial] NVARCHAR(MAX) NULL,
        [diagnostic_confirmation] NVARCHAR(MAX) NULL,
        [traitemens] NVARCHAR(MAX) NULL,
        [conclusion] NVARCHAR(MAX) NULL,
        [commentaire] NVARCHAR(MAX) NULL,
        [status] NVARCHAR(191) NULL,
        [reference] NVARCHAR(50) NULL,
        [prise_en_charge] NVARCHAR(50) NULL,
        [motif_consultation] NVARCHAR(MAX) NULL,
        [antecedents] NVARCHAR(MAX) NULL,
        [sons_anormaux] NVARCHAR(MAX) NULL,
        [reflexes] NVARCHAR(MAX) NULL,
        [tonus_musculaire] NVARCHAR(MAX) NULL,
        [equilibre] NVARCHAR(MAX) NULL,
        [apparence] NVARCHAR(MAX) NULL,
        [etat_cutane] NVARCHAR(MAX) NULL,
        [ganglions] NVARCHAR(MAX) NULL,
        [douleur] NVARCHAR(MAX) NULL,
        [bruits_cardiaques] NVARCHAR(MAX) NULL,
        [bruits_pulmonaires] NVARCHAR(MAX) NULL,
        [updated_by] INT NULL,
        [created_by] INT NULL,
        [created_at] DATETIME2 NULL,
        [updated_at] DATETIME2 NULL,
        [observation] NVARCHAR(191) NULL
        , CONSTRAINT [PK_consultations] PRIMARY KEY ([id])
    );
END
GO
IF OBJECT_ID(N'[consultation_diagnostics]', N'U') IS NULL
BEGIN
    CREATE TABLE [consultation_diagnostics] (
        [id] BIGINT IDENTITY(1,1) NOT NULL,
        [consultation_id] BIGINT NULL,
        [type] NVARCHAR(50) NULL,
        [description] NVARCHAR(MAX) NULL,
        [icd10_code] NVARCHAR(191) NULL,
        [created_at] DATETIME2 NULL,
        [updated_at] DATETIME2 NULL
        , CONSTRAINT [PK_consultation_diagnostics] PRIMARY KEY ([id])
    );
END
GO
IF OBJECT_ID(N'[consultation_documents]', N'U') IS NULL
BEGIN
    CREATE TABLE [consultation_documents] (
        [id] BIGINT IDENTITY(1,1) NOT NULL,
        [consultation_id] BIGINT NULL,
        [type] NVARCHAR(191) NULL,
        [path] NVARCHAR(191) NULL,
        [original_name] NVARCHAR(191) NULL,
        [created_at] DATETIME2 NULL,
        [updated_at] DATETIME2 NULL
        , CONSTRAINT [PK_consultation_documents] PRIMARY KEY ([id])
    );
END
GO
IF OBJECT_ID(N'[consultation_parametre_patients]', N'U') IS NULL
BEGIN
    CREATE TABLE [consultation_parametre_patients] (
        [id] BIGINT IDENTITY(1,1) NOT NULL,
        [consultation_id] BIGINT NULL,
        [parametre_patient_id] BIGINT NULL,
        [valeur] NVARCHAR(191) NULL,
        [created_at] DATETIME2 NULL,
        [updated_at] DATETIME2 NULL
        , CONSTRAINT [PK_consultation_parametre_patients] PRIMARY KEY ([id])
    );
END
GO
IF OBJECT_ID(N'[consultation_patient_plainte]', N'U') IS NULL
BEGIN
    CREATE TABLE [consultation_patient_plainte] (
        [id] BIGINT IDENTITY(1,1) NOT NULL,
        [consultation_id] BIGINT NULL,
        [patient_plainte_id] BIGINT NULL,
        [created_at] DATETIME2 NULL,
        [updated_at] DATETIME2 NULL
        , CONSTRAINT [PK_consultation_patient_plainte] PRIMARY KEY ([id])
    );
END
GO
IF OBJECT_ID(N'[consultation_suivis]', N'U') IS NULL
BEGIN
    CREATE TABLE [consultation_suivis] (
        [id] BIGINT IDENTITY(1,1) NOT NULL,
        [consultation_id] BIGINT NULL,
        [scheduled_for] BIGINT NULL,
        [scheduled_by] BIGINT NULL,
        [scheduled_at] DATETIME2 NULL,
        [notes] NVARCHAR(MAX) NULL,
        [status] NVARCHAR(50) NULL,
        [created_at] DATETIME2 NULL,
        [updated_at] DATETIME2 NULL
        , CONSTRAINT [PK_consultation_suivis] PRIMARY KEY ([id])
    );
END
GO
IF OBJECT_ID(N'[contacts]', N'U') IS NULL
BEGIN
    CREATE TABLE [contacts] (
        [id] INT IDENTITY(1,1) NOT NULL,
        [business_id] INT NULL,
        [type] NVARCHAR(191) NULL,
        [supplier_business_name] NVARCHAR(191) NULL,
        [name] NVARCHAR(191) NULL,
        [prefix] NVARCHAR(191) NULL,
        [first_name] NVARCHAR(191) NULL,
        [middle_name] NVARCHAR(191) NULL,
        [last_name] NVARCHAR(191) NULL,
        [email] NVARCHAR(191) NULL,
        [contact_id] NVARCHAR(191) NULL,
        [contact_status] NVARCHAR(191) NULL,
        [tax_number] NVARCHAR(191) NULL,
        [city] NVARCHAR(191) NULL,
        [state] NVARCHAR(191) NULL,
        [country] NVARCHAR(191) NULL,
        [address_line_1] NVARCHAR(MAX) NULL,
        [address_line_2] NVARCHAR(MAX) NULL,
        [zip_code] NVARCHAR(191) NULL,
        [dob] DATE NULL,
        [mobile] NVARCHAR(191) NULL,
        [landline] NVARCHAR(191) NULL,
        [alternate_number] NVARCHAR(191) NULL,
        [pay_term_number] INT NULL,
        [pay_term_type] NVARCHAR(50) NULL,
        [credit_limit] DECIMAL(18,2) NULL,
        [created_by] BIGINT NULL,
        [balance] DECIMAL(18,2) NULL,
        [total_rp] INT NULL,
        [total_rp_used] INT NULL,
        [total_rp_expired] INT NULL,
        [is_default] BIT NULL,
        [shipping_address] NVARCHAR(MAX) NULL,
        [shipping_custom_field_details] NVARCHAR(MAX) NULL,
        [is_export] BIT NULL,
        [export_custom_field_1] NVARCHAR(191) NULL,
        [export_custom_field_2] NVARCHAR(191) NULL,
        [export_custom_field_3] NVARCHAR(191) NULL,
        [export_custom_field_4] NVARCHAR(191) NULL,
        [export_custom_field_5] NVARCHAR(191) NULL,
        [export_custom_field_6] NVARCHAR(191) NULL,
        [position] NVARCHAR(191) NULL,
        [customer_group_id] INT NULL,
        [custom_field1] NVARCHAR(191) NULL,
        [custom_field2] NVARCHAR(191) NULL,
        [custom_field3] NVARCHAR(191) NULL,
        [custom_field4] NVARCHAR(191) NULL,
        [custom_field5] NVARCHAR(191) NULL,
        [custom_field6] NVARCHAR(191) NULL,
        [custom_field7] NVARCHAR(191) NULL,
        [custom_field8] NVARCHAR(191) NULL,
        [custom_field9] NVARCHAR(191) NULL,
        [custom_field10] NVARCHAR(191) NULL,
        [deleted_at] DATETIME2 NULL,
        [created_at] DATETIME2 NULL,
        [updated_at] DATETIME2 NULL
        , CONSTRAINT [PK_contacts] PRIMARY KEY ([id])
    );
END
GO
IF OBJECT_ID(N'[contrats]', N'U') IS NULL
BEGIN
    CREATE TABLE [contrats] (
        [id] BIGINT IDENTITY(1,1) NOT NULL,
        [categorie_id] BIGINT NULL,
        [echellon_id] BIGINT NULL,
        [personnel_id] BIGINT NULL,
        [referenceContrat] NVARCHAR(191) NULL,
        [typeContrat] NVARCHAR(191) NULL,
        [dateSignature] NVARCHAR(191) NULL,
        [created_at] DATETIME2 NULL,
        [updated_at] DATETIME2 NULL
        , CONSTRAINT [PK_contrats] PRIMARY KEY ([id])
    );
END
GO
IF OBJECT_ID(N'[corps_metiers]', N'U') IS NULL
BEGIN
    CREATE TABLE [corps_metiers] (
        [id] BIGINT IDENTITY(1,1) NOT NULL,
        [intitule] NVARCHAR(191) NULL,
        [details] NVARCHAR(191) NULL,
        [created_at] DATETIME2 NULL,
        [updated_at] DATETIME2 NULL
        , CONSTRAINT [PK_corps_metiers] PRIMARY KEY ([id])
    );
END
GO
IF OBJECT_ID(N'[cours]', N'U') IS NULL
BEGIN
    CREATE TABLE [cours] (
        [id] BIGINT IDENTITY(1,1) NOT NULL,
        [niveau_id] BIGINT NULL,
        [matiere_id] BIGINT NULL,
        [personnel_id] BIGINT NULL,
        [enseignant_id] BIGINT NULL,
        [class_scolaire_id] BIGINT NULL,
        [created_at] DATETIME2 NULL,
        [updated_at] DATETIME2 NULL
        , CONSTRAINT [PK_cours] PRIMARY KEY ([id])
    );
END
GO
IF OBJECT_ID(N'[currencies]', N'U') IS NULL
BEGIN
    CREATE TABLE [currencies] (
        [id] BIGINT IDENTITY(1,1) NOT NULL,
        [country] NVARCHAR(100) NULL,
        [currency] NVARCHAR(100) NULL,
        [code] NVARCHAR(25) NULL,
        [symbol] NVARCHAR(25) NULL,
        [thousand_separator] NVARCHAR(10) NULL,
        [decimal_separator] NVARCHAR(10) NULL,
        [created_at] DATETIME2 NULL,
        [updated_at] DATETIME2 NULL
        , CONSTRAINT [PK_currencies] PRIMARY KEY ([id])
    );
END
GO
IF OBJECT_ID(N'[customer_groups]', N'U') IS NULL
BEGIN
    CREATE TABLE [customer_groups] (
        [id] BIGINT IDENTITY(1,1) NOT NULL,
        [business_id] INT NULL,
        [name] NVARCHAR(191) NULL,
        [amount] FLOAT NULL,
        [price_calculation_type] NVARCHAR(191) NULL,
        [selling_price_group_id] INT NULL,
        [created_by] BIGINT NULL,
        [updated_by] BIGINT NULL,
        [created_at] DATETIME2 NULL,
        [updated_at] DATETIME2 NULL
        , CONSTRAINT [PK_customer_groups] PRIMARY KEY ([id])
    );
END
GO
IF OBJECT_ID(N'[deces]', N'U') IS NULL
BEGIN
    CREATE TABLE [deces] (
        [id] BIGINT IDENTITY(1,1) NOT NULL,
        [patient_id] BIGINT NULL,
        [personne_contacter_id] BIGINT NULL,
        [personnel_id] BIGINT NULL,
        [service_id] BIGINT NULL,
        [personnel_id2] BIGINT NULL,
        [dateDeces] NVARCHAR(191) NULL,
        [heureDeces] NVARCHAR(191) NULL,
        [genreDeMort] NVARCHAR(MAX) NULL,
        [auteur] NVARCHAR(MAX) NULL,
        [created_at] DATETIME2 NULL,
        [updated_at] DATETIME2 NULL
        , CONSTRAINT [PK_deces] PRIMARY KEY ([id])
    );
END
GO
IF OBJECT_ID(N'[dechets]', N'U') IS NULL
BEGIN
    CREATE TABLE [dechets] (
        [id] BIGINT IDENTITY(1,1) NOT NULL,
        [code] NVARCHAR(191) NULL,
        [type_dechet] NVARCHAR(191) NULL,
        [quantite] INT NULL,
        [source] NVARCHAR(191) NULL,
        [toxicite] NVARCHAR(191) NULL,
        [num_bac] INT NULL,
        [type_cond] NVARCHAR(191) NULL,
        [date_col] DATE NULL,
        [date_trans] DATE NULL,
        [nom_agent] NVARCHAR(191) NULL,
        [tel_agent] INT NULL,
        [nom_emp] NVARCHAR(191) NULL,
        [observation] NVARCHAR(191) NULL,
        [valider] BIT NULL,
        [traiter] BIT NULL,
        [date_deb_trait] DATE NULL,
        [date_fin_trait] DATE NULL,
        [type_trait] NVARCHAR(191) NULL,
        [result_trait] NVARCHAR(191) NULL,
        [destination_result] NVARCHAR(191) NULL,
        [nom_agent_trait] NVARCHAR(191) NULL,
        [tel_agent_trait] INT NULL,
        [nom_emp_agent_trait] NVARCHAR(191) NULL,
        [obser_trait] NVARCHAR(191) NULL,
        [created_at] DATETIME2 NULL,
        [updated_at] DATETIME2 NULL
        , CONSTRAINT [PK_dechets] PRIMARY KEY ([id])
    );
END
GO
IF OBJECT_ID(N'[demandeur_sangs]', N'U') IS NULL
BEGIN
    CREATE TABLE [demandeur_sangs] (
        [id] BIGINT IDENTITY(1,1) NOT NULL,
        [dateDemande] NVARCHAR(191) NULL,
        [groupeSanguin] NVARCHAR(191) NULL,
        [nbrePoche] NVARCHAR(191) NULL,
        [montantParPoche] NVARCHAR(191) NULL,
        [objectif] NVARCHAR(191) NULL,
        [remarques] NVARCHAR(191) NULL,
        [created_at] DATETIME2 NULL,
        [updated_at] DATETIME2 NULL
        , CONSTRAINT [PK_demandeur_sangs] PRIMARY KEY ([id])
    );
END
GO
IF OBJECT_ID(N'[demande_equipements]', N'U') IS NULL
BEGIN
    CREATE TABLE [demande_equipements] (
        [id] BIGINT IDENTITY(1,1) NOT NULL,
        [nom_dem] NVARCHAR(191) NULL,
        [email] NVARCHAR(191) NULL,
        [direction] NVARCHAR(191) NULL,
        [service] NVARCHAR(191) NULL,
        [unite] NVARCHAR(191) NULL,
        [nom] NVARCHAR(191) NULL,
        [type_eq] NVARCHAR(191) NULL,
        [quantite] INT NULL,
        [disponible] INT NULL,
        [date_dem] DATE NULL,
        [duree] INT NULL,
        [date_remise] DATE NULL,
        [valider] BIT NULL,
        [created_at] DATETIME2 NULL,
        [updated_at] DATETIME2 NULL
        , CONSTRAINT [PK_demande_equipements] PRIMARY KEY ([id])
    );
END
GO
IF OBJECT_ID(N'[departements]', N'U') IS NULL
BEGIN
    CREATE TABLE [departements] (
        [id] BIGINT IDENTITY(1,1) NOT NULL,
        [business_id] INT NULL,
        [nom] NVARCHAR(191) NULL,
        [shortcut] NVARCHAR(191) NULL,
        [color] NVARCHAR(191) NULL,
        [created_at] DATETIME2 NULL,
        [updated_at] DATETIME2 NULL
        , CONSTRAINT [PK_departements] PRIMARY KEY ([id])
    );
END
GO
IF OBJECT_ID(N'[depots]', N'U') IS NULL
BEGIN
    CREATE TABLE [depots] (
        [id] BIGINT IDENTITY(1,1) NOT NULL,
        [personnel_id] BIGINT NULL,
        [code] NVARCHAR(191) NULL,
        [intitule] NVARCHAR(191) NULL,
        [responsable] NVARCHAR(191) NULL,
        [bp] NVARCHAR(191) NULL,
        [type] NVARCHAR(191) NULL,
        [emplacement] NVARCHAR(191) NULL,
        [created_at] DATETIME2 NULL,
        [updated_at] DATETIME2 NULL
        , CONSTRAINT [PK_depots] PRIMARY KEY ([id])
    );
END
GO
IF OBJECT_ID(N'[depot_caisses]', N'U') IS NULL
BEGIN
    CREATE TABLE [depot_caisses] (
        [id] BIGINT IDENTITY(1,1) NOT NULL,
        [patient_id] BIGINT NULL,
        [fournisseur_id] BIGINT NULL,
        [type_compte_id] BIGINT NULL,
        [created_at] DATETIME2 NULL,
        [updated_at] DATETIME2 NULL
        , CONSTRAINT [PK_depot_caisses] PRIMARY KEY ([id])
    );
END
GO
IF OBJECT_ID(N'[destinataires]', N'U') IS NULL
BEGIN
    CREATE TABLE [destinataires] (
        [id] BIGINT IDENTITY(1,1) NOT NULL,
        [service_id] BIGINT NULL,
        [chapitre_id] BIGINT NULL,
        [code] NVARCHAR(191) NULL,
        [libelle] NVARCHAR(191) NULL,
        [codeCategorie] NVARCHAR(191) NULL,
        [numeroOrdre] NVARCHAR(191) NULL,
        [codeRegion] NVARCHAR(191) NULL,
        [abreviation] NVARCHAR(191) NULL,
        [desactiver] BIT NULL,
        [created_by] NVARCHAR(191) NULL,
        [updated_by] NVARCHAR(191) NULL,
        [created_at] DATETIME2 NULL,
        [updated_at] DATETIME2 NULL
        , CONSTRAINT [PK_destinataires] PRIMARY KEY ([id])
    );
END
GO
IF OBJECT_ID(N'[discounts]', N'U') IS NULL
BEGIN
    CREATE TABLE [discounts] (
        [id] BIGINT IDENTITY(1,1) NOT NULL,
        [business_id] INT NULL,
        [location_id] INT NULL,
        [brand_id] INT NULL,
        [category_id] INT NULL,
        [spg] NVARCHAR(191) NULL,
        [priority] INT NULL,
        [discount_type] NVARCHAR(191) NULL,
        [discount_amount] DECIMAL(18,2) NULL,
        [starts_at] DATETIME2 NULL,
        [ends_at] DATETIME2 NULL,
        [is_active] BIT NULL,
        [applicable_in_cg] BIT NULL,
        [created_at] DATETIME2 NULL,
        [updated_at] DATETIME2 NULL
        , CONSTRAINT [PK_discounts] PRIMARY KEY ([id])
    );
END
GO
IF OBJECT_ID(N'[discount_variations]', N'U') IS NULL
BEGIN
    CREATE TABLE [discount_variations] (
        [discount_id] BIGINT NULL,
        [variation_id] INT NULL
    );
END
GO
IF OBJECT_ID(N'[donneurs]', N'U') IS NULL
BEGIN
    CREATE TABLE [donneurs] (
        [id] BIGINT IDENTITY(1,1) NOT NULL,
        [nom] NVARCHAR(191) NULL,
        [prenom] NVARCHAR(191) NULL,
        [adresse] NVARCHAR(191) NULL,
        [age] NVARCHAR(191) NULL,
        [sexe] NVARCHAR(191) NULL,
        [created_at] DATETIME2 NULL,
        [updated_at] DATETIME2 NULL
        , CONSTRAINT [PK_donneurs] PRIMARY KEY ([id])
    );
END
GO
IF OBJECT_ID(N'[echantillons_laboratoires]', N'U') IS NULL
BEGIN
    CREATE TABLE [echantillons_laboratoires] (
        [id] BIGINT IDENTITY(1,1) NOT NULL,
        [code_echantillon] NVARCHAR(191) NULL,
        [patient_id] BIGINT NULL,
        [medecin_prescripteur_id] BIGINT NULL,
        [type_echantillon] NVARCHAR(191) NULL,
        [date_prelevement] DATETIME2 NULL,
        [statut] NVARCHAR(50) NULL,
        [informations_cliniques] NVARCHAR(MAX) NULL,
        [parametres_analyse] NVARCHAR(MAX) NULL,
        [created_at] DATETIME2 NULL,
        [updated_at] DATETIME2 NULL,
        [service_id] BIGINT NULL,
        [examen_id] BIGINT NULL
        , CONSTRAINT [PK_echantillons_laboratoires] PRIMARY KEY ([id])
    );
END
GO
IF OBJECT_ID(N'[echellons]', N'U') IS NULL
BEGIN
    CREATE TABLE [echellons] (
        [id] BIGINT IDENTITY(1,1) NOT NULL,
        [intitule] NVARCHAR(191) NULL,
        [created_at] DATETIME2 NULL,
        [updated_at] DATETIME2 NULL
        , CONSTRAINT [PK_echellons] PRIMARY KEY ([id])
    );
END
GO
IF OBJECT_ID(N'[element_salaires]', N'U') IS NULL
BEGIN
    CREATE TABLE [element_salaires] (
        [id] BIGINT IDENTITY(1,1) NOT NULL,
        [intitule] NVARCHAR(191) NULL,
        [codeElement] NVARCHAR(191) NULL,
        [sens] NVARCHAR(191) NULL,
        [montant] NVARCHAR(191) NULL,
        [created_at] DATETIME2 NULL,
        [updated_at] DATETIME2 NULL
        , CONSTRAINT [PK_element_salaires] PRIMARY KEY ([id])
    );
END
GO
IF OBJECT_ID(N'[eleves]', N'U') IS NULL
BEGIN
    CREATE TABLE [eleves] (
        [id] BIGINT IDENTITY(1,1) NOT NULL,
        [personne_contacter_id] BIGINT NULL,
        [class_scolaire_id] BIGINT NULL,
        [certificat_id] BIGINT NULL,
        [patient_id] BIGINT NULL,
        [nom] NVARCHAR(191) NULL,
        [prenom] NVARCHAR(191) NULL,
        [age] NVARCHAR(191) NULL,
        [sexe] NVARCHAR(191) NULL,
        [email] NVARCHAR(191) NULL,
        [anneeEntree] NVARCHAR(191) NULL,
        [dossier] NVARCHAR(191) NULL,
        [created_at] DATETIME2 NULL,
        [updated_at] DATETIME2 NULL
        , CONSTRAINT [PK_eleves] PRIMARY KEY ([id])
    );
END
GO
IF OBJECT_ID(N'[emplois]', N'U') IS NULL
BEGIN
    CREATE TABLE [emplois] (
        [id] BIGINT IDENTITY(1,1) NOT NULL,
        [fonction_id] BIGINT NULL,
        [personnel_id] BIGINT NULL,
        [service_id] BIGINT NULL,
        [date] NVARCHAR(191) NULL,
        [created_at] DATETIME2 NULL,
        [updated_at] DATETIME2 NULL
        , CONSTRAINT [PK_emplois] PRIMARY KEY ([id])
    );
END
GO
IF OBJECT_ID(N'[enabled_modules]', N'U') IS NULL
BEGIN
    CREATE TABLE [enabled_modules] (
        [id] BIGINT IDENTITY(1,1) NOT NULL,
        [created_at] DATETIME2 NULL,
        [updated_at] DATETIME2 NULL
        , CONSTRAINT [PK_enabled_modules] PRIMARY KEY ([id])
    );
END
GO
IF OBJECT_ID(N'[engagements]', N'U') IS NULL
BEGIN
    CREATE TABLE [engagements] (
        [id] BIGINT IDENTITY(1,1) NOT NULL,
        [ordonnateur_id] BIGINT NULL,
        [destinataire_id] BIGINT NULL,
        [imputation_id] BIGINT NULL,
        [numEngagement] NVARCHAR(191) NULL,
        [procedure] NVARCHAR(191) NULL,
        [codeDepense] NVARCHAR(191) NULL,
        [reference] NVARCHAR(191) NULL,
        [objet] NVARCHAR(191) NULL,
        [modePaiement] NVARCHAR(191) NULL,
        [dateVisaOrdonnateur] NVARCHAR(191) NULL,
        [dateReservationCredit] NVARCHAR(191) NULL,
        [nomReservCredit] NVARCHAR(191) NULL,
        [dateVisaCFS] NVARCHAR(191) NULL,
        [etat] NVARCHAR(50) NULL,
        [actif] NVARCHAR(50) NULL,
        [desactiver] BIT NULL,
        [montantTTC] NVARCHAR(191) NULL,
        [tauxTVA] NVARCHAR(191) NULL,
        [tauxIR] NVARCHAR(191) NULL,
        [irpp] NVARCHAR(191) NULL,
        [cac] NVARCHAR(191) NULL,
        [tc] NVARCHAR(191) NULL,
        [cfc] NVARCHAR(191) NULL,
        [crtv] NVARCHAR(191) NULL,
        [cnps] NVARCHAR(191) NULL,
        [pvid] NVARCHAR(191) NULL,
        [iprcm] NVARCHAR(191) NULL,
        [ptp] NVARCHAR(191) NULL,
        [created_by] NVARCHAR(191) NULL,
        [updated_by] NVARCHAR(191) NULL,
        [created_at] DATETIME2 NULL,
        [updated_at] DATETIME2 NULL
        , CONSTRAINT [PK_engagements] PRIMARY KEY ([id])
    );
END
GO
IF OBJECT_ID(N'[enseignants]', N'U') IS NULL
BEGIN
    CREATE TABLE [enseignants] (
        [id] BIGINT IDENTITY(1,1) NOT NULL,
        [personnel_id] BIGINT NULL,
        [region_id] BIGINT NULL,
        [specialite_id] BIGINT NULL,
        [nom] NVARCHAR(191) NULL,
        [prenom] NVARCHAR(191) NULL,
        [age] NVARCHAR(191) NULL,
        [sexe] NVARCHAR(191) NULL,
        [lieuNaissance] NVARCHAR(191) NULL,
        [dateEmploi] NVARCHAR(191) NULL,
        [created_at] DATETIME2 NULL,
        [updated_at] DATETIME2 NULL
        , CONSTRAINT [PK_enseignants] PRIMARY KEY ([id])
    );
END
GO
IF OBJECT_ID(N'[equipements]', N'U') IS NULL
BEGIN
    CREATE TABLE [equipements] (
        [id] BIGINT IDENTITY(1,1) NOT NULL,
        [code] NVARCHAR(191) NULL,
        [nom] NVARCHAR(191) NULL,
        [marque] NVARCHAR(191) NULL,
        [categorie] NVARCHAR(191) NULL,
        [numero_serie] INT NULL,
        [quantite] INT NULL,
        [created_at] DATETIME2 NULL,
        [updated_at] DATETIME2 NULL
        , CONSTRAINT [PK_equipements] PRIMARY KEY ([id])
    );
END
GO
IF OBJECT_ID(N'[etat_caisses]', N'U') IS NULL
BEGIN
    CREATE TABLE [etat_caisses] (
        [id] BIGINT IDENTITY(1,1) NOT NULL,
        [caisse_id] BIGINT NULL,
        [user_id] BIGINT NULL,
        [status] NVARCHAR(191) NULL,
        [montantFermeture] NVARCHAR(191) NULL,
        [dateFermeture] NVARCHAR(191) NULL,
        [dateOuverture] NVARCHAR(191) NULL,
        [dateVidage] NVARCHAR(191) NULL,
        [created_at] DATETIME2 NULL,
        [updated_at] DATETIME2 NULL
        , CONSTRAINT [PK_etat_caisses] PRIMARY KEY ([id])
    );
END
GO
IF OBJECT_ID(N'[examens]', N'U') IS NULL
BEGIN
    CREATE TABLE [examens] (
        [id] BIGINT IDENTITY(1,1) NOT NULL,
        [libelle] NVARCHAR(191) NULL,
        [valeurs_reference] NVARCHAR(MAX) NULL,
        [duree_traitement] NVARCHAR(191) NULL,
        [type_examen_id] BIGINT NULL,
        [departement_id] BIGINT NULL,
        [code_examen] NVARCHAR(191) NULL,
        [valeur_normale] NVARCHAR(191) NULL,
        [montant] NVARCHAR(191) NULL,
        [created_at] DATETIME2 NULL,
        [updated_at] DATETIME2 NULL,
        [categorie_id] BIGINT NULL,
        [montant_maximum] DECIMAL(18,2) NULL,
        [montant_minimum] DECIMAL(18,2) NULL
        , CONSTRAINT [PK_examens] PRIMARY KEY ([id])
    );
END
GO
IF OBJECT_ID(N'[examens_imagerie_fichiers]', N'U') IS NULL
BEGIN
    CREATE TABLE [examens_imagerie_fichiers] (
        [id] BIGINT IDENTITY(1,1) NOT NULL,
        [examen_imagerie_id] BIGINT NULL,
        [nom_fichier] NVARCHAR(191) NULL,
        [chemin_fichier] NVARCHAR(191) NULL,
        [type_fichier] NVARCHAR(191) NULL,
        [taille_fichier] BIGINT NULL,
        [serie] NVARCHAR(191) NULL,
        [numero_image] INT NULL,
        [description] NVARCHAR(MAX) NULL,
        [metadata] NVARCHAR(MAX) NULL,
        [image_principale] BIT NULL,
        [created_at] DATETIME2 NULL,
        [updated_at] DATETIME2 NULL
        , CONSTRAINT [PK_examens_imagerie_fichiers] PRIMARY KEY ([id])
    );
END
GO
IF OBJECT_ID(N'[examens_imagerie_resultats]', N'U') IS NULL
BEGIN
    CREATE TABLE [examens_imagerie_resultats] (
        [id] BIGINT IDENTITY(1,1) NOT NULL,
        [code_examen_imagerie] NVARCHAR(191) NULL,
        [patient_id] BIGINT NULL,
        [medecin_prescripteur_id] BIGINT NULL,
        [technicien_id] BIGINT NULL,
        [radiologue_id] BIGINT NULL,
        [service_id] BIGINT NULL,
        [examen_id] BIGINT NULL,
        [source_type] NVARCHAR(50) NULL,
        [source_id] BIGINT NULL,
        [type_imagerie] NVARCHAR(50) NULL,
        [priorite] NVARCHAR(50) NULL,
        [statut] NVARCHAR(50) NULL,
        [indication_clinique] NVARCHAR(MAX) NULL,
        [technique_utilisee] NVARCHAR(MAX) NULL,
        [parametres_acquisition] NVARCHAR(MAX) NULL,
        [description_images] NVARCHAR(MAX) NULL,
        [conclusion] NVARCHAR(MAX) NULL,
        [recommandations] NVARCHAR(MAX) NULL,
        [images_paths] NVARCHAR(MAX) NULL,
        [contraste_utilise] BIT NULL,
        [type_contraste] NVARCHAR(191) NULL,
        [effets_indesirables] NVARCHAR(MAX) NULL,
        [debut_examen] DATETIME2 NULL,
        [fin_examen] DATETIME2 NULL,
        [valide] BIT NULL,
        [date_validation] DATETIME2 NULL,
        [observations_techniques] NVARCHAR(MAX) NULL,
        [dose_radiation] DECIMAL(18,2) NULL,
        [necessite_reexamen] BIT NULL,
        [motif_reexamen] NVARCHAR(MAX) NULL,
        [created_at] DATETIME2 NULL,
        [updated_at] DATETIME2 NULL
        , CONSTRAINT [PK_examens_imagerie_resultats] PRIMARY KEY ([id])
    );
END
GO
IF OBJECT_ID(N'[examens_valeurs_normales]', N'U') IS NULL
BEGIN
    CREATE TABLE [examens_valeurs_normales] (
        [id] BIGINT IDENTITY(1,1) NOT NULL,
        [examen_id] BIGINT NULL,
        [age_min] INT NULL,
        [age_max] INT NULL,
        [sexe] NVARCHAR(50) NULL,
        [valeur_min] DECIMAL(18,2) NULL,
        [valeur_max] DECIMAL(18,2) NULL,
        [unite] NVARCHAR(20) NULL,
        [texte_valeur] NVARCHAR(MAX) NULL,
        [created_at] DATETIME2 NULL,
        [updated_at] DATETIME2 NULL
        , CONSTRAINT [PK_examens_valeurs_normales] PRIMARY KEY ([id])
    );
END
GO
IF OBJECT_ID(N'[exercice_budgetaires]', N'U') IS NULL
BEGIN
    CREATE TABLE [exercice_budgetaires] (
        [id] BIGINT IDENTITY(1,1) NOT NULL,
        [code] NVARCHAR(191) NULL,
        [etat] NVARCHAR(50) NULL,
        [debut] NVARCHAR(191) NULL,
        [fin] NVARCHAR(191) NULL,
        [libelle] NVARCHAR(191) NULL,
        [created_at] DATETIME2 NULL,
        [updated_at] DATETIME2 NULL
        , CONSTRAINT [PK_exercice_budgetaires] PRIMARY KEY ([id])
    );
END
GO
IF OBJECT_ID(N'[expense_categories]', N'U') IS NULL
BEGIN
    CREATE TABLE [expense_categories] (
        [id] INT IDENTITY(1,1) NOT NULL,
        [name] NVARCHAR(191) NULL,
        [business_id] INT NULL,
        [code] NVARCHAR(191) NULL,
        [parent_id] INT NULL,
        [deleted_at] DATETIME2 NULL,
        [created_at] DATETIME2 NULL,
        [updated_at] DATETIME2 NULL
        , CONSTRAINT [PK_expense_categories] PRIMARY KEY ([id])
    );
END
GO
IF OBJECT_ID(N'[facturations]', N'U') IS NULL
BEGIN
    CREATE TABLE [facturations] (
        [id] BIGINT IDENTITY(1,1) NOT NULL,
        [code] NVARCHAR(191) NULL,
        [patient_id] BIGINT NULL,
        [departement_id] BIGINT NULL,
        [panier] NVARCHAR(MAX) NULL,
        [user_id] BIGINT NULL,
        [quantite_totale] INT NULL,
        [prix_total] FLOAT NULL,
        [date_facturation] DATETIME2 NULL,
        [created_by] INT NULL,
        [updated_by] INT NULL,
        [created_at] DATETIME2 NULL,
        [updated_at] DATETIME2 NULL
        , CONSTRAINT [PK_facturations] PRIMARY KEY ([id])
    );
END
GO
IF OBJECT_ID(N'[familles]', N'U') IS NULL
BEGIN
    CREATE TABLE [familles] (
        [id] BIGINT IDENTITY(1,1) NOT NULL,
        [code] NVARCHAR(191) NULL,
        [type] NVARCHAR(191) NULL,
        [intitule] NVARCHAR(191) NULL,
        [tauxMargeMin] NVARCHAR(191) NULL,
        [tauxMargeMax] NVARCHAR(191) NULL,
        [description] NVARCHAR(191) NULL,
        [created_at] DATETIME2 NULL,
        [updated_at] DATETIME2 NULL
        , CONSTRAINT [PK_familles] PRIMARY KEY ([id])
    );
END
GO
IF OBJECT_ID(N'[fiche_detenteurs]', N'U') IS NULL
BEGIN
    CREATE TABLE [fiche_detenteurs] (
        [id] BIGINT IDENTITY(1,1) NOT NULL,
        [exercice_budgetaire_id] BIGINT NULL,
        [personnel_id] BIGINT NULL,
        [unite_id] BIGINT NULL,
        [type_conditionnement_id] BIGINT NULL,
        [produit_id] BIGINT NULL,
        [famille_id] BIGINT NULL,
        [ordre_entree_id] BIGINT NULL,
        [quantiteDemande] NVARCHAR(191) NULL,
        [quantiteServie] NVARCHAR(191) NULL,
        [dateComptable] NVARCHAR(191) NULL,
        [created_at] DATETIME2 NULL,
        [updated_at] DATETIME2 NULL
        , CONSTRAINT [PK_fiche_detenteurs] PRIMARY KEY ([id])
    );
END
GO
IF OBJECT_ID(N'[fonctions]', N'U') IS NULL
BEGIN
    CREATE TABLE [fonctions] (
        [id] BIGINT IDENTITY(1,1) NOT NULL,
        [prime_id] BIGINT NULL,
        [intitule] NVARCHAR(191) NULL,
        [created_at] DATETIME2 NULL,
        [updated_at] DATETIME2 NULL
        , CONSTRAINT [PK_fonctions] PRIMARY KEY ([id])
    );
END
GO
IF OBJECT_ID(N'[formes]', N'U') IS NULL
BEGIN
    CREATE TABLE [formes] (
        [id] BIGINT IDENTITY(1,1) NOT NULL,
        [intitule] NVARCHAR(191) NULL,
        [created_at] DATETIME2 NULL,
        [updated_at] DATETIME2 NULL
        , CONSTRAINT [PK_formes] PRIMARY KEY ([id])
    );
END
GO
IF OBJECT_ID(N'[fournisseurs]', N'U') IS NULL
BEGIN
    CREATE TABLE [fournisseurs] (
        [id] BIGINT IDENTITY(1,1) NOT NULL,
        [villes_id] BIGINT NULL,
        [depots_id] BIGINT NULL,
        [plan_comptables_id] BIGINT NULL,
        [code] NVARCHAR(191) NULL,
        [personne] NVARCHAR(50) NULL,
        [nom] NVARCHAR(191) NULL,
        [raisonSocial] NVARCHAR(191) NULL,
        [sigle] NVARCHAR(191) NULL,
        [compteCOllectif] NVARCHAR(191) NULL,
        [qualite] NVARCHAR(191) NULL,
        [enCoursMax] NVARCHAR(191) NULL,
        [nContribuable] NVARCHAR(191) NULL,
        [nCNI] NVARCHAR(191) NULL,
        [adresse] NVARCHAR(191) NULL,
        [desactiver] BIT NULL,
        [telephone] NVARCHAR(191) NULL,
        [quartier] NVARCHAR(191) NULL,
        [created_by] NVARCHAR(191) NULL,
        [updated_by] NVARCHAR(191) NULL,
        [created_at] DATETIME2 NULL,
        [updated_at] DATETIME2 NULL
        , CONSTRAINT [PK_fournisseurs] PRIMARY KEY ([id])
    );
END
GO
IF OBJECT_ID(N'[grilles]', N'U') IS NULL
BEGIN
    CREATE TABLE [grilles] (
        [id] BIGINT IDENTITY(1,1) NOT NULL,
        [categorie_id] BIGINT NULL,
        [echellon_id] BIGINT NULL,
        [salaireBase] NVARCHAR(191) NULL,
        [classe] NVARCHAR(191) NULL,
        [indice] NVARCHAR(191) NULL,
        [created_at] DATETIME2 NULL,
        [updated_at] DATETIME2 NULL
        , CONSTRAINT [PK_grilles] PRIMARY KEY ([id])
    );
END
GO
IF OBJECT_ID(N'[group_sub_taxes]', N'U') IS NULL
BEGIN
    CREATE TABLE [group_sub_taxes] (
        [group_tax_id] INT NULL,
        [tax_id] INT NULL
    );
END
GO
IF OBJECT_ID(N'[hospitalisations]', N'U') IS NULL
BEGIN
    CREATE TABLE [hospitalisations] (
        [id] BIGINT IDENTITY(1,1) NOT NULL,
        [code_hospitalisation] NVARCHAR(100) NULL,
        [medecin_referent_id] BIGINT NULL,
        [infirmier_referent_id] BIGINT NULL,
        [patient_id] BIGINT NULL,
        [hospitalisation_type_id] BIGINT NULL,
        [lit_id] BIGINT NULL,
        [service_id] BIGINT NULL,
        [business_id] INT NULL,
        [business_location_id] INT NULL,
        [statut] NVARCHAR(50) NULL,
        [options] NVARCHAR(MAX) NULL,
        [detail] NVARCHAR(MAX) NULL,
        [auteur] NVARCHAR(150) NULL,
        [date_entree] DATETIME2 NULL,
        [date_sortie_prevue] DATETIME2 NULL,
        [date_sortie_effective] DATETIME2 NULL,
        [date_init_hosp] DATETIME2 NULL,
        [motif_admission] NVARCHAR(191) NULL,
        [diagnostic_entree] NVARCHAR(MAX) NULL,
        [diagnostic_principal] NVARCHAR(MAX) NULL,
        [diagnostics_secondaires] NVARCHAR(MAX) NULL,
        [mode_entree] NVARCHAR(50) NULL,
        [mode_sortie] NVARCHAR(50) NULL,
        [observations_entree] NVARCHAR(MAX) NULL,
        [observations_sortie] NVARCHAR(MAX) NULL,
        [facture_generee] BIT NULL,
        [created_by] BIGINT NULL,
        [updated_by] BIGINT NULL,
        [created_at] DATETIME2 NULL,
        [updated_at] DATETIME2 NULL
        , CONSTRAINT [PK_hospitalisations] PRIMARY KEY ([id])
    );
END
GO
IF OBJECT_ID(N'[hospitalisation_actes]', N'U') IS NULL
BEGIN
    CREATE TABLE [hospitalisation_actes] (
        [id] BIGINT IDENTITY(1,1) NOT NULL,
        [hospitalisation_id] BIGINT NULL,
        [acte_medical_id] BIGINT NULL,
        [personnel_id] BIGINT NULL,
        [date] DATETIME2 NULL,
        [commentaire] NVARCHAR(MAX) NULL,
        [created_at] DATETIME2 NULL,
        [updated_at] DATETIME2 NULL
        , CONSTRAINT [PK_hospitalisation_actes] PRIMARY KEY ([id])
    );
END
GO
IF OBJECT_ID(N'[hospitalisation_suivis]', N'U') IS NULL
BEGIN
    CREATE TABLE [hospitalisation_suivis] (
        [id] BIGINT IDENTITY(1,1) NOT NULL,
        [hospitalisation_id] BIGINT NULL,
        [personnel_id] BIGINT NULL,
        [date_suivi] DATETIME2 NULL,
        [type_suivi] NVARCHAR(50) NULL,
        [created_at] DATETIME2 NULL,
        [updated_at] DATETIME2 NULL,
        [temperature] DECIMAL(18,2) NULL,
        [tension_systolique] INT NULL,
        [tension_diastolique] INT NULL,
        [frequence_cardiaque] INT NULL,
        [frequence_respiratoire] INT NULL,
        [saturation_oxygene] INT NULL,
        [glycemie] DECIMAL(18,2) NULL,
        [poids] DECIMAL(18,2) NULL,
        [etat_general] NVARCHAR(MAX) NULL,
        [niveau_douleur] NVARCHAR(20) NULL,
        [observations] NVARCHAR(MAX) NULL,
        [soins_realises] NVARCHAR(MAX) NULL,
        [complications] NVARCHAR(MAX) NULL
        , CONSTRAINT [PK_hospitalisation_suivis] PRIMARY KEY ([id])
    );
END
GO
IF OBJECT_ID(N'[hospitalisation_types]', N'U') IS NULL
BEGIN
    CREATE TABLE [hospitalisation_types] (
        [id] BIGINT IDENTITY(1,1) NOT NULL,
        [libelle] NVARCHAR(191) NULL,
        [description] NVARCHAR(MAX) NULL,
        [created_at] DATETIME2 NULL,
        [updated_at] DATETIME2 NULL
        , CONSTRAINT [PK_hospitalisation_types] PRIMARY KEY ([id])
    );
END
GO
IF OBJECT_ID(N'[hosp_administrations_medicaments]', N'U') IS NULL
BEGIN
    CREATE TABLE [hosp_administrations_medicaments] (
        [id] BIGINT IDENTITY(1,1) NOT NULL,
        [id_prescription] BIGINT NULL,
        [id_personnel] BIGINT NULL,
        [date_administration] DATETIME2 NULL,
        [quantite_administree] DECIMAL(18,2) NULL,
        [observations] NVARCHAR(MAX) NULL,
        [statut] NVARCHAR(50) NULL,
        [created_at] DATETIME2 NULL,
        [updated_at] DATETIME2 NULL
        , CONSTRAINT [PK_hosp_administrations_medicaments] PRIMARY KEY ([id])
    );
END
GO
IF OBJECT_ID(N'[hosp_indicateurs_qualite]', N'U') IS NULL
BEGIN
    CREATE TABLE [hosp_indicateurs_qualite] (
        [id] BIGINT IDENTITY(1,1) NOT NULL,
        [id_hospitalisation] BIGINT NULL,
        [type_indicateur] NVARCHAR(191) NULL,
        [valeur_mesuree] DECIMAL(18,2) NULL,
        [valeur_cible] DECIMAL(18,2) NULL,
        [date_mesure] DATE NULL,
        [conforme] BIT NULL,
        [observations] NVARCHAR(MAX) NULL,
        [created_at] DATETIME2 NULL,
        [updated_at] DATETIME2 NULL
        , CONSTRAINT [PK_hosp_indicateurs_qualite] PRIMARY KEY ([id])
    );
END
GO
IF OBJECT_ID(N'[hosp_interventions]', N'U') IS NULL
BEGIN
    CREATE TABLE [hosp_interventions] (
        [id] BIGINT IDENTITY(1,1) NOT NULL,
        [id_hospitalisation] BIGINT NULL,
        [id_acte] BIGINT NULL,
        [id_medecin] BIGINT NULL,
        [id_personnel_assistant] BIGINT NULL,
        [date_intervention] DATETIME2 NULL,
        [lieu_intervention] NVARCHAR(191) NULL,
        [duree_reelle] INT NULL,
        [anesthesie] NVARCHAR(50) NULL,
        [complications] NVARCHAR(MAX) NULL,
        [compte_rendu] NVARCHAR(MAX) NULL,
        [statut] NVARCHAR(50) NULL,
        [created_at] DATETIME2 NULL,
        [updated_at] DATETIME2 NULL
        , CONSTRAINT [PK_hosp_interventions] PRIMARY KEY ([id])
    );
END
GO
IF OBJECT_ID(N'[hosp_parametres_vitaux]', N'U') IS NULL
BEGIN
    CREATE TABLE [hosp_parametres_vitaux] (
        [id] BIGINT IDENTITY(1,1) NOT NULL,
        [id_suivi] BIGINT NULL,
        [nom_parametre] NVARCHAR(191) NULL,
        [valeur] NVARCHAR(191) NULL,
        [unite] NVARCHAR(191) NULL,
        [commentaire] NVARCHAR(MAX) NULL,
        [created_at] DATETIME2 NULL,
        [updated_at] DATETIME2 NULL
        , CONSTRAINT [PK_hosp_parametres_vitaux] PRIMARY KEY ([id])
    );
END
GO
IF OBJECT_ID(N'[hosp_plannings_soins]', N'U') IS NULL
BEGIN
    CREATE TABLE [hosp_plannings_soins] (
        [id] BIGINT IDENTITY(1,1) NOT NULL,
        [id_hospitalisation] BIGINT NULL,
        [id_personnel_assigne] BIGINT NULL,
        [date_prevue] DATETIME2 NULL,
        [type_soin] NVARCHAR(191) NULL,
        [description] NVARCHAR(MAX) NULL,
        [duree_estimee] INT NULL,
        [priorite] NVARCHAR(50) NULL,
        [statut] NVARCHAR(50) NULL,
        [date_realisation] DATETIME2 NULL,
        [observations] NVARCHAR(MAX) NULL,
        [created_at] DATETIME2 NULL,
        [updated_at] DATETIME2 NULL
        , CONSTRAINT [PK_hosp_plannings_soins] PRIMARY KEY ([id])
    );
END
GO
IF OBJECT_ID(N'[hosp_transmissions]', N'U') IS NULL
BEGIN
    CREATE TABLE [hosp_transmissions] (
        [id] BIGINT IDENTITY(1,1) NOT NULL,
        [id_hospitalisation] BIGINT NULL,
        [id_personnel_emetteur] BIGINT NULL,
        [id_personnel_recepteur] BIGINT NULL,
        [date_transmission] DATETIME2 NULL,
        [type_transmission] NVARCHAR(50) NULL,
        [objet] NVARCHAR(191) NULL,
        [message] NVARCHAR(MAX) NULL,
        [priorite] NVARCHAR(50) NULL,
        [statut] NVARCHAR(50) NULL,
        [date_lecture] DATETIME2 NULL,
        [reponse] NVARCHAR(MAX) NULL,
        [created_at] DATETIME2 NULL,
        [updated_at] DATETIME2 NULL
        , CONSTRAINT [PK_hosp_transmissions] PRIMARY KEY ([id])
    );
END
GO
IF OBJECT_ID(N'[imputations]', N'U') IS NULL
BEGIN
    CREATE TABLE [imputations] (
        [id] BIGINT IDENTITY(1,1) NOT NULL,
        [source_financement_id] BIGINT NULL,
        [exercice_budgetaire_id] BIGINT NULL,
        [numImputation] NVARCHAR(191) NULL,
        [codeArticle] NVARCHAR(191) NULL,
        [dotation] NVARCHAR(191) NULL,
        [dotationRevisee] NVARCHAR(191) NULL,
        [bloquage] NVARCHAR(191) NULL,
        [engagement] NVARCHAR(191) NULL,
        [liquidation] NVARCHAR(191) NULL,
        [reservation] NVARCHAR(191) NULL,
        [dotationPartenaire] NVARCHAR(191) NULL,
        [desactiver] BIT NULL,
        [created_by] NVARCHAR(191) NULL,
        [updated_by] NVARCHAR(191) NULL,
        [created_at] DATETIME2 NULL,
        [updated_at] DATETIME2 NULL
        , CONSTRAINT [PK_imputations] PRIMARY KEY ([id])
    );
END
GO
IF OBJECT_ID(N'[indicateursps]', N'U') IS NULL
BEGIN
    CREATE TABLE [indicateursps] (
        [id] BIGINT IDENTITY(1,1) NOT NULL,
        [sous_programme_id] BIGINT NULL,
        [indicateur] NVARCHAR(191) NULL,
        [unite] NVARCHAR(191) NULL,
        [source] NVARCHAR(191) NULL,
        [desactiver] BIT NULL,
        [created_by] NVARCHAR(191) NULL,
        [updated_by] NVARCHAR(191) NULL,
        [created_at] DATETIME2 NULL,
        [updated_at] DATETIME2 NULL
        , CONSTRAINT [PK_indicateursps] PRIMARY KEY ([id])
    );
END
GO
IF OBJECT_ID(N'[indicateur_actions]', N'U') IS NULL
BEGIN
    CREATE TABLE [indicateur_actions] (
        [id] BIGINT IDENTITY(1,1) NOT NULL,
        [sous_programme_id] BIGINT NULL,
        [action_id] BIGINT NULL,
        [indicateur] NVARCHAR(191) NULL,
        [unite] NVARCHAR(191) NULL,
        [source] NVARCHAR(191) NULL,
        [desactiver] BIT NULL,
        [created_by] NVARCHAR(191) NULL,
        [updated_by] NVARCHAR(191) NULL,
        [created_at] DATETIME2 NULL,
        [updated_at] DATETIME2 NULL
        , CONSTRAINT [PK_indicateur_actions] PRIMARY KEY ([id])
    );
END
GO
IF OBJECT_ID(N'[indicateur_activites]', N'U') IS NULL
BEGIN
    CREATE TABLE [indicateur_activites] (
        [id] BIGINT IDENTITY(1,1) not NULL,
        [sous_programme_id] BIGINT NULL,
        [activite_id] BIGINT NULL,
        [indicateur] NVARCHAR(191) NULL,
        [unite] NVARCHAR(191) NULL,
        [source] NVARCHAR(191) NULL,
        [desactiver] BIT NULL,
        [created_by] NVARCHAR(191) NULL,
        [updated_by] NVARCHAR(191) NULL,
        [created_at] DATETIME2 NULL,
        [updated_at] DATETIME2 NULL
        , CONSTRAINT [PK_indicateur_activites] PRIMARY KEY ([id])
    );
END
GO
IF OBJECT_ID(N'[info_societes]', N'U') IS NULL
BEGIN
    CREATE TABLE [info_societes] (
        [id] BIGINT IDENTITY(1,1) NOT NULL,
        [code] NVARCHAR(191) NULL,
        [type] NVARCHAR(191) NULL,
        [raisonSociale] NVARCHAR(191) NULL,
        [nom] NVARCHAR(191) NULL,
        [activite] NVARCHAR(191) NULL,
        [registreCmrce] NVARCHAR(191) NULL,
        [contribuable] NVARCHAR(191) NULL,
        [capitalSocial] NVARCHAR(191) NULL,
        [adresse] NVARCHAR(191) NULL,
        [ville] NVARCHAR(191) NULL,
        [commentaire] NVARCHAR(191) NULL,
        [telephone] NVARCHAR(191) NULL,
        [email] NVARCHAR(191) NULL,
        [siteInternet] NVARCHAR(191) NULL,
        [created_at] DATETIME2 NULL,
        [updated_at] DATETIME2 NULL
        , CONSTRAINT [PK_info_societes] PRIMARY KEY ([id])
    );
END
GO
IF OBJECT_ID(N'[inscriptions]', N'U') IS NULL
BEGIN
    CREATE TABLE [inscriptions] (
        [id] BIGINT IDENTITY(1,1) NOT NULL,
        [created_at] DATETIME2 NULL,
        [updated_at] DATETIME2 NULL
        , CONSTRAINT [PK_inscriptions] PRIMARY KEY ([id])
    );
END
GO
IF OBJECT_ID(N'[invoices]', N'U') IS NULL
BEGIN
    CREATE TABLE [invoices] (
        [id] BIGINT IDENTITY(1,1) NOT NULL,
        [contact_id] INT NULL,
        [business_id] INT NULL,
        [unpaid_invoice] BIT NULL,
        [transaction_date] DATETIME2 NULL,
        [invoice_scheme_id] BIGINT NULL,
        [invoice_no] NVARCHAR(191) NULL,
        [status] NVARCHAR(50) NULL,
        [type] NVARCHAR(50) NULL,
        [payment_method] NVARCHAR(50) NULL,
        [payment_status] NVARCHAR(50) NULL,
        [total_amount] DECIMAL(18,2) NULL,
        [amount_paid] DECIMAL(18,2) NULL,
        [total_order_quantity] INT NULL,
        [created_by] BIGINT NULL,
        [updated_by] BIGINT NULL,
        [created_at] DATETIME2 NULL,
        [updated_at] DATETIME2 NULL
        , CONSTRAINT [PK_invoices] PRIMARY KEY ([id])
    );
END
GO
IF OBJECT_ID(N'[invoice_details]', N'U') IS NULL
BEGIN
    CREATE TABLE [invoice_details] (
        [id] BIGINT IDENTITY(1,1) NOT NULL,
        [invoice_id] BIGINT NULL,
        [departement_id] BIGINT NULL,
        [acte_id] BIGINT NULL,
        [examen_id] BIGINT NULL,
        [designation] NVARCHAR(191) NULL,
        [quantite] INT NULL,
        [payment_method] NVARCHAR(50) NULL,
        [payment_type] NVARCHAR(191) NULL,
        [transaction_no] NVARCHAR(191) NULL,
        [card_transaction_number] NVARCHAR(191) NULL,
        [card_number] NVARCHAR(191) NULL,
        [card_type] NVARCHAR(191) NULL,
        [card_holder_name] NVARCHAR(191) NULL,
        [card_month] NVARCHAR(191) NULL,
        [card_year] NVARCHAR(191) NULL,
        [card_security] NVARCHAR(5) NULL,
        [cheque_number] NVARCHAR(191) NULL,
        [bank_account_number] NVARCHAR(191) NULL,
        [paid_on] DATETIME2 NULL,
        [created_by] BIGINT NULL,
        [updated_by] BIGINT NULL,
        [note] NVARCHAR(191) NULL,
        [document] NVARCHAR(191) NULL,
        [payment_ref_no] NVARCHAR(191) NULL,
        [paid_through_link] BIT NULL,
        [gateway] NVARCHAR(191) NULL,
        [is_advance] BIT NULL,
        [is_paid] BIT NULL,
        [account_id] INT NULL,
        [payment_for] INT NULL,
        [parent_id] INT NULL,
        [montant] DECIMAL(18,2) NULL,
        [tarif_differencie] DECIMAL(18,2) NULL,
        [montant_total] DECIMAL(18,2) NULL,
        [created_at] DATETIME2 NULL,
        [updated_at] DATETIME2 NULL
        , CONSTRAINT [PK_invoice_details] PRIMARY KEY ([id])
    );
END
GO
IF OBJECT_ID(N'[invoice_items]', N'U') IS NULL
BEGIN
    CREATE TABLE [invoice_items] (
        [id] BIGINT IDENTITY(1,1) NOT NULL,
        [product_id] BIGINT NULL,
        [price_per_unit] DECIMAL(18,2) NULL,
        [invoice_id] BIGINT NULL,
        [quantity] INT NULL,
        [price] DECIMAL(18,2) NULL,
        [created_by] NVARCHAR(191) NULL,
        [updated_by] NVARCHAR(191) NULL,
        [created_at] DATETIME2 NULL,
        [updated_at] DATETIME2 NULL
        , CONSTRAINT [PK_invoice_items] PRIMARY KEY ([id])
    );
END
GO
IF OBJECT_ID(N'[invoice_layouts]', N'U') IS NULL
BEGIN
    CREATE TABLE [invoice_layouts] (
        [id] BIGINT IDENTITY(1,1) NOT NULL,
        [name] NVARCHAR(191) NULL,
        [header_text] NVARCHAR(MAX) NULL,
        [invoice_no_prefix] NVARCHAR(191) NULL,
        [invoice_heading] NVARCHAR(191) NULL,
        [sub_total_label] NVARCHAR(191) NULL,
        [discount_label] NVARCHAR(191) NULL,
        [tax_label] NVARCHAR(191) NULL,
        [total_label] NVARCHAR(191) NULL,
        [paid_label] NVARCHAR(191) NULL,
        [logo] NVARCHAR(191) NULL,
        [total_due_label] NVARCHAR(191) NULL,
        [cat_code_label] NVARCHAR(191) NULL,
        [show_logo] BIT NULL,
        [show_business_name] BIT NULL,
        [show_location_name] BIT NULL,
        [show_landmark] BIT NULL,
        [show_city] BIT NULL,
        [show_state] BIT NULL,
        [show_zip_code] BIT NULL,
        [show_country] BIT NULL,
        [show_mobile_number] BIT NULL,
        [show_alternate_number] BIT NULL,
        [show_email] BIT NULL,
        [show_tax_1] BIT NULL,
        [show_tax_2] BIT NULL,
        [show_barcode] BIT NULL,
        [show_payments] BIT NULL,
        [show_customer] BIT NULL,
        [highlight_color] NVARCHAR(10) NULL,
        [customer_label] NVARCHAR(10) NULL,
        [footer_text] NVARCHAR(MAX) NULL,
        [is_default] BIT NULL,
        [business_id] INT NULL,
        [sub_heading_line1] NVARCHAR(191) NULL,
        [client_tax_label] NVARCHAR(191) NULL,
        [sub_heading_line2] NVARCHAR(191) NULL,
        [sub_heading_line3] NVARCHAR(191) NULL,
        [sub_heading_line4] NVARCHAR(191) NULL,
        [sub_heading_line5] NVARCHAR(191) NULL,
        [table_product_label] NVARCHAR(191) NULL,
        [table_qty_label] NVARCHAR(191) NULL,
        [table_unit_price_label] NVARCHAR(191) NULL,
        [table_subtotal_label] NVARCHAR(191) NULL,
        [show_client_id] BIT NULL,
        [client_id_label] NVARCHAR(191) NULL,
        [date_label] NVARCHAR(191) NULL,
        [show_time] BIT NULL,
        [show_brand] BIT NULL,
        [show_sku] BIT NULL,
        [show_cat_code] BIT NULL,
        [show_sale_description] BIT NULL,
        [show_letter_head] BIT NULL,
        [letter_head] NVARCHAR(191) NULL,
        [commission_agent_label] NVARCHAR(191) NULL,
        [show_commission_agent] BIT NULL,
        [show_qr_code] BIT NULL,
        [qr_code_fields] NVARCHAR(MAX) NULL,
        [round_off_label] NVARCHAR(191) NULL,
        [change_return_label] NVARCHAR(191) NULL,
        [common_settings] NVARCHAR(MAX) NULL,
        [show_reward_point] BIT NULL,
        [show_image] BIT NULL,
        [date_time_format] NVARCHAR(191) NULL,
        [show_previous_bal] BIT NULL,
        [prev_bal_label] NVARCHAR(191) NULL,
        [cn_amount_label] NVARCHAR(191) NULL,
        [table_tax_headings] NVARCHAR(MAX) NULL,
        [product_custom_fields] NVARCHAR(MAX) NULL,
        [contact_custom_fields] NVARCHAR(MAX) NULL,
        [location_custom_fields] NVARCHAR(MAX) NULL,
        [show_expiry] BIT NULL,
        [show_lot] BIT NULL,
        [sales_person_label] NVARCHAR(191) NULL,
        [show_sales_person] BIT NULL,
        [design] NVARCHAR(50) NULL,
        [cn_heading] NVARCHAR(191) NULL,
        [cn_no_label] NVARCHAR(191) NULL,
        [quotation_heading] NVARCHAR(191) NULL,
        [invoice_heading_paid] NVARCHAR(191) NULL,
        [invoice_heading_not_paid] NVARCHAR(191) NULL,
        [quotation_no_prefix] NVARCHAR(191) NULL,
        [module_info] NVARCHAR(MAX) NULL,
        [created_at] DATETIME2 NULL,
        [updated_at] DATETIME2 NULL
        , CONSTRAINT [PK_invoice_layouts] PRIMARY KEY ([id])
    );
END
GO
IF OBJECT_ID(N'[invoice_schemes]', N'U') IS NULL
BEGIN
    CREATE TABLE [invoice_schemes] (
        [id] BIGINT IDENTITY(1,1) NOT NULL,
        [business_id] INT NULL,
        [name] NVARCHAR(191) NULL,
        [scheme_type] NVARCHAR(50) NULL,
        [prefix] NVARCHAR(191) NULL,
        [start_number] INT NULL,
        [invoice_count] INT NULL,
        [total_digits] INT NULL,
        [is_default] BIT NULL,
        [number_type] NVARCHAR(100) NULL,
        [created_at] DATETIME2 NULL,
        [updated_at] DATETIME2 NULL
        , CONSTRAINT [PK_invoice_schemes] PRIMARY KEY ([id])
    );
END
GO
IF OBJECT_ID(N'[lecon]', N'U') IS NULL
BEGIN
    CREATE TABLE [lecon] (
        [id] BIGINT IDENTITY(1,1) NOT NULL,
        [niveau_id] BIGINT NULL,
        [matiere_id] BIGINT NULL,
        [dateFin] NVARCHAR(191) NULL,
        [dateDebut] NVARCHAR(191) NULL,
        [created_at] DATETIME2 NULL,
        [updated_at] DATETIME2 NULL
        , CONSTRAINT [PK_lecon] PRIMARY KEY ([id])
    );
END
GO
IF OBJECT_ID(N'[lecons]', N'U') IS NULL
BEGIN
    CREATE TABLE [lecons] (
        [id] BIGINT IDENTITY(1,1) NOT NULL,
        [niveau_id] BIGINT NULL,
        [matiere_id] BIGINT NULL,
        [dateDebut] NVARCHAR(191) NULL,
        [dateFin] NVARCHAR(191) NULL,
        [created_at] DATETIME2 NULL,
        [updated_at] DATETIME2 NULL
        , CONSTRAINT [PK_lecons] PRIMARY KEY ([id])
    );
END
GO
IF OBJECT_ID(N'[lettre_missions]', N'U') IS NULL
BEGIN
    CREATE TABLE [lettre_missions] (
        [id] BIGINT IDENTITY(1,1) NOT NULL,
        [objet] NVARCHAR(191) NULL,
        [numLettre] NVARCHAR(191) NULL,
        [dateSignature] NVARCHAR(191) NULL,
        [created_by] NVARCHAR(191) NULL,
        [updated_by] NVARCHAR(191) NULL,
        [created_at] DATETIME2 NULL,
        [updated_at] DATETIME2 NULL
        , CONSTRAINT [PK_lettre_missions] PRIMARY KEY ([id])
    );
END
GO
IF OBJECT_ID(N'[lignetransmission_bons]', N'U') IS NULL
BEGIN
    CREATE TABLE [lignetransmission_bons] (
        [id] BIGINT IDENTITY(1,1) NOT NULL,
        [engagement_id] BIGINT NULL,
        [transmission_id] BIGINT NULL,
        [created_at] DATETIME2 NULL,
        [updated_at] DATETIME2 NULL
        , CONSTRAINT [PK_lignetransmission_bons] PRIMARY KEY ([id])
    );
END
GO
IF OBJECT_ID(N'[ligne_achats]', N'U') IS NULL
BEGIN
    CREATE TABLE [ligne_achats] (
        [id] INT IDENTITY(1,1) NOT NULL,
        [product_transaction_id] INT NULL,
        [product_id] INT NULL,
        [variation_id] INT NULL,
        [purchase_order_line_id] INT NULL,
        [quantity] DECIMAL(18,2) NULL,
        [mfg_quantity_used] DECIMAL(18,2) NULL,
        [secondary_unit_quantity] DECIMAL(18,2) NULL,
        [pp_without_discount] DECIMAL(18,2) NULL,
        [purchase_price] DECIMAL(18,2) NULL,
        [discount_percent] DECIMAL(18,2) NULL,
        [purchase_price_inc_tax] DECIMAL(18,2) NULL,
        [item_tax] DECIMAL(18,2) NULL,
        [quantity_sold] DECIMAL(18,2) NULL,
        [quantity_adjusted] DECIMAL(18,2) NULL,
        [quantity_returned] DECIMAL(18,2) NULL,
        [tax_id] INT NULL,
        [exp_date] DATE NULL,
        [mfg_date] DATE NULL,
        [lot_number] NVARCHAR(191) NULL,
        [purchase_requisition_ids] NVARCHAR(191) NULL,
        [sub_unit_id] INT NULL,
        [purchase_requisition_line_id] INT NULL,
        [created_at] DATETIME2 NULL,
        [updated_at] DATETIME2 NULL
        , CONSTRAINT [PK_ligne_achats] PRIMARY KEY ([id])
    );
END
GO
IF OBJECT_ID(N'[ligne_transmission_mandats]', N'U') IS NULL
BEGIN
    CREATE TABLE [ligne_transmission_mandats] (
        [id] BIGINT IDENTITY(1,1) NOT NULL,
        [mandat_id] BIGINT NULL,
        [transmission_id] BIGINT NULL,
        [created_at] DATETIME2 NULL,
        [updated_at] DATETIME2 NULL
        , CONSTRAINT [PK_ligne_transmission_mandats] PRIMARY KEY ([id])
    );
END
GO
IF OBJECT_ID(N'[liquidations]', N'U') IS NULL
BEGIN
    CREATE TABLE [liquidations] (
        [id] BIGINT IDENTITY(1,1) NOT NULL,
        [engagement_id] BIGINT NULL,
        [dateLiquidation] NVARCHAR(191) NULL,
        [observation] NVARCHAR(191) NULL,
        [datePVRecept] NVARCHAR(191) NULL,
        [montantLiquide] NVARCHAR(191) NULL,
        [etat] NVARCHAR(191) NULL,
        [created_at] DATETIME2 NULL,
        [updated_at] DATETIME2 NULL
        , CONSTRAINT [PK_liquidations] PRIMARY KEY ([id])
    );
END
GO
IF OBJECT_ID(N'[lits]', N'U') IS NULL
BEGIN
    CREATE TABLE [lits] (
        [id] BIGINT IDENTITY(1,1) NOT NULL,
        [numero] NVARCHAR(10) NULL,
        [salle_id] BIGINT NULL,
        [type] NVARCHAR(50) NULL,
        [statut] NVARCHAR(50) NULL,
        [description] NVARCHAR(MAX) NULL,
        [prix_journalier] DECIMAL(18,2) NULL,
        [actif] BIT NULL,
        [created_at] DATETIME2 NULL,
        [updated_at] DATETIME2 NULL
        , CONSTRAINT [PK_lits] PRIMARY KEY ([id])
    );
END
GO
IF OBJECT_ID(N'[mandats]', N'U') IS NULL
BEGIN
    CREATE TABLE [mandats] (
        [id] BIGINT IDENTITY(1,1) NOT NULL,
        [engagement_id] BIGINT NULL,
        [liquidation_id] BIGINT NULL,
        [numMandat] NVARCHAR(191) NULL,
        [typePec] NVARCHAR(191) NULL,
        [montant] NVARCHAR(191) NULL,
        [etat] NVARCHAR(191) NULL,
        [dateOrdo] NVARCHAR(191) NULL,
        [dateVisaCfs] NVARCHAR(191) NULL,
        [nomCfs] NVARCHAR(191) NULL,
        [created_at] DATETIME2 NULL,
        [updated_at] DATETIME2 NULL
        , CONSTRAINT [PK_mandats] PRIMARY KEY ([id])
    );
END
GO
IF OBJECT_ID(N'[marches]', N'U') IS NULL
BEGIN
    CREATE TABLE [marches] (
        [id] BIGINT IDENTITY(1,1) NOT NULL,
        [beneficiaire_id] BIGINT NULL,
        [imputation_id] BIGINT NULL,
        [reference] NVARCHAR(191) NULL,
        [objet] NVARCHAR(191) NULL,
        [montantTTC] NVARCHAR(191) NULL,
        [tauxTVA] NVARCHAR(191) NULL,
        [tauxIR] NVARCHAR(191) NULL,
        [dateDemarrage] NVARCHAR(191) NULL,
        [dateFin] NVARCHAR(191) NULL,
        [dateSoumission] NVARCHAR(191) NULL,
        [dateSignature] NVARCHAR(191) NULL,
        [dateNotification] NVARCHAR(191) NULL,
        [dateEnrgImpot] NVARCHAR(191) NULL,
        [desactiver] BIT NULL,
        [created_at] DATETIME2 NULL,
        [updated_at] DATETIME2 NULL
        , CONSTRAINT [PK_marches] PRIMARY KEY ([id])
    );
END
GO
IF OBJECT_ID(N'[matieres]', N'U') IS NULL
BEGIN
    CREATE TABLE [matieres] (
        [id] BIGINT IDENTITY(1,1) NOT NULL,
        [nom] NVARCHAR(191) NULL,
        [created_at] DATETIME2 NULL,
        [updated_at] DATETIME2 NULL
        , CONSTRAINT [PK_matieres] PRIMARY KEY ([id])
    );
END
GO
IF OBJECT_ID(N'[media]', N'U') IS NULL
BEGIN
    CREATE TABLE [media] (
        [id] INT IDENTITY(1,1) NOT NULL,
        [business_id] INT NULL,
        [file_name] NVARCHAR(191) NULL,
        [description] NVARCHAR(MAX) NULL,
        [uploaded_by] INT NULL,
        [model_type] NVARCHAR(191) NULL,
        [model_media_type] NVARCHAR(191) NULL,
        [model_id] BIGINT NULL,
        [created_at] DATETIME2 NULL,
        [updated_at] DATETIME2 NULL
        , CONSTRAINT [PK_media] PRIMARY KEY ([id])
    );
END
GO
IF OBJECT_ID(N'[mercuriales]', N'U') IS NULL
BEGIN
    CREATE TABLE [mercuriales] (
        [id] BIGINT IDENTITY(1,1) NOT NULL,
        [reference] NVARCHAR(191) NULL,
        [designation] NVARCHAR(191) NULL,
        [unite] NVARCHAR(191) NULL,
        [prixUnitaireHT] NVARCHAR(191) NULL,
        [desactiver] BIT NULL,
        [created_by] NVARCHAR(191) NULL,
        [updated_by] NVARCHAR(191) NULL,
        [created_at] DATETIME2 NULL,
        [updated_at] DATETIME2 NULL
        , CONSTRAINT [PK_mercuriales] PRIMARY KEY ([id])
    );
END
GO
IF OBJECT_ID(N'[methode_analyses]', N'U') IS NULL
BEGIN
    CREATE TABLE [methode_analyses] (
        [id] BIGINT IDENTITY(1,1) NOT NULL,
        [nom] NVARCHAR(191) NULL,
        [categorie] NVARCHAR(191) NULL,
        [created_at] DATETIME2 NULL,
        [updated_at] DATETIME2 NULL
        , CONSTRAINT [PK_methode_analyses] PRIMARY KEY ([id])
    );
END
GO
IF OBJECT_ID(N'[missions]', N'U') IS NULL
BEGIN
    CREATE TABLE [missions] (
        [id] BIGINT IDENTITY(1,1) NOT NULL,
        [lettre_mission_id] BIGINT NULL,
        [imputation_id] BIGINT NULL,
        [beneficiaire_id] BIGINT NULL,
        [numMission] NVARCHAR(191) NULL,
        [tauxJournalier] NVARCHAR(191) NULL,
        [objet] NVARCHAR(191) NULL,
        [lieu] NVARCHAR(191) NULL,
        [accompagnateur] NVARCHAR(191) NULL,
        [modeTransport] NVARCHAR(191) NULL,
        [dateDepart] NVARCHAR(191) NULL,
        [dateRetour] NVARCHAR(191) NULL,
        [dateSignatureMission] NVARCHAR(191) NULL,
        [nombreJour] NVARCHAR(191) NULL,
        [decompteTotal] NVARCHAR(191) NULL,
        [destination] NVARCHAR(191) NULL,
        [etat] NVARCHAR(50) NULL,
        [desactiver] BIT NULL,
        [tauxAvance] NVARCHAR(191) NULL,
        [decompteAvance] NVARCHAR(191) NULL,
        [role] NVARCHAR(50) NULL,
        [created_by] NVARCHAR(191) NULL,
        [updated_by] NVARCHAR(191) NULL,
        [created_at] DATETIME2 NULL,
        [updated_at] DATETIME2 NULL
        , CONSTRAINT [PK_missions] PRIMARY KEY ([id])
    );
END
GO
IF OBJECT_ID(N'[model_has_permissions]', N'U') IS NULL
BEGIN
    CREATE TABLE [model_has_permissions] (
        [permission_id] BIGINT NOT NULL,
        [model_type] NVARCHAR(191) NOT NULL,
        [model_id] BIGINT NOT NULL
        , CONSTRAINT [PK_model_has_permissions] PRIMARY KEY ([permission_id], [model_id], [model_type])
    );
END
GO
IF OBJECT_ID(N'[model_has_roles]', N'U') IS NULL
BEGIN
    CREATE TABLE [model_has_roles] (
        [role_id] BIGINT NOT NULL,
        [model_type] NVARCHAR(191) NOT NULL,
        [model_id] BIGINT NOT NULL
        , CONSTRAINT [PK_model_has_roles] PRIMARY KEY ([role_id], [model_id], [model_type])
    );
END
GO
IF OBJECT_ID(N'[mois]', N'U') IS NULL
BEGIN
    CREATE TABLE [mois] (
        [id] BIGINT IDENTITY(1,1) NOT NULL,
        [nom] NVARCHAR(191) NULL,
        [mois] NVARCHAR(191) NULL,
        [created_at] DATETIME2 NULL,
        [updated_at] DATETIME2 NULL
        , CONSTRAINT [PK_mois] PRIMARY KEY ([id])
    );
END
GO
IF OBJECT_ID(N'[mouvement_caisses]', N'U') IS NULL
BEGIN
    CREATE TABLE [mouvement_caisses] (
        [id] BIGINT IDENTITY(1,1) not NULL,
        [bon_prise_en_charge_id] BIGINT NULL,
        [caisse_id] BIGINT NULL,
        [sens] NVARCHAR(191) NULL,
        [codeOperation] NVARCHAR(191) NULL,
        [dateOperation] NVARCHAR(191) NULL,
        [montant] NVARCHAR(191) NULL,
        [info] NVARCHAR(191) NULL,
        [created_at] DATETIME2 NULL,
        [updated_at] DATETIME2 NULL
        , CONSTRAINT [PK_mouvement_caisses] PRIMARY KEY ([id])
    );
END
GO
IF OBJECT_ID(N'[natures]', N'U') IS NULL
BEGIN
    CREATE TABLE [natures] (
        [id] BIGINT IDENTITY(1,1) NOT NULL,
        [intitule] NVARCHAR(191) NULL,
        [created_at] DATETIME2 NULL,
        [updated_at] DATETIME2 NULL
        , CONSTRAINT [PK_natures] PRIMARY KEY ([id])
    );
END
GO
IF OBJECT_ID(N'[nature_ecos]', N'U') IS NULL
BEGIN
    CREATE TABLE [nature_ecos] (
        [id] BIGINT IDENTITY(1,1) not NULL,
        [code] NVARCHAR(191) NULL,
        [intitule] NVARCHAR(191) NULL,
        [imputation] NVARCHAR(191) NULL,
        [nature_eco_id] BIGINT NULL,
        [created_by] NVARCHAR(191) NULL,
        [updated_by] NVARCHAR(191) NULL,
        [created_at] DATETIME2 NULL,
        [updated_at] DATETIME2 NULL
        , CONSTRAINT [PK_nature_ecos] PRIMARY KEY ([id])
    );
END
GO
IF OBJECT_ID(N'[niveaux]', N'U') IS NULL
BEGIN
    CREATE TABLE [niveaux] (
        [id] BIGINT IDENTITY(1,1) NOT NULL,
        [intitule] NVARCHAR(191) NULL,
        [code] NVARCHAR(191) NULL,
        [created_at] DATETIME2 NULL,
        [updated_at] DATETIME2 NULL
        , CONSTRAINT [PK_niveaux] PRIMARY KEY ([id])
    );
END
GO
IF OBJECT_ID(N'[notes]', N'U') IS NULL
BEGIN
    CREATE TABLE [notes] (
        [id] BIGINT IDENTITY(1,1) NOT NULL,
        [niveau_id] BIGINT NULL,
        [matiere_id] BIGINT NULL,
        [eleve_id] BIGINT NULL,
        [note] NVARCHAR(191) NULL,
        [created_at] DATETIME2 NULL,
        [updated_at] DATETIME2 NULL
        , CONSTRAINT [PK_notes] PRIMARY KEY ([id])
    );
END
GO
IF OBJECT_ID(N'[notices]', N'U') IS NULL
BEGIN
    CREATE TABLE [notices] (
        [id] BIGINT IDENTITY(1,1) NOT NULL,
        [id_com] INT NULL,
        [nom] NVARCHAR(191) NULL,
        [fonction] NVARCHAR(191) NULL,
        [tel] INT NULL,
        [site] NVARCHAR(191) NULL,
        [notice] NVARCHAR(191) NULL,
        [created_at] DATETIME2 NULL,
        [updated_at] DATETIME2 NULL
        , CONSTRAINT [PK_notices] PRIMARY KEY ([id])
    );
END
GO
IF OBJECT_ID(N'[notifications]', N'U') IS NULL
BEGIN
    CREATE TABLE [notifications] (
        [id] INT IDENTITY(1,1) NOT NULL,
        [type] INT NULL,
        [notification_for] INT NULL,
        [user_id] BIGINT NULL,
        [notifiable_id] BIGINT NULL,
        [notifiable_type] BIGINT NULL,
        [title] NVARCHAR(191) NULL,
        [text] NVARCHAR(MAX) NULL,
        [meta] NVARCHAR(MAX) NULL,
        [read_at] DATETIME2 NULL,
        [created_at] DATETIME2 NULL,
        [updated_at] DATETIME2 NULL
        , CONSTRAINT [PK_notifications] PRIMARY KEY ([id])
    );
END
GO
IF OBJECT_ID(N'[notification_templates]', N'U') IS NULL
BEGIN
    CREATE TABLE [notification_templates] (
        [id] INT IDENTITY(1,1) NOT NULL,
        [business_id] INT NULL,
        [template_for] NVARCHAR(191) NULL,
        [email_body] NVARCHAR(MAX) NULL,
        [sms_body] NVARCHAR(MAX) NULL,
        [whatsapp_text] NVARCHAR(MAX) NULL,
        [subject] NVARCHAR(191) NULL,
        [cc] NVARCHAR(191) NULL,
        [bcc] NVARCHAR(191) NULL,
        [auto_send] BIT NULL,
        [auto_send_sms] BIT NULL,
        [auto_send_wa_notif] BIT NULL,
        [created_at] DATETIME2 NULL,
        [updated_at] DATETIME2 NULL
        , CONSTRAINT [PK_notification_templates] PRIMARY KEY ([id])
    );
END
GO
IF OBJECT_ID(N'[nouveaux_nes]', N'U') IS NULL
BEGIN
    CREATE TABLE [nouveaux_nes] (
        [id] BIGINT IDENTITY(1,1) NOT NULL,
        [accouchement_id] BIGINT NULL,
        [nom] NVARCHAR(191) NULL,
        [prenom] NVARCHAR(191) NULL,
        [sexe] NVARCHAR(50) NULL,
        [poids_naissance] INT NULL,
        [taille_naissance] INT NULL,
        [perimetre_cranien] INT NULL,
        [apgar_1min] TINYINT NULL,
        [apgar_5min] TINYINT NULL,
        [numero_declaration] NVARCHAR(191) NULL,
        [date_declaration] DATE NULL,
        [vaccin_bcg] BIT NULL,
        [tests_depistage] NVARCHAR(MAX) NULL,
        [complications] NVARCHAR(MAX) NULL,
        [statut] NVARCHAR(50) NULL,
        [created_at] DATETIME2 NULL,
        [updated_at] DATETIME2 NULL
        , CONSTRAINT [PK_nouveaux_nes] PRIMARY KEY ([id])
    );
END
GO
IF OBJECT_ID(N'[observation_medicals]', N'U') IS NULL
BEGIN
    CREATE TABLE [observation_medicals] (
        [id] BIGINT IDENTITY(1,1) NOT NULL,
        [patient_id] BIGINT NULL,
        [personnel_id] BIGINT NULL,
        [contenu] NVARCHAR(MAX) NULL,
        [observed_at] DATETIME2 NULL,
        [created_at] DATETIME2 NULL,
        [updated_at] DATETIME2 NULL
        , CONSTRAINT [PK_observation_medicals] PRIMARY KEY ([id])
    );
END
GO
IF OBJECT_ID(N'[operations]', N'U') IS NULL
BEGIN
    CREATE TABLE [operations] (
        [id] BIGINT IDENTITY(1,1) NOT NULL,
        [patient_id] BIGINT NULL,
        [personnel_id] BIGINT NULL,
        [service_id] BIGINT NULL,
        [personnel_id2] BIGINT NULL,
        [business_id] INT NULL,
        [location_id] INT NULL,
        [session_ticket_id] BIGINT NULL,
        [acte_medical_id] BIGINT NULL,
        [code] NVARCHAR(191) NULL,
        [duree] NVARCHAR(191) NULL,
        [motif] NVARCHAR(MAX) NULL,
        [status] NVARCHAR(50) NULL,
        [resultats] NVARCHAR(MAX) NULL,
        [date_operation] DATETIME2 NULL,
        [created_at] DATETIME2 NULL,
        [updated_at] DATETIME2 NULL,
        [type_operation_id] BIGINT NULL,
        [type_intervention_id] BIGINT NULL,
        [type_anesthesie_id] BIGINT NULL
        , CONSTRAINT [PK_operations] PRIMARY KEY ([id])
    );
END
GO
IF OBJECT_ID(N'[op_types_anesthesies]', N'U') IS NULL
BEGIN
    CREATE TABLE [op_types_anesthesies] (
        [id] BIGINT IDENTITY(1,1) NOT NULL,
        [code] NVARCHAR(10) NULL,
        [libelle] NVARCHAR(100) NULL,
        [description] NVARCHAR(MAX) NULL,
        [created_at] DATETIME2 NULL,
        [updated_at] DATETIME2 NULL
        , CONSTRAINT [PK_op_types_anesthesies] PRIMARY KEY ([id])
    );
END
GO
IF OBJECT_ID(N'[op_types_interventions]', N'U') IS NULL
BEGIN
    CREATE TABLE [op_types_interventions] (
        [id] BIGINT IDENTITY(1,1) NOT NULL,
        [code] NVARCHAR(100) NULL,
        [libelle] NVARCHAR(100) NULL,
        [description] NVARCHAR(MAX) NULL,
        [created_at] DATETIME2 NULL,
        [updated_at] DATETIME2 NULL
        , CONSTRAINT [PK_op_types_interventions] PRIMARY KEY ([id])
    );
END
GO
IF OBJECT_ID(N'[op_types_operations]', N'U') IS NULL
BEGIN
    CREATE TABLE [op_types_operations] (
        [id] BIGINT IDENTITY(1,1) NOT NULL,
        [libelle] NVARCHAR(150) NULL,
        [code] NVARCHAR(50) NULL,
        [description] NVARCHAR(MAX) NULL,
        [actif] BIT NULL,
        [created_at] DATETIME2 NULL,
        [updated_at] DATETIME2 NULL
        , CONSTRAINT [PK_op_types_operations] PRIMARY KEY ([id])
    );
END
GO
IF OBJECT_ID(N'[ordonnances]', N'U') IS NULL
BEGIN
    CREATE TABLE [ordonnances] (
        [id] BIGINT IDENTITY(1,1) not NULL,
        [updated_by] INT NULL,
        [created_by] INT NULL,
        [operation_id] BIGINT NULL,
        [consultation_id] BIGINT NULL,
        [patient_id] BIGINT NULL,
        [personnel_id] BIGINT NULL,
        [code] NVARCHAR(191) NULL,
        [created_at] DATETIME2 NULL,
        [updated_at] DATETIME2 NULL
        , CONSTRAINT [PK_ordonnances] PRIMARY KEY ([id])
    );
END
GO
IF OBJECT_ID(N'[ordonnance_prescrites]', N'U') IS NULL
BEGIN
    CREATE TABLE [ordonnance_prescrites] (
        [id] BIGINT IDENTITY(1,1) NOT NULL,
        [produit] NVARCHAR(50) NULL,
        [ordonnance_id] BIGINT NULL,
        [posologie] NVARCHAR(191) NULL,
        [quantite] INT NULL,
        [date] NVARCHAR(191) NULL,
        [created_at] DATETIME2 NULL,
        [updated_at] DATETIME2 NULL
        , CONSTRAINT [PK_ordonnance_prescrites] PRIMARY KEY ([id])
    );
END
GO
IF OBJECT_ID(N'[ordonnance_servies]', N'U') IS NULL
BEGIN
    CREATE TABLE [ordonnance_servies] (
        [id] BIGINT IDENTITY(1,1) NOT NULL,
        [produit_id] BIGINT NULL,
        [ordonnance_id] BIGINT NULL,
        [created_at] DATETIME2 NULL,
        [updated_at] DATETIME2 NULL
        , CONSTRAINT [PK_ordonnance_servies] PRIMARY KEY ([id])
    );
END
GO
IF OBJECT_ID(N'[ordonnateurs]', N'U') IS NULL
BEGIN
    CREATE TABLE [ordonnateurs] (
        [id] BIGINT IDENTITY(1,1) NOT NULL,
        [personnel_id] BIGINT NULL,
        [ordonnateur_id] BIGINT NULL,
        [created_by] NVARCHAR(191) NULL,
        [updated_by] NVARCHAR(191) NULL,
        [created_at] DATETIME2 NULL,
        [updated_at] DATETIME2 NULL
        , CONSTRAINT [PK_ordonnateurs] PRIMARY KEY ([id])
    );
END
GO
IF OBJECT_ID(N'[ordres]', N'U') IS NULL
BEGIN
    CREATE TABLE [ordres] (
        [id] BIGINT IDENTITY(1,1) NOT NULL,
        [intitule] NVARCHAR(191) NULL,
        [created_at] DATETIME2 NULL,
        [updated_at] DATETIME2 NULL
        , CONSTRAINT [PK_ordres] PRIMARY KEY ([id])
    );
END
GO
IF OBJECT_ID(N'[ordre_entrees]', N'U') IS NULL
BEGIN
    CREATE TABLE [ordre_entrees] (
        [id] BIGINT IDENTITY(1,1) NOT NULL,
        [exercice_budgetaire_id] BIGINT NULL,
        [provenance_id] BIGINT NULL,
        [NumeroOrdre] NVARCHAR(191) NULL,
        [DateComptable] NVARCHAR(191) NULL,
        [etat] NVARCHAR(191) NULL,
        [created_at] DATETIME2 NULL,
        [updated_at] DATETIME2 NULL
        , CONSTRAINT [PK_ordre_entrees] PRIMARY KEY ([id])
    );
END
GO
IF OBJECT_ID(N'[orientations]', N'U') IS NULL
BEGIN
    CREATE TABLE [orientations] (
        [id] BIGINT IDENTITY(1,1) NOT NULL,
        [patient_id] BIGINT NULL,
        [departement_id] BIGINT NULL,
        [acte_medical_id] BIGINT NULL,
        [personnel_id] BIGINT NULL,
        [auteur] BIGINT NULL,
        [statut_paiement] INT NULL,
        [created_at] DATETIME2 NULL,
        [updated_at] DATETIME2 NULL
        , CONSTRAINT [PK_orientations] PRIMARY KEY ([id])
    );
END
GO
IF OBJECT_ID(N'[paies]', N'U') IS NULL
BEGIN
    CREATE TABLE [paies] (
        [id] BIGINT IDENTITY(1,1) NOT NULL,
        [categories_id] BIGINT NULL,
        [echellons_id] BIGINT NULL,
        [personnels_id] BIGINT NULL,
        [element_salaires_id] BIGINT NULL,
        [periode_id] BIGINT NULL,
        [somme] NVARCHAR(191) NULL,
        [etat] NVARCHAR(191) NULL,
        [created_at] DATETIME2 NULL,
        [updated_at] DATETIME2 NULL
        , CONSTRAINT [PK_paies] PRIMARY KEY ([id])
    );
END
GO
IF OBJECT_ID(N'[parametres]', N'U') IS NULL
BEGIN
    CREATE TABLE [parametres] (
        [id] BIGINT IDENTITY(1,1) NOT NULL,
        [categorie_comptable_id] BIGINT NULL,
        [taxe_id] BIGINT NULL,
        [created_at] DATETIME2 NULL,
        [updated_at] DATETIME2 NULL
        , CONSTRAINT [PK_parametres] PRIMARY KEY ([id])
    );
END
GO
IF OBJECT_ID(N'[parametre_patients]', N'U') IS NULL
BEGIN
    CREATE TABLE [parametre_patients] (
        [id] BIGINT IDENTITY(1,1) NOT NULL,
        [libelle] NVARCHAR(191) NULL,
        [valeurMin] INT NULL,
        [valeurMax] INT NULL,
        [uniteMesure] NVARCHAR(191) NULL,
        [created_at] DATETIME2 NULL,
        [updated_at] DATETIME2 NULL
        , CONSTRAINT [PK_parametre_patients] PRIMARY KEY ([id])
    );
END
GO
IF OBJECT_ID(N'[partenaires]', N'U') IS NULL
BEGIN
    CREATE TABLE [partenaires] (
        [id] BIGINT IDENTITY(1,1) NOT NULL,
        [libelle] NVARCHAR(191) NULL,
        [sigle] NVARCHAR(191) NULL,
        [created_at] DATETIME2 NULL,
        [updated_at] DATETIME2 NULL
        , CONSTRAINT [PK_partenaires] PRIMARY KEY ([id])
    );
END
GO
IF OBJECT_ID(N'[password_reset_tokens]', N'U') IS NULL
BEGIN
    CREATE TABLE [password_reset_tokens] (
        [email] NVARCHAR(191) NOT NULL,
        [token] NVARCHAR(191) NULL,
        [created_at] DATETIME2 NULL
        , CONSTRAINT [PK_password_reset_tokens] PRIMARY KEY ([email])
    );
END
GO
IF OBJECT_ID(N'[pathologie_chroniques]', N'U') IS NULL
BEGIN
    CREATE TABLE [pathologie_chroniques] (
        [id] BIGINT IDENTITY(1,1) NOT NULL,
        [patient_id] BIGINT NULL,
        [nom] NVARCHAR(191) NULL,
        [description] NVARCHAR(MAX) NULL,
        [date_diagnostic] DATE NULL,
        [created_at] DATETIME2 NULL,
        [updated_at] DATETIME2 NULL
        , CONSTRAINT [PK_pathologie_chroniques] PRIMARY KEY ([id])
    );
END
GO
IF OBJECT_ID(N'[patients]', N'U') IS NULL
BEGIN
    CREATE TABLE [patients] (
        [id] BIGINT IDENTITY(1,1) NOT NULL,
        [user_id] BIGINT NULL,
        [contact_id] INT NULL,
        [quartier_id] BIGINT NULL,
        [personne_contacter_id] BIGINT NULL,
        [code_patient] NVARCHAR(191) NULL,
        [save_date] DATETIME2 NULL,
        [deces] TINYINT NULL,
        [updated_by] INT NULL,
        [created_by] INT NULL,
        [is_extenal_patient] TINYINT NULL,
        [is_present_hospitalization] TINYINT NULL,
        [created_at] DATETIME2 NULL,
        [updated_at] DATETIME2 NULL,
        [est_enceinte] BIT NULL
        , CONSTRAINT [PK_patients] PRIMARY KEY ([id])
    );
END
GO
IF OBJECT_ID(N'[patient_plaintes]', N'U') IS NULL
BEGIN
    CREATE TABLE [patient_plaintes] (
        [id] BIGINT IDENTITY(1,1) NOT NULL,
        [description] NVARCHAR(191) NULL,
        [created_at] DATETIME2 NULL,
        [updated_at] DATETIME2 NULL
        , CONSTRAINT [PK_patient_plaintes] PRIMARY KEY ([id])
    );
END
GO
IF OBJECT_ID(N'[patient_references]', N'U') IS NULL
BEGIN
    CREATE TABLE [patient_references] (
        [id] BIGINT IDENTITY(1,1) NOT NULL,
        [patient_id] BIGINT NULL,
        [prescripteur_id] BIGINT NULL,
        [referencable_type] NVARCHAR(191) NULL,
        [referencable_id] BIGINT NULL,
        [prescripteur_quote_part_id] BIGINT NULL,
        [numero_reference] NVARCHAR(191) NULL,
        [montant_intervention] DECIMAL(18,2) NULL,
        [pourcentage_applique] DECIMAL(18,2) NULL,
        [montant_quote_part] DECIMAL(18,2) NULL,
        [date_intervention] DATE NULL,
        [date_paiement] DATE NULL,
        [paye] BIT NULL,
        [mode_paiement] NVARCHAR(191) NULL,
        [numero_facture] NVARCHAR(191) NULL,
        [notes] NVARCHAR(MAX) NULL,
        [statut] NVARCHAR(191) NULL,
        [created_at] DATETIME2 NULL,
        [updated_at] DATETIME2 NULL
        , CONSTRAINT [PK_patient_references] PRIMARY KEY ([id])
    );
END
GO
IF OBJECT_ID(N'[payements]', N'U') IS NULL
BEGIN
    CREATE TABLE [payements] (
        [id] BIGINT IDENTITY(1,1) NOT NULL,
        [annee_academique_id] BIGINT NULL,
        [eleve_id] BIGINT NULL,
        [vente_id] BIGINT NULL,
        [montant] NVARCHAR(191) NULL,
        [mode] NVARCHAR(191) NULL,
        [date] NVARCHAR(191) NULL,
        [created_at] DATETIME2 NULL,
        [updated_at] DATETIME2 NULL
        , CONSTRAINT [PK_payements] PRIMARY KEY ([id])
    );
END
GO
IF OBJECT_ID(N'[payment_patient_reference]', N'U') IS NULL
BEGIN
    CREATE TABLE [payment_patient_reference] (
        [id] BIGINT IDENTITY(1,1) NOT NULL,
        [transaction_payment_id] INT NULL,
        [patient_reference_id] BIGINT NULL,
        [amount] DECIMAL(18,2) NULL,
        [created_at] DATETIME2 NULL,
        [updated_at] DATETIME2 NULL
        , CONSTRAINT [PK_payment_patient_reference] PRIMARY KEY ([id])
    );
END
GO
IF OBJECT_ID(N'[pays]', N'U') IS NULL
BEGIN
    CREATE TABLE [pays] (
        [id] BIGINT IDENTITY(1,1) NOT NULL,
        [nom] NVARCHAR(191) NULL,
        [currency] NVARCHAR(191) NULL,
        [code] NVARCHAR(191) NULL,
        [symbol] NVARCHAR(191) NULL,
        [thousand_separator] NVARCHAR(191) NULL,
        [decimal_separator] NVARCHAR(191) NULL,
        [created_at] DATETIME2 NULL,
        [updated_at] DATETIME2 NULL
        , CONSTRAINT [PK_pays] PRIMARY KEY ([id])
    );
END
GO
IF OBJECT_ID(N'[periodes]', N'U') IS NULL
BEGIN
    CREATE TABLE [periodes] (
        [id] BIGINT IDENTITY(1,1) NOT NULL,
        [mois_id] BIGINT NULL,
        [annee_id] BIGINT NULL,
        [created_at] DATETIME2 NULL,
        [updated_at] DATETIME2 NULL
        , CONSTRAINT [PK_periodes] PRIMARY KEY ([id])
    );
END
GO
IF OBJECT_ID(N'[periode_academiques]', N'U') IS NULL
BEGIN
    CREATE TABLE [periode_academiques] (
        [id] BIGINT IDENTITY(1,1) NOT NULL,
        [niveau_id] BIGINT NULL,
        [matiere_id] BIGINT NULL,
        [annee_academique_id] BIGINT NULL,
        [debut] NVARCHAR(191) NULL,
        [dateFin] NVARCHAR(191) NULL,
        [created_at] DATETIME2 NULL,
        [updated_at] DATETIME2 NULL
        , CONSTRAINT [PK_periode_academiques] PRIMARY KEY ([id])
    );
END
GO
IF OBJECT_ID(N'[permissions]', N'U') IS NULL
BEGIN
    CREATE TABLE [permissions] (
        [id] BIGINT IDENTITY(1,1) NOT NULL,
        [name] NVARCHAR(191) NULL,
        [guard_name] NVARCHAR(191) NULL,
        [created_at] DATETIME2 NULL,
        [updated_at] DATETIME2 NULL
        , CONSTRAINT [PK_permissions] PRIMARY KEY ([id])
    );
END
GO
IF OBJECT_ID(N'[personnels]', N'U') IS NULL
BEGIN
    CREATE TABLE [personnels] (
        [id] BIGINT IDENTITY(1,1) NOT NULL,
        [user_id] BIGINT NULL,
        [statut_id] BIGINT NULL,
        [corps_metier_id] BIGINT NULL,
        [matricule] NVARCHAR(191) NULL,
        [date_prise_service] NVARCHAR(191) NULL,
        [date_recrutement] NVARCHAR(191) NULL,
        [created_at] DATETIME2 NULL,
        [updated_at] DATETIME2 NULL
        , CONSTRAINT [PK_personnels] PRIMARY KEY ([id])
    );
END
GO
IF OBJECT_ID(N'[personnes]', N'U') IS NULL
BEGIN
    CREATE TABLE [personnes] (
        [id] BIGINT IDENTITY(1,1) NOT NULL,
        [nom] NVARCHAR(191) NULL,
        [prenom] NVARCHAR(191) NULL,
        [created_at] DATETIME2 NULL,
        [updated_at] DATETIME2 NULL
        , CONSTRAINT [PK_personnes] PRIMARY KEY ([id])
    );
END
GO
IF OBJECT_ID(N'[personne_contacters]', N'U') IS NULL
BEGIN
    CREATE TABLE [personne_contacters] (
        [id] BIGINT IDENTITY(1,1) NOT NULL,
        [nom] NVARCHAR(191) NULL,
        [prenom] NVARCHAR(191) NULL,
        [tel_pers_contacter] NVARCHAR(191) NULL,
        [email_pers] NVARCHAR(191) NULL,
        [relation] NVARCHAR(191) NULL,
        [created_at] DATETIME2 NULL,
        [updated_at] DATETIME2 NULL
        , CONSTRAINT [PK_personne_contacters] PRIMARY KEY ([id])
    );
END
GO
IF OBJECT_ID(N'[plan_comptables]', N'U') IS NULL
BEGIN
    CREATE TABLE [plan_comptables] (
        [id] BIGINT IDENTITY(1,1) NOT NULL,
        [code] NVARCHAR(191) NULL,
        [created_at] DATETIME2 NULL,
        [updated_at] DATETIME2 NULL
        , CONSTRAINT [PK_plan_comptables] PRIMARY KEY ([id])
    );
END
GO
IF OBJECT_ID(N'[plan_comptable_matieres]', N'U') IS NULL
BEGIN
    CREATE TABLE [plan_comptable_matieres] (
        [id] BIGINT IDENTITY(1,1) NOT NULL,
        [code] NVARCHAR(191) NULL,
        [nomCompte] NVARCHAR(191) NULL,
        [typeCompte] NVARCHAR(191) NULL,
        [created_at] DATETIME2 NULL,
        [updated_at] DATETIME2 NULL
        , CONSTRAINT [PK_plan_comptable_matieres] PRIMARY KEY ([id])
    );
END
GO
IF OBJECT_ID(N'[prelevements]', N'U') IS NULL
BEGIN
    CREATE TABLE [prelevements] (
        [id] BIGINT IDENTITY(1,1) NOT NULL,
        [code_prelevement] NVARCHAR(191) NULL,
        [examen_id] BIGINT NULL,
        [type_prelevement_id] BIGINT NULL,
        [personnel_id] BIGINT NULL,
        [date] NVARCHAR(191) NULL,
        [etat] NVARCHAR(191) NULL,
        [code_flagon] NVARCHAR(191) NULL,
        [resultat] NVARCHAR(191) NULL,
        [updated_by] INT NULL,
        [created_by] INT NULL,
        [created_at] DATETIME2 NULL,
        [updated_at] DATETIME2 NULL,
        [bulletin_servie_id] BIGINT NULL
        , CONSTRAINT [PK_prelevements] PRIMARY KEY ([id])
    );
END
GO
IF OBJECT_ID(N'[prescripteurs]', N'U') IS NULL
BEGIN
    CREATE TABLE [prescripteurs] (
        [id] BIGINT IDENTITY(1,1) NOT NULL,
        [nom] NVARCHAR(191) NULL,
        [prenom] NVARCHAR(191) NULL,
        [specialite] NVARCHAR(191) NULL,
        [telephone] NVARCHAR(191) NULL,
        [email] NVARCHAR(191) NULL,
        [adresse] NVARCHAR(191) NULL,
        [ville] NVARCHAR(191) NULL,
        [code_postal] NVARCHAR(191) NULL,
        [numero_ordre] NVARCHAR(191) NULL,
        [etablissement] NVARCHAR(191) NULL,
        [actif] BIT NULL,
        [notes] NVARCHAR(MAX) NULL,
        [created_at] DATETIME2 NULL,
        [updated_at] DATETIME2 NULL,
        [deleted_at] DATETIME2 NULL,
        [business_id] INT NULL,
        [business_location_id] INT NULL,
        [solde_paiements] DECIMAL(18,2) NULL
        , CONSTRAINT [PK_prescripteurs] PRIMARY KEY ([id])
    );
END
GO
IF OBJECT_ID(N'[prescripteur_quote_parts]', N'U') IS NULL
BEGIN
    CREATE TABLE [prescripteur_quote_parts] (
        [id] BIGINT IDENTITY(1,1) not NULL,
        [prescripteur_id] BIGINT NULL,
        [ticketable_type] NVARCHAR(191) NULL,
        [ticketable_id] BIGINT NULL,
        [pourcentage] DECIMAL(18,2) NULL,
        [montant_fixe] DECIMAL(18,2) NULL,
        [type_calcul] NVARCHAR(50) NULL,
        [montant_minimum] DECIMAL(18,2) NULL,
        [montant_maximum] DECIMAL(18,2) NULL,
        [date_debut] DATE NULL,
        [date_fin] DATE NULL,
        [actif] BIT NULL,
        [notes] NVARCHAR(MAX) NULL,
        [created_at] DATETIME2 NULL,
        [updated_at] DATETIME2 NULL,
        [deleted_at] DATETIME2 NULL
        , CONSTRAINT [PK_prescripteur_quote_parts] PRIMARY KEY ([id])
    );
END
GO
IF OBJECT_ID(N'[prescriptions]', N'U') IS NULL
BEGIN
    CREATE TABLE [prescriptions] (
        [id] BIGINT IDENTITY(1,1) NOT NULL,
        [parent_prescription_id] BIGINT NULL,
        [patient_id] BIGINT NULL,
        [doctor_id] BIGINT NULL,
        [contextable_type] NVARCHAR(191) NULL,
        [contextable_id] BIGINT NULL,
        [business_id] INT NULL,
        [location_id] INT NULL,
        [service_id] BIGINT NULL,
        [code_prescription] NVARCHAR(191) NULL,
        [prescription_date] DATETIME2 NULL,
        [notes] NVARCHAR(MAX) NULL,
        [observation] NVARCHAR(MAX) NULL,
        [motif_consultation] NVARCHAR(MAX) NULL,
        [autre_service] NVARCHAR(MAX) NULL,
        [type] NVARCHAR(50) NULL,
        [status] NVARCHAR(50) NULL,
        [nature_type] NVARCHAR(50) NULL,
        [diagnostic] NVARCHAR(MAX) NULL,
        [created_by] NVARCHAR(191) NULL,
        [updated_by] NVARCHAR(191) NULL,
        [created_at] DATETIME2 NULL,
        [updated_at] DATETIME2 NULL
        , CONSTRAINT [PK_prescriptions] PRIMARY KEY ([id])
    );
END
GO
IF OBJECT_ID(N'[prescription_acte_medicals]', N'U') IS NULL
BEGIN
    CREATE TABLE [prescription_acte_medicals] (
        [id] BIGINT IDENTITY(1,1) NOT NULL,
        [prescription_id] BIGINT NULL,
        [acte_medical_id] BIGINT NULL,
        [acte_medical_custom] NVARCHAR(191) NULL,
        [quantity] INT NULL,
        [prescription_date] DATETIME2 NULL,
        [created_at] DATETIME2 NULL,
        [updated_at] DATETIME2 NULL
        , CONSTRAINT [PK_prescription_acte_medicals] PRIMARY KEY ([id])
    );
END
GO
IF OBJECT_ID(N'[prescription_examens]', N'U') IS NULL
BEGIN
    CREATE TABLE [prescription_examens] (
        [id] BIGINT IDENTITY(1,1) NOT NULL,
        [prescription_id] BIGINT NULL,
        [examen_id] BIGINT NULL,
        [quantity] INT NULL,
        [examen_custom] NVARCHAR(191) NULL,
        [prescription_date] DATETIME2 NULL,
        [exam_result_available] BIT NULL,
        [created_at] DATETIME2 NULL,
        [updated_at] DATETIME2 NULL
        , CONSTRAINT [PK_prescription_examens] PRIMARY KEY ([id])
    );
END
GO
IF OBJECT_ID(N'[prescription_items]', N'U') IS NULL
BEGIN
    CREATE TABLE [prescription_items] (
        [id] BIGINT IDENTITY(1,1) NOT NULL,
        [prescription_id] BIGINT NULL,
        [type] NVARCHAR(191) NULL,
        [item_id] BIGINT NULL,
        [item_type] NVARCHAR(191) NULL,
        [posologie] NVARCHAR(191) NULL,
        [frequence] NVARCHAR(191) NULL,
        [duree] INT NULL,
        [commentaires] NVARCHAR(MAX) NULL,
        [created_at] DATETIME2 NULL,
        [updated_at] DATETIME2 NULL
        , CONSTRAINT [PK_prescription_items] PRIMARY KEY ([id])
    );
END
GO
IF OBJECT_ID(N'[prescription_medications]', N'U') IS NULL
BEGIN
    CREATE TABLE [prescription_medications] (
        [id] BIGINT IDENTITY(1,1) NOT NULL,
        [prescription_id] BIGINT NULL,
        [medication_id] BIGINT NULL,
        [unit_id] INT NULL,
        [medicament_custom] NVARCHAR(50) NULL,
        [quantity] NVARCHAR(50) NULL,
        [posology] NVARCHAR(MAX) NULL,
        [duration] NVARCHAR(50) NULL,
        [created_at] DATETIME2 NULL,
        [updated_at] DATETIME2 NULL,
        [prescription_date] DATETIME2 NULL,
        [voie] NVARCHAR(50) NULL
        , CONSTRAINT [PK_prescription_medications] PRIMARY KEY ([id])
    );
END
GO
IF OBJECT_ID(N'[prescription_prescription_types]', N'U') IS NULL
BEGIN
    CREATE TABLE [prescription_prescription_types] (
        [id] BIGINT IDENTITY(1,1) NOT NULL,
        [prescription_id] BIGINT NULL,
        [prescription_type] NVARCHAR(50) NULL,
        [created_at] DATETIME2 NULL,
        [updated_at] DATETIME2 NULL
        , CONSTRAINT [PK_prescription_prescription_types] PRIMARY KEY ([id])
    );
END
GO
IF OBJECT_ID(N'[pricing_rules]', N'U') IS NULL
BEGIN
    CREATE TABLE [pricing_rules] (
        [id] BIGINT IDENTITY(1,1) NOT NULL,
        [category] NVARCHAR(50) NULL,
        [departement_id] BIGINT NULL,
        [discount_type] NVARCHAR(50) NULL,
        [discount_value] DECIMAL(18,2) NULL,
        [created_at] DATETIME2 NULL,
        [updated_at] DATETIME2 NULL
        , CONSTRAINT [PK_pricing_rules] PRIMARY KEY ([id])
    );
END
GO
IF OBJECT_ID(N'[primes]', N'U') IS NULL
BEGIN
    CREATE TABLE [primes] (
        [id] BIGINT IDENTITY(1,1) NOT NULL,
        [code] NVARCHAR(191) NULL,
        [intitule] NVARCHAR(191) NULL,
        [montant] NVARCHAR(191) NULL,
        [created_at] DATETIME2 NULL,
        [updated_at] DATETIME2 NULL
        , CONSTRAINT [PK_primes] PRIMARY KEY ([id])
    );
END
GO
IF OBJECT_ID(N'[prime_corps_metiers]', N'U') IS NULL
BEGIN
    CREATE TABLE [prime_corps_metiers] (
        [id] BIGINT IDENTITY(1,1) NOT NULL,
        [corps_metier_id] BIGINT NULL,
        [prime_id] BIGINT NULL,
        [formule] NVARCHAR(191) NULL,
        [created_at] DATETIME2 NULL,
        [updated_at] DATETIME2 NULL
        , CONSTRAINT [PK_prime_corps_metiers] PRIMARY KEY ([id])
    );
END
GO
IF OBJECT_ID(N'[printers]', N'U') IS NULL
BEGIN
    CREATE TABLE [printers] (
        [id] INT IDENTITY(1,1) NOT NULL,
        [business_id] INT NULL,
        [name] NVARCHAR(191) NULL,
        [connection_type] NVARCHAR(50) NULL,
        [capability_profile] NVARCHAR(50) NULL,
        [char_per_line] NVARCHAR(191) NULL,
        [ip_address] NVARCHAR(191) NULL,
        [port] NVARCHAR(191) NULL,
        [path] NVARCHAR(191) NULL,
        [created_by] INT NULL,
        [created_at] DATETIME2 NULL,
        [updated_at] DATETIME2 NULL
        , CONSTRAINT [PK_printers] PRIMARY KEY ([id])
    );
END
GO
IF OBJECT_ID(N'[products]', N'U') IS NULL
BEGIN
    CREATE TABLE [products] (
        [id] BIGINT IDENTITY(1,1) NOT NULL,
        [name] NVARCHAR(191) NULL,
        [business_id] INT NULL,
        [type] NVARCHAR(50) NULL,
        [unit_id] INT NULL,
        [secondary_unit_id] INT NULL,
        [sub_unit_ids] NVARCHAR(MAX) NULL,
        [brand_id] INT NULL,
        [category_id] BIGINT NULL,
        [sub_category_id] BIGINT NULL,
        [tax] INT NULL,
        [tax_type] NVARCHAR(50) NULL,
        [enable_stock] BIT NULL,
        [alert_quantity] DECIMAL(18,2) NULL,
        [sku] NVARCHAR(191) NULL,
        [barcode_type] NVARCHAR(50) NULL,
        [expiry_period] DECIMAL(18,2) NULL,
        [expiry_period_type] NVARCHAR(50) NULL,
        [enable_sr_no] BIT NULL,
        [weight] NVARCHAR(191) NULL,
        [product_custom_field1] NVARCHAR(191) NULL,
        [product_custom_field2] NVARCHAR(191) NULL,
        [product_custom_field3] NVARCHAR(191) NULL,
        [product_custom_field4] NVARCHAR(191) NULL,
        [product_custom_field5] NVARCHAR(191) NULL,
        [product_custom_field6] NVARCHAR(191) NULL,
        [product_custom_field7] NVARCHAR(191) NULL,
        [product_custom_field8] NVARCHAR(191) NULL,
        [product_custom_field9] NVARCHAR(191) NULL,
        [product_custom_field10] NVARCHAR(191) NULL,
        [product_custom_field11] NVARCHAR(191) NULL,
        [product_custom_field12] NVARCHAR(191) NULL,
        [product_custom_field13] NVARCHAR(191) NULL,
        [product_custom_field14] NVARCHAR(191) NULL,
        [product_custom_field15] NVARCHAR(191) NULL,
        [product_custom_field16] NVARCHAR(191) NULL,
        [product_custom_field17] NVARCHAR(191) NULL,
        [product_custom_field18] NVARCHAR(191) NULL,
        [product_custom_field19] NVARCHAR(191) NULL,
        [product_custom_field20] NVARCHAR(191) NULL,
        [image] NVARCHAR(191) NULL,
        [product_description] NVARCHAR(MAX) NULL,
        [created_by] BIGINT NULL,
        [preparation_time_in_minutes] INT NULL,
        [warranty_id] INT NULL,
        [is_inactive] BIT NULL,
        [not_for_selling] BIT NULL,
        [created_at] DATETIME2 NULL,
        [updated_at] DATETIME2 NULL
        , CONSTRAINT [PK_products] PRIMARY KEY ([id])
    );
END
GO
IF OBJECT_ID(N'[product_categories]', N'U') IS NULL
BEGIN
    CREATE TABLE [product_categories] (
        [id] INT IDENTITY(1,1) NOT NULL,
        [name] NVARCHAR(191) NULL,
        [short_code] NVARCHAR(191) NULL,
        [description] NVARCHAR(MAX) NULL,
        [parent_id] INT NULL,
        [created_by] BIGINT NULL,
        [updated_by] BIGINT NULL,
        [deleted_at] DATETIME2 NULL,
        [created_at] DATETIME2 NULL,
        [updated_at] DATETIME2 NULL
        , CONSTRAINT [PK_product_categories] PRIMARY KEY ([id])
    );
END
GO
IF OBJECT_ID(N'[product_information]', N'U') IS NULL
BEGIN
    CREATE TABLE [product_information] (
        [id] INT IDENTITY(1,1) NOT NULL,
        [product_name] NVARCHAR(191) NULL,
        [type] NVARCHAR(50) NULL,
        [unit_id] INT NULL,
        [sub_unit_ids] NVARCHAR(MAX) NULL,
        [secondary_unit_id] INT NULL,
        [brand_id] INT NULL,
        [category_id] INT NULL,
        [sub_category_id] INT NULL,
        [tax] INT NULL,
        [tax_type] NVARCHAR(50) NULL,
        [enable_stock] BIT NULL,
        [enable_sr_no] BIT NULL,
        [alert_quantity] DECIMAL(18,2) NULL,
        [Column 19] NVARCHAR(50) NULL,
        [sku] NVARCHAR(191) NULL,
        [barcode] NVARCHAR(191) NULL,
        [product_description] NVARCHAR(MAX) NULL,
        [product_file] NVARCHAR(50) NULL,
        [weight] NVARCHAR(50) NULL,
        [product_custom_field1] NVARCHAR(191) NULL,
        [product_custom_field2] NVARCHAR(191) NULL,
        [product_custom_field3] NVARCHAR(191) NULL,
        [product_custom_field4] NVARCHAR(191) NULL,
        [barcode_type] NVARCHAR(50) NULL,
        [expiry_period] DECIMAL(18,2) NULL,
        [expiry_period_type] NVARCHAR(50) NULL,
        [created_by] BIGINT NULL,
        [warranty_id] INT NULL,
        [business_id] INT NULL,
        [is_inactive] BIT NULL,
        [not_for_selling] BIT NULL,
        [updated_by] BIGINT NULL,
        [created_at] DATETIME2 NULL,
        [updated_at] DATETIME2 NULL
        , CONSTRAINT [PK_product_information] PRIMARY KEY ([id])
    );
END
GO
IF OBJECT_ID(N'[product_locations]', N'U') IS NULL
BEGIN
    CREATE TABLE [product_locations] (
        [id] BIGINT IDENTITY(1,1) NOT NULL,
        [product_id] INT NULL,
        [location_id] INT NULL
        , CONSTRAINT [PK_product_locations] PRIMARY KEY ([id])
    );
END
GO
IF OBJECT_ID(N'[product_racks]', N'U') IS NULL
BEGIN
    CREATE TABLE [product_racks] (
        [id] INT IDENTITY(1,1) NOT NULL,
        [business_id] INT NULL,
        [location_id] INT NULL,
        [product_id] INT NULL,
        [rack] NVARCHAR(191) NULL,
        [row] NVARCHAR(191) NULL,
        [position] NVARCHAR(191) NULL,
        [created_at] DATETIME2 NULL,
        [updated_at] DATETIME2 NULL
        , CONSTRAINT [PK_product_racks] PRIMARY KEY ([id])
    );
END
GO
IF OBJECT_ID(N'[product_variations]', N'U') IS NULL
BEGIN
    CREATE TABLE [product_variations] (
        [id] INT IDENTITY(1,1) NOT NULL,
        [variation_template_id] INT NULL,
        [name] NVARCHAR(191) NULL,
        [product_id] BIGINT NULL,
        [is_dummy] BIT NULL,
        [created_at] DATETIME2 NULL,
        [updated_at] DATETIME2 NULL
        , CONSTRAINT [PK_product_variations] PRIMARY KEY ([id])
    );
END
GO
IF OBJECT_ID(N'[proformats]', N'U') IS NULL
BEGIN
    CREATE TABLE [proformats] (
        [id] BIGINT IDENTITY(1,1) NOT NULL,
        [mercuriale_id] BIGINT NULL,
        [bon_cmd_adm_id] BIGINT NULL,
        [quantite] INT NULL,
        [prixUnitaire] NVARCHAR(191) NULL,
        [created_at] DATETIME2 NULL,
        [updated_at] DATETIME2 NULL
        , CONSTRAINT [PK_proformats] PRIMARY KEY ([id])
    );
END
GO
IF OBJECT_ID(N'[provenances]', N'U') IS NULL
BEGIN
    CREATE TABLE [provenances] (
        [id] BIGINT IDENTITY(1,1) NOT NULL,
        [nom] NVARCHAR(191) NULL,
        [sigle] NVARCHAR(191) NULL,
        [contribuable] NVARCHAR(191) NULL,
        [telephone] NVARCHAR(191) NULL,
        [adresse] NVARCHAR(191) NULL,
        [created_at] DATETIME2 NULL,
        [updated_at] DATETIME2 NULL
        , CONSTRAINT [PK_provenances] PRIMARY KEY ([id])
    );
END
GO
IF OBJECT_ID(N'[purchase_lines]', N'U') IS NULL
BEGIN
    CREATE TABLE [purchase_lines] (
        [id] INT IDENTITY(1,1) NOT NULL,
        [transaction_id] INT NULL,
        [product_id] BIGINT NULL,
        [variation_id] INT NULL,
        [quantity] DECIMAL(18,2) NULL,
        [secondary_unit_quantity] DECIMAL(18,2) NULL,
        [pp_without_discount] DECIMAL(18,2) NULL,
        [discount_percent] DECIMAL(18,2) NULL,
        [purchase_price] DECIMAL(18,2) NULL,
        [purchase_price_inc_tax] DECIMAL(18,2) NULL,
        [item_tax] DECIMAL(18,2) NULL,
        [tax_id] INT NULL,
        [purchase_requisition_line_id] INT NULL,
        [purchase_order_line_id] INT NULL,
        [quantity_sold] DECIMAL(18,2) NULL,
        [quantity_adjusted] DECIMAL(18,2) NULL,
        [quantity_returned] DECIMAL(18,2) NULL,
        [po_quantity_purchased] DECIMAL(18,2) NULL,
        [mfg_quantity_used] DECIMAL(18,2) NULL,
        [mfg_date] DATE NULL,
        [exp_date] DATE NULL,
        [lot_number] NVARCHAR(191) NULL,
        [sub_unit_id] INT NULL,
        [created_at] DATETIME2 NULL,
        [updated_at] DATETIME2 NULL
        , CONSTRAINT [PK_purchase_lines] PRIMARY KEY ([id])
    );
END
GO
IF OBJECT_ID(N'[quartiers]', N'U') IS NULL
BEGIN
    CREATE TABLE [quartiers] (
        [id] BIGINT IDENTITY(1,1) NOT NULL,
        [nom] NVARCHAR(191) NULL,
        [ville_id] BIGINT NULL,
        [created_at] DATETIME2 NULL,
        [updated_at] DATETIME2 NULL
        , CONSTRAINT [PK_quartiers] PRIMARY KEY ([id])
    );
END
GO
IF OBJECT_ID(N'[reanimations]', N'U') IS NULL
BEGIN
    CREATE TABLE [reanimations] (
        [id] BIGINT IDENTITY(1,1) NOT NULL,
        [personnel_id] BIGINT NULL,
        [patient_id] BIGINT NULL,
        [lit_id] BIGINT NULL,
        [created_by] BIGINT NULL,
        [updated_by] BIGINT NULL,
        [options] NVARCHAR(191) NULL,
        [date_sortie] NVARCHAR(191) NULL,
        [heure_sortie] NVARCHAR(191) NULL,
        [auteur] NVARCHAR(191) NULL,
        [detail] NVARCHAR(MAX) NULL,
        [dateEntree] NVARCHAR(191) NULL,
        [heureEntree] NVARCHAR(191) NULL,
        [created_at] DATETIME2 NULL,
        [updated_at] DATETIME2 NULL
        , CONSTRAINT [PK_reanimations] PRIMARY KEY ([id])
    );
END
GO
IF OBJECT_ID(N'[reference_counts]', N'U') IS NULL
BEGIN
    CREATE TABLE [reference_counts] (
        [id] INT IDENTITY(1,1) NOT NULL,
        [ref_type] NVARCHAR(191) NULL,
        [ref_count] INT NULL,
        [business_id] INT NULL,
        [created_at] DATETIME2 NULL,
        [updated_at] DATETIME2 NULL
        , CONSTRAINT [PK_reference_counts] PRIMARY KEY ([id])
    );
END
GO
IF OBJECT_ID(N'[reformes]', N'U') IS NULL
BEGIN
    CREATE TABLE [reformes] (
        [id] BIGINT IDENTITY(1,1) NOT NULL,
        [exercice_budgetaires_id] BIGINT NULL,
        [unites_id] BIGINT NULL,
        [type_conditionnements_id] BIGINT NULL,
        [produits_id] BIGINT NULL,
        [familles_id] BIGINT NULL,
        [ordre_entree_id] BIGINT NULL,
        [etat] NVARCHAR(191) NULL,
        [date] NVARCHAR(191) NULL,
        [created_at] DATETIME2 NULL,
        [updated_at] DATETIME2 NULL
        , CONSTRAINT [PK_reformes] PRIMARY KEY ([id])
    );
END
GO
IF OBJECT_ID(N'[regions]', N'U') IS NULL
BEGIN
    CREATE TABLE [regions] (
        [id] BIGINT IDENTITY(1,1) NOT NULL,
        [pays_id] BIGINT NULL,
        [nom] NVARCHAR(191) NULL,
        [code] NVARCHAR(191) NULL,
        [created_at] DATETIME2 NULL,
        [updated_at] DATETIME2 NULL
        , CONSTRAINT [PK_regions] PRIMARY KEY ([id])
    );
END
GO
IF OBJECT_ID(N'[reglements]', N'U') IS NULL
BEGIN
    CREATE TABLE [reglements] (
        [id] BIGINT IDENTITY(1,1) NOT NULL,
        [status] NVARCHAR(191) NULL,
        [date] NVARCHAR(191) NULL,
        [caissier] NVARCHAR(191) NULL,
        [type_reglement] NVARCHAR(191) NULL,
        [code_reglement] NVARCHAR(191) NULL,
        [created_at] DATETIME2 NULL,
        [updated_at] DATETIME2 NULL
        , CONSTRAINT [PK_reglements] PRIMARY KEY ([id])
    );
END
GO
IF OBJECT_ID(N'[rendez_vous]', N'U') IS NULL
BEGIN
    CREATE TABLE [rendez_vous] (
        [id] BIGINT IDENTITY(1,1) NOT NULL,
        [service_id] BIGINT NULL,
        [personnel_id] BIGINT NULL,
        [patient_id] BIGINT NULL,
        [dateRDV] NVARCHAR(191) NULL,
        [auteur] NVARCHAR(191) NULL,
        [detail] NVARCHAR(MAX) NULL,
        [created_at] DATETIME2 NULL,
        [updated_at] DATETIME2 NULL
        , CONSTRAINT [PK_rendez_vous] PRIMARY KEY ([id])
    );
END
GO
IF OBJECT_ID(N'[ressources]', N'U') IS NULL
BEGIN
    CREATE TABLE [ressources] (
        [id] BIGINT IDENTITY(1,1) NOT NULL,
        [exercice_budgetaire_id] BIGINT NULL,
        [source_financements_id] BIGINT NULL,
        [imputation] NVARCHAR(191) NULL,
        [intitule] NVARCHAR(191) NULL,
        [annee_n_1] NVARCHAR(191) NULL,
        [montantEncours] NVARCHAR(191) NULL,
        [previsionN] NVARCHAR(191) NULL,
        [previsionN1] NVARCHAR(191) NULL,
        [previsionN2] NVARCHAR(191) NULL,
        [desactiver] BIT NULL,
        [created_by] NVARCHAR(191) NULL,
        [updated_by] NVARCHAR(191) NULL,
        [created_at] DATETIME2 NULL,
        [updated_at] DATETIME2 NULL
        , CONSTRAINT [PK_ressources] PRIMARY KEY ([id])
    );
END
GO
IF OBJECT_ID(N'[resultat_examens]', N'U') IS NULL
BEGIN
    CREATE TABLE [resultat_examens] (
        [id] BIGINT IDENTITY(1,1) NOT NULL,
        [bulletin_prescrit_id] BIGINT NULL,
        [valeur] NVARCHAR(191) NULL,
        [interpretation] NVARCHAR(MAX) NULL,
        [created_at] DATETIME2 NULL,
        [updated_at] DATETIME2 NULL
        , CONSTRAINT [PK_resultat_examens] PRIMARY KEY ([id])
    );
END
GO
IF OBJECT_ID(N'[res_product_modifier_sets]', N'U') IS NULL
BEGIN
    CREATE TABLE [res_product_modifier_sets] (
        [modifier_set_id] INT NULL,
        [product_id] INT NULL,
        [created_at] DATETIME2 NULL,
        [updated_at] DATETIME2 NULL
    );
END
GO
IF OBJECT_ID(N'[ribs]', N'U') IS NULL
BEGIN
    CREATE TABLE [ribs] (
        [id] BIGINT IDENTITY(1,1) NOT NULL,
        [compte_id] BIGINT NULL,
        [personnel_id] BIGINT NULL,
        [etat] NVARCHAR(191) NULL,
        [dateDeclaration] NVARCHAR(191) NULL,
        [created_at] DATETIME2 NULL,
        [updated_at] DATETIME2 NULL
        , CONSTRAINT [PK_ribs] PRIMARY KEY ([id])
    );
END
GO
IF OBJECT_ID(N'[roles]', N'U') IS NULL
BEGIN
    CREATE TABLE [roles] (
        [id] BIGINT IDENTITY(1,1) NOT NULL,
        [service_id] BIGINT NULL,
        [business_id] BIGINT NULL,
        [is_service_staff] BIGINT NULL,
        [is_default] BIT NULL,
        [name] NVARCHAR(191) NULL,
        [guard_name] NVARCHAR(191) NULL,
        [created_at] DATETIME2 NULL,
        [updated_at] DATETIME2 NULL
        , CONSTRAINT [PK_roles] PRIMARY KEY ([id])
    );
END
GO
IF OBJECT_ID(N'[role_has_permissions]', N'U') IS NULL
BEGIN
    CREATE TABLE [role_has_permissions] (
        [permission_id] BIGINT NOT NULL,
        [role_id] BIGINT NOT NULL
        , CONSTRAINT [PK_role_has_permissions] PRIMARY KEY ([permission_id], [role_id])
    );
END
GO
IF OBJECT_ID(N'[saless]', N'U') IS NULL
BEGIN
    CREATE TABLE [saless] (
        [id] BIGINT IDENTITY(1,1) NOT NULL,
        [product_id] BIGINT NULL,
        [quantity] INT NULL,
        [total_price] DECIMAL(18,2) NULL,
        [created_by] NVARCHAR(191) NULL,
        [updated_by] NVARCHAR(191) NULL,
        [created_at] DATETIME2 NULL,
        [updated_at] DATETIME2 NULL
        , CONSTRAINT [PK_saless] PRIMARY KEY ([id])
    );
END
GO
IF OBJECT_ID(N'[salles]', N'U') IS NULL
BEGIN
    CREATE TABLE [salles] (
        [id] BIGINT IDENTITY(1,1) NOT NULL,
        [nom] NVARCHAR(191) NULL,
        [numero] NVARCHAR(10) NULL,
        [categorie_salle_id] BIGINT NULL,
        [capacite_max] INT NULL,
        [etage] INT NULL,
        [bloc] NVARCHAR(191) NULL,
        [description] NVARCHAR(MAX) NULL,
        [statut] NVARCHAR(50) NULL,
        [type_salle] NVARCHAR(50) NULL,
        [actif] BIT NULL,
        [created_at] DATETIME2 NULL,
        [updated_at] DATETIME2 NULL
        , CONSTRAINT [PK_salles] PRIMARY KEY ([id])
    );
END
GO
IF OBJECT_ID(N'[salle_accouchements]', N'U') IS NULL
BEGIN
    CREATE TABLE [salle_accouchements] (
        [id] BIGINT IDENTITY(1,1) NOT NULL,
        [nom] NVARCHAR(191) NULL,
        [type] NVARCHAR(50) NULL,
        [statut] NVARCHAR(50) NULL,
        [accouchement_en_cours] BIGINT NULL,
        [heure_occupation] DATETIME2 NULL,
        [created_at] DATETIME2 NULL,
        [updated_at] DATETIME2 NULL
        , CONSTRAINT [PK_salle_accouchements] PRIMARY KEY ([id])
    );
END
GO
IF OBJECT_ID(N'[selling_price_groups]', N'U') IS NULL
BEGIN
    CREATE TABLE [selling_price_groups] (
        [id] BIGINT IDENTITY(1,1) NOT NULL,
        [name] NVARCHAR(191) NULL,
        [description] NVARCHAR(MAX) NULL,
        [is_active] TINYINT NULL,
        [business_id] INT NULL,
        [deleted_at] DATETIME2 NULL,
        [created_at] DATETIME2 NULL,
        [updated_at] DATETIME2 NULL
        , CONSTRAINT [PK_selling_price_groups] PRIMARY KEY ([id])
    );
END
GO
IF OBJECT_ID(N'[sell_line_warranties]', N'U') IS NULL
BEGIN
    CREATE TABLE [sell_line_warranties] (
        [sell_line_id] INT NULL,
        [warranty_id] INT NULL
    );
END
GO
IF OBJECT_ID(N'[services]', N'U') IS NULL
BEGIN
    CREATE TABLE [services] (
        [id] BIGINT IDENTITY(1,1) NOT NULL,
        [service_id] BIGINT NULL,
        [personnel_id] BIGINT NULL,
        [code] NVARCHAR(191) NULL,
        [nom] NVARCHAR(191) NULL,
        [master] BIT NULL,
        [created_by] NVARCHAR(191) NULL,
        [updated_by] NVARCHAR(191) NULL,
        [created_at] DATETIME2 NULL,
        [updated_at] DATETIME2 NULL
        , CONSTRAINT [PK_services] PRIMARY KEY ([id])
    );
END
GO
IF OBJECT_ID(N'[session_tickets]', N'U') IS NULL
BEGIN
    CREATE TABLE [session_tickets] (
        [id] BIGINT IDENTITY(1,1) NOT NULL,
        [patient_id] BIGINT NULL,
        [examen_id] BIGINT NULL,
        [acte_medical_id] BIGINT NULL,
        [service_id] BIGINT NULL,
        [departement_id] BIGINT NULL,
        [personnel_id] BIGINT NULL,
        [transaction_sell_line_id] INT NULL,
        [code_ticket] NVARCHAR(50) NULL,
        [status] NVARCHAR(50) NULL,
        [expiration_date] DATE NULL,
        [created_at] DATETIME2 NULL,
        [updated_at] DATETIME2 NULL,
        [created_by] BIGINT NULL,
        [deleted_at] DATETIME2 NULL,
        [motif] NVARCHAR(MAX) NULL,
        [type] NVARCHAR(50) NULL
        , CONSTRAINT [PK_session_tickets] PRIMARY KEY ([id])
    );
END
GO
IF OBJECT_ID(N'[soins]', N'U') IS NULL
BEGIN
    CREATE TABLE [soins] (
        [id] BIGINT IDENTITY(1,1) NOT NULL,
        [personnel_id] BIGINT NULL,
        [patient_id] BIGINT NULL,
        [vente_id] BIGINT NULL,
        [dateRDV] NVARCHAR(191) NULL,
        [heure] NVARCHAR(191) NULL,
        [status] NVARCHAR(191) NULL,
        [type] NVARCHAR(191) NULL,
        [code] NVARCHAR(191) NULL,
        [auteur] NVARCHAR(191) NULL,
        [objet] NVARCHAR(MAX) NULL,
        [nbreSeanceAcep] NVARCHAR(191) NULL,
        [nbSeancePaye] NVARCHAR(191) NULL,
        [created_at] DATETIME2 NULL,
        [updated_at] DATETIME2 NULL
        , CONSTRAINT [PK_soins] PRIMARY KEY ([id])
    );
END
GO
IF OBJECT_ID(N'[source_financements]', N'U') IS NULL
BEGIN
    CREATE TABLE [source_financements] (
        [id] BIGINT IDENTITY(1,1) not NULL,
        [partenaire_id] BIGINT NULL,
        [objet] NVARCHAR(191) NULL,
        [typeDepense] NVARCHAR(50) NULL,
        [abreviation] NVARCHAR(191) NULL,
        [created_by] NVARCHAR(191) NULL,
        [updated_by] NVARCHAR(191) NULL,
        [created_at] DATETIME2 NULL,
        [updated_at] DATETIME2 NULL
        , CONSTRAINT [PK_source_financements] PRIMARY KEY ([id])
    );
END
GO
IF OBJECT_ID(N'[sous_programmes]', N'U') IS NULL
BEGIN
    CREATE TABLE [sous_programmes] (
        [id] BIGINT IDENTITY(1,1) NOT NULL,
        [exercice_budgetaire_id] BIGINT NULL,
        [personnel_id] BIGINT NULL,
        [code_s_programmes_id] BIGINT NULL,
        [intitule] NVARCHAR(191) NULL,
        [type] NVARCHAR(191) NULL,
        [objectif] NVARCHAR(191) NULL,
        [abreviation] NVARCHAR(191) NULL,
        [desactiver] BIT NULL,
        [created_by] NVARCHAR(191) NULL,
        [updated_by] NVARCHAR(191) NULL,
        [created_at] DATETIME2 NULL,
        [updated_at] DATETIME2 NULL
        , CONSTRAINT [PK_sous_programmes] PRIMARY KEY ([id])
    );
END
GO
IF OBJECT_ID(N'[sous_types]', N'U') IS NULL
BEGIN
    CREATE TABLE [sous_types] (
        [id] BIGINT IDENTITY(1,1) NOT NULL,
        [type_ordre_id] BIGINT NULL,
        [ordre_id] BIGINT NULL,
        [created_at] DATETIME2 NULL,
        [updated_at] DATETIME2 NULL
        , CONSTRAINT [PK_sous_types] PRIMARY KEY ([id])
    );
END
GO
IF OBJECT_ID(N'[specialites]', N'U') IS NULL
BEGIN
    CREATE TABLE [specialites] (
        [id] BIGINT IDENTITY(1,1) NOT NULL,
        [nom] NVARCHAR(191) NULL,
        [created_at] DATETIME2 NULL,
        [updated_at] DATETIME2 NULL
        , CONSTRAINT [PK_specialites] PRIMARY KEY ([id])
    );
END
GO
IF OBJECT_ID(N'[statuts]', N'U') IS NULL
BEGIN
    CREATE TABLE [statuts] (
        [id] BIGINT IDENTITY(1,1) NOT NULL,
        [intitule] NVARCHAR(191) NULL,
        [created_at] DATETIME2 NULL,
        [updated_at] DATETIME2 NULL
        , CONSTRAINT [PK_statuts] PRIMARY KEY ([id])
    );
END
GO
IF OBJECT_ID(N'[stocks]', N'U') IS NULL
BEGIN
    CREATE TABLE [stocks] (
        [id] BIGINT IDENTITY(1,1) NOT NULL,
        [unites_id] BIGINT NULL,
        [type_conditionnement_id] BIGINT NULL,
        [produit_id] BIGINT NULL,
        [famille_id] BIGINT NULL,
        [ordre_entree_id] BIGINT NULL,
        [nature_id] BIGINT NULL,
        [quantite] NVARCHAR(191) NULL,
        [created_at] DATETIME2 NULL,
        [updated_at] DATETIME2 NULL
        , CONSTRAINT [PK_stocks] PRIMARY KEY ([id])
    );
END
GO
IF OBJECT_ID(N'[stock_adjustment_lines]', N'U') IS NULL
BEGIN
    CREATE TABLE [stock_adjustment_lines] (
        [id] INT IDENTITY(1,1) NOT NULL,
        [transaction_id] INT NULL,
        [product_id] BIGINT NULL,
        [variation_id] INT NULL,
        [quantity] DECIMAL(18,2) NULL,
        [secondary_unit_quantity] DECIMAL(18,2) NULL,
        [unit_price] DECIMAL(18,2) NULL,
        [removed_purchase_line] INT NULL,
        [lot_no_line_id] INT NULL,
        [created_at] DATETIME2 NULL,
        [updated_at] DATETIME2 NULL
        , CONSTRAINT [PK_stock_adjustment_lines] PRIMARY KEY ([id])
    );
END
GO
IF OBJECT_ID(N'[stock_mouvements]', N'U') IS NULL
BEGIN
    CREATE TABLE [stock_mouvements] (
        [id] BIGINT IDENTITY(1,1) NOT NULL,
        [produit_id] BIGINT NULL,
        [type_conditionnement_id] BIGINT NULL,
        [nature_id] BIGINT NULL,
        [famille_id] BIGINT NULL,
        [quantite] INT NULL,
        [type] NVARCHAR(50) NULL,
        [prix] INT NULL,
        [created_by] NVARCHAR(191) NULL,
        [updated_by] NVARCHAR(191) NULL,
        [created_at] DATETIME2 NULL,
        [updated_at] DATETIME2 NULL
        , CONSTRAINT [PK_stock_mouvements] PRIMARY KEY ([id])
    );
END
GO
IF OBJECT_ID(N'[stock_movements]', N'U') IS NULL
BEGIN
    CREATE TABLE [stock_movements] (
        [id] BIGINT IDENTITY(1,1) NOT NULL,
        [product_id] BIGINT NULL,
        [movement_type] NVARCHAR(50) NULL,
        [quantity] INT NULL,
        [created_by] NVARCHAR(191) NULL,
        [updated_by] NVARCHAR(191) NULL,
        [created_at] DATETIME2 NULL,
        [updated_at] DATETIME2 NULL
        , CONSTRAINT [PK_stock_movements] PRIMARY KEY ([id])
    );
END
GO
IF OBJECT_ID(N'[stock_sangs]', N'U') IS NULL
BEGIN
    CREATE TABLE [stock_sangs] (
        [id] BIGINT IDENTITY(1,1) NOT NULL,
        [donneur_id] BIGINT NULL,
        [nombrePoche] NVARCHAR(191) NULL,
        [created_at] DATETIME2 NULL,
        [updated_at] DATETIME2 NULL
        , CONSTRAINT [PK_stock_sangs] PRIMARY KEY ([id])
    );
END
GO
IF OBJECT_ID(N'[suppliers]', N'U') IS NULL
BEGIN
    CREATE TABLE [suppliers] (
        [id] BIGINT IDENTITY(1,1) NOT NULL,
        [code] NVARCHAR(191) NULL,
        [personne] NVARCHAR(191) NULL,
        [nom] NVARCHAR(191) NULL,
        [sigle] NVARCHAR(191) NULL,
        [compteCollectif] NVARCHAR(191) NULL,
        [qualite] NVARCHAR(191) NULL,
        [enCoursMax] INT NULL,
        [nContribuable] INT NULL,
        [nCNI] INT NULL,
        [adresse] NVARCHAR(191) NULL,
        [telephone] NVARCHAR(191) NULL,
        [quartier] NVARCHAR(191) NULL,
        [raisonSociale] NVARCHAR(191) NULL,
        [created_by] NVARCHAR(191) NULL,
        [updated_by] NVARCHAR(191) NULL,
        [created_at] DATETIME2 NULL,
        [updated_at] DATETIME2 NULL
        , CONSTRAINT [PK_suppliers] PRIMARY KEY ([id])
    );
END
GO
IF OBJECT_ID(N'[system]', N'U') IS NULL
BEGIN
    CREATE TABLE [system] (
        [id] INT IDENTITY(1,1) NOT NULL,
        [key] NVARCHAR(191) NULL,
        [value] NVARCHAR(MAX) NULL
        , CONSTRAINT [PK_system] PRIMARY KEY ([id])
    );
END
GO
IF OBJECT_ID(N'[taches]', N'U') IS NULL
BEGIN
    CREATE TABLE [taches] (
        [id] BIGINT IDENTITY(1,1) NOT NULL,
        [activite_id] BIGINT NULL,
        [personnel_id] BIGINT NULL,
        [code_tache_id] BIGINT NULL,
        [intitule] NVARCHAR(191) NULL,
        [nature] NVARCHAR(191) NULL,
        [extrant] NVARCHAR(191) NULL,
        [debut] NVARCHAR(191) NULL,
        [fin] NVARCHAR(191) NULL,
        [desactiver] BIT NULL,
        [created_by] NVARCHAR(191) NULL,
        [updated_by] NVARCHAR(191) NULL,
        [created_at] DATETIME2 NULL,
        [updated_at] DATETIME2 NULL
        , CONSTRAINT [PK_taches] PRIMARY KEY ([id])
    );
END
GO
IF OBJECT_ID(N'[taxes]', N'U') IS NULL
BEGIN
    CREATE TABLE [taxes] (
        [id] BIGINT IDENTITY(1,1) NOT NULL,
        [plan_comptables_id] BIGINT NULL,
        [code] NVARCHAR(191) NULL,
        [intitule] NVARCHAR(191) NULL,
        [description] NVARCHAR(191) NULL,
        [type] NVARCHAR(191) NULL,
        [sens] NVARCHAR(191) NULL,
        [created_at] DATETIME2 NULL,
        [updated_at] DATETIME2 NULL
        , CONSTRAINT [PK_taxes] PRIMARY KEY ([id])
    );
END
GO
IF OBJECT_ID(N'[taxess]', N'U') IS NULL
BEGIN
    CREATE TABLE [taxess] (
        [id] BIGINT IDENTITY(1,1) NOT NULL,
        [plan_comptables_id] BIGINT NULL,
        [sectionAnalytique] NVARCHAR(191) NULL,
        [taxe1] NVARCHAR(191) NULL,
        [taxe2] NVARCHAR(191) NULL,
        [taxe3] NVARCHAR(191) NULL,
        [taxe4] NVARCHAR(191) NULL,
        [created_at] DATETIME2 NULL,
        [updated_at] DATETIME2 NULL
        , CONSTRAINT [PK_taxess] PRIMARY KEY ([id])
    );
END
GO
IF OBJECT_ID(N'[taxe_rates]', N'U') IS NULL
BEGIN
    CREATE TABLE [taxe_rates] (
        [id] INT IDENTITY(1,1) NOT NULL,
        [name] NVARCHAR(191) NULL,
        [amount] FLOAT NULL,
        [is_tax_group] BIT NULL,
        [for_tax_group] BIT NULL,
        [created_by] BIGINT NULL,
        [updated_by] BIGINT NULL,
        [business_id] BIGINT NULL,
        [deleted_at] DATETIME2 NULL,
        [created_at] DATETIME2 NULL,
        [updated_at] DATETIME2 NULL
        , CONSTRAINT [PK_taxe_rates] PRIMARY KEY ([id])
    );
END
GO
IF OBJECT_ID(N'[tax_rates]', N'U') IS NULL
BEGIN
    CREATE TABLE [tax_rates] (
        [id] INT IDENTITY(1,1) NOT NULL,
        [business_id] INT NULL,
        [name] NVARCHAR(191) NULL,
        [amount] FLOAT NULL,
        [is_tax_group] BIT NULL,
        [for_tax_group] BIT NULL,
        [created_by] BIGINT NULL,
        [deleted_at] DATETIME2 NULL,
        [created_at] DATETIME2 NULL,
        [updated_at] DATETIME2 NULL
        , CONSTRAINT [PK_tax_rates] PRIMARY KEY ([id])
    );
END
GO
IF OBJECT_ID(N'[test_analyse_laboratoires]', N'U') IS NULL
BEGIN
    CREATE TABLE [test_analyse_laboratoires] (
        [id] BIGINT IDENTITY(1,1) NOT NULL,
        [analyse_id] BIGINT NULL,
        [nom_test] NVARCHAR(191) NULL,
        [resultat] NVARCHAR(191) NULL,
        [unite] NVARCHAR(191) NULL,
        [valeurs_reference] NVARCHAR(191) NULL,
        [commentaire] NVARCHAR(MAX) NULL,
        [created_at] DATETIME2 NULL,
        [updated_at] DATETIME2 NULL
        , CONSTRAINT [PK_test_analyse_laboratoires] PRIMARY KEY ([id])
    );
END
GO
IF OBJECT_ID(N'[ticketables]', N'U') IS NULL
BEGIN
    CREATE TABLE [ticketables] (
        [id] BIGINT IDENTITY(1,1) NOT NULL,
        [session_ticket_id] BIGINT NULL,
        [ticketable_id] BIGINT NULL,
        [ticketable_type] NVARCHAR(50) NULL,
        [created_at] DATETIME2 NULL,
        [updated_at] DATETIME2 NULL
        , CONSTRAINT [PK_ticketables] PRIMARY KEY ([id])
    );
END
GO
IF OBJECT_ID(N'[tierces]', N'U') IS NULL
BEGIN
    CREATE TABLE [tierces] (
        [id] BIGINT IDENTITY(1,1) NOT NULL,
        [nom] NVARCHAR(191) NULL,
        [ville] NVARCHAR(191) NULL,
        [adresse] NVARCHAR(191) NULL,
        [telephone] NVARCHAR(191) NULL,
        [raisonSociale] NVARCHAR(191) NULL,
        [created_at] DATETIME2 NULL,
        [updated_at] DATETIME2 NULL
        , CONSTRAINT [PK_tierces] PRIMARY KEY ([id])
    );
END
GO
IF OBJECT_ID(N'[timezones]', N'U') IS NULL
BEGIN
    CREATE TABLE [timezones] (
        [id] BIGINT IDENTITY(1,1) NOT NULL,
        [country_code] NVARCHAR(191) NULL,
        [timezone] NVARCHAR(191) NULL,
        [gmt_offset] FLOAT NULL,
        [dst_offset] FLOAT NULL,
        [raw_offset] FLOAT NULL,
        [created_at] DATETIME2 NULL,
        [updated_at] DATETIME2 NULL
        , CONSTRAINT [PK_timezones] PRIMARY KEY ([id])
    );
END
GO
IF OBJECT_ID(N'[transaction]', N'U') IS NULL
BEGIN
    CREATE TABLE [transaction] (
        [id] BIGINT IDENTITY(1,1) NOT NULL,
        [demandeur_sang_id] BIGINT NULL,
        [vente_id] BIGINT NULL,
        [personnel_id] BIGINT NULL,
        [stock_sang_id] BIGINT NULL,
        [codeTransaction] NVARCHAR(191) NULL,
        [date] NVARCHAR(191) NULL,
        [created_at] DATETIME2 NULL,
        [updated_at] DATETIME2 NULL
        , CONSTRAINT [PK_transaction] PRIMARY KEY ([id])
    );
END
GO
IF OBJECT_ID(N'[transactions]', N'U') IS NULL
BEGIN
    CREATE TABLE [transactions] (
        [id] INT IDENTITY(1,1) NOT NULL,
        [business_id] INT NULL,
        [location_id] INT NULL,
        [facturation_id] BIGINT NULL,
        [prescription_id] BIGINT NULL,
        [invoice_id] BIGINT NULL,
        [res_table_id] INT NULL,
        [res_waiter_id] INT NULL,
        [type] NVARCHAR(50) NULL,
        [sub_type] NVARCHAR(20) NULL,
        [sub_transaction_type] NVARCHAR(20) NULL,
        [status] NVARCHAR(50) NULL,
        [is_quotation] BIT NULL,
        [purchase_requisition_ids] NVARCHAR(MAX) NULL,
        [payment_status] NVARCHAR(50) NULL,
        [adjustment_type] NVARCHAR(50) NULL,
        [contact_id] INT NULL,
        [pay_term_number] INT NULL,
        [res_order_status] NVARCHAR(50) NULL,
        [customer_group_id] INT NULL,
        [invoice_no] NVARCHAR(191) NULL,
        [ref_no] NVARCHAR(191) NULL,
        [source] NVARCHAR(MAX) NULL,
        [subscription_no] NVARCHAR(191) NULL,
        [return_parent_id] INT NULL,
        [pay_term_type] NVARCHAR(50) NULL,
        [sub_status] NVARCHAR(191) NULL,
        [recur_interval] FLOAT NULL,
        [document] NVARCHAR(MAX) NULL,
        [is_direct_sale] BIT NULL,
        [is_suspend] BIT NULL,
        [is_recurring] BIT NULL,
        [show_commission_agent] BIT NULL,
        [transaction_date] DATETIME2 NULL,
        [total_before_tax] DECIMAL(18,2) NULL,
        [expense_category_id] INT NULL,
        [expense_sub_category_id] INT NULL,
        [expense_for] BIGINT NULL,
        [tax_id] INT NULL,
        [discount_type] NVARCHAR(50) NULL,
        [commission_agent] DECIMAL(18,2) NULL,
        [commission_agent_label] NVARCHAR(250) NULL,
        [total_amount_recovered] DECIMAL(18,2) NULL,
        [invoice_token] NVARCHAR(250) NULL,
        [recur_interval_type] NVARCHAR(50) NULL,
        [recur_repetitions] INT NULL,
        [recur_stopped_on] DATETIME2 NULL,
        [recur_parent_id] INT NULL,
        [tax_amount] DECIMAL(18,2) NULL,
        [discount_amount] DECIMAL(18,2) NULL,
        [selling_price_group_id] INT NULL,
        [rp_redeemed] INT NULL,
        [rp_redeemed_amount] DECIMAL(18,2) NULL,
        [shipping_details] NVARCHAR(191) NULL,
        [shipping_address] NVARCHAR(MAX) NULL,
        [shipping_status] NVARCHAR(191) NULL,
        [delivered_to] NVARCHAR(191) NULL,
        [shipping_charges] DECIMAL(18,2) NULL,
        [shipping_custom_field_1] NVARCHAR(191) NULL,
        [shipping_custom_field_2] NVARCHAR(191) NULL,
        [shipping_custom_field_3] NVARCHAR(191) NULL,
        [shipping_custom_field_4] NVARCHAR(191) NULL,
        [shipping_custom_field_5] NVARCHAR(191) NULL,
        [additional_notes] NVARCHAR(MAX) NULL,
        [staff_note] NVARCHAR(MAX) NULL,
        [is_export] BIT NULL,
        [export_custom_fields_info] NVARCHAR(MAX) NULL,
        [round_off_amount] DECIMAL(18,2) NULL,
        [additional_expense_key_1] NVARCHAR(191) NULL,
        [additional_expense_value_1] DECIMAL(18,2) NULL,
        [additional_expense_key_2] NVARCHAR(191) NULL,
        [additional_expense_value_2] DECIMAL(18,2) NULL,
        [additional_expense_key_3] NVARCHAR(191) NULL,
        [additional_expense_value_3] DECIMAL(18,2) NULL,
        [additional_expense_key_4] NVARCHAR(191) NULL,
        [additional_expense_value_4] DECIMAL(18,2) NULL,
        [final_total] DECIMAL(18,2) NULL,
        [credit_limit] DECIMAL(18,2) NULL,
        [balance] DECIMAL(18,2) NULL,
        [exchange_rate] DECIMAL(18,2) NULL,
        [opening_stock_product_id] INT NULL,
        [custom_field_1] NVARCHAR(191) NULL,
        [custom_field_2] NVARCHAR(191) NULL,
        [custom_field_3] NVARCHAR(191) NULL,
        [custom_field_4] NVARCHAR(191) NULL,
        [import_batch] INT NULL,
        [import_time] DATETIME2 NULL,
        [prefer_payment_method] NVARCHAR(191) NULL,
        [prefer_payment_account] INT NULL,
        [sales_order_ids] NVARCHAR(MAX) NULL,
        [transfer_parent_id] INT NULL,
        [types_of_service_id] INT NULL,
        [packing_charge] DECIMAL(18,2) NULL,
        [packing_charge_type] NVARCHAR(50) NULL,
        [service_custom_field_1] NVARCHAR(MAX) NULL,
        [service_custom_field_2] NVARCHAR(MAX) NULL,
        [service_custom_field_3] NVARCHAR(MAX) NULL,
        [service_custom_field_4] NVARCHAR(MAX) NULL,
        [service_custom_field_5] NVARCHAR(MAX) NULL,
        [service_custom_field_6] NVARCHAR(MAX) NULL,
        [delivery_date] DATETIME2 NULL,
        [is_created_from_api] BIT NULL,
        [rp_earned] INT NULL,
        [order_addresses] NVARCHAR(MAX) NULL,
        [created_by] BIGINT NULL,
        [updated_by] BIGINT NULL,
        [created_at] DATETIME2 NULL,
        [updated_at] DATETIME2 NULL,
        [subscription_repeat_on] NVARCHAR(191) NULL,
        [round_off_label] NVARCHAR(191) NULL,
        [purchase_order_ids] NVARCHAR(MAX) NULL,
        [prescripteur_id] BIGINT NULL
        , CONSTRAINT [PK_transactions] PRIMARY KEY ([id])
    );
END
GO
IF OBJECT_ID(N'[transaction_payments]', N'U') IS NULL
BEGIN
    CREATE TABLE [transaction_payments] (
        [id] INT IDENTITY(1,1) NOT NULL,
        [transaction_id] INT NULL,
        [is_return] BIT NULL,
        [business_id] INT NULL,
        [amount] DECIMAL(18,2) NULL,
        [method] NVARCHAR(50) NULL,
        [payment_type] NVARCHAR(191) NULL,
        [transaction_no] NVARCHAR(191) NULL,
        [card_transaction_number] NVARCHAR(191) NULL,
        [card_number] NVARCHAR(191) NULL,
        [card_type] NVARCHAR(199) NULL,
        [card_holder_name] NVARCHAR(191) NULL,
        [card_month] NVARCHAR(191) NULL,
        [card_year] NVARCHAR(191) NULL,
        [card_security] NVARCHAR(5) NULL,
        [cheque_number] NVARCHAR(191) NULL,
        [bank_account_number] NVARCHAR(191) NULL,
        [paid_on] DATETIME2 NULL,
        [created_by] BIGINT NULL,
        [updated_by] BIGINT NULL,
        [note] NVARCHAR(191) NULL,
        [document] NVARCHAR(191) NULL,
        [payment_ref_no] NVARCHAR(191) NULL,
        [paid_through_link] BIT NULL,
        [gateway] NVARCHAR(191) NULL,
        [is_advance] BIT NULL,
        [payment_for] INT NULL,
        [parent_id] INT NULL,
        [created_at] DATETIME2 NULL,
        [updated_at] DATETIME2 NULL,
        [account_id] INT NULL
        , CONSTRAINT [PK_transaction_payments] PRIMARY KEY ([id])
    );
END
GO
IF OBJECT_ID(N'[transaction_sell_lines]', N'U') IS NULL
BEGIN
    CREATE TABLE [transaction_sell_lines] (
        [id] INT IDENTITY(1,1) NOT NULL,
        [transaction_id] INT NULL,
        [departement_id] BIGINT NULL,
        [product_id] BIGINT NULL,
        [variation_id] INT NULL,
        [examen_id] BIGINT NULL,
        [acte_medical_id] BIGINT NULL,
        [quantity] DECIMAL(18,2) NULL,
        [is_paid] BIT NULL,
        [requires_ticket] BIT NULL,
        [is_ticket_generated] BIT NULL,
        [secondary_unit_quantity] DECIMAL(18,2) NULL,
        [quantity_returned] DECIMAL(18,2) NULL,
        [unit_price_before_discount] DECIMAL(18,2) NULL,
        [unit_price] DECIMAL(18,2) NULL,
        [line_discount_type] NVARCHAR(50) NULL,
        [transaction_sell_line_type] NVARCHAR(50) NULL,
        [type] NVARCHAR(50) NULL,
        [line_discount_amount] DECIMAL(18,2) NULL,
        [unit_price_inc_tax] DECIMAL(18,2) NULL,
        [item_tax] DECIMAL(18,2) NULL,
        [tax_id] INT NULL,
        [discount_id] INT NULL,
        [lot_no_line_id] INT NULL,
        [sell_line_note] NVARCHAR(MAX) NULL,
        [so_line_id] INT NULL,
        [so_quantity_invoiced] DECIMAL(18,2) NULL,
        [res_service_staff_id] INT NULL,
        [res_line_order_status] NVARCHAR(191) NULL,
        [parent_sell_line_id] INT NULL,
        [children_type] NVARCHAR(191) NULL,
        [sub_unit_id] INT NULL,
        [created_at] DATETIME2 NULL,
        [updated_at] DATETIME2 NULL,
        [prescripteur_id] BIGINT NULL,
        [quote_part_percentage] DECIMAL(18,2) NULL,
        [quote_part_amount] DECIMAL(18,2) NULL,
        [patient_reference_id] BIGINT NULL
        , CONSTRAINT [PK_transaction_sell_lines] PRIMARY KEY ([id])
    );
END
GO
IF OBJECT_ID(N'[transaction_sell_lines_purchase_lines]', N'U') IS NULL
BEGIN
    CREATE TABLE [transaction_sell_lines_purchase_lines] (
        [id] INT IDENTITY(1,1) NOT NULL,
        [sell_line_id] INT NULL,
        [stock_adjustment_line_id] INT NULL,
        [purchase_line_id] INT NULL,
        [quantity] DECIMAL(18,2) NULL,
        [qty_returned] DECIMAL(18,2) NULL,
        [created_at] DATETIME2 NULL,
        [updated_at] DATETIME2 NULL
        , CONSTRAINT [PK_transaction_sell_lines_purchase_lines] PRIMARY KEY ([id])
    );
END
GO
IF OBJECT_ID(N'[transferts]', N'U') IS NULL
BEGIN
    CREATE TABLE [transferts] (
        [id] BIGINT IDENTITY(1,1) NOT NULL,
        [patient_id] BIGINT NULL,
        [service_id] BIGINT NULL,
        [personnel_id] BIGINT NULL,
        [date_enregistrement] NVARCHAR(191) NULL,
        [transfert_date] NVARCHAR(191) NULL,
        [structure_accueil] NVARCHAR(191) NULL,
        [status] NVARCHAR(191) NULL,
        [auteur] NVARCHAR(191) NULL,
        [motif] NVARCHAR(MAX) NULL,
        [created_by] BIGINT NULL,
        [updated_by] BIGINT NULL,
        [created_at] DATETIME2 NULL,
        [updated_at] DATETIME2 NULL
        , CONSTRAINT [PK_transferts] PRIMARY KEY ([id])
    );
END
GO
IF OBJECT_ID(N'[transfert_caisses]', N'U') IS NULL
BEGIN
    CREATE TABLE [transfert_caisses] (
        [id] BIGINT IDENTITY(1,1) NOT NULL,
        [caisse_id] BIGINT NULL,
        [caisse_id2] BIGINT NULL,
        [date] NVARCHAR(191) NULL,
        [montant] NVARCHAR(191) NULL,
        [motif] NVARCHAR(191) NULL,
        [created_at] DATETIME2 NULL,
        [updated_at] DATETIME2 NULL
        , CONSTRAINT [PK_transfert_caisses] PRIMARY KEY ([id])
    );
END
GO
IF OBJECT_ID(N'[transmissions]', N'U') IS NULL
BEGIN
    CREATE TABLE [transmissions] (
        [id] BIGINT IDENTITY(1,1) NOT NULL,
        [exercice_budgetaire_id] BIGINT NULL,
        [service_id] BIGINT NULL,
        [service_id2] BIGINT NULL,
        [numBordereau] NVARCHAR(191) NULL,
        [typeBordereau] NVARCHAR(191) NULL,
        [dateBordereau] NVARCHAR(191) NULL,
        [dateReception] NVARCHAR(191) NULL,
        [etat] NVARCHAR(50) NULL,
        [objet] NVARCHAR(191) NULL,
        [observation] NVARCHAR(191) NULL,
        [desactiver] BIT NULL,
        [created_by] NVARCHAR(191) NULL,
        [updated_by] NVARCHAR(191) NULL,
        [created_at] DATETIME2 NULL,
        [updated_at] DATETIME2 NULL
        , CONSTRAINT [PK_transmissions] PRIMARY KEY ([id])
    );
END
GO
IF OBJECT_ID(N'[types_of_services]', N'U') IS NULL
BEGIN
    CREATE TABLE [types_of_services] (
        [id] INT IDENTITY(1,1) NOT NULL,
        [name] NVARCHAR(191) NULL,
        [description] NVARCHAR(MAX) NULL,
        [business_id] INT NULL,
        [location_price_group] NVARCHAR(MAX) NULL,
        [packing_charge] DECIMAL(18,2) NULL,
        [packing_charge_type] NVARCHAR(50) NULL,
        [enable_custom_fields] BIT NULL,
        [created_at] DATETIME2 NULL,
        [updated_at] DATETIME2 NULL
        , CONSTRAINT [PK_types_of_services] PRIMARY KEY ([id])
    );
END
GO
IF OBJECT_ID(N'[type_comptes]', N'U') IS NULL
BEGIN
    CREATE TABLE [type_comptes] (
        [id] BIGINT IDENTITY(1,1) NOT NULL,
        [code] NVARCHAR(191) NULL,
        [intitule] NVARCHAR(191) NULL,
        [created_at] DATETIME2 NULL,
        [updated_at] DATETIME2 NULL
        , CONSTRAINT [PK_type_comptes] PRIMARY KEY ([id])
    );
END
GO
IF OBJECT_ID(N'[type_conditionnements]', N'U') IS NULL
BEGIN
    CREATE TABLE [type_conditionnements] (
        [id] BIGINT IDENTITY(1,1) NOT NULL,
        [intitule] NVARCHAR(191) NULL,
        [created_at] DATETIME2 NULL,
        [updated_at] DATETIME2 NULL
        , CONSTRAINT [PK_type_conditionnements] PRIMARY KEY ([id])
    );
END
GO
IF OBJECT_ID(N'[type_consultations]', N'U') IS NULL
BEGIN
    CREATE TABLE [type_consultations] (
        [id] BIGINT IDENTITY(1,1) NOT NULL,
        [code] NVARCHAR(191) NULL,
        [nom] NVARCHAR(191) NULL,
        [categories] NVARCHAR(191) NULL,
        [montant] NVARCHAR(191) NULL,
        [created_at] DATETIME2 NULL,
        [updated_at] DATETIME2 NULL
        , CONSTRAINT [PK_type_consultations] PRIMARY KEY ([id])
    );
END
GO
IF OBJECT_ID(N'[type_examens]', N'U') IS NULL
BEGIN
    CREATE TABLE [type_examens] (
        [id] BIGINT IDENTITY(1,1) NOT NULL,
        [code_type_examen] NVARCHAR(191) NULL,
        [categorie_id] BIGINT NULL,
        [libelle] NVARCHAR(191) NULL,
        [pathologie] NVARCHAR(191) NULL,
        [unite] NVARCHAR(50) NULL,
        [resultat] NVARCHAR(50) NULL,
        [details] NVARCHAR(MAX) NULL,
        [created_at] DATETIME2 NULL,
        [updated_at] DATETIME2 NULL
        , CONSTRAINT [PK_type_examens] PRIMARY KEY ([id])
    );
END
GO
IF OBJECT_ID(N'[type_of_services]', N'U') IS NULL
BEGIN
    CREATE TABLE [type_of_services] (
        [id] INT IDENTITY(1,1) NOT NULL,
        [name] NVARCHAR(191) NULL,
        [description] NVARCHAR(MAX) NULL,
        [business_id] INT NULL,
        [location_price_group] NVARCHAR(MAX) NULL,
        [packing_charge] DECIMAL(18,2) NULL,
        [packing_charge_type] NVARCHAR(50) NULL,
        [enable_custom_fields] BIT NULL,
        [created_at] DATETIME2 NULL,
        [updated_at] DATETIME2 NULL
        , CONSTRAINT [PK_type_of_services] PRIMARY KEY ([id])
    );
END
GO
IF OBJECT_ID(N'[type_ordres]', N'U') IS NULL
BEGIN
    CREATE TABLE [type_ordres] (
        [id] BIGINT IDENTITY(1,1) NOT NULL,
        [created_at] DATETIME2 NULL,
        [updated_at] DATETIME2 NULL
        , CONSTRAINT [PK_type_ordres] PRIMARY KEY ([id])
    );
END
GO
IF OBJECT_ID(N'[type_prelevements]', N'U') IS NULL
BEGIN
    CREATE TABLE [type_prelevements] (
        [id] BIGINT IDENTITY(1,1) NOT NULL,
        [code] NVARCHAR(191) NULL,
        [nature] NVARCHAR(191) NULL,
        [details] NVARCHAR(191) NULL,
        [created_at] DATETIME2 NULL,
        [updated_at] DATETIME2 NULL
        , CONSTRAINT [PK_type_prelevements] PRIMARY KEY ([id])
    );
END
GO
IF OBJECT_ID(N'[unites]', N'U') IS NULL
BEGIN
    CREATE TABLE [unites] (
        [id] BIGINT IDENTITY(1,1) NOT NULL,
        [quantite] NVARCHAR(191) NULL,
        [created_at] DATETIME2 NULL,
        [updated_at] DATETIME2 NULL
        , CONSTRAINT [PK_unites] PRIMARY KEY ([id])
    );
END
GO
IF OBJECT_ID(N'[units]', N'U') IS NULL
BEGIN
    CREATE TABLE [units] (
        [id] INT IDENTITY(1,1) NOT NULL,
        [business_id] INT NULL,
        [actual_name] NVARCHAR(191) NULL,
        [short_name] NVARCHAR(191) NULL,
        [allow_decimal] BIT NULL,
        [base_unit_multiplier] DECIMAL(18,2) NULL,
        [base_unit_id] BIGINT NULL,
        [created_by] BIGINT NULL,
        [updated_by] BIGINT NULL,
        [deleted_at] DATETIME2 NULL,
        [created_at] DATETIME2 NULL,
        [updated_at] DATETIME2 NULL
        , CONSTRAINT [PK_units] PRIMARY KEY ([id])
    );
END
GO
IF OBJECT_ID(N'[urgentistes]', N'U') IS NULL
BEGIN
    CREATE TABLE [urgentistes] (
        [id] BIGINT IDENTITY(1,1) NOT NULL,
        [code] NVARCHAR(191) NULL,
        [nom] NVARCHAR(191) NULL,
        [prenom] NVARCHAR(191) NULL,
        [age] INT NULL,
        [specialite] NVARCHAR(191) NULL,
        [email] NVARCHAR(191) NULL,
        [telephone] INT NULL,
        [created_at] DATETIME2 NULL,
        [updated_at] DATETIME2 NULL
        , CONSTRAINT [PK_urgentistes] PRIMARY KEY ([id])
    );
END
GO
IF OBJECT_ID(N'[users]', N'U') IS NULL
BEGIN
    CREATE TABLE [users] (
        [id] BIGINT IDENTITY(1,1) NOT NULL,
        [user_type] NVARCHAR(191) NULL,
        [business_id] BIGINT NULL,
        [is_cmmsn_agnt] BIT NULL,
        [cmmsn_percent] DECIMAL(18,2) NULL,
        [selected_contacts] BIT NULL,
        [dob] DATE NULL,
        [marital_status] NVARCHAR(50) NULL,
        [blood_group] NCHAR(10) NULL,
        [contact_number] NCHAR(20) NULL,
        [fb_link] NVARCHAR(191) NULL,
        [twitter_link] NVARCHAR(191) NULL,
        [social_media_1] NVARCHAR(191) NULL,
        [social_media_2] NVARCHAR(191) NULL,
        [permanent_address] NVARCHAR(MAX) NULL,
        [current_address] NVARCHAR(MAX) NULL,
        [guardian_name] NVARCHAR(191) NULL,
        [custom_field_1] NVARCHAR(191) NULL,
        [custom_field_2] NVARCHAR(191) NULL,
        [custom_field_3] NVARCHAR(191) NULL,
        [custom_field_4] NVARCHAR(191) NULL,
        [bank_details] NVARCHAR(MAX) NULL,
        [id_proof_name] NVARCHAR(191) NULL,
        [id_proof_number] NVARCHAR(191) NULL,
        [available_at] DATETIME2 NULL,
        [paused_at] DATETIME2 NULL,
        [allow_login] BIT NULL,
        [code] NVARCHAR(191) NULL,
        [nom] NVARCHAR(191) NULL,
        [prenom] NVARCHAR(191) NULL,
        [last_name] NVARCHAR(191) NULL,
        [username] NVARCHAR(191) NULL,
        [prefix] NVARCHAR(191) NULL,
        [telephone] NVARCHAR(191) NULL,
        [tel_whatsapp] NVARCHAR(191) NULL,
        [date_naissance] NVARCHAR(191) NULL,
        [lieu_naissance] NVARCHAR(191) NULL,
        [profil] NVARCHAR(191) NULL,
        [email] NVARCHAR(191) NULL,
        [email_verified_at] DATETIME2 NULL,
        [password] NVARCHAR(191) NULL,
        [status] NVARCHAR(50) NULL,
        [nationality] NVARCHAR(191) NULL,
        [cni] NVARCHAR(191) NULL,
        [quartier_id] BIGINT NULL,
        [adresse] NVARCHAR(191) NULL,
        [sexe] NVARCHAR(50) NULL,
        [poids] NVARCHAR(191) NULL,
        [taille_m] NVARCHAR(191) NULL,
        [taille_cm] NVARCHAR(191) NULL,
        [groupe_sanguin] NVARCHAR(191) NULL,
        [nom_pere] NVARCHAR(191) NULL,
        [nom_mere] NVARCHAR(191) NULL,
        [situation_matrimoniale] NVARCHAR(191) NULL,
        [personne_contacter] NVARCHAR(191) NULL,
        [tel_pers_contacter] NVARCHAR(191) NULL,
        [details] NVARCHAR(MAX) NULL,
        [is_active] NVARCHAR(191) NULL,
        [desactiver] BIT NULL,
        [remember_token] NVARCHAR(100) NULL,
        [created_at] DATETIME2 NULL,
        [updated_at] DATETIME2 NULL,
        [language] NCHAR(7) NULL
        , CONSTRAINT [PK_users] PRIMARY KEY ([id])
    );
END
GO
IF OBJECT_ID(N'[user_contact_access]', N'U') IS NULL
BEGIN
    CREATE TABLE [user_contact_access] (
        [id] BIGINT IDENTITY(1,1) NOT NULL,
        [user_id] BIGINT NULL,
        [contact_id] INT NULL,
        [created_at] DATETIME2 NULL,
        [updated_at] DATETIME2 NULL
        , CONSTRAINT [PK_user_contact_access] PRIMARY KEY ([id])
    );
END
GO
IF OBJECT_ID(N'[valeursps]', N'U') IS NULL
BEGIN
    CREATE TABLE [valeursps] (
        [id] BIGINT IDENTITY(1,1) not NULL,
        [indicateursps_id] BIGINT NULL,
        [n] NVARCHAR(191) NULL,
        [realisation] NVARCHAR(191) NULL,
        [estimation] NVARCHAR(191) NULL,
        [n1] NVARCHAR(191) NULL,
        [n2] NVARCHAR(191) NULL,
        [created_by] NVARCHAR(191) NULL,
        [updated_by] NVARCHAR(191) NULL,
        [created_at] DATETIME2 NULL,
        [updated_at] DATETIME2 NULL
        , CONSTRAINT [PK_valeursps] PRIMARY KEY ([id])
    );
END
GO
IF OBJECT_ID(N'[valeur_actions]', N'U') IS NULL
BEGIN
    CREATE TABLE [valeur_actions] (
        [id] BIGINT IDENTITY(1,1) NOT NULL,
        [indicateur_actions_id] BIGINT NULL,
        [n] NVARCHAR(191) NULL,
        [realisation] NVARCHAR(191) NULL,
        [estimation] NVARCHAR(191) NULL,
        [n1] NVARCHAR(191) NULL,
        [n2] NVARCHAR(191) NULL,
        [created_by] NVARCHAR(191) NULL,
        [updated_by] NVARCHAR(191) NULL,
        [created_at] DATETIME2 NULL,
        [updated_at] DATETIME2 NULL
        , CONSTRAINT [PK_valeur_actions] PRIMARY KEY ([id])
    );
END
GO
IF OBJECT_ID(N'[valeur_activites]', N'U') IS NULL
BEGIN
    CREATE TABLE [valeur_activites] (
        [id] BIGINT IDENTITY(1,1) NOT NULL,
        [indicateur_activites_id] BIGINT NULL,
        [n] NVARCHAR(191) NULL,
        [realisation] NVARCHAR(191) NULL,
        [estimation] NVARCHAR(191) NULL,
        [n1] NVARCHAR(191) NULL,
        [n2] NVARCHAR(191) NULL,
        [created_by] NVARCHAR(191) NULL,
        [updated_by] NVARCHAR(191) NULL,
        [created_at] DATETIME2 NULL,
        [updated_at] DATETIME2 NULL
        , CONSTRAINT [PK_valeur_activites] PRIMARY KEY ([id])
    );
END
GO
IF OBJECT_ID(N'[variations]', N'U') IS NULL
BEGIN
    CREATE TABLE [variations] (
        [id] INT IDENTITY(1,1) NOT NULL,
        [name] NVARCHAR(191) NULL,
        [product_id] BIGINT NULL,
        [sub_sku] NVARCHAR(191) NULL,
        [product_variation_id] INT NULL,
        [variation_value_id] INT NULL,
        [default_purchase_price] DECIMAL(18,2) NULL,
        [dpp_inc_tax] DECIMAL(18,2) NULL,
        [profit_percent] DECIMAL(18,2) NULL,
        [default_sell_price] DECIMAL(18,2) NULL,
        [sell_price_inc_tax] DECIMAL(18,2) NULL,
        [created_at] DATETIME2 NULL,
        [updated_at] DATETIME2 NULL,
        [deleted_at] DATETIME2 NULL,
        [combo_variations] NVARCHAR(MAX) NULL
        , CONSTRAINT [PK_variations] PRIMARY KEY ([id])
    );
END
GO
IF OBJECT_ID(N'[variation_group_prices]', N'U') IS NULL
BEGIN
    CREATE TABLE [variation_group_prices] (
        [id] INT IDENTITY(1,1) NOT NULL,
        [variation_id] INT NULL,
        [price_group_id] BIGINT NULL,
        [price_inc_tax] DECIMAL(18,2) NULL,
        [created_at] DATETIME2 NULL,
        [updated_at] DATETIME2 NULL,
        [price_types] NVARCHAR(50) NULL
        , CONSTRAINT [PK_variation_group_prices] PRIMARY KEY ([id])
    );
END
GO
IF OBJECT_ID(N'[variation_location_details]', N'U') IS NULL
BEGIN
    CREATE TABLE [variation_location_details] (
        [id] INT IDENTITY(1,1) NOT NULL,
        [product_id] INT NULL,
        [product_variation_id] INT NULL,
        [variation_id] INT NULL,
        [location_id] INT NULL,
        [qty_available] DECIMAL(18,2) NULL,
        [created_at] DATETIME2 NULL,
        [updated_at] DATETIME2 NULL
        , CONSTRAINT [PK_variation_location_details] PRIMARY KEY ([id])
    );
END
GO
IF OBJECT_ID(N'[variation_templates]', N'U') IS NULL
BEGIN
    CREATE TABLE [variation_templates] (
        [id] INT IDENTITY(1,1) NOT NULL,
        [name] NVARCHAR(191) NULL,
        [business_id] INT NULL,
        [created_at] DATETIME2 NULL,
        [updated_at] DATETIME2 NULL
        , CONSTRAINT [PK_variation_templates] PRIMARY KEY ([id])
    );
END
GO
IF OBJECT_ID(N'[variation_value_templates]', N'U') IS NULL
BEGIN
    CREATE TABLE [variation_value_templates] (
        [id] INT IDENTITY(1,1) NOT NULL,
        [name] NVARCHAR(191) NULL,
        [variation_template_id] INT NULL,
        [created_at] DATETIME2 NULL,
        [updated_at] DATETIME2 NULL
        , CONSTRAINT [PK_variation_value_templates] PRIMARY KEY ([id])
    );
END
GO
IF OBJECT_ID(N'[ventes]', N'U') IS NULL
BEGIN
    CREATE TABLE [ventes] (
        [id] BIGINT IDENTITY(1,1) NOT NULL,
        [facturation_id] BIGINT NULL,
        [caisse_id] BIGINT NULL,
        [client_id] BIGINT NULL,
        [departement_id] BIGINT NULL,
        [reglement_id] BIGINT NULL,
        [user_id] BIGINT NULL,
        [code] NVARCHAR(191) NULL,
        [quantite] INT NULL,
        [reference] NVARCHAR(191) NULL,
        [motif] NVARCHAR(191) NULL,
        [commentaire] NVARCHAR(191) NULL,
        [dateVente] NVARCHAR(191) NULL,
        [montant] NVARCHAR(191) NULL,
        [montant_verser] NVARCHAR(191) NULL,
        [reste_payable] NVARCHAR(191) NULL,
        [montant_rendre] NVARCHAR(191) NULL,
        [difference_rendu] NVARCHAR(191) NULL,
        [etat] NVARCHAR(191) NULL,
        [created_at] DATETIME2 NULL,
        [updated_at] DATETIME2 NULL
        , CONSTRAINT [PK_ventes] PRIMARY KEY ([id])
    );
END
GO
IF OBJECT_ID(N'[villes]', N'U') IS NULL
BEGIN
    CREATE TABLE [villes] (
        [id] BIGINT IDENTITY(1,1) NOT NULL,
        [region_id] BIGINT NULL,
        [nom] NVARCHAR(191) NULL,
        [created_at] DATETIME2 NULL,
        [updated_at] DATETIME2 NULL
        , CONSTRAINT [PK_villes] PRIMARY KEY ([id])
    );
END
GO
IF OBJECT_ID(N'[warranties]', N'U') IS NULL
BEGIN
    CREATE TABLE [warranties] (
        [id] INT IDENTITY(1,1) NOT NULL,
        [name] NVARCHAR(191) NULL,
        [business_id] INT NULL,
        [description] NVARCHAR(MAX) NULL,
        [duration] INT NULL,
        [duration_type] NVARCHAR(50) NULL,
        [created_at] DATETIME2 NULL,
        [updated_at] DATETIME2 NULL
        , CONSTRAINT [PK_warranties] PRIMARY KEY ([id])
    );
END
GO