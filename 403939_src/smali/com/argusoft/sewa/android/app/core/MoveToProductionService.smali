.class public interface abstract Lcom/argusoft/sewa/android/app/core/MoveToProductionService;
.super Ljava/lang/Object;
.source "MoveToProductionService.java"


# virtual methods
.method public abstract isAnyFormTrainingCompleted()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/argusoft/sewa/android/app/model/FormAccessibilityBean;",
            ">;"
        }
    .end annotation
.end method

.method public abstract postUserReadyToMoveProduction()V
.end method

.method public abstract retrieveFormAccessibilityBeanByFormType(Ljava/lang/String;)Lcom/argusoft/sewa/android/app/model/FormAccessibilityBean;
.end method

.method public abstract saveFormAccessibilityBeansFromServer()V
.end method

.method public abstract saveFormsToMoveToProduction(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/argusoft/sewa/android/app/model/FormAccessibilityBean;",
            ">;)V"
        }
    .end annotation
.end method
