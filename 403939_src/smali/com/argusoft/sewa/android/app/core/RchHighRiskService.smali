.class public interface abstract Lcom/argusoft/sewa/android/app/core/RchHighRiskService;
.super Ljava/lang/Object;
.source "RchHighRiskService.java"


# virtual methods
.method public abstract identifyHighRisk(Ljava/lang/String;Ljava/lang/Object;Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            "Ljava/util/List<",
            "Lcom/argusoft/sewa/android/app/databean/OptionDataBean;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract identifyHighRiskForAdolescent(Ljava/util/Map;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation
.end method

.method public abstract identifyHighRiskForChildRchPnc(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/String;
.end method

.method public abstract identifyHighRiskForChildRchWpd(Ljava/lang/Object;)Ljava/lang/String;
.end method

.method public abstract identifyHighRiskForMotherRchPnc(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/String;
.end method

.method public abstract identifyHighRiskForRchAnc(Ljava/util/Map;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation
.end method

.method public abstract identifyHighRiskOnInput(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Boolean;
.end method
