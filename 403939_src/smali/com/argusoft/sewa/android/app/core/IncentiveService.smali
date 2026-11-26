.class public interface abstract Lcom/argusoft/sewa/android/app/core/IncentiveService;
.super Ljava/lang/Object;
.source "IncentiveService.java"


# virtual methods
.method public abstract getIncentiveMasterById(Ljava/lang/Integer;)Lcom/argusoft/sewa/android/app/model/IncentiveMaster;
.end method

.method public abstract retrieveApprovedIncentives()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/argusoft/sewa/android/app/model/IncentiveMonthlyDetailsBean;",
            ">;"
        }
    .end annotation
.end method

.method public abstract retrieveAshaApprovedIncentives(I)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lcom/argusoft/sewa/android/app/model/IncentiveMonthlyDetailsBean;",
            ">;"
        }
    .end annotation
.end method

.method public abstract retrieveAshaFacApprovedIncentives(I)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lcom/argusoft/sewa/android/app/model/IncentiveMonthlyDetailsBean;",
            ">;"
        }
    .end annotation
.end method

.method public abstract retrieveFamilyListByCode(Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/Long;Ljava/lang/Long;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/CharSequence;",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            ")",
            "Ljava/util/List<",
            "Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;",
            ">;"
        }
    .end annotation
.end method

.method public abstract retrieveIncentiveMasterByIncentiveCode(Ljava/lang/String;)Lcom/argusoft/sewa/android/app/model/IncentiveMaster;
.end method

.method public abstract retrieveIncentiveMonthlyBeanByActualId(Ljava/lang/Integer;)Lcom/argusoft/sewa/android/app/model/IncentiveMonthlyDetailsBean;
.end method

.method public abstract retrieveMemberListByCode(Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/Long;Ljava/lang/Long;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/CharSequence;",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            ")",
            "Ljava/util/List<",
            "Lcom/argusoft/sewa/android/app/databean/MemberDataBean;",
            ">;"
        }
    .end annotation
.end method

.method public abstract retrievePendingIncentives()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/argusoft/sewa/android/app/model/IncentiveMonthlyDetailsBean;",
            ">;"
        }
    .end annotation
.end method

.method public abstract retrievePreviousIncentives(Ljava/lang/Long;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Long;",
            ")",
            "Ljava/util/List<",
            "Lcom/argusoft/sewa/android/app/model/PreviousYearIncentive;",
            ">;"
        }
    .end annotation
.end method
