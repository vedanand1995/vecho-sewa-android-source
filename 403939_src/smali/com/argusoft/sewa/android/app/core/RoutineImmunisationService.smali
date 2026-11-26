.class public interface abstract Lcom/argusoft/sewa/android/app/core/RoutineImmunisationService;
.super Ljava/lang/Object;
.source "RoutineImmunisationService.java"


# virtual methods
.method public abstract addImmunisationToInventory(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract checkImmunisationStockAvailable(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract getRiInventoryBySessionId(Ljava/lang/String;)Lcom/argusoft/sewa/android/app/model/RISessionInventoryBean;
.end method

.method public abstract removeImmunisationFromInventory(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract retrieveChildrenForRoutineImmunisation(Ljava/lang/CharSequence;JJLjava/util/LinkedHashMap;Ljava/lang/String;Ljava/util/Date;Ljava/util/List;Ljava/lang/Boolean;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            "JJ",
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/util/Date;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/lang/Boolean;",
            ")",
            "Ljava/util/List<",
            "Lcom/argusoft/sewa/android/app/databean/MemberDataBean;",
            ">;"
        }
    .end annotation
.end method

.method public abstract retrieveCountForRIServices(Ljava/lang/Integer;)Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Integer;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end method

.method public abstract retrievePregnantWomenForRoutineImmunisation(Ljava/lang/CharSequence;JJLjava/util/LinkedHashMap;Ljava/lang/String;Ljava/util/Date;Ljava/util/List;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            "JJ",
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/util/Date;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/argusoft/sewa/android/app/databean/MemberDataBean;",
            ">;"
        }
    .end annotation
.end method

.method public abstract retrieveWpdWomenByArea(Ljava/lang/CharSequence;JJLjava/util/LinkedHashMap;Ljava/lang/String;Ljava/util/Date;Ljava/util/List;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            "JJ",
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/util/Date;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/argusoft/sewa/android/app/databean/MemberDataBean;",
            ">;"
        }
    .end annotation
.end method
