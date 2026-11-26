.class public interface abstract Lcom/argusoft/sewa/android/app/core/CampaignSessionService;
.super Ljava/lang/Object;
.source "CampaignSessionService.java"


# virtual methods
.method public abstract endSessionBySessionId(Ljava/lang/String;)V
.end method

.method public abstract getCampaignMasterByConfigIdAndWeek(Ljava/lang/Integer;Ljava/lang/Integer;)Lcom/argusoft/sewa/android/app/model/CampaignMasterBean;
.end method

.method public abstract getCampaignMasterByLocationId(Ljava/util/List;Lcom/argusoft/sewa/android/app/model/CampaignSessionBean;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;",
            "Lcom/argusoft/sewa/android/app/model/CampaignSessionBean;",
            ")",
            "Ljava/util/List<",
            "Lcom/argusoft/sewa/android/app/model/CampaignMasterBean;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getCampaignSessionByConfigId(Ljava/lang/Integer;)Lcom/argusoft/sewa/android/app/model/CampaignSessionBean;
.end method

.method public abstract getCampaignSessionByLocationId(Ljava/util/List;Ljava/lang/Boolean;)Lcom/argusoft/sewa/android/app/model/CampaignSessionBean;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/lang/Boolean;",
            ")",
            "Lcom/argusoft/sewa/android/app/model/CampaignSessionBean;"
        }
    .end annotation
.end method

.method public abstract getCampaignSessionBySessionId(Ljava/lang/String;)Lcom/argusoft/sewa/android/app/model/CampaignSessionBean;
.end method

.method public abstract getCompletedSessionForTodayByLocationId(Ljava/util/List;)Lcom/argusoft/sewa/android/app/model/CampaignSessionBean;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)",
            "Lcom/argusoft/sewa/android/app/model/CampaignSessionBean;"
        }
    .end annotation
.end method

.method public abstract startNewSession(Lcom/argusoft/sewa/android/app/model/CampaignMasterBean;)Lcom/argusoft/sewa/android/app/model/CampaignSessionBean;
.end method

.method public abstract submitCampaignInventoryForm(Lcom/argusoft/sewa/android/app/model/RISessionInventoryBean;)V
.end method

.method public abstract submitCampaignInventoryReturnForm(Lcom/argusoft/sewa/android/app/model/RISessionInventoryBean;)V
.end method
