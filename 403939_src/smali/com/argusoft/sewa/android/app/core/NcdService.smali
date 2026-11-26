.class public interface abstract Lcom/argusoft/sewa/android/app/core/NcdService;
.super Ljava/lang/Object;
.source "NcdService.java"


# virtual methods
.method public abstract markFamilyAsCbacDoneForAnyMember(Ljava/lang/Long;)V
.end method

.method public abstract markMemberAsCbacDone(Ljava/lang/Long;)V
.end method

.method public abstract markMemberAsNCDScreeningDone(Ljava/lang/Long;Ljava/lang/String;Ljava/util/Date;)V
.end method

.method public abstract retrieveFamiliesForCbacEntry(Ljava/lang/String;Ljava/lang/Integer;JJ)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            "JJ)",
            "Ljava/util/List<",
            "Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;",
            ">;"
        }
    .end annotation
.end method

.method public abstract retrieveFamiliesForNcdScreening(Ljava/lang/String;Ljava/util/List;JJ)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;JJ)",
            "Ljava/util/List<",
            "Lcom/argusoft/sewa/android/app/databean/FamilyDataBean;",
            ">;"
        }
    .end annotation
.end method

.method public abstract retrieveMemberCbacDetailBean(Ljava/lang/Long;)Lcom/argusoft/sewa/android/app/model/MemberCbacDetailBean;
.end method

.method public abstract retrieveMembersForNcdRegisterAsha(Ljava/util/List;Ljava/lang/String;JJ)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/lang/String;",
            "JJ)",
            "Ljava/util/List<",
            "Lcom/argusoft/sewa/android/app/databean/MemberDataBean;",
            ">;"
        }
    .end annotation
.end method

.method public abstract retrieveMembersForNcdRegisterFhw(Ljava/lang/Integer;Ljava/util/List;Ljava/lang/String;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Integer;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/argusoft/sewa/android/app/model/MemberBean;",
            ">;"
        }
    .end annotation
.end method

.method public abstract retrieveMembersListForCbacEntry(Ljava/lang/String;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/argusoft/sewa/android/app/databean/MemberDataBean;",
            ">;"
        }
    .end annotation
.end method

.method public abstract retrieveMembersListForNcdScreening(Ljava/lang/String;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/argusoft/sewa/android/app/databean/MemberDataBean;",
            ">;"
        }
    .end annotation
.end method
