.class public Lcom/argusoft/sewa/android/app/activity/RIInventoryReturnActivity;
.super Lcom/argusoft/sewa/android/app/activity/MenuActivity;
.source "RIInventoryReturnActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private campaignMasterBean:Lcom/argusoft/sewa/android/app/model/CampaignMasterBean;

.field campaignSessionService:Lcom/argusoft/sewa/android/app/core/impl/CampaignSessionServiceImpl;

.field healthInfrastructureService:Lcom/argusoft/sewa/android/app/core/impl/HealthInfrastructureServiceImpl;

.field private immReturnMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/widget/LinearLayout;",
            ">;"
        }
    .end annotation
.end field

.field private inventoryBean:Lcom/argusoft/sewa/android/app/model/RISessionInventoryBean;

.field private isOnline:Z

.field routineImmunisationService:Lcom/argusoft/sewa/android/app/core/impl/RoutineImmunisationServiceImpl;

.field private session:Lcom/argusoft/sewa/android/app/model/CampaignSessionBean;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 51
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/MenuActivity;-><init>()V

    return-void
.end method

.method private addImmunisationRows(Landroid/widget/LinearLayout;)V
    .locals 1

    .line 133
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/RIInventoryReturnActivity;->inventoryBean:Lcom/argusoft/sewa/android/app/model/RISessionInventoryBean;

    if-nez v0, :cond_0

    return-void

    .line 137
    :cond_0
    const-string v0, "BCG"

    invoke-direct {p0, v0}, Lcom/argusoft/sewa/android/app/activity/RIInventoryReturnActivity;->getInventoryVialLayout(Ljava/lang/String;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 138
    const-string v0, "MR"

    invoke-direct {p0, v0}, Lcom/argusoft/sewa/android/app/activity/RIInventoryReturnActivity;->getInventoryVialLayout(Ljava/lang/String;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 139
    const-string v0, "DPT"

    invoke-direct {p0, v0}, Lcom/argusoft/sewa/android/app/activity/RIInventoryReturnActivity;->getInventoryVialLayout(Ljava/lang/String;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 140
    const-string v0, "TD"

    invoke-direct {p0, v0}, Lcom/argusoft/sewa/android/app/activity/RIInventoryReturnActivity;->getInventoryVialLayout(Ljava/lang/String;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 141
    const-string v0, "PENTAVALENT"

    invoke-direct {p0, v0}, Lcom/argusoft/sewa/android/app/activity/RIInventoryReturnActivity;->getInventoryVialLayout(Ljava/lang/String;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 142
    const-string v0, "FIPV"

    invoke-direct {p0, v0}, Lcom/argusoft/sewa/android/app/activity/RIInventoryReturnActivity;->getInventoryVialLayout(Ljava/lang/String;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 143
    const-string v0, "PCV"

    invoke-direct {p0, v0}, Lcom/argusoft/sewa/android/app/activity/RIInventoryReturnActivity;->getInventoryVialLayout(Ljava/lang/String;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 147
    const-string v0, "OPV"

    invoke-direct {p0, v0}, Lcom/argusoft/sewa/android/app/activity/RIInventoryReturnActivity;->getInventoryVialLayout(Ljava/lang/String;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 148
    const-string v0, "ROTA_VIRUS"

    invoke-direct {p0, v0}, Lcom/argusoft/sewa/android/app/activity/RIInventoryReturnActivity;->getInventoryVialLayout(Ljava/lang/String;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 149
    const-string v0, "HEP_B"

    invoke-direct {p0, v0}, Lcom/argusoft/sewa/android/app/activity/RIInventoryReturnActivity;->getInventoryVialLayout(Ljava/lang/String;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method private getInventoryVialLayout(Ljava/lang/String;)Landroid/widget/LinearLayout;
    .locals 8

    .line 153
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/RIInventoryReturnActivity;->context:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/argusoft/sewa/android/app/R$layout;->ri_inventory_immunisation_return_layout:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 154
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/RIInventoryReturnActivity;->immReturnMap:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 156
    sget v1, Lcom/argusoft/sewa/android/app/R$id;->vaccineName:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 157
    invoke-static {p1}, Lcom/argusoft/sewa/android/app/constants/RIInventoryConstants;->getFullFormOfInventoryVaccines(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 158
    sget v1, Lcom/argusoft/sewa/android/app/R$id;->newVialsText:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 159
    const-string v2, "New Vials"

    invoke-static {v2}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 160
    sget v1, Lcom/argusoft/sewa/android/app/R$id;->openVialsText:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 161
    const-string v2, "Open Vials"

    invoke-static {v2}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 165
    sget v2, Lcom/argusoft/sewa/android/app/R$id;->newVials:I

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RadioGroup;

    .line 166
    sget v3, Lcom/argusoft/sewa/android/app/R$id;->openVials:I

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RadioGroup;

    .line 167
    sget v4, Lcom/argusoft/sewa/android/app/R$id;->emptyVials:I

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/RadioGroup;

    .line 169
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v5

    const/16 v6, 0x8

    const/4 v7, -0x1

    sparse-switch v5, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v5, "ROTA_VIRUS"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto/16 :goto_0

    :cond_0
    const/16 v7, 0xa

    goto/16 :goto_0

    :sswitch_1
    const-string v5, "HEP_B"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto/16 :goto_0

    :cond_1
    const/16 v7, 0x9

    goto/16 :goto_0

    :sswitch_2
    const-string v5, "FIPV"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    goto/16 :goto_0

    :cond_2
    const/16 v7, 0x8

    goto/16 :goto_0

    :sswitch_3
    const-string v5, "PCV"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_0

    :cond_3
    const/4 v7, 0x7

    goto :goto_0

    :sswitch_4
    const-string v5, "OPV"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    goto :goto_0

    :cond_4
    const/4 v7, 0x6

    goto :goto_0

    :sswitch_5
    const-string v5, "DPT"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    goto :goto_0

    :cond_5
    const/4 v7, 0x5

    goto :goto_0

    :sswitch_6
    const-string v5, "BCG"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    goto :goto_0

    :cond_6
    const/4 v7, 0x4

    goto :goto_0

    :sswitch_7
    const-string v5, "TD"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_7

    goto :goto_0

    :cond_7
    const/4 v7, 0x3

    goto :goto_0

    :sswitch_8
    const-string v5, "MR"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_8

    goto :goto_0

    :cond_8
    const/4 v7, 0x2

    goto :goto_0

    :sswitch_9
    const-string v5, "JE"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_9

    goto :goto_0

    :cond_9
    const/4 v7, 0x1

    goto :goto_0

    :sswitch_a
    const-string v5, "PENTAVALENT"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_a

    goto :goto_0

    :cond_a
    const/4 v7, 0x0

    :goto_0
    const-string p1, "Not usable/Empty Vials"

    packed-switch v7, :pswitch_data_0

    goto/16 :goto_1

    .line 218
    :pswitch_0
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/RIInventoryReturnActivity;->inventoryBean:Lcom/argusoft/sewa/android/app/model/RISessionInventoryBean;

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/model/RISessionInventoryBean;->getRotaNew()Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-direct {p0, p1, v2}, Lcom/argusoft/sewa/android/app/activity/RIInventoryReturnActivity;->hideVialRadioButton(ILandroid/widget/RadioGroup;)V

    .line 219
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/RIInventoryReturnActivity;->inventoryBean:Lcom/argusoft/sewa/android/app/model/RISessionInventoryBean;

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/model/RISessionInventoryBean;->getRotaNew()Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/RIInventoryReturnActivity;->inventoryBean:Lcom/argusoft/sewa/android/app/model/RISessionInventoryBean;

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/model/RISessionInventoryBean;->getRotaOpen()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    add-int/2addr p1, v1

    invoke-direct {p0, p1, v3}, Lcom/argusoft/sewa/android/app/activity/RIInventoryReturnActivity;->hideVialRadioButton(ILandroid/widget/RadioGroup;)V

    .line 220
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/RIInventoryReturnActivity;->inventoryBean:Lcom/argusoft/sewa/android/app/model/RISessionInventoryBean;

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/model/RISessionInventoryBean;->getRotaNew()Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/RIInventoryReturnActivity;->inventoryBean:Lcom/argusoft/sewa/android/app/model/RISessionInventoryBean;

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/model/RISessionInventoryBean;->getRotaOpen()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    add-int/2addr p1, v1

    invoke-direct {p0, p1, v4}, Lcom/argusoft/sewa/android/app/activity/RIInventoryReturnActivity;->hideVialRadioButton(ILandroid/widget/RadioGroup;)V

    goto/16 :goto_1

    .line 223
    :pswitch_1
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/RIInventoryReturnActivity;->inventoryBean:Lcom/argusoft/sewa/android/app/model/RISessionInventoryBean;

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/model/RISessionInventoryBean;->getHepNew()Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-direct {p0, p1, v2}, Lcom/argusoft/sewa/android/app/activity/RIInventoryReturnActivity;->hideVialRadioButton(ILandroid/widget/RadioGroup;)V

    .line 224
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/RIInventoryReturnActivity;->inventoryBean:Lcom/argusoft/sewa/android/app/model/RISessionInventoryBean;

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/model/RISessionInventoryBean;->getHepNew()Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/RIInventoryReturnActivity;->inventoryBean:Lcom/argusoft/sewa/android/app/model/RISessionInventoryBean;

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/model/RISessionInventoryBean;->getHepOpen()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    add-int/2addr p1, v1

    invoke-direct {p0, p1, v3}, Lcom/argusoft/sewa/android/app/activity/RIInventoryReturnActivity;->hideVialRadioButton(ILandroid/widget/RadioGroup;)V

    .line 225
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/RIInventoryReturnActivity;->inventoryBean:Lcom/argusoft/sewa/android/app/model/RISessionInventoryBean;

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/model/RISessionInventoryBean;->getHepNew()Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/RIInventoryReturnActivity;->inventoryBean:Lcom/argusoft/sewa/android/app/model/RISessionInventoryBean;

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/model/RISessionInventoryBean;->getHepOpen()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    add-int/2addr p1, v1

    invoke-direct {p0, p1, v4}, Lcom/argusoft/sewa/android/app/activity/RIInventoryReturnActivity;->hideVialRadioButton(ILandroid/widget/RadioGroup;)V

    goto/16 :goto_1

    .line 198
    :pswitch_2
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/RIInventoryReturnActivity;->inventoryBean:Lcom/argusoft/sewa/android/app/model/RISessionInventoryBean;

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/model/RISessionInventoryBean;->getFipvNew()Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-direct {p0, p1, v2}, Lcom/argusoft/sewa/android/app/activity/RIInventoryReturnActivity;->hideVialRadioButton(ILandroid/widget/RadioGroup;)V

    .line 199
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/RIInventoryReturnActivity;->inventoryBean:Lcom/argusoft/sewa/android/app/model/RISessionInventoryBean;

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/model/RISessionInventoryBean;->getFipvNew()Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/RIInventoryReturnActivity;->inventoryBean:Lcom/argusoft/sewa/android/app/model/RISessionInventoryBean;

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/model/RISessionInventoryBean;->getFipvOpen()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    add-int/2addr p1, v1

    invoke-direct {p0, p1, v3}, Lcom/argusoft/sewa/android/app/activity/RIInventoryReturnActivity;->hideVialRadioButton(ILandroid/widget/RadioGroup;)V

    .line 200
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/RIInventoryReturnActivity;->inventoryBean:Lcom/argusoft/sewa/android/app/model/RISessionInventoryBean;

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/model/RISessionInventoryBean;->getFipvNew()Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/RIInventoryReturnActivity;->inventoryBean:Lcom/argusoft/sewa/android/app/model/RISessionInventoryBean;

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/model/RISessionInventoryBean;->getFipvOpen()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    add-int/2addr p1, v1

    invoke-direct {p0, p1, v4}, Lcom/argusoft/sewa/android/app/activity/RIInventoryReturnActivity;->hideVialRadioButton(ILandroid/widget/RadioGroup;)V

    goto/16 :goto_1

    .line 203
    :pswitch_3
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/RIInventoryReturnActivity;->inventoryBean:Lcom/argusoft/sewa/android/app/model/RISessionInventoryBean;

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/model/RISessionInventoryBean;->getPcvNew()Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-direct {p0, p1, v2}, Lcom/argusoft/sewa/android/app/activity/RIInventoryReturnActivity;->hideVialRadioButton(ILandroid/widget/RadioGroup;)V

    .line 204
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/RIInventoryReturnActivity;->inventoryBean:Lcom/argusoft/sewa/android/app/model/RISessionInventoryBean;

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/model/RISessionInventoryBean;->getPcvNew()Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/RIInventoryReturnActivity;->inventoryBean:Lcom/argusoft/sewa/android/app/model/RISessionInventoryBean;

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/model/RISessionInventoryBean;->getPcvOpen()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    add-int/2addr p1, v1

    invoke-direct {p0, p1, v3}, Lcom/argusoft/sewa/android/app/activity/RIInventoryReturnActivity;->hideVialRadioButton(ILandroid/widget/RadioGroup;)V

    .line 205
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/RIInventoryReturnActivity;->inventoryBean:Lcom/argusoft/sewa/android/app/model/RISessionInventoryBean;

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/model/RISessionInventoryBean;->getPcvNew()Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/RIInventoryReturnActivity;->inventoryBean:Lcom/argusoft/sewa/android/app/model/RISessionInventoryBean;

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/model/RISessionInventoryBean;->getPcvOpen()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    add-int/2addr p1, v1

    invoke-direct {p0, p1, v4}, Lcom/argusoft/sewa/android/app/activity/RIInventoryReturnActivity;->hideVialRadioButton(ILandroid/widget/RadioGroup;)V

    goto/16 :goto_1

    .line 213
    :pswitch_4
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/RIInventoryReturnActivity;->inventoryBean:Lcom/argusoft/sewa/android/app/model/RISessionInventoryBean;

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/model/RISessionInventoryBean;->getOpvNew()Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-direct {p0, p1, v2}, Lcom/argusoft/sewa/android/app/activity/RIInventoryReturnActivity;->hideVialRadioButton(ILandroid/widget/RadioGroup;)V

    .line 214
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/RIInventoryReturnActivity;->inventoryBean:Lcom/argusoft/sewa/android/app/model/RISessionInventoryBean;

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/model/RISessionInventoryBean;->getOpvNew()Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/RIInventoryReturnActivity;->inventoryBean:Lcom/argusoft/sewa/android/app/model/RISessionInventoryBean;

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/model/RISessionInventoryBean;->getOpvOpen()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    add-int/2addr p1, v1

    invoke-direct {p0, p1, v3}, Lcom/argusoft/sewa/android/app/activity/RIInventoryReturnActivity;->hideVialRadioButton(ILandroid/widget/RadioGroup;)V

    .line 215
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/RIInventoryReturnActivity;->inventoryBean:Lcom/argusoft/sewa/android/app/model/RISessionInventoryBean;

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/model/RISessionInventoryBean;->getOpvNew()Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/RIInventoryReturnActivity;->inventoryBean:Lcom/argusoft/sewa/android/app/model/RISessionInventoryBean;

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/model/RISessionInventoryBean;->getOpvOpen()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    add-int/2addr p1, v1

    invoke-direct {p0, p1, v4}, Lcom/argusoft/sewa/android/app/activity/RIInventoryReturnActivity;->hideVialRadioButton(ILandroid/widget/RadioGroup;)V

    goto/16 :goto_1

    .line 183
    :pswitch_5
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/RIInventoryReturnActivity;->inventoryBean:Lcom/argusoft/sewa/android/app/model/RISessionInventoryBean;

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/model/RISessionInventoryBean;->getDptNew()Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-direct {p0, p1, v2}, Lcom/argusoft/sewa/android/app/activity/RIInventoryReturnActivity;->hideVialRadioButton(ILandroid/widget/RadioGroup;)V

    .line 184
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/RIInventoryReturnActivity;->inventoryBean:Lcom/argusoft/sewa/android/app/model/RISessionInventoryBean;

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/model/RISessionInventoryBean;->getDptNew()Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/RIInventoryReturnActivity;->inventoryBean:Lcom/argusoft/sewa/android/app/model/RISessionInventoryBean;

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/model/RISessionInventoryBean;->getDptOpen()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    add-int/2addr p1, v1

    invoke-direct {p0, p1, v3}, Lcom/argusoft/sewa/android/app/activity/RIInventoryReturnActivity;->hideVialRadioButton(ILandroid/widget/RadioGroup;)V

    .line 185
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/RIInventoryReturnActivity;->inventoryBean:Lcom/argusoft/sewa/android/app/model/RISessionInventoryBean;

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/model/RISessionInventoryBean;->getDptNew()Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/RIInventoryReturnActivity;->inventoryBean:Lcom/argusoft/sewa/android/app/model/RISessionInventoryBean;

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/model/RISessionInventoryBean;->getDptOpen()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    add-int/2addr p1, v1

    invoke-direct {p0, p1, v4}, Lcom/argusoft/sewa/android/app/activity/RIInventoryReturnActivity;->hideVialRadioButton(ILandroid/widget/RadioGroup;)V

    goto/16 :goto_1

    .line 171
    :pswitch_6
    invoke-static {p1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 172
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/RIInventoryReturnActivity;->inventoryBean:Lcom/argusoft/sewa/android/app/model/RISessionInventoryBean;

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/model/RISessionInventoryBean;->getBcgNew()Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-direct {p0, p1, v2}, Lcom/argusoft/sewa/android/app/activity/RIInventoryReturnActivity;->hideVialRadioButton(ILandroid/widget/RadioGroup;)V

    .line 173
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/RIInventoryReturnActivity;->inventoryBean:Lcom/argusoft/sewa/android/app/model/RISessionInventoryBean;

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/model/RISessionInventoryBean;->getBcgNew()Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-direct {p0, p1, v3}, Lcom/argusoft/sewa/android/app/activity/RIInventoryReturnActivity;->hideVialRadioButton(ILandroid/widget/RadioGroup;)V

    .line 174
    sget p1, Lcom/argusoft/sewa/android/app/R$id;->emptyVialsLayout:I

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v6}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_1

    .line 193
    :pswitch_7
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/RIInventoryReturnActivity;->inventoryBean:Lcom/argusoft/sewa/android/app/model/RISessionInventoryBean;

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/model/RISessionInventoryBean;->getTdNew()Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-direct {p0, p1, v2}, Lcom/argusoft/sewa/android/app/activity/RIInventoryReturnActivity;->hideVialRadioButton(ILandroid/widget/RadioGroup;)V

    .line 194
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/RIInventoryReturnActivity;->inventoryBean:Lcom/argusoft/sewa/android/app/model/RISessionInventoryBean;

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/model/RISessionInventoryBean;->getTdNew()Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/RIInventoryReturnActivity;->inventoryBean:Lcom/argusoft/sewa/android/app/model/RISessionInventoryBean;

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/model/RISessionInventoryBean;->getTdOpen()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    add-int/2addr p1, v1

    invoke-direct {p0, p1, v3}, Lcom/argusoft/sewa/android/app/activity/RIInventoryReturnActivity;->hideVialRadioButton(ILandroid/widget/RadioGroup;)V

    .line 195
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/RIInventoryReturnActivity;->inventoryBean:Lcom/argusoft/sewa/android/app/model/RISessionInventoryBean;

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/model/RISessionInventoryBean;->getTdNew()Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/RIInventoryReturnActivity;->inventoryBean:Lcom/argusoft/sewa/android/app/model/RISessionInventoryBean;

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/model/RISessionInventoryBean;->getTdOpen()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    add-int/2addr p1, v1

    invoke-direct {p0, p1, v4}, Lcom/argusoft/sewa/android/app/activity/RIInventoryReturnActivity;->hideVialRadioButton(ILandroid/widget/RadioGroup;)V

    goto/16 :goto_1

    .line 177
    :pswitch_8
    invoke-static {p1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 178
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/RIInventoryReturnActivity;->inventoryBean:Lcom/argusoft/sewa/android/app/model/RISessionInventoryBean;

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/model/RISessionInventoryBean;->getMrNew()Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-direct {p0, p1, v2}, Lcom/argusoft/sewa/android/app/activity/RIInventoryReturnActivity;->hideVialRadioButton(ILandroid/widget/RadioGroup;)V

    .line 179
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/RIInventoryReturnActivity;->inventoryBean:Lcom/argusoft/sewa/android/app/model/RISessionInventoryBean;

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/model/RISessionInventoryBean;->getMrNew()Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-direct {p0, p1, v3}, Lcom/argusoft/sewa/android/app/activity/RIInventoryReturnActivity;->hideVialRadioButton(ILandroid/widget/RadioGroup;)V

    .line 180
    sget p1, Lcom/argusoft/sewa/android/app/R$id;->emptyVialsLayout:I

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v6}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_1

    .line 208
    :pswitch_9
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/RIInventoryReturnActivity;->inventoryBean:Lcom/argusoft/sewa/android/app/model/RISessionInventoryBean;

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/model/RISessionInventoryBean;->getJeNew()Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-direct {p0, p1, v2}, Lcom/argusoft/sewa/android/app/activity/RIInventoryReturnActivity;->hideVialRadioButton(ILandroid/widget/RadioGroup;)V

    .line 209
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/RIInventoryReturnActivity;->inventoryBean:Lcom/argusoft/sewa/android/app/model/RISessionInventoryBean;

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/model/RISessionInventoryBean;->getJeNew()Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/RIInventoryReturnActivity;->inventoryBean:Lcom/argusoft/sewa/android/app/model/RISessionInventoryBean;

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/model/RISessionInventoryBean;->getJeOpen()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    add-int/2addr p1, v1

    invoke-direct {p0, p1, v3}, Lcom/argusoft/sewa/android/app/activity/RIInventoryReturnActivity;->hideVialRadioButton(ILandroid/widget/RadioGroup;)V

    .line 210
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/RIInventoryReturnActivity;->inventoryBean:Lcom/argusoft/sewa/android/app/model/RISessionInventoryBean;

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/model/RISessionInventoryBean;->getJeNew()Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/RIInventoryReturnActivity;->inventoryBean:Lcom/argusoft/sewa/android/app/model/RISessionInventoryBean;

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/model/RISessionInventoryBean;->getJeOpen()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    add-int/2addr p1, v1

    invoke-direct {p0, p1, v4}, Lcom/argusoft/sewa/android/app/activity/RIInventoryReturnActivity;->hideVialRadioButton(ILandroid/widget/RadioGroup;)V

    goto :goto_1

    .line 188
    :pswitch_a
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/RIInventoryReturnActivity;->inventoryBean:Lcom/argusoft/sewa/android/app/model/RISessionInventoryBean;

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/model/RISessionInventoryBean;->getPentaNew()Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-direct {p0, p1, v2}, Lcom/argusoft/sewa/android/app/activity/RIInventoryReturnActivity;->hideVialRadioButton(ILandroid/widget/RadioGroup;)V

    .line 189
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/RIInventoryReturnActivity;->inventoryBean:Lcom/argusoft/sewa/android/app/model/RISessionInventoryBean;

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/model/RISessionInventoryBean;->getPentaNew()Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/RIInventoryReturnActivity;->inventoryBean:Lcom/argusoft/sewa/android/app/model/RISessionInventoryBean;

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/model/RISessionInventoryBean;->getPentaOpen()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    add-int/2addr p1, v1

    invoke-direct {p0, p1, v3}, Lcom/argusoft/sewa/android/app/activity/RIInventoryReturnActivity;->hideVialRadioButton(ILandroid/widget/RadioGroup;)V

    .line 190
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/RIInventoryReturnActivity;->inventoryBean:Lcom/argusoft/sewa/android/app/model/RISessionInventoryBean;

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/model/RISessionInventoryBean;->getPentaNew()Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/RIInventoryReturnActivity;->inventoryBean:Lcom/argusoft/sewa/android/app/model/RISessionInventoryBean;

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/model/RISessionInventoryBean;->getPentaOpen()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    add-int/2addr p1, v1

    invoke-direct {p0, p1, v4}, Lcom/argusoft/sewa/android/app/activity/RIInventoryReturnActivity;->hideVialRadioButton(ILandroid/widget/RadioGroup;)V

    :goto_1
    return-object v0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x5912b930 -> :sswitch_a
        0x93b -> :sswitch_9
        0x9a5 -> :sswitch_8
        0xa70 -> :sswitch_7
        0x10026 -> :sswitch_6
        0x10948 -> :sswitch_5
        0x13295 -> :sswitch_4
        0x134c3 -> :sswitch_3
        0x20ee09 -> :sswitch_2
        0x41731f6 -> :sswitch_1
        0x2bf6f7c8 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private hideVialRadioButton(ILandroid/widget/RadioGroup;)V
    .locals 2

    const/16 v0, 0x8

    const/16 v1, 0xa

    if-ge p1, v1, :cond_0

    .line 239
    invoke-virtual {p2, v1}, Landroid/widget/RadioGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    const/16 v1, 0x9

    if-ge p1, v1, :cond_1

    .line 242
    invoke-virtual {p2, v1}, Landroid/widget/RadioGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    if-ge p1, v0, :cond_2

    .line 245
    invoke-virtual {p2, v0}, Landroid/widget/RadioGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    const/4 v1, 0x7

    if-ge p1, v1, :cond_3

    .line 248
    invoke-virtual {p2, v1}, Landroid/widget/RadioGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_3
    const/4 v1, 0x6

    if-ge p1, v1, :cond_4

    .line 251
    invoke-virtual {p2, v1}, Landroid/widget/RadioGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_4
    const/4 v1, 0x5

    if-ge p1, v1, :cond_5

    .line 254
    invoke-virtual {p2, v1}, Landroid/widget/RadioGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_5
    const/4 v1, 0x4

    if-ge p1, v1, :cond_6

    .line 257
    invoke-virtual {p2, v1}, Landroid/widget/RadioGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_6
    const/4 v1, 0x3

    if-ge p1, v1, :cond_7

    .line 260
    invoke-virtual {p2, v1}, Landroid/widget/RadioGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_7
    const/4 v1, 0x2

    if-ge p1, v1, :cond_8

    .line 263
    invoke-virtual {p2, v1}, Landroid/widget/RadioGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_8
    const/4 v1, 0x1

    if-ge p1, v1, :cond_9

    .line 266
    invoke-virtual {p2, v1}, Landroid/widget/RadioGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    const/4 p1, 0x0

    .line 267
    invoke-virtual {p2, p1}, Landroid/widget/RadioGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    invoke-virtual {p2, p1}, Landroid/widget/RadioGroup;->check(I)V

    :cond_9
    return-void
.end method

.method private initView()V
    .locals 4

    .line 92
    invoke-static {p0, p0}, Lcom/argusoft/sewa/android/app/util/DynamicUtils;->generateDynamicScreenTemplate(Landroid/content/Context;Landroid/view/View$OnClickListener;)Landroid/widget/LinearLayout;

    move-result-object v0

    .line 93
    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/activity/RIInventoryReturnActivity;->setContentView(Landroid/view/View;)V

    .line 94
    sget v1, Lcom/argusoft/sewa/android/app/R$id;->my_toolbar:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroidx/appcompat/widget/Toolbar;

    .line 95
    invoke-virtual {p0, v1}, Lcom/argusoft/sewa/android/app/activity/RIInventoryReturnActivity;->setSupportActionBar(Landroidx/appcompat/widget/Toolbar;)V

    .line 96
    sget v1, Lcom/argusoft/sewa/android/app/util/DynamicUtils;->ID_BODY_LAYOUT:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 97
    sget v2, Lcom/argusoft/sewa/android/app/util/DynamicUtils;->ID_NEXT_BUTTON:I

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    .line 98
    const-string v3, "Submit"

    invoke-static {v3}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 99
    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/activity/RIInventoryReturnActivity;->setContentView(Landroid/view/View;)V

    .line 100
    const-string v0, "RI Tally Sheet"

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getTitleText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/activity/RIInventoryReturnActivity;->setTitle(Ljava/lang/String;)V

    .line 101
    invoke-virtual {v1}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 102
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/RIInventoryReturnActivity;->addRiTallySheetDetails()Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method private showFormSubmitMessage(Lcom/argusoft/sewa/android/app/model/CampaignSessionBean;)V
    .locals 2

    .line 551
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/RIInventoryReturnActivity;->context:Landroid/content/Context;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Inventory return form submitted. "

    invoke-static {v1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "Session for "

    .line 552
    invoke-static {v1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/RIInventoryReturnActivity;->campaignMasterBean:Lcom/argusoft/sewa/android/app/model/CampaignMasterBean;

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/model/CampaignMasterBean;->getDayNumber()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getDayNameFromNumber(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " has ended"

    invoke-static {v1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 551
    invoke-static {p1, v0}, Lcom/argusoft/sewa/android/app/util/SewaUtil;->generateToast(Landroid/content/Context;Ljava/lang/String;)V

    .line 553
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/RIInventoryReturnActivity;->finish()V

    .line 554
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/RIInventoryReturnActivity;->hideProcessDialog()V

    return-void
.end method

.method private validateAndStoreReturnedImmunisations()V
    .locals 10

    .line 279
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/RIInventoryReturnActivity;->immReturnMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 280
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    sget v3, Lcom/argusoft/sewa/android/app/R$id;->newVials:I

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RadioGroup;

    .line 281
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    sget v4, Lcom/argusoft/sewa/android/app/R$id;->openVials:I

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RadioGroup;

    .line 282
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    sget v5, Lcom/argusoft/sewa/android/app/R$id;->emptyVials:I

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/RadioGroup;

    .line 283
    invoke-virtual {v2}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result v5

    const-string v6, "Please select "

    const/4 v7, -0x1

    if-ne v5, v7, :cond_0

    .line 284
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/RIInventoryReturnActivity;->context:Landroid/content/Context;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " new vial return value"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/argusoft/sewa/android/app/util/SewaUtil;->generateToast(Landroid/content/Context;Ljava/lang/String;)V

    return-void

    .line 287
    :cond_0
    invoke-virtual {v3}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result v5

    const-string v8, "MR"

    const-string v9, "BCG"

    if-ne v5, v7, :cond_3

    .line 288
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    .line 291
    :cond_1
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/RIInventoryReturnActivity;->context:Landroid/content/Context;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " open vial return value"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/argusoft/sewa/android/app/util/SewaUtil;->generateToast(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_2

    .line 289
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/RIInventoryReturnActivity;->context:Landroid/content/Context;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " Not usable/Empty Vial return value"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/argusoft/sewa/android/app/util/SewaUtil;->generateToast(Landroid/content/Context;Ljava/lang/String;)V

    :goto_2
    return-void

    .line 295
    :cond_3
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v5, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_4

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v5, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 296
    invoke-virtual {v4}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result v5

    if-ne v5, v7, :cond_4

    .line 297
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/RIInventoryReturnActivity;->context:Landroid/content/Context;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " empty vial return value"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/argusoft/sewa/android/app/util/SewaUtil;->generateToast(Landroid/content/Context;Ljava/lang/String;)V

    return-void

    .line 306
    :cond_4
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v5

    sparse-switch v5, :sswitch_data_0

    goto/16 :goto_3

    :sswitch_0
    const-string v5, "ROTA_VIRUS"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    goto/16 :goto_3

    :cond_5
    const/16 v7, 0xa

    goto/16 :goto_3

    :sswitch_1
    const-string v5, "HEP_B"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    goto/16 :goto_3

    :cond_6
    const/16 v7, 0x9

    goto/16 :goto_3

    :sswitch_2
    const-string v5, "FIPV"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    goto/16 :goto_3

    :cond_7
    const/16 v7, 0x8

    goto :goto_3

    :sswitch_3
    const-string v5, "PCV"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    goto :goto_3

    :cond_8
    const/4 v7, 0x7

    goto :goto_3

    :sswitch_4
    const-string v5, "OPV"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    goto :goto_3

    :cond_9
    const/4 v7, 0x6

    goto :goto_3

    :sswitch_5
    const-string v5, "DPT"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    goto :goto_3

    :cond_a
    const/4 v7, 0x5

    goto :goto_3

    :sswitch_6
    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    goto :goto_3

    :cond_b
    const/4 v7, 0x4

    goto :goto_3

    :sswitch_7
    const-string v5, "TD"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c

    goto :goto_3

    :cond_c
    const/4 v7, 0x3

    goto :goto_3

    :sswitch_8
    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_d

    goto :goto_3

    :cond_d
    const/4 v7, 0x2

    goto :goto_3

    :sswitch_9
    const-string v5, "JE"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_e

    goto :goto_3

    :cond_e
    const/4 v7, 0x1

    goto :goto_3

    :sswitch_a
    const-string v5, "PENTAVALENT"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_f

    goto :goto_3

    :cond_f
    const/4 v7, 0x0

    :goto_3
    packed-switch v7, :pswitch_data_0

    goto/16 :goto_0

    .line 476
    :pswitch_0
    invoke-virtual {v2}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result v1

    invoke-virtual {v2, v1}, Landroid/widget/RadioGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RadioButton;

    invoke-virtual {v1}, Landroid/widget/RadioButton;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 477
    invoke-virtual {v3}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result v2

    invoke-virtual {v3, v2}, Landroid/widget/RadioGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RadioButton;

    invoke-virtual {v2}, Landroid/widget/RadioButton;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 478
    invoke-virtual {v4}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result v3

    invoke-virtual {v4, v3}, Landroid/widget/RadioGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RadioButton;

    invoke-virtual {v3}, Landroid/widget/RadioButton;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 479
    iget-object v4, p0, Lcom/argusoft/sewa/android/app/activity/RIInventoryReturnActivity;->inventoryBean:Lcom/argusoft/sewa/android/app/model/RISessionInventoryBean;

    invoke-virtual {v4}, Lcom/argusoft/sewa/android/app/model/RISessionInventoryBean;->getRotaNew()Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-le v1, v4, :cond_10

    .line 480
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/RIInventoryReturnActivity;->context:Landroid/content/Context;

    const-string v1, "Rota Virus new vial return value is not valid"

    invoke-static {v0, v1}, Lcom/argusoft/sewa/android/app/util/SewaUtil;->generateToast(Landroid/content/Context;Ljava/lang/String;)V

    return-void

    :cond_10
    add-int v4, v1, v2

    .line 483
    iget-object v5, p0, Lcom/argusoft/sewa/android/app/activity/RIInventoryReturnActivity;->inventoryBean:Lcom/argusoft/sewa/android/app/model/RISessionInventoryBean;

    invoke-virtual {v5}, Lcom/argusoft/sewa/android/app/model/RISessionInventoryBean;->getRotaOpen()Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    iget-object v6, p0, Lcom/argusoft/sewa/android/app/activity/RIInventoryReturnActivity;->inventoryBean:Lcom/argusoft/sewa/android/app/model/RISessionInventoryBean;

    invoke-virtual {v6}, Lcom/argusoft/sewa/android/app/model/RISessionInventoryBean;->getRotaNew()Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    add-int/2addr v5, v6

    if-le v4, v5, :cond_11

    .line 484
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/RIInventoryReturnActivity;->context:Landroid/content/Context;

    const-string v1, "Rota Virus open vial return value is not valid"

    invoke-static {v0, v1}, Lcom/argusoft/sewa/android/app/util/SewaUtil;->generateToast(Landroid/content/Context;Ljava/lang/String;)V

    return-void

    :cond_11
    add-int/2addr v4, v3

    .line 487
    iget-object v5, p0, Lcom/argusoft/sewa/android/app/activity/RIInventoryReturnActivity;->inventoryBean:Lcom/argusoft/sewa/android/app/model/RISessionInventoryBean;

    invoke-virtual {v5}, Lcom/argusoft/sewa/android/app/model/RISessionInventoryBean;->getRotaOpen()Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    iget-object v6, p0, Lcom/argusoft/sewa/android/app/activity/RIInventoryReturnActivity;->inventoryBean:Lcom/argusoft/sewa/android/app/model/RISessionInventoryBean;

    invoke-virtual {v6}, Lcom/argusoft/sewa/android/app/model/RISessionInventoryBean;->getRotaNew()Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    add-int/2addr v5, v6

    if-eq v4, v5, :cond_12

    .line 488
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/RIInventoryReturnActivity;->context:Landroid/content/Context;

    const-string v1, "Rota Virus empty vial return value is not valid"

    invoke-static {v0, v1}, Lcom/argusoft/sewa/android/app/util/SewaUtil;->generateToast(Landroid/content/Context;Ljava/lang/String;)V

    return-void

    .line 491
    :cond_12
    iget-object v4, p0, Lcom/argusoft/sewa/android/app/activity/RIInventoryReturnActivity;->inventoryBean:Lcom/argusoft/sewa/android/app/model/RISessionInventoryBean;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v4, v1}, Lcom/argusoft/sewa/android/app/model/RISessionInventoryBean;->setRotaNewRet(Ljava/lang/Integer;)V

    .line 492
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/RIInventoryReturnActivity;->inventoryBean:Lcom/argusoft/sewa/android/app/model/RISessionInventoryBean;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/argusoft/sewa/android/app/model/RISessionInventoryBean;->setRotaOpenRet(Ljava/lang/Integer;)V

    .line 493
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/RIInventoryReturnActivity;->inventoryBean:Lcom/argusoft/sewa/android/app/model/RISessionInventoryBean;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/argusoft/sewa/android/app/model/RISessionInventoryBean;->setRotaEmptyRet(Ljava/lang/Integer;)V

    goto/16 :goto_0

    .line 496
    :pswitch_1
    invoke-virtual {v2}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result v1

    invoke-virtual {v2, v1}, Landroid/widget/RadioGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RadioButton;

    invoke-virtual {v1}, Landroid/widget/RadioButton;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 497
    invoke-virtual {v3}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result v2

    invoke-virtual {v3, v2}, Landroid/widget/RadioGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RadioButton;

    invoke-virtual {v2}, Landroid/widget/RadioButton;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 498
    invoke-virtual {v4}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result v3

    invoke-virtual {v4, v3}, Landroid/widget/RadioGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RadioButton;

    invoke-virtual {v3}, Landroid/widget/RadioButton;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 499
    iget-object v4, p0, Lcom/argusoft/sewa/android/app/activity/RIInventoryReturnActivity;->inventoryBean:Lcom/argusoft/sewa/android/app/model/RISessionInventoryBean;

    invoke-virtual {v4}, Lcom/argusoft/sewa/android/app/model/RISessionInventoryBean;->getHepNew()Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-le v1, v4, :cond_13

    .line 500
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/RIInventoryReturnActivity;->context:Landroid/content/Context;

    const-string v1, "Hepatitis B new vial return value is not valid"

    invoke-static {v0, v1}, Lcom/argusoft/sewa/android/app/util/SewaUtil;->generateToast(Landroid/content/Context;Ljava/lang/String;)V

    return-void

    :cond_13
    add-int v4, v1, v2

    .line 503
    iget-object v5, p0, Lcom/argusoft/sewa/android/app/activity/RIInventoryReturnActivity;->inventoryBean:Lcom/argusoft/sewa/android/app/model/RISessionInventoryBean;

    invoke-virtual {v5}, Lcom/argusoft/sewa/android/app/model/RISessionInventoryBean;->getHepOpen()Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    iget-object v6, p0, Lcom/argusoft/sewa/android/app/activity/RIInventoryReturnActivity;->inventoryBean:Lcom/argusoft/sewa/android/app/model/RISessionInventoryBean;

    invoke-virtual {v6}, Lcom/argusoft/sewa/android/app/model/RISessionInventoryBean;->getHepNew()Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    add-int/2addr v5, v6

    if-le v4, v5, :cond_14

    .line 504
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/RIInventoryReturnActivity;->context:Landroid/content/Context;

    const-string v1, "Hepatitis B open vial return value is not valid"

    invoke-static {v0, v1}, Lcom/argusoft/sewa/android/app/util/SewaUtil;->generateToast(Landroid/content/Context;Ljava/lang/String;)V

    return-void

    :cond_14
    add-int/2addr v4, v3

    .line 507
    iget-object v5, p0, Lcom/argusoft/sewa/android/app/activity/RIInventoryReturnActivity;->inventoryBean:Lcom/argusoft/sewa/android/app/model/RISessionInventoryBean;

    invoke-virtual {v5}, Lcom/argusoft/sewa/android/app/model/RISessionInventoryBean;->getHepOpen()Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    iget-object v6, p0, Lcom/argusoft/sewa/android/app/activity/RIInventoryReturnActivity;->inventoryBean:Lcom/argusoft/sewa/android/app/model/RISessionInventoryBean;

    invoke-virtual {v6}, Lcom/argusoft/sewa/android/app/model/RISessionInventoryBean;->getHepNew()Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    add-int/2addr v5, v6

    if-eq v4, v5, :cond_15

    .line 508
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/RIInventoryReturnActivity;->context:Landroid/content/Context;

    const-string v1, "Hepatitis B empty vial return value is not valid"

    invoke-static {v0, v1}, Lcom/argusoft/sewa/android/app/util/SewaUtil;->generateToast(Landroid/content/Context;Ljava/lang/String;)V

    return-void

    .line 511
    :cond_15
    iget-object v4, p0, Lcom/argusoft/sewa/android/app/activity/RIInventoryReturnActivity;->inventoryBean:Lcom/argusoft/sewa/android/app/model/RISessionInventoryBean;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v4, v1}, Lcom/argusoft/sewa/android/app/model/RISessionInventoryBean;->setHepNewRet(Ljava/lang/Integer;)V

    .line 512
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/RIInventoryReturnActivity;->inventoryBean:Lcom/argusoft/sewa/android/app/model/RISessionInventoryBean;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/argusoft/sewa/android/app/model/RISessionInventoryBean;->setHepOpenRet(Ljava/lang/Integer;)V

    .line 513
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/RIInventoryReturnActivity;->inventoryBean:Lcom/argusoft/sewa/android/app/model/RISessionInventoryBean;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/argusoft/sewa/android/app/model/RISessionInventoryBean;->setHepEmptyRet(Ljava/lang/Integer;)V

    goto/16 :goto_0

    .line 396
    :pswitch_2
    invoke-virtual {v2}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result v1

    invoke-virtual {v2, v1}, Landroid/widget/RadioGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RadioButton;

    invoke-virtual {v1}, Landroid/widget/RadioButton;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 397
    invoke-virtual {v3}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result v2

    invoke-virtual {v3, v2}, Landroid/widget/RadioGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RadioButton;

    invoke-virtual {v2}, Landroid/widget/RadioButton;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 398
    invoke-virtual {v4}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result v3

    invoke-virtual {v4, v3}, Landroid/widget/RadioGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RadioButton;

    invoke-virtual {v3}, Landroid/widget/RadioButton;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 399
    iget-object v4, p0, Lcom/argusoft/sewa/android/app/activity/RIInventoryReturnActivity;->inventoryBean:Lcom/argusoft/sewa/android/app/model/RISessionInventoryBean;

    invoke-virtual {v4}, Lcom/argusoft/sewa/android/app/model/RISessionInventoryBean;->getFipvNew()Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-le v1, v4, :cond_16

    .line 400
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/RIInventoryReturnActivity;->context:Landroid/content/Context;

    const-string v1, "FIPV new vial return value is not valid"

    invoke-static {v0, v1}, Lcom/argusoft/sewa/android/app/util/SewaUtil;->generateToast(Landroid/content/Context;Ljava/lang/String;)V

    return-void

    :cond_16
    add-int v4, v1, v2

    .line 403
    iget-object v5, p0, Lcom/argusoft/sewa/android/app/activity/RIInventoryReturnActivity;->inventoryBean:Lcom/argusoft/sewa/android/app/model/RISessionInventoryBean;

    invoke-virtual {v5}, Lcom/argusoft/sewa/android/app/model/RISessionInventoryBean;->getFipvOpen()Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    iget-object v6, p0, Lcom/argusoft/sewa/android/app/activity/RIInventoryReturnActivity;->inventoryBean:Lcom/argusoft/sewa/android/app/model/RISessionInventoryBean;

    invoke-virtual {v6}, Lcom/argusoft/sewa/android/app/model/RISessionInventoryBean;->getFipvNew()Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    add-int/2addr v5, v6

    if-le v4, v5, :cond_17

    .line 404
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/RIInventoryReturnActivity;->context:Landroid/content/Context;

    const-string v1, "FIPV open vial return value is not valid"

    invoke-static {v0, v1}, Lcom/argusoft/sewa/android/app/util/SewaUtil;->generateToast(Landroid/content/Context;Ljava/lang/String;)V

    return-void

    :cond_17
    add-int/2addr v4, v3

    .line 407
    iget-object v5, p0, Lcom/argusoft/sewa/android/app/activity/RIInventoryReturnActivity;->inventoryBean:Lcom/argusoft/sewa/android/app/model/RISessionInventoryBean;

    invoke-virtual {v5}, Lcom/argusoft/sewa/android/app/model/RISessionInventoryBean;->getFipvOpen()Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    iget-object v6, p0, Lcom/argusoft/sewa/android/app/activity/RIInventoryReturnActivity;->inventoryBean:Lcom/argusoft/sewa/android/app/model/RISessionInventoryBean;

    invoke-virtual {v6}, Lcom/argusoft/sewa/android/app/model/RISessionInventoryBean;->getFipvNew()Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    add-int/2addr v5, v6

    if-eq v4, v5, :cond_18

    .line 408
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/RIInventoryReturnActivity;->context:Landroid/content/Context;

    const-string v1, "FIPV empty vial return value is not valid"

    invoke-static {v0, v1}, Lcom/argusoft/sewa/android/app/util/SewaUtil;->generateToast(Landroid/content/Context;Ljava/lang/String;)V

    return-void

    .line 411
    :cond_18
    iget-object v4, p0, Lcom/argusoft/sewa/android/app/activity/RIInventoryReturnActivity;->inventoryBean:Lcom/argusoft/sewa/android/app/model/RISessionInventoryBean;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v4, v1}, Lcom/argusoft/sewa/android/app/model/RISessionInventoryBean;->setFipvNewRet(Ljava/lang/Integer;)V

    .line 412
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/RIInventoryReturnActivity;->inventoryBean:Lcom/argusoft/sewa/android/app/model/RISessionInventoryBean;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/argusoft/sewa/android/app/model/RISessionInventoryBean;->setFipvOpenRet(Ljava/lang/Integer;)V

    .line 413
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/RIInventoryReturnActivity;->inventoryBean:Lcom/argusoft/sewa/android/app/model/RISessionInventoryBean;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/argusoft/sewa/android/app/model/RISessionInventoryBean;->setFipvEmptyRet(Ljava/lang/Integer;)V

    goto/16 :goto_0

    .line 416
    :pswitch_3
    invoke-virtual {v2}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result v1

    invoke-virtual {v2, v1}, Landroid/widget/RadioGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RadioButton;

    invoke-virtual {v1}, Landroid/widget/RadioButton;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 417
    invoke-virtual {v3}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result v2

    invoke-virtual {v3, v2}, Landroid/widget/RadioGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RadioButton;

    invoke-virtual {v2}, Landroid/widget/RadioButton;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 418
    invoke-virtual {v4}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result v3

    invoke-virtual {v4, v3}, Landroid/widget/RadioGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RadioButton;

    invoke-virtual {v3}, Landroid/widget/RadioButton;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 419
    iget-object v4, p0, Lcom/argusoft/sewa/android/app/activity/RIInventoryReturnActivity;->inventoryBean:Lcom/argusoft/sewa/android/app/model/RISessionInventoryBean;

    invoke-virtual {v4}, Lcom/argusoft/sewa/android/app/model/RISessionInventoryBean;->getPcvNew()Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-le v1, v4, :cond_19

    .line 420
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/RIInventoryReturnActivity;->context:Landroid/content/Context;

    const-string v1, "PCV new vial return value is not valid"

    invoke-static {v0, v1}, Lcom/argusoft/sewa/android/app/util/SewaUtil;->generateToast(Landroid/content/Context;Ljava/lang/String;)V

    return-void

    :cond_19
    add-int v4, v1, v2

    .line 423
    iget-object v5, p0, Lcom/argusoft/sewa/android/app/activity/RIInventoryReturnActivity;->inventoryBean:Lcom/argusoft/sewa/android/app/model/RISessionInventoryBean;

    invoke-virtual {v5}, Lcom/argusoft/sewa/android/app/model/RISessionInventoryBean;->getPcvOpen()Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    iget-object v6, p0, Lcom/argusoft/sewa/android/app/activity/RIInventoryReturnActivity;->inventoryBean:Lcom/argusoft/sewa/android/app/model/RISessionInventoryBean;

    invoke-virtual {v6}, Lcom/argusoft/sewa/android/app/model/RISessionInventoryBean;->getPcvNew()Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    add-int/2addr v5, v6

    if-le v4, v5, :cond_1a

    .line 424
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/RIInventoryReturnActivity;->context:Landroid/content/Context;

    const-string v1, "PCV open vial return value is not valid"

    invoke-static {v0, v1}, Lcom/argusoft/sewa/android/app/util/SewaUtil;->generateToast(Landroid/content/Context;Ljava/lang/String;)V

    return-void

    :cond_1a
    add-int/2addr v4, v3

    .line 427
    iget-object v5, p0, Lcom/argusoft/sewa/android/app/activity/RIInventoryReturnActivity;->inventoryBean:Lcom/argusoft/sewa/android/app/model/RISessionInventoryBean;

    invoke-virtual {v5}, Lcom/argusoft/sewa/android/app/model/RISessionInventoryBean;->getPcvOpen()Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    iget-object v6, p0, Lcom/argusoft/sewa/android/app/activity/RIInventoryReturnActivity;->inventoryBean:Lcom/argusoft/sewa/android/app/model/RISessionInventoryBean;

    invoke-virtual {v6}, Lcom/argusoft/sewa/android/app/model/RISessionInventoryBean;->getPcvNew()Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    add-int/2addr v5, v6

    if-eq v4, v5, :cond_1b

    .line 428
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/RIInventoryReturnActivity;->context:Landroid/content/Context;

    const-string v1, "PCV empty vial return value is not valid"

    invoke-static {v0, v1}, Lcom/argusoft/sewa/android/app/util/SewaUtil;->generateToast(Landroid/content/Context;Ljava/lang/String;)V

    return-void

    .line 431
    :cond_1b
    iget-object v4, p0, Lcom/argusoft/sewa/android/app/activity/RIInventoryReturnActivity;->inventoryBean:Lcom/argusoft/sewa/android/app/model/RISessionInventoryBean;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v4, v1}, Lcom/argusoft/sewa/android/app/model/RISessionInventoryBean;->setPcvNewRet(Ljava/lang/Integer;)V

    .line 432
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/RIInventoryReturnActivity;->inventoryBean:Lcom/argusoft/sewa/android/app/model/RISessionInventoryBean;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/argusoft/sewa/android/app/model/RISessionInventoryBean;->setPcvOpenRet(Ljava/lang/Integer;)V

    .line 433
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/RIInventoryReturnActivity;->inventoryBean:Lcom/argusoft/sewa/android/app/model/RISessionInventoryBean;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/argusoft/sewa/android/app/model/RISessionInventoryBean;->setPcvEmptyRet(Ljava/lang/Integer;)V

    goto/16 :goto_0

    .line 456
    :pswitch_4
    invoke-virtual {v2}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result v1

    invoke-virtual {v2, v1}, Landroid/widget/RadioGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RadioButton;

    invoke-virtual {v1}, Landroid/widget/RadioButton;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 457
    invoke-virtual {v3}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result v2

    invoke-virtual {v3, v2}, Landroid/widget/RadioGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RadioButton;

    invoke-virtual {v2}, Landroid/widget/RadioButton;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 458
    invoke-virtual {v4}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result v3

    invoke-virtual {v4, v3}, Landroid/widget/RadioGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RadioButton;

    invoke-virtual {v3}, Landroid/widget/RadioButton;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 459
    iget-object v4, p0, Lcom/argusoft/sewa/android/app/activity/RIInventoryReturnActivity;->inventoryBean:Lcom/argusoft/sewa/android/app/model/RISessionInventoryBean;

    invoke-virtual {v4}, Lcom/argusoft/sewa/android/app/model/RISessionInventoryBean;->getOpvNew()Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-le v1, v4, :cond_1c

    .line 460
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/RIInventoryReturnActivity;->context:Landroid/content/Context;

    const-string v1, "OPV new vial return value is not valid"

    invoke-static {v0, v1}, Lcom/argusoft/sewa/android/app/util/SewaUtil;->generateToast(Landroid/content/Context;Ljava/lang/String;)V

    return-void

    :cond_1c
    add-int v4, v1, v2

    .line 463
    iget-object v5, p0, Lcom/argusoft/sewa/android/app/activity/RIInventoryReturnActivity;->inventoryBean:Lcom/argusoft/sewa/android/app/model/RISessionInventoryBean;

    invoke-virtual {v5}, Lcom/argusoft/sewa/android/app/model/RISessionInventoryBean;->getOpvOpen()Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    iget-object v6, p0, Lcom/argusoft/sewa/android/app/activity/RIInventoryReturnActivity;->inventoryBean:Lcom/argusoft/sewa/android/app/model/RISessionInventoryBean;

    invoke-virtual {v6}, Lcom/argusoft/sewa/android/app/model/RISessionInventoryBean;->getOpvNew()Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    add-int/2addr v5, v6

    if-le v4, v5, :cond_1d

    .line 464
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/RIInventoryReturnActivity;->context:Landroid/content/Context;

    const-string v1, "OPV open vial return value is not valid"

    invoke-static {v0, v1}, Lcom/argusoft/sewa/android/app/util/SewaUtil;->generateToast(Landroid/content/Context;Ljava/lang/String;)V

    return-void

    :cond_1d
    add-int/2addr v4, v3

    .line 467
    iget-object v5, p0, Lcom/argusoft/sewa/android/app/activity/RIInventoryReturnActivity;->inventoryBean:Lcom/argusoft/sewa/android/app/model/RISessionInventoryBean;

    invoke-virtual {v5}, Lcom/argusoft/sewa/android/app/model/RISessionInventoryBean;->getOpvOpen()Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    iget-object v6, p0, Lcom/argusoft/sewa/android/app/activity/RIInventoryReturnActivity;->inventoryBean:Lcom/argusoft/sewa/android/app/model/RISessionInventoryBean;

    invoke-virtual {v6}, Lcom/argusoft/sewa/android/app/model/RISessionInventoryBean;->getOpvNew()Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    add-int/2addr v5, v6

    if-eq v4, v5, :cond_1e

    .line 468
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/RIInventoryReturnActivity;->context:Landroid/content/Context;

    const-string v1, "OPV empty vial return value is not valid"

    invoke-static {v0, v1}, Lcom/argusoft/sewa/android/app/util/SewaUtil;->generateToast(Landroid/content/Context;Ljava/lang/String;)V

    return-void

    .line 471
    :cond_1e
    iget-object v4, p0, Lcom/argusoft/sewa/android/app/activity/RIInventoryReturnActivity;->inventoryBean:Lcom/argusoft/sewa/android/app/model/RISessionInventoryBean;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v4, v1}, Lcom/argusoft/sewa/android/app/model/RISessionInventoryBean;->setOpvNewRet(Ljava/lang/Integer;)V

    .line 472
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/RIInventoryReturnActivity;->inventoryBean:Lcom/argusoft/sewa/android/app/model/RISessionInventoryBean;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/argusoft/sewa/android/app/model/RISessionInventoryBean;->setOpvOpenRet(Ljava/lang/Integer;)V

    .line 473
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/RIInventoryReturnActivity;->inventoryBean:Lcom/argusoft/sewa/android/app/model/RISessionInventoryBean;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/argusoft/sewa/android/app/model/RISessionInventoryBean;->setOpvEmptyRet(Ljava/lang/Integer;)V

    goto/16 :goto_0

    .line 336
    :pswitch_5
    invoke-virtual {v2}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result v1

    invoke-virtual {v2, v1}, Landroid/widget/RadioGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RadioButton;

    invoke-virtual {v1}, Landroid/widget/RadioButton;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 337
    invoke-virtual {v3}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result v2

    invoke-virtual {v3, v2}, Landroid/widget/RadioGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RadioButton;

    invoke-virtual {v2}, Landroid/widget/RadioButton;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 338
    invoke-virtual {v4}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result v3

    invoke-virtual {v4, v3}, Landroid/widget/RadioGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RadioButton;

    invoke-virtual {v3}, Landroid/widget/RadioButton;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 339
    iget-object v4, p0, Lcom/argusoft/sewa/android/app/activity/RIInventoryReturnActivity;->inventoryBean:Lcom/argusoft/sewa/android/app/model/RISessionInventoryBean;

    invoke-virtual {v4}, Lcom/argusoft/sewa/android/app/model/RISessionInventoryBean;->getDptNew()Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-le v1, v4, :cond_1f

    .line 340
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/RIInventoryReturnActivity;->context:Landroid/content/Context;

    const-string v1, "DPT new vial return value is not valid"

    invoke-static {v0, v1}, Lcom/argusoft/sewa/android/app/util/SewaUtil;->generateToast(Landroid/content/Context;Ljava/lang/String;)V

    return-void

    :cond_1f
    add-int v4, v1, v2

    .line 343
    iget-object v5, p0, Lcom/argusoft/sewa/android/app/activity/RIInventoryReturnActivity;->inventoryBean:Lcom/argusoft/sewa/android/app/model/RISessionInventoryBean;

    invoke-virtual {v5}, Lcom/argusoft/sewa/android/app/model/RISessionInventoryBean;->getDptNew()Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    iget-object v6, p0, Lcom/argusoft/sewa/android/app/activity/RIInventoryReturnActivity;->inventoryBean:Lcom/argusoft/sewa/android/app/model/RISessionInventoryBean;

    invoke-virtual {v6}, Lcom/argusoft/sewa/android/app/model/RISessionInventoryBean;->getDptOpen()Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    add-int/2addr v5, v6

    if-le v4, v5, :cond_20

    .line 344
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/RIInventoryReturnActivity;->context:Landroid/content/Context;

    const-string v1, "DPT open vial return value is not valid"

    invoke-static {v0, v1}, Lcom/argusoft/sewa/android/app/util/SewaUtil;->generateToast(Landroid/content/Context;Ljava/lang/String;)V

    return-void

    :cond_20
    add-int/2addr v4, v3

    .line 347
    iget-object v5, p0, Lcom/argusoft/sewa/android/app/activity/RIInventoryReturnActivity;->inventoryBean:Lcom/argusoft/sewa/android/app/model/RISessionInventoryBean;

    invoke-virtual {v5}, Lcom/argusoft/sewa/android/app/model/RISessionInventoryBean;->getDptNew()Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    iget-object v6, p0, Lcom/argusoft/sewa/android/app/activity/RIInventoryReturnActivity;->inventoryBean:Lcom/argusoft/sewa/android/app/model/RISessionInventoryBean;

    invoke-virtual {v6}, Lcom/argusoft/sewa/android/app/model/RISessionInventoryBean;->getDptOpen()Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    add-int/2addr v5, v6

    if-eq v4, v5, :cond_21

    .line 348
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/RIInventoryReturnActivity;->context:Landroid/content/Context;

    const-string v1, "DPT empty vial return value is not valid"

    invoke-static {v0, v1}, Lcom/argusoft/sewa/android/app/util/SewaUtil;->generateToast(Landroid/content/Context;Ljava/lang/String;)V

    return-void

    .line 351
    :cond_21
    iget-object v4, p0, Lcom/argusoft/sewa/android/app/activity/RIInventoryReturnActivity;->inventoryBean:Lcom/argusoft/sewa/android/app/model/RISessionInventoryBean;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v4, v1}, Lcom/argusoft/sewa/android/app/model/RISessionInventoryBean;->setDptNewRet(Ljava/lang/Integer;)V

    .line 352
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/RIInventoryReturnActivity;->inventoryBean:Lcom/argusoft/sewa/android/app/model/RISessionInventoryBean;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/argusoft/sewa/android/app/model/RISessionInventoryBean;->setDptOpenRet(Ljava/lang/Integer;)V

    .line 353
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/RIInventoryReturnActivity;->inventoryBean:Lcom/argusoft/sewa/android/app/model/RISessionInventoryBean;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/argusoft/sewa/android/app/model/RISessionInventoryBean;->setDptEmptyRet(Ljava/lang/Integer;)V

    goto/16 :goto_0

    .line 308
    :pswitch_6
    invoke-virtual {v2}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result v1

    invoke-virtual {v2, v1}, Landroid/widget/RadioGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RadioButton;

    invoke-virtual {v1}, Landroid/widget/RadioButton;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 309
    invoke-virtual {v3}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result v2

    invoke-virtual {v3, v2}, Landroid/widget/RadioGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RadioButton;

    invoke-virtual {v2}, Landroid/widget/RadioButton;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 310
    iget-object v3, p0, Lcom/argusoft/sewa/android/app/activity/RIInventoryReturnActivity;->inventoryBean:Lcom/argusoft/sewa/android/app/model/RISessionInventoryBean;

    invoke-virtual {v3}, Lcom/argusoft/sewa/android/app/model/RISessionInventoryBean;->getBcgNew()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-le v1, v3, :cond_22

    .line 311
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/RIInventoryReturnActivity;->context:Landroid/content/Context;

    const-string v1, "BCG vial return value is not valid"

    invoke-static {v0, v1}, Lcom/argusoft/sewa/android/app/util/SewaUtil;->generateToast(Landroid/content/Context;Ljava/lang/String;)V

    return-void

    :cond_22
    add-int v3, v1, v2

    .line 314
    iget-object v4, p0, Lcom/argusoft/sewa/android/app/activity/RIInventoryReturnActivity;->inventoryBean:Lcom/argusoft/sewa/android/app/model/RISessionInventoryBean;

    invoke-virtual {v4}, Lcom/argusoft/sewa/android/app/model/RISessionInventoryBean;->getBcgNew()Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-eq v3, v4, :cond_23

    .line 315
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/RIInventoryReturnActivity;->context:Landroid/content/Context;

    const-string v1, "BCG Not usable/Empty Vials return value is not valid"

    invoke-static {v0, v1}, Lcom/argusoft/sewa/android/app/util/SewaUtil;->generateToast(Landroid/content/Context;Ljava/lang/String;)V

    return-void

    .line 318
    :cond_23
    iget-object v3, p0, Lcom/argusoft/sewa/android/app/activity/RIInventoryReturnActivity;->inventoryBean:Lcom/argusoft/sewa/android/app/model/RISessionInventoryBean;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/argusoft/sewa/android/app/model/RISessionInventoryBean;->setBcgNewRet(Ljava/lang/Integer;)V

    .line 319
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/RIInventoryReturnActivity;->inventoryBean:Lcom/argusoft/sewa/android/app/model/RISessionInventoryBean;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/argusoft/sewa/android/app/model/RISessionInventoryBean;->setBcgOpenRet(Ljava/lang/Integer;)V

    goto/16 :goto_0

    .line 356
    :pswitch_7
    invoke-virtual {v2}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result v1

    invoke-virtual {v2, v1}, Landroid/widget/RadioGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RadioButton;

    invoke-virtual {v1}, Landroid/widget/RadioButton;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 357
    invoke-virtual {v3}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result v2

    invoke-virtual {v3, v2}, Landroid/widget/RadioGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RadioButton;

    invoke-virtual {v2}, Landroid/widget/RadioButton;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 358
    invoke-virtual {v4}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result v3

    invoke-virtual {v4, v3}, Landroid/widget/RadioGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RadioButton;

    invoke-virtual {v3}, Landroid/widget/RadioButton;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 359
    iget-object v4, p0, Lcom/argusoft/sewa/android/app/activity/RIInventoryReturnActivity;->inventoryBean:Lcom/argusoft/sewa/android/app/model/RISessionInventoryBean;

    invoke-virtual {v4}, Lcom/argusoft/sewa/android/app/model/RISessionInventoryBean;->getTdNew()Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-le v1, v4, :cond_24

    .line 360
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/RIInventoryReturnActivity;->context:Landroid/content/Context;

    const-string v1, "TD new vial return value is not valid"

    invoke-static {v0, v1}, Lcom/argusoft/sewa/android/app/util/SewaUtil;->generateToast(Landroid/content/Context;Ljava/lang/String;)V

    return-void

    :cond_24
    add-int v4, v1, v2

    .line 363
    iget-object v5, p0, Lcom/argusoft/sewa/android/app/activity/RIInventoryReturnActivity;->inventoryBean:Lcom/argusoft/sewa/android/app/model/RISessionInventoryBean;

    invoke-virtual {v5}, Lcom/argusoft/sewa/android/app/model/RISessionInventoryBean;->getTdOpen()Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    iget-object v6, p0, Lcom/argusoft/sewa/android/app/activity/RIInventoryReturnActivity;->inventoryBean:Lcom/argusoft/sewa/android/app/model/RISessionInventoryBean;

    invoke-virtual {v6}, Lcom/argusoft/sewa/android/app/model/RISessionInventoryBean;->getTdNew()Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    add-int/2addr v5, v6

    if-le v4, v5, :cond_25

    .line 364
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/RIInventoryReturnActivity;->context:Landroid/content/Context;

    const-string v1, "TD open vial return value is not valid"

    invoke-static {v0, v1}, Lcom/argusoft/sewa/android/app/util/SewaUtil;->generateToast(Landroid/content/Context;Ljava/lang/String;)V

    return-void

    :cond_25
    add-int/2addr v4, v3

    .line 367
    iget-object v5, p0, Lcom/argusoft/sewa/android/app/activity/RIInventoryReturnActivity;->inventoryBean:Lcom/argusoft/sewa/android/app/model/RISessionInventoryBean;

    invoke-virtual {v5}, Lcom/argusoft/sewa/android/app/model/RISessionInventoryBean;->getTdOpen()Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    iget-object v6, p0, Lcom/argusoft/sewa/android/app/activity/RIInventoryReturnActivity;->inventoryBean:Lcom/argusoft/sewa/android/app/model/RISessionInventoryBean;

    invoke-virtual {v6}, Lcom/argusoft/sewa/android/app/model/RISessionInventoryBean;->getTdNew()Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    add-int/2addr v5, v6

    if-eq v4, v5, :cond_26

    .line 368
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/RIInventoryReturnActivity;->context:Landroid/content/Context;

    const-string v1, "TD empty vial return value is not valid"

    invoke-static {v0, v1}, Lcom/argusoft/sewa/android/app/util/SewaUtil;->generateToast(Landroid/content/Context;Ljava/lang/String;)V

    return-void

    .line 371
    :cond_26
    iget-object v4, p0, Lcom/argusoft/sewa/android/app/activity/RIInventoryReturnActivity;->inventoryBean:Lcom/argusoft/sewa/android/app/model/RISessionInventoryBean;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v4, v1}, Lcom/argusoft/sewa/android/app/model/RISessionInventoryBean;->setTdNewRet(Ljava/lang/Integer;)V

    .line 372
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/RIInventoryReturnActivity;->inventoryBean:Lcom/argusoft/sewa/android/app/model/RISessionInventoryBean;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/argusoft/sewa/android/app/model/RISessionInventoryBean;->setTdOpenRet(Ljava/lang/Integer;)V

    .line 373
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/RIInventoryReturnActivity;->inventoryBean:Lcom/argusoft/sewa/android/app/model/RISessionInventoryBean;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/argusoft/sewa/android/app/model/RISessionInventoryBean;->setTdEmptyRet(Ljava/lang/Integer;)V

    goto/16 :goto_0

    .line 322
    :pswitch_8
    invoke-virtual {v2}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result v1

    invoke-virtual {v2, v1}, Landroid/widget/RadioGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RadioButton;

    invoke-virtual {v1}, Landroid/widget/RadioButton;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 323
    invoke-virtual {v3}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result v2

    invoke-virtual {v3, v2}, Landroid/widget/RadioGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RadioButton;

    invoke-virtual {v2}, Landroid/widget/RadioButton;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 324
    iget-object v3, p0, Lcom/argusoft/sewa/android/app/activity/RIInventoryReturnActivity;->inventoryBean:Lcom/argusoft/sewa/android/app/model/RISessionInventoryBean;

    invoke-virtual {v3}, Lcom/argusoft/sewa/android/app/model/RISessionInventoryBean;->getMrNew()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-le v1, v3, :cond_27

    .line 325
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/RIInventoryReturnActivity;->context:Landroid/content/Context;

    const-string v1, "MR vial return value is not valid"

    invoke-static {v0, v1}, Lcom/argusoft/sewa/android/app/util/SewaUtil;->generateToast(Landroid/content/Context;Ljava/lang/String;)V

    return-void

    :cond_27
    add-int v3, v1, v2

    .line 328
    iget-object v4, p0, Lcom/argusoft/sewa/android/app/activity/RIInventoryReturnActivity;->inventoryBean:Lcom/argusoft/sewa/android/app/model/RISessionInventoryBean;

    invoke-virtual {v4}, Lcom/argusoft/sewa/android/app/model/RISessionInventoryBean;->getMrNew()Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-eq v3, v4, :cond_28

    .line 329
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/RIInventoryReturnActivity;->context:Landroid/content/Context;

    const-string v1, "MR Not usable/Empty vial return value is not valid"

    invoke-static {v0, v1}, Lcom/argusoft/sewa/android/app/util/SewaUtil;->generateToast(Landroid/content/Context;Ljava/lang/String;)V

    return-void

    .line 332
    :cond_28
    iget-object v3, p0, Lcom/argusoft/sewa/android/app/activity/RIInventoryReturnActivity;->inventoryBean:Lcom/argusoft/sewa/android/app/model/RISessionInventoryBean;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/argusoft/sewa/android/app/model/RISessionInventoryBean;->setMrNewRet(Ljava/lang/Integer;)V

    .line 333
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/RIInventoryReturnActivity;->inventoryBean:Lcom/argusoft/sewa/android/app/model/RISessionInventoryBean;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/argusoft/sewa/android/app/model/RISessionInventoryBean;->setMrOpenRet(Ljava/lang/Integer;)V

    goto/16 :goto_0

    .line 436
    :pswitch_9
    invoke-virtual {v2}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result v1

    invoke-virtual {v2, v1}, Landroid/widget/RadioGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RadioButton;

    invoke-virtual {v1}, Landroid/widget/RadioButton;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 437
    invoke-virtual {v3}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result v2

    invoke-virtual {v3, v2}, Landroid/widget/RadioGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RadioButton;

    invoke-virtual {v2}, Landroid/widget/RadioButton;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 438
    invoke-virtual {v4}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result v3

    invoke-virtual {v4, v3}, Landroid/widget/RadioGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RadioButton;

    invoke-virtual {v3}, Landroid/widget/RadioButton;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 439
    iget-object v4, p0, Lcom/argusoft/sewa/android/app/activity/RIInventoryReturnActivity;->inventoryBean:Lcom/argusoft/sewa/android/app/model/RISessionInventoryBean;

    invoke-virtual {v4}, Lcom/argusoft/sewa/android/app/model/RISessionInventoryBean;->getJeNew()Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-le v1, v4, :cond_29

    .line 440
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/RIInventoryReturnActivity;->context:Landroid/content/Context;

    const-string v1, "JE new vial return value is not valid"

    invoke-static {v0, v1}, Lcom/argusoft/sewa/android/app/util/SewaUtil;->generateToast(Landroid/content/Context;Ljava/lang/String;)V

    return-void

    :cond_29
    add-int v4, v1, v2

    .line 443
    iget-object v5, p0, Lcom/argusoft/sewa/android/app/activity/RIInventoryReturnActivity;->inventoryBean:Lcom/argusoft/sewa/android/app/model/RISessionInventoryBean;

    invoke-virtual {v5}, Lcom/argusoft/sewa/android/app/model/RISessionInventoryBean;->getJeOpen()Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    iget-object v6, p0, Lcom/argusoft/sewa/android/app/activity/RIInventoryReturnActivity;->inventoryBean:Lcom/argusoft/sewa/android/app/model/RISessionInventoryBean;

    invoke-virtual {v6}, Lcom/argusoft/sewa/android/app/model/RISessionInventoryBean;->getJeNew()Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    add-int/2addr v5, v6

    if-le v4, v5, :cond_2a

    .line 444
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/RIInventoryReturnActivity;->context:Landroid/content/Context;

    const-string v1, "JE open vial return value is not valid"

    invoke-static {v0, v1}, Lcom/argusoft/sewa/android/app/util/SewaUtil;->generateToast(Landroid/content/Context;Ljava/lang/String;)V

    return-void

    :cond_2a
    add-int/2addr v4, v3

    .line 447
    iget-object v5, p0, Lcom/argusoft/sewa/android/app/activity/RIInventoryReturnActivity;->inventoryBean:Lcom/argusoft/sewa/android/app/model/RISessionInventoryBean;

    invoke-virtual {v5}, Lcom/argusoft/sewa/android/app/model/RISessionInventoryBean;->getJeOpen()Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    iget-object v6, p0, Lcom/argusoft/sewa/android/app/activity/RIInventoryReturnActivity;->inventoryBean:Lcom/argusoft/sewa/android/app/model/RISessionInventoryBean;

    invoke-virtual {v6}, Lcom/argusoft/sewa/android/app/model/RISessionInventoryBean;->getJeNew()Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    add-int/2addr v5, v6

    if-eq v4, v5, :cond_2b

    .line 448
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/RIInventoryReturnActivity;->context:Landroid/content/Context;

    const-string v1, "JE empty vial return value is not valid"

    invoke-static {v0, v1}, Lcom/argusoft/sewa/android/app/util/SewaUtil;->generateToast(Landroid/content/Context;Ljava/lang/String;)V

    return-void

    .line 451
    :cond_2b
    iget-object v4, p0, Lcom/argusoft/sewa/android/app/activity/RIInventoryReturnActivity;->inventoryBean:Lcom/argusoft/sewa/android/app/model/RISessionInventoryBean;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v4, v1}, Lcom/argusoft/sewa/android/app/model/RISessionInventoryBean;->setJeNewRet(Ljava/lang/Integer;)V

    .line 452
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/RIInventoryReturnActivity;->inventoryBean:Lcom/argusoft/sewa/android/app/model/RISessionInventoryBean;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/argusoft/sewa/android/app/model/RISessionInventoryBean;->setJeOpenRet(Ljava/lang/Integer;)V

    .line 453
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/RIInventoryReturnActivity;->inventoryBean:Lcom/argusoft/sewa/android/app/model/RISessionInventoryBean;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/argusoft/sewa/android/app/model/RISessionInventoryBean;->setJeEmptyRet(Ljava/lang/Integer;)V

    goto/16 :goto_0

    .line 376
    :pswitch_a
    invoke-virtual {v2}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result v1

    invoke-virtual {v2, v1}, Landroid/widget/RadioGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RadioButton;

    invoke-virtual {v1}, Landroid/widget/RadioButton;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 377
    invoke-virtual {v3}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result v2

    invoke-virtual {v3, v2}, Landroid/widget/RadioGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RadioButton;

    invoke-virtual {v2}, Landroid/widget/RadioButton;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 378
    invoke-virtual {v4}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result v3

    invoke-virtual {v4, v3}, Landroid/widget/RadioGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RadioButton;

    invoke-virtual {v3}, Landroid/widget/RadioButton;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 379
    iget-object v4, p0, Lcom/argusoft/sewa/android/app/activity/RIInventoryReturnActivity;->inventoryBean:Lcom/argusoft/sewa/android/app/model/RISessionInventoryBean;

    invoke-virtual {v4}, Lcom/argusoft/sewa/android/app/model/RISessionInventoryBean;->getPentaNew()Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-le v1, v4, :cond_2c

    .line 380
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/RIInventoryReturnActivity;->context:Landroid/content/Context;

    const-string v1, "Pentavalent new vial return value is not valid"

    invoke-static {v0, v1}, Lcom/argusoft/sewa/android/app/util/SewaUtil;->generateToast(Landroid/content/Context;Ljava/lang/String;)V

    return-void

    :cond_2c
    add-int v4, v1, v2

    .line 383
    iget-object v5, p0, Lcom/argusoft/sewa/android/app/activity/RIInventoryReturnActivity;->inventoryBean:Lcom/argusoft/sewa/android/app/model/RISessionInventoryBean;

    invoke-virtual {v5}, Lcom/argusoft/sewa/android/app/model/RISessionInventoryBean;->getPentaOpen()Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    iget-object v6, p0, Lcom/argusoft/sewa/android/app/activity/RIInventoryReturnActivity;->inventoryBean:Lcom/argusoft/sewa/android/app/model/RISessionInventoryBean;

    invoke-virtual {v6}, Lcom/argusoft/sewa/android/app/model/RISessionInventoryBean;->getPentaNew()Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    add-int/2addr v5, v6

    if-le v4, v5, :cond_2d

    .line 384
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/RIInventoryReturnActivity;->context:Landroid/content/Context;

    const-string v1, "Pentavalent open vial return value is not valid"

    invoke-static {v0, v1}, Lcom/argusoft/sewa/android/app/util/SewaUtil;->generateToast(Landroid/content/Context;Ljava/lang/String;)V

    return-void

    :cond_2d
    add-int/2addr v4, v3

    .line 387
    iget-object v5, p0, Lcom/argusoft/sewa/android/app/activity/RIInventoryReturnActivity;->inventoryBean:Lcom/argusoft/sewa/android/app/model/RISessionInventoryBean;

    invoke-virtual {v5}, Lcom/argusoft/sewa/android/app/model/RISessionInventoryBean;->getPentaOpen()Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    iget-object v6, p0, Lcom/argusoft/sewa/android/app/activity/RIInventoryReturnActivity;->inventoryBean:Lcom/argusoft/sewa/android/app/model/RISessionInventoryBean;

    invoke-virtual {v6}, Lcom/argusoft/sewa/android/app/model/RISessionInventoryBean;->getPentaNew()Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    add-int/2addr v5, v6

    if-eq v4, v5, :cond_2e

    .line 388
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/RIInventoryReturnActivity;->context:Landroid/content/Context;

    const-string v1, "Pentavalent empty vial return value is not valid"

    invoke-static {v0, v1}, Lcom/argusoft/sewa/android/app/util/SewaUtil;->generateToast(Landroid/content/Context;Ljava/lang/String;)V

    return-void

    .line 391
    :cond_2e
    iget-object v4, p0, Lcom/argusoft/sewa/android/app/activity/RIInventoryReturnActivity;->inventoryBean:Lcom/argusoft/sewa/android/app/model/RISessionInventoryBean;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v4, v1}, Lcom/argusoft/sewa/android/app/model/RISessionInventoryBean;->setPentaNewRet(Ljava/lang/Integer;)V

    .line 392
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/RIInventoryReturnActivity;->inventoryBean:Lcom/argusoft/sewa/android/app/model/RISessionInventoryBean;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/argusoft/sewa/android/app/model/RISessionInventoryBean;->setPentaOpenRet(Ljava/lang/Integer;)V

    .line 393
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/RIInventoryReturnActivity;->inventoryBean:Lcom/argusoft/sewa/android/app/model/RISessionInventoryBean;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/argusoft/sewa/android/app/model/RISessionInventoryBean;->setPentaEmptyRet(Ljava/lang/Integer;)V

    goto/16 :goto_0

    .line 519
    :cond_2f
    new-instance v0, Lcom/argusoft/sewa/android/app/component/MyAlertDialog;

    iget-object v4, p0, Lcom/argusoft/sewa/android/app/activity/RIInventoryReturnActivity;->context:Landroid/content/Context;

    new-instance v7, Lcom/argusoft/sewa/android/app/activity/RIInventoryReturnActivity$$ExternalSyntheticLambda0;

    invoke-direct {v7, p0}, Lcom/argusoft/sewa/android/app/activity/RIInventoryReturnActivity$$ExternalSyntheticLambda0;-><init>(Lcom/argusoft/sewa/android/app/activity/RIInventoryReturnActivity;)V

    const/16 v8, -0x97

    const/4 v5, 0x0

    const-string v6, "Are you sure you want to submit the vials return form?"

    move-object v3, v0

    invoke-direct/range {v3 .. v8}, Lcom/argusoft/sewa/android/app/component/MyAlertDialog;-><init>(Landroid/content/Context;ZLjava/lang/String;Landroid/view/View$OnClickListener;I)V

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/RIInventoryReturnActivity;->alertDialog:Lcom/argusoft/sewa/android/app/component/MyAlertDialog;

    .line 536
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/RIInventoryReturnActivity;->alertDialog:Lcom/argusoft/sewa/android/app/component/MyAlertDialog;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/component/MyAlertDialog;->show()V

    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x5912b930 -> :sswitch_a
        0x93b -> :sswitch_9
        0x9a5 -> :sswitch_8
        0xa70 -> :sswitch_7
        0x10026 -> :sswitch_6
        0x10948 -> :sswitch_5
        0x13295 -> :sswitch_4
        0x134c3 -> :sswitch_3
        0x20ee09 -> :sswitch_2
        0x41731f6 -> :sswitch_1
        0x2bf6f7c8 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public addRiTallySheetDetails()Landroid/widget/LinearLayout;
    .locals 7

    .line 106
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/RIInventoryReturnActivity;->immReturnMap:Ljava/util/Map;

    .line 107
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/RIInventoryReturnActivity;->context:Landroid/content/Context;

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-direct {v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/4 v4, 0x1

    invoke-static {v0, v2, v4, v1}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getLinearLayout(Landroid/content/Context;IILandroid/widget/LinearLayout$LayoutParams;)Landroid/widget/LinearLayout;

    move-result-object v0

    .line 109
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/RIInventoryReturnActivity;->context:Landroid/content/Context;

    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v5, 0x46

    invoke-direct {v4, v3, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/4 v3, 0x0

    invoke-static {v1, v2, v3, v4}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getLinearLayout(Landroid/content/Context;IILandroid/widget/LinearLayout$LayoutParams;)Landroid/widget/LinearLayout;

    move-result-object v1

    .line 111
    iget-object v4, p0, Lcom/argusoft/sewa/android/app/activity/RIInventoryReturnActivity;->context:Landroid/content/Context;

    sget v5, Lcom/argusoft/sewa/android/app/R$drawable;->ic_info:I

    const/4 v6, 0x0

    invoke-static {v4, v2, v5, v6}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getImageView(Landroid/content/Context;IILandroid/widget/LinearLayout$LayoutParams;)Landroid/widget/ImageView;

    move-result-object v2

    .line 112
    sget v4, Lcom/argusoft/sewa/android/app/R$color;->labelTextColor:I

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setColorFilter(I)V

    const/16 v4, 0x8

    .line 113
    invoke-virtual {v2, v3, v3, v4, v3}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 114
    new-instance v4, Landroid/widget/TextView;

    iget-object v5, p0, Lcom/argusoft/sewa/android/app/activity/RIInventoryReturnActivity;->context:Landroid/content/Context;

    invoke-direct {v4, v5}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 115
    sget v5, Lcom/argusoft/sewa/android/app/R$string;->click_to_see_available_vaccine_details:I

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(I)V

    .line 116
    invoke-virtual {v4, v3, v3, v3, v3}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 117
    new-instance v3, Lcom/argusoft/sewa/android/app/activity/RIInventoryReturnActivity$$ExternalSyntheticLambda1;

    invoke-direct {v3, p0}, Lcom/argusoft/sewa/android/app/activity/RIInventoryReturnActivity$$ExternalSyntheticLambda1;-><init>(Lcom/argusoft/sewa/android/app/activity/RIInventoryReturnActivity;)V

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 122
    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 123
    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 124
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 125
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/RIInventoryReturnActivity;->context:Landroid/content/Context;

    const-string v2, "Select the vials returned for each vaccine"

    invoke-static {v6, v6, v1, v2}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateQuestionView(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 128
    invoke-direct {p0, v0}, Lcom/argusoft/sewa/android/app/activity/RIInventoryReturnActivity;->addImmunisationRows(Landroid/widget/LinearLayout;)V

    return-object v0
.end method

.method synthetic lambda$addRiTallySheetDetails$0$com-argusoft-sewa-android-app-activity-RIInventoryReturnActivity(Landroid/view/View;)V
    .locals 2

    .line 118
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/RIInventoryReturnActivity;->context:Landroid/content/Context;

    const-class v1, Lcom/argusoft/sewa/android/app/activity/RiInventoryDetailsActivity_;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 119
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/RIInventoryReturnActivity;->session:Lcom/argusoft/sewa/android/app/model/CampaignSessionBean;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/model/CampaignSessionBean;->getSessionId()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SESSION_ID"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 120
    invoke-virtual {p0, p1}, Lcom/argusoft/sewa/android/app/activity/RIInventoryReturnActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method synthetic lambda$validateAndStoreReturnedImmunisations$1$com-argusoft-sewa-android-app-activity-RIInventoryReturnActivity(Landroid/view/View;)V
    .locals 1

    .line 522
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/RIInventoryReturnActivity;->alertDialog:Lcom/argusoft/sewa/android/app/component/MyAlertDialog;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/component/MyAlertDialog;->dismiss()V

    .line 523
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    .line 524
    iget-boolean p1, p0, Lcom/argusoft/sewa/android/app/activity/RIInventoryReturnActivity;->isOnline:Z

    if-nez p1, :cond_0

    .line 525
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/RIInventoryReturnActivity;->campaignSessionService:Lcom/argusoft/sewa/android/app/core/impl/CampaignSessionServiceImpl;

    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/RIInventoryReturnActivity;->inventoryBean:Lcom/argusoft/sewa/android/app/model/RISessionInventoryBean;

    invoke-virtual {p1, v0}, Lcom/argusoft/sewa/android/app/core/impl/CampaignSessionServiceImpl;->submitCampaignInventoryReturnForm(Lcom/argusoft/sewa/android/app/model/RISessionInventoryBean;)V

    .line 526
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/RIInventoryReturnActivity;->campaignSessionService:Lcom/argusoft/sewa/android/app/core/impl/CampaignSessionServiceImpl;

    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/RIInventoryReturnActivity;->inventoryBean:Lcom/argusoft/sewa/android/app/model/RISessionInventoryBean;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/model/RISessionInventoryBean;->getSessionId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/argusoft/sewa/android/app/core/impl/CampaignSessionServiceImpl;->endSessionBySessionId(Ljava/lang/String;)V

    .line 527
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/RIInventoryReturnActivity;->session:Lcom/argusoft/sewa/android/app/model/CampaignSessionBean;

    invoke-direct {p0, p1}, Lcom/argusoft/sewa/android/app/activity/RIInventoryReturnActivity;->showFormSubmitMessage(Lcom/argusoft/sewa/android/app/model/CampaignSessionBean;)V

    :cond_0
    return-void
.end method

.method public onBackPressed()V
    .locals 2

    .line 574
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/RIInventoryReturnActivity;->context:Landroid/content/Context;

    const-string v1, "Please submit the vials returned"

    invoke-static {v0, v1}, Lcom/argusoft/sewa/android/app/util/SewaUtil;->generateToast(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 560
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/RIInventoryReturnActivity;->validateAndStoreReturnedImmunisations()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 71
    invoke-super {p0, p1}, Lcom/argusoft/sewa/android/app/activity/MenuActivity;->onCreate(Landroid/os/Bundle;)V

    .line 72
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/RIInventoryReturnActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "SESSION_ID"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 73
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/RIInventoryReturnActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 74
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/RIInventoryReturnActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "isOnline"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/argusoft/sewa/android/app/activity/RIInventoryReturnActivity;->isOnline:Z

    .line 75
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/RIInventoryReturnActivity;->campaignSessionService:Lcom/argusoft/sewa/android/app/core/impl/CampaignSessionServiceImpl;

    invoke-virtual {v0, p1}, Lcom/argusoft/sewa/android/app/core/impl/CampaignSessionServiceImpl;->getRiInventoryByCampaignSessionId(Ljava/lang/String;)Lcom/argusoft/sewa/android/app/model/RISessionInventoryBean;

    move-result-object p1

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/RIInventoryReturnActivity;->inventoryBean:Lcom/argusoft/sewa/android/app/model/RISessionInventoryBean;

    .line 76
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/RIInventoryReturnActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "currentSession"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p1

    check-cast p1, Lcom/argusoft/sewa/android/app/model/CampaignSessionBean;

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/RIInventoryReturnActivity;->session:Lcom/argusoft/sewa/android/app/model/CampaignSessionBean;

    .line 77
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/RIInventoryReturnActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "currentCampaignMaster"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p1

    check-cast p1, Lcom/argusoft/sewa/android/app/model/CampaignMasterBean;

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/RIInventoryReturnActivity;->campaignMasterBean:Lcom/argusoft/sewa/android/app/model/CampaignMasterBean;

    .line 78
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/RIInventoryReturnActivity;->inventoryBean:Lcom/argusoft/sewa/android/app/model/RISessionInventoryBean;

    if-nez p1, :cond_0

    .line 79
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/RIInventoryReturnActivity;->finish()V

    goto :goto_0

    .line 81
    :cond_0
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/RIInventoryReturnActivity;->initView()V

    goto :goto_0

    .line 84
    :cond_1
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/RIInventoryReturnActivity;->finish()V

    :goto_0
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1

    .line 565
    invoke-super {p0, p1}, Lcom/argusoft/sewa/android/app/activity/MenuActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    .line 566
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    const v0, 0x102002c

    if-ne p1, v0, :cond_0

    .line 567
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/RIInventoryReturnActivity;->context:Landroid/content/Context;

    const-string v0, "Please submit the vials returned"

    invoke-static {p1, v0}, Lcom/argusoft/sewa/android/app/util/SewaUtil;->generateToast(Landroid/content/Context;Ljava/lang/String;)V

    :cond_0
    const/4 p1, 0x1

    return p1
.end method
