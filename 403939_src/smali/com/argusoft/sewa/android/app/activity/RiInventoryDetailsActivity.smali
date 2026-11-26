.class public Lcom/argusoft/sewa/android/app/activity/RiInventoryDetailsActivity;
.super Lcom/argusoft/sewa/android/app/activity/MenuActivity;
.source "RiInventoryDetailsActivity.java"


# instance fields
.field private bodyLayoutContainer:Landroid/widget/LinearLayout;

.field campaignSessionService:Lcom/argusoft/sewa/android/app/core/impl/CampaignSessionServiceImpl;

.field private final context:Landroid/content/Context;

.field private globalPanel:Landroid/widget/LinearLayout;

.field private i:I

.field private inventoryBean:Lcom/argusoft/sewa/android/app/model/RISessionInventoryBean;

.field private newVialsReceived:Ljava/lang/Integer;

.field private openVialsReceived:Ljava/lang/Integer;

.field routineImmunisationService:Lcom/argusoft/sewa/android/app/core/impl/RoutineImmunisationServiceImpl;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 30
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/MenuActivity;-><init>()V

    .line 40
    iput-object p0, p0, Lcom/argusoft/sewa/android/app/activity/RiInventoryDetailsActivity;->context:Landroid/content/Context;

    const/4 v0, 0x0

    .line 48
    iput v0, p0, Lcom/argusoft/sewa/android/app/activity/RiInventoryDetailsActivity;->i:I

    return-void
.end method

.method private getInventoryDetailsLayout(Ljava/lang/String;)Landroid/widget/LinearLayout;
    .locals 4

    .line 97
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/RiInventoryDetailsActivity;->context:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/argusoft/sewa/android/app/R$layout;->activity_ri_inventory_details:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 98
    sget v1, Lcom/argusoft/sewa/android/app/R$id;->tableLayout:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TableLayout;

    .line 99
    sget v2, Lcom/argusoft/sewa/android/app/R$id;->header_title:I

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TableRow;

    .line 100
    iget v3, p0, Lcom/argusoft/sewa/android/app/activity/RiInventoryDetailsActivity;->i:I

    if-lez v3, :cond_0

    .line 101
    invoke-virtual {v1, v2}, Landroid/widget/TableLayout;->removeView(Landroid/view/View;)V

    :cond_0
    if-eqz v2, :cond_1

    .line 104
    iget v2, p0, Lcom/argusoft/sewa/android/app/activity/RiInventoryDetailsActivity;->i:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/argusoft/sewa/android/app/activity/RiInventoryDetailsActivity;->i:I

    .line 107
    :cond_1
    sget v2, Lcom/argusoft/sewa/android/app/R$id;->vaccineName:I

    invoke-virtual {v1, v2}, Landroid/widget/TableLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 108
    invoke-static {p1}, Lcom/argusoft/sewa/android/app/constants/RIInventoryConstants;->getFullFormOfInventoryVaccines(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 109
    invoke-direct {p0, p1}, Lcom/argusoft/sewa/android/app/activity/RiInventoryDetailsActivity;->getVialsCount(Ljava/lang/String;)V

    .line 110
    sget p1, Lcom/argusoft/sewa/android/app/R$id;->newVialsReceived:I

    invoke-virtual {v1, p1}, Landroid/widget/TableLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 111
    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/RiInventoryDetailsActivity;->newVialsReceived:Ljava/lang/Integer;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 112
    sget p1, Lcom/argusoft/sewa/android/app/R$id;->openVialsReceived:I

    invoke-virtual {v1, p1}, Landroid/widget/TableLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 113
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/RiInventoryDetailsActivity;->openVialsReceived:Ljava/lang/Integer;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-object v0
.end method

.method private getVialsCount(Ljava/lang/String;)V
    .locals 4

    .line 119
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x0

    .line 122
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, -0x1

    sparse-switch v0, :sswitch_data_0

    :goto_0
    const/4 v1, -0x1

    goto/16 :goto_1

    .line 119
    :sswitch_0
    const-string v0, "ROTA_VIRUS"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/16 v1, 0xa

    goto/16 :goto_1

    :sswitch_1
    const-string v0, "HEP_B"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    const/16 v1, 0x9

    goto/16 :goto_1

    :sswitch_2
    const-string v0, "FIPV"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    const/16 v1, 0x8

    goto :goto_1

    :sswitch_3
    const-string v0, "PCV"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_0

    :cond_3
    const/4 v1, 0x7

    goto :goto_1

    :sswitch_4
    const-string v0, "OPV"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    goto :goto_0

    :cond_4
    const/4 v1, 0x6

    goto :goto_1

    :sswitch_5
    const-string v0, "DPT"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    goto :goto_0

    :cond_5
    const/4 v1, 0x5

    goto :goto_1

    :sswitch_6
    const-string v0, "BCG"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    goto :goto_0

    :cond_6
    const/4 v1, 0x4

    goto :goto_1

    :sswitch_7
    const-string v0, "TD"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_7

    goto :goto_0

    :cond_7
    const/4 v1, 0x3

    goto :goto_1

    :sswitch_8
    const-string v0, "MR"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_8

    goto :goto_0

    :cond_8
    const/4 v1, 0x2

    goto :goto_1

    :sswitch_9
    const-string v0, "JE"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_9

    goto :goto_0

    :cond_9
    const/4 v1, 0x1

    goto :goto_1

    :sswitch_a
    const-string v0, "PENTAVALENT"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_a

    goto :goto_0

    :cond_a
    :goto_1
    packed-switch v1, :pswitch_data_0

    goto/16 :goto_2

    .line 157
    :pswitch_0
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/RiInventoryDetailsActivity;->inventoryBean:Lcom/argusoft/sewa/android/app/model/RISessionInventoryBean;

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/model/RISessionInventoryBean;->getRotaNew()Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/RiInventoryDetailsActivity;->newVialsReceived:Ljava/lang/Integer;

    .line 158
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/RiInventoryDetailsActivity;->inventoryBean:Lcom/argusoft/sewa/android/app/model/RISessionInventoryBean;

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/model/RISessionInventoryBean;->getRotaOpen()Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/RiInventoryDetailsActivity;->openVialsReceived:Ljava/lang/Integer;

    goto/16 :goto_2

    .line 161
    :pswitch_1
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/RiInventoryDetailsActivity;->inventoryBean:Lcom/argusoft/sewa/android/app/model/RISessionInventoryBean;

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/model/RISessionInventoryBean;->getHepNew()Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/RiInventoryDetailsActivity;->newVialsReceived:Ljava/lang/Integer;

    .line 162
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/RiInventoryDetailsActivity;->inventoryBean:Lcom/argusoft/sewa/android/app/model/RISessionInventoryBean;

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/model/RISessionInventoryBean;->getHepOpen()Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/RiInventoryDetailsActivity;->openVialsReceived:Ljava/lang/Integer;

    goto/16 :goto_2

    .line 141
    :pswitch_2
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/RiInventoryDetailsActivity;->inventoryBean:Lcom/argusoft/sewa/android/app/model/RISessionInventoryBean;

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/model/RISessionInventoryBean;->getFipvNew()Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/RiInventoryDetailsActivity;->newVialsReceived:Ljava/lang/Integer;

    .line 142
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/RiInventoryDetailsActivity;->inventoryBean:Lcom/argusoft/sewa/android/app/model/RISessionInventoryBean;

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/model/RISessionInventoryBean;->getFipvOpen()Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/RiInventoryDetailsActivity;->openVialsReceived:Ljava/lang/Integer;

    goto/16 :goto_2

    .line 145
    :pswitch_3
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/RiInventoryDetailsActivity;->inventoryBean:Lcom/argusoft/sewa/android/app/model/RISessionInventoryBean;

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/model/RISessionInventoryBean;->getPcvNew()Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/RiInventoryDetailsActivity;->newVialsReceived:Ljava/lang/Integer;

    .line 146
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/RiInventoryDetailsActivity;->inventoryBean:Lcom/argusoft/sewa/android/app/model/RISessionInventoryBean;

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/model/RISessionInventoryBean;->getPcvOpen()Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/RiInventoryDetailsActivity;->openVialsReceived:Ljava/lang/Integer;

    goto :goto_2

    .line 153
    :pswitch_4
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/RiInventoryDetailsActivity;->inventoryBean:Lcom/argusoft/sewa/android/app/model/RISessionInventoryBean;

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/model/RISessionInventoryBean;->getOpvNew()Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/RiInventoryDetailsActivity;->newVialsReceived:Ljava/lang/Integer;

    .line 154
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/RiInventoryDetailsActivity;->inventoryBean:Lcom/argusoft/sewa/android/app/model/RISessionInventoryBean;

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/model/RISessionInventoryBean;->getOpvOpen()Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/RiInventoryDetailsActivity;->openVialsReceived:Ljava/lang/Integer;

    goto :goto_2

    .line 129
    :pswitch_5
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/RiInventoryDetailsActivity;->inventoryBean:Lcom/argusoft/sewa/android/app/model/RISessionInventoryBean;

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/model/RISessionInventoryBean;->getDptNew()Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/RiInventoryDetailsActivity;->newVialsReceived:Ljava/lang/Integer;

    .line 130
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/RiInventoryDetailsActivity;->inventoryBean:Lcom/argusoft/sewa/android/app/model/RISessionInventoryBean;

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/model/RISessionInventoryBean;->getDptOpen()Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/RiInventoryDetailsActivity;->openVialsReceived:Ljava/lang/Integer;

    goto :goto_2

    .line 121
    :pswitch_6
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/RiInventoryDetailsActivity;->inventoryBean:Lcom/argusoft/sewa/android/app/model/RISessionInventoryBean;

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/model/RISessionInventoryBean;->getBcgNew()Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/RiInventoryDetailsActivity;->newVialsReceived:Ljava/lang/Integer;

    .line 122
    iput-object v2, p0, Lcom/argusoft/sewa/android/app/activity/RiInventoryDetailsActivity;->openVialsReceived:Ljava/lang/Integer;

    goto :goto_2

    .line 137
    :pswitch_7
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/RiInventoryDetailsActivity;->inventoryBean:Lcom/argusoft/sewa/android/app/model/RISessionInventoryBean;

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/model/RISessionInventoryBean;->getTdNew()Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/RiInventoryDetailsActivity;->newVialsReceived:Ljava/lang/Integer;

    .line 138
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/RiInventoryDetailsActivity;->inventoryBean:Lcom/argusoft/sewa/android/app/model/RISessionInventoryBean;

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/model/RISessionInventoryBean;->getTdOpen()Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/RiInventoryDetailsActivity;->openVialsReceived:Ljava/lang/Integer;

    goto :goto_2

    .line 125
    :pswitch_8
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/RiInventoryDetailsActivity;->inventoryBean:Lcom/argusoft/sewa/android/app/model/RISessionInventoryBean;

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/model/RISessionInventoryBean;->getMrNew()Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/RiInventoryDetailsActivity;->newVialsReceived:Ljava/lang/Integer;

    .line 126
    iput-object v2, p0, Lcom/argusoft/sewa/android/app/activity/RiInventoryDetailsActivity;->openVialsReceived:Ljava/lang/Integer;

    goto :goto_2

    .line 149
    :pswitch_9
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/RiInventoryDetailsActivity;->inventoryBean:Lcom/argusoft/sewa/android/app/model/RISessionInventoryBean;

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/model/RISessionInventoryBean;->getJeNew()Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/RiInventoryDetailsActivity;->newVialsReceived:Ljava/lang/Integer;

    .line 150
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/RiInventoryDetailsActivity;->inventoryBean:Lcom/argusoft/sewa/android/app/model/RISessionInventoryBean;

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/model/RISessionInventoryBean;->getJeOpen()Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/RiInventoryDetailsActivity;->openVialsReceived:Ljava/lang/Integer;

    goto :goto_2

    .line 133
    :pswitch_a
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/RiInventoryDetailsActivity;->inventoryBean:Lcom/argusoft/sewa/android/app/model/RISessionInventoryBean;

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/model/RISessionInventoryBean;->getPentaNew()Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/RiInventoryDetailsActivity;->newVialsReceived:Ljava/lang/Integer;

    .line 134
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/RiInventoryDetailsActivity;->inventoryBean:Lcom/argusoft/sewa/android/app/model/RISessionInventoryBean;

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/model/RISessionInventoryBean;->getPentaOpen()Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/RiInventoryDetailsActivity;->openVialsReceived:Ljava/lang/Integer;

    :goto_2
    return-void

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

.method private initView()V
    .locals 2

    const/4 v0, 0x0

    .line 67
    invoke-static {p0, v0}, Lcom/argusoft/sewa/android/app/util/DynamicUtils;->generateDynamicScreenTemplate(Landroid/content/Context;Landroid/view/View$OnClickListener;)Landroid/widget/LinearLayout;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/RiInventoryDetailsActivity;->globalPanel:Landroid/widget/LinearLayout;

    .line 68
    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/activity/RiInventoryDetailsActivity;->setContentView(Landroid/view/View;)V

    .line 69
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/RiInventoryDetailsActivity;->globalPanel:Landroid/widget/LinearLayout;

    sget v1, Lcom/argusoft/sewa/android/app/R$id;->footerLayout:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    .line 70
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 71
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/RiInventoryDetailsActivity;->globalPanel:Landroid/widget/LinearLayout;

    sget v1, Lcom/argusoft/sewa/android/app/R$id;->bodyLayoutContainer:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/RiInventoryDetailsActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    .line 72
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/RiInventoryDetailsActivity;->globalPanel:Landroid/widget/LinearLayout;

    sget v1, Lcom/argusoft/sewa/android/app/R$id;->my_toolbar:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/Toolbar;

    .line 73
    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/activity/RiInventoryDetailsActivity;->setSupportActionBar(Landroidx/appcompat/widget/Toolbar;)V

    .line 74
    const-string v0, "RI Tally Sheet"

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getTitleText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/activity/RiInventoryDetailsActivity;->setTitle(Ljava/lang/String;)V

    .line 75
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/RiInventoryDetailsActivity;->showCountOfVaccines()V

    const/4 v0, 0x0

    .line 76
    iput v0, p0, Lcom/argusoft/sewa/android/app/activity/RiInventoryDetailsActivity;->i:I

    return-void
.end method

.method private showCountOfVaccines()V
    .locals 2

    .line 80
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/RiInventoryDetailsActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 81
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/RiInventoryDetailsActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    const-string v1, "BCG"

    invoke-direct {p0, v1}, Lcom/argusoft/sewa/android/app/activity/RiInventoryDetailsActivity;->getInventoryDetailsLayout(Ljava/lang/String;)Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 82
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/RiInventoryDetailsActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    const-string v1, "MR"

    invoke-direct {p0, v1}, Lcom/argusoft/sewa/android/app/activity/RiInventoryDetailsActivity;->getInventoryDetailsLayout(Ljava/lang/String;)Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 83
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/RiInventoryDetailsActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    const-string v1, "DPT"

    invoke-direct {p0, v1}, Lcom/argusoft/sewa/android/app/activity/RiInventoryDetailsActivity;->getInventoryDetailsLayout(Ljava/lang/String;)Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 84
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/RiInventoryDetailsActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    const-string v1, "TD"

    invoke-direct {p0, v1}, Lcom/argusoft/sewa/android/app/activity/RiInventoryDetailsActivity;->getInventoryDetailsLayout(Ljava/lang/String;)Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 85
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/RiInventoryDetailsActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    const-string v1, "PENTAVALENT"

    invoke-direct {p0, v1}, Lcom/argusoft/sewa/android/app/activity/RiInventoryDetailsActivity;->getInventoryDetailsLayout(Ljava/lang/String;)Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 86
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/RiInventoryDetailsActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    const-string v1, "FIPV"

    invoke-direct {p0, v1}, Lcom/argusoft/sewa/android/app/activity/RiInventoryDetailsActivity;->getInventoryDetailsLayout(Ljava/lang/String;)Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 87
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/RiInventoryDetailsActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    const-string v1, "PCV"

    invoke-direct {p0, v1}, Lcom/argusoft/sewa/android/app/activity/RiInventoryDetailsActivity;->getInventoryDetailsLayout(Ljava/lang/String;)Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 91
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/RiInventoryDetailsActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    const-string v1, "OPV"

    invoke-direct {p0, v1}, Lcom/argusoft/sewa/android/app/activity/RiInventoryDetailsActivity;->getInventoryDetailsLayout(Ljava/lang/String;)Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 92
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/RiInventoryDetailsActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    const-string v1, "ROTA_VIRUS"

    invoke-direct {p0, v1}, Lcom/argusoft/sewa/android/app/activity/RiInventoryDetailsActivity;->getInventoryDetailsLayout(Ljava/lang/String;)Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 93
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/RiInventoryDetailsActivity;->bodyLayoutContainer:Landroid/widget/LinearLayout;

    const-string v1, "HEP_B"

    invoke-direct {p0, v1}, Lcom/argusoft/sewa/android/app/activity/RiInventoryDetailsActivity;->getInventoryDetailsLayout(Ljava/lang/String;)Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 0

    .line 170
    invoke-super {p0}, Lcom/argusoft/sewa/android/app/activity/MenuActivity;->onBackPressed()V

    .line 171
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/RiInventoryDetailsActivity;->finish()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 52
    invoke-super {p0, p1}, Lcom/argusoft/sewa/android/app/activity/MenuActivity;->onCreate(Landroid/os/Bundle;)V

    .line 53
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/RiInventoryDetailsActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "SESSION_ID"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 54
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/RiInventoryDetailsActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 55
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/RiInventoryDetailsActivity;->campaignSessionService:Lcom/argusoft/sewa/android/app/core/impl/CampaignSessionServiceImpl;

    invoke-virtual {v0, p1}, Lcom/argusoft/sewa/android/app/core/impl/CampaignSessionServiceImpl;->getRiInventoryByCampaignSessionId(Ljava/lang/String;)Lcom/argusoft/sewa/android/app/model/RISessionInventoryBean;

    move-result-object p1

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/RiInventoryDetailsActivity;->inventoryBean:Lcom/argusoft/sewa/android/app/model/RISessionInventoryBean;

    if-nez p1, :cond_0

    .line 57
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/RiInventoryDetailsActivity;->finish()V

    goto :goto_0

    .line 59
    :cond_0
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/RiInventoryDetailsActivity;->initView()V

    goto :goto_0

    .line 62
    :cond_1
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/RiInventoryDetailsActivity;->finish()V

    :goto_0
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 0

    .line 176
    invoke-super {p0, p1}, Lcom/argusoft/sewa/android/app/activity/MenuActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    .line 177
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/RiInventoryDetailsActivity;->finish()V

    const/4 p1, 0x1

    return p1
.end method
