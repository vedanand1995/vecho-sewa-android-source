.class public interface abstract Lcom/argusoft/sewa/android/app/core/MigrationService;
.super Ljava/lang/Object;
.source "MigrationService.java"


# virtual methods
.method public abstract createFamilyMigrationInConfirmation(Lcom/argusoft/sewa/android/app/databean/FamilyMigrationInConfirmationDataBean;Lcom/argusoft/sewa/android/app/databean/FamilyMigrationDetailsDataBean;)V
.end method

.method public abstract createFamilyMigrationOut(Lcom/argusoft/sewa/android/app/databean/FamilyMigrationOutDataBean;Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;Lcom/argusoft/sewa/android/app/databean/NotificationMobDataBean;)V
.end method

.method public abstract createMigrationIn(Lcom/argusoft/sewa/android/app/databean/MigrationInDataBean;)V
.end method

.method public abstract createMigrationInConfirmation(Lcom/argusoft/sewa/android/app/databean/MigrationInConfirmationDataBean;Lcom/argusoft/sewa/android/app/databean/MigrationDetailsDataBean;)V
.end method

.method public abstract createMigrationOut(Lcom/argusoft/sewa/android/app/databean/MigrationOutDataBean;Lcom/argusoft/sewa/android/app/databean/MemberDataBean;Lcom/argusoft/sewa/android/app/model/NotificationBean;)V
.end method

.method public abstract createMigrationOutConfirmation(Lcom/argusoft/sewa/android/app/databean/MigrationOutConfirmationDataBean;Lcom/argusoft/sewa/android/app/databean/MigrationDetailsDataBean;)V
.end method

.method public abstract deleteMigratedFamilyBean(Lcom/argusoft/sewa/android/app/model/MigratedFamilyBean;)V
.end method

.method public abstract deleteMigratedMembersBean(Lcom/argusoft/sewa/android/app/model/MigratedMembersBean;)V
.end method

.method public abstract retrieveChildrenUnder5YearsByMotherId(Ljava/lang/Long;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Long;",
            ")",
            "Ljava/util/List<",
            "Lcom/argusoft/sewa/android/app/model/MemberBean;",
            ">;"
        }
    .end annotation
.end method

.method public abstract retrieveFamilyListBySearchForMigration(Ljava/lang/String;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;",
            ">;"
        }
    .end annotation
.end method

.method public abstract retrieveHierarchyOfVillage(Lcom/argusoft/sewa/android/app/model/LocationMasterBean;)Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/argusoft/sewa/android/app/model/LocationMasterBean;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract retrieveLocationMasterBeansBySearch(Ljava/lang/CharSequence;Ljava/lang/Integer;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            "Ljava/lang/Integer;",
            ")",
            "Ljava/util/List<",
            "Lcom/argusoft/sewa/android/app/model/LocationMasterBean;",
            ">;"
        }
    .end annotation
.end method

.method public abstract retrieveMigrationDetailsForMigratedFamily(Ljava/lang/Integer;Ljava/util/List;ZJJ)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Integer;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;ZJJ)",
            "Ljava/util/List<",
            "Lcom/argusoft/sewa/android/app/model/MigratedFamilyBean;",
            ">;"
        }
    .end annotation
.end method

.method public abstract retrieveMigrationDetailsForMigratedMembers(Ljava/lang/Integer;Ljava/util/List;ZJJ)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Integer;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;ZJJ)",
            "Ljava/util/List<",
            "Lcom/argusoft/sewa/android/app/model/MigratedMembersBean;",
            ">;"
        }
    .end annotation
.end method

.method public abstract searchFamilyByLocation(Ljava/lang/String;Ljava/lang/Long;JJ)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            "JJ)",
            "Ljava/util/List<",
            "Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;",
            ">;"
        }
    .end annotation
.end method

.method public abstract storeRevertedFamilyMigrationBean(Lcom/argusoft/sewa/android/app/databean/MigratedFamilyDataBean;)V
.end method

.method public abstract storeRevertedMigrationBean(Lcom/argusoft/sewa/android/app/databean/MigratedMembersDataBean;)V
.end method
