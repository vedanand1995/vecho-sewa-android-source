.class public Lcom/argusoft/sewa/android/app/activity/PregnancyStatusActivity;
.super Lcom/argusoft/sewa/android/app/activity/MenuActivity;
.source "PregnancyStatusActivity.java"


# instance fields
.field private ancDateTextViewIds:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private bpTextViewIds:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private calciumTabTextViewIds:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private faTabTextViewIds:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field fhsService:Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;

.field private hbTextViewIds:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private ifaTabTextViewIds:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private memberBean:Lcom/argusoft/sewa/android/app/model/MemberBean;

.field private memberPregnancyStatusBean:Lcom/argusoft/sewa/android/app/model/MemberPregnancyStatusBean;

.field private regDateTextViewIds:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private urineTextViewIds:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private vaccineTextViewIds:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private weightTextViewIds:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 36
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/MenuActivity;-><init>()V

    return-void
.end method

.method private initMaps()V
    .locals 11

    .line 99
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/PregnancyStatusActivity;->regDateTextViewIds:Ljava/util/Map;

    const/4 v1, 0x1

    .line 100
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget v2, Lcom/argusoft/sewa/android/app/R$id;->pregStatusRegDate1:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/PregnancyStatusActivity;->regDateTextViewIds:Ljava/util/Map;

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    sget v3, Lcom/argusoft/sewa/android/app/R$id;->pregStatusRegDate2:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/PregnancyStatusActivity;->regDateTextViewIds:Ljava/util/Map;

    const/4 v3, 0x3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    sget v4, Lcom/argusoft/sewa/android/app/R$id;->pregStatusRegDate3:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/PregnancyStatusActivity;->regDateTextViewIds:Ljava/util/Map;

    const/4 v4, 0x4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    sget v5, Lcom/argusoft/sewa/android/app/R$id;->pregStatusRegDate4:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/PregnancyStatusActivity;->regDateTextViewIds:Ljava/util/Map;

    const/4 v5, 0x5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    sget v6, Lcom/argusoft/sewa/android/app/R$id;->pregStatusRegDate5:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v0, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/PregnancyStatusActivity;->regDateTextViewIds:Ljava/util/Map;

    const/4 v6, 0x6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    sget v7, Lcom/argusoft/sewa/android/app/R$id;->pregStatusRegDate6:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v0, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/PregnancyStatusActivity;->regDateTextViewIds:Ljava/util/Map;

    const/4 v7, 0x7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    sget v8, Lcom/argusoft/sewa/android/app/R$id;->pregStatusRegDate7:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v0, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/PregnancyStatusActivity;->regDateTextViewIds:Ljava/util/Map;

    const/16 v8, 0x8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    sget v9, Lcom/argusoft/sewa/android/app/R$id;->pregStatusRegDate8:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v0, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/PregnancyStatusActivity;->regDateTextViewIds:Ljava/util/Map;

    const/16 v9, 0x9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    sget v10, Lcom/argusoft/sewa/android/app/R$id;->pregStatusRegDate9:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v0, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/PregnancyStatusActivity;->ancDateTextViewIds:Ljava/util/Map;

    .line 111
    sget v10, Lcom/argusoft/sewa/android/app/R$id;->pregStatusAncDate1:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v0, v1, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/PregnancyStatusActivity;->ancDateTextViewIds:Ljava/util/Map;

    sget v10, Lcom/argusoft/sewa/android/app/R$id;->pregStatusAncDate2:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v0, v2, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/PregnancyStatusActivity;->ancDateTextViewIds:Ljava/util/Map;

    sget v10, Lcom/argusoft/sewa/android/app/R$id;->pregStatusAncDate3:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v0, v3, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/PregnancyStatusActivity;->ancDateTextViewIds:Ljava/util/Map;

    sget v10, Lcom/argusoft/sewa/android/app/R$id;->pregStatusAncDate4:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v0, v4, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/PregnancyStatusActivity;->ancDateTextViewIds:Ljava/util/Map;

    sget v10, Lcom/argusoft/sewa/android/app/R$id;->pregStatusAncDate5:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v0, v5, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/PregnancyStatusActivity;->ancDateTextViewIds:Ljava/util/Map;

    sget v10, Lcom/argusoft/sewa/android/app/R$id;->pregStatusAncDate6:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v0, v6, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/PregnancyStatusActivity;->ancDateTextViewIds:Ljava/util/Map;

    sget v10, Lcom/argusoft/sewa/android/app/R$id;->pregStatusAncDate7:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v0, v7, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/PregnancyStatusActivity;->ancDateTextViewIds:Ljava/util/Map;

    sget v10, Lcom/argusoft/sewa/android/app/R$id;->pregStatusAncDate8:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v0, v8, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/PregnancyStatusActivity;->ancDateTextViewIds:Ljava/util/Map;

    sget v10, Lcom/argusoft/sewa/android/app/R$id;->pregStatusAncDate9:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v0, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/PregnancyStatusActivity;->bpTextViewIds:Ljava/util/Map;

    .line 122
    sget v10, Lcom/argusoft/sewa/android/app/R$id;->pregStatusBp1:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v0, v1, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/PregnancyStatusActivity;->bpTextViewIds:Ljava/util/Map;

    sget v10, Lcom/argusoft/sewa/android/app/R$id;->pregStatusBp2:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v0, v2, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/PregnancyStatusActivity;->bpTextViewIds:Ljava/util/Map;

    sget v10, Lcom/argusoft/sewa/android/app/R$id;->pregStatusBp3:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v0, v3, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/PregnancyStatusActivity;->bpTextViewIds:Ljava/util/Map;

    sget v10, Lcom/argusoft/sewa/android/app/R$id;->pregStatusBp4:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v0, v4, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/PregnancyStatusActivity;->bpTextViewIds:Ljava/util/Map;

    sget v10, Lcom/argusoft/sewa/android/app/R$id;->pregStatusBp5:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v0, v5, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/PregnancyStatusActivity;->bpTextViewIds:Ljava/util/Map;

    sget v10, Lcom/argusoft/sewa/android/app/R$id;->pregStatusBp6:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v0, v6, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/PregnancyStatusActivity;->bpTextViewIds:Ljava/util/Map;

    sget v10, Lcom/argusoft/sewa/android/app/R$id;->pregStatusBp7:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v0, v7, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 129
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/PregnancyStatusActivity;->bpTextViewIds:Ljava/util/Map;

    sget v10, Lcom/argusoft/sewa/android/app/R$id;->pregStatusBp8:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v0, v8, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 130
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/PregnancyStatusActivity;->bpTextViewIds:Ljava/util/Map;

    sget v10, Lcom/argusoft/sewa/android/app/R$id;->pregStatusBp9:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v0, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/PregnancyStatusActivity;->hbTextViewIds:Ljava/util/Map;

    .line 133
    sget v10, Lcom/argusoft/sewa/android/app/R$id;->pregStatusHb1:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v0, v1, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 134
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/PregnancyStatusActivity;->hbTextViewIds:Ljava/util/Map;

    sget v10, Lcom/argusoft/sewa/android/app/R$id;->pregStatusHb2:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v0, v2, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/PregnancyStatusActivity;->hbTextViewIds:Ljava/util/Map;

    sget v10, Lcom/argusoft/sewa/android/app/R$id;->pregStatusHb3:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v0, v3, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/PregnancyStatusActivity;->hbTextViewIds:Ljava/util/Map;

    sget v10, Lcom/argusoft/sewa/android/app/R$id;->pregStatusHb4:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v0, v4, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/PregnancyStatusActivity;->hbTextViewIds:Ljava/util/Map;

    sget v10, Lcom/argusoft/sewa/android/app/R$id;->pregStatusHb5:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v0, v5, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 138
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/PregnancyStatusActivity;->hbTextViewIds:Ljava/util/Map;

    sget v10, Lcom/argusoft/sewa/android/app/R$id;->pregStatusHb6:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v0, v6, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/PregnancyStatusActivity;->hbTextViewIds:Ljava/util/Map;

    sget v10, Lcom/argusoft/sewa/android/app/R$id;->pregStatusHb7:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v0, v7, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 140
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/PregnancyStatusActivity;->hbTextViewIds:Ljava/util/Map;

    sget v10, Lcom/argusoft/sewa/android/app/R$id;->pregStatusHb8:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v0, v8, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 141
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/PregnancyStatusActivity;->hbTextViewIds:Ljava/util/Map;

    sget v10, Lcom/argusoft/sewa/android/app/R$id;->pregStatusHb9:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v0, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 143
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/PregnancyStatusActivity;->urineTextViewIds:Ljava/util/Map;

    .line 144
    sget v10, Lcom/argusoft/sewa/android/app/R$id;->pregStatusUrine1:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v0, v1, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 145
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/PregnancyStatusActivity;->urineTextViewIds:Ljava/util/Map;

    sget v10, Lcom/argusoft/sewa/android/app/R$id;->pregStatusUrine2:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v0, v2, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 146
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/PregnancyStatusActivity;->urineTextViewIds:Ljava/util/Map;

    sget v10, Lcom/argusoft/sewa/android/app/R$id;->pregStatusUrine3:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v0, v3, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 147
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/PregnancyStatusActivity;->urineTextViewIds:Ljava/util/Map;

    sget v10, Lcom/argusoft/sewa/android/app/R$id;->pregStatusUrine4:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v0, v4, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 148
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/PregnancyStatusActivity;->urineTextViewIds:Ljava/util/Map;

    sget v10, Lcom/argusoft/sewa/android/app/R$id;->pregStatusUrine5:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v0, v5, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 149
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/PregnancyStatusActivity;->urineTextViewIds:Ljava/util/Map;

    sget v10, Lcom/argusoft/sewa/android/app/R$id;->pregStatusUrine6:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v0, v6, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 150
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/PregnancyStatusActivity;->urineTextViewIds:Ljava/util/Map;

    sget v10, Lcom/argusoft/sewa/android/app/R$id;->pregStatusUrine7:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v0, v7, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 151
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/PregnancyStatusActivity;->urineTextViewIds:Ljava/util/Map;

    sget v10, Lcom/argusoft/sewa/android/app/R$id;->pregStatusUrine8:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v0, v8, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 152
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/PregnancyStatusActivity;->urineTextViewIds:Ljava/util/Map;

    sget v10, Lcom/argusoft/sewa/android/app/R$id;->pregStatusUrine9:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v0, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 154
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/PregnancyStatusActivity;->weightTextViewIds:Ljava/util/Map;

    .line 155
    sget v10, Lcom/argusoft/sewa/android/app/R$id;->pregStatusWeight1:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v0, v1, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 156
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/PregnancyStatusActivity;->weightTextViewIds:Ljava/util/Map;

    sget v10, Lcom/argusoft/sewa/android/app/R$id;->pregStatusWeight2:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v0, v2, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 157
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/PregnancyStatusActivity;->weightTextViewIds:Ljava/util/Map;

    sget v10, Lcom/argusoft/sewa/android/app/R$id;->pregStatusWeight3:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v0, v3, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 158
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/PregnancyStatusActivity;->weightTextViewIds:Ljava/util/Map;

    sget v10, Lcom/argusoft/sewa/android/app/R$id;->pregStatusWeight4:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v0, v4, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 159
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/PregnancyStatusActivity;->weightTextViewIds:Ljava/util/Map;

    sget v10, Lcom/argusoft/sewa/android/app/R$id;->pregStatusWeight5:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v0, v5, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 160
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/PregnancyStatusActivity;->weightTextViewIds:Ljava/util/Map;

    sget v10, Lcom/argusoft/sewa/android/app/R$id;->pregStatusWeight6:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v0, v6, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 161
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/PregnancyStatusActivity;->weightTextViewIds:Ljava/util/Map;

    sget v10, Lcom/argusoft/sewa/android/app/R$id;->pregStatusWeight7:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v0, v7, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 162
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/PregnancyStatusActivity;->weightTextViewIds:Ljava/util/Map;

    sget v10, Lcom/argusoft/sewa/android/app/R$id;->pregStatusWeight8:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v0, v8, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 163
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/PregnancyStatusActivity;->weightTextViewIds:Ljava/util/Map;

    sget v10, Lcom/argusoft/sewa/android/app/R$id;->pregStatusWeight9:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v0, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 165
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/PregnancyStatusActivity;->vaccineTextViewIds:Ljava/util/Map;

    .line 166
    sget v10, Lcom/argusoft/sewa/android/app/R$id;->pregStatusVaccine1:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v0, v1, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 167
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/PregnancyStatusActivity;->vaccineTextViewIds:Ljava/util/Map;

    sget v10, Lcom/argusoft/sewa/android/app/R$id;->pregStatusVaccine2:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v0, v2, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 168
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/PregnancyStatusActivity;->vaccineTextViewIds:Ljava/util/Map;

    sget v10, Lcom/argusoft/sewa/android/app/R$id;->pregStatusVaccine3:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v0, v3, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 169
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/PregnancyStatusActivity;->vaccineTextViewIds:Ljava/util/Map;

    sget v10, Lcom/argusoft/sewa/android/app/R$id;->pregStatusVaccine4:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v0, v4, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 170
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/PregnancyStatusActivity;->vaccineTextViewIds:Ljava/util/Map;

    sget v10, Lcom/argusoft/sewa/android/app/R$id;->pregStatusVaccine5:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v0, v5, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 171
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/PregnancyStatusActivity;->vaccineTextViewIds:Ljava/util/Map;

    sget v10, Lcom/argusoft/sewa/android/app/R$id;->pregStatusVaccine6:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v0, v6, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 172
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/PregnancyStatusActivity;->vaccineTextViewIds:Ljava/util/Map;

    sget v10, Lcom/argusoft/sewa/android/app/R$id;->pregStatusVaccine7:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v0, v7, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 173
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/PregnancyStatusActivity;->vaccineTextViewIds:Ljava/util/Map;

    sget v10, Lcom/argusoft/sewa/android/app/R$id;->pregStatusVaccine8:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v0, v8, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 174
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/PregnancyStatusActivity;->vaccineTextViewIds:Ljava/util/Map;

    sget v10, Lcom/argusoft/sewa/android/app/R$id;->pregStatusVaccine9:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v0, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 176
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/PregnancyStatusActivity;->faTabTextViewIds:Ljava/util/Map;

    .line 177
    sget v10, Lcom/argusoft/sewa/android/app/R$id;->pregStatusFaTab1:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v0, v1, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 178
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/PregnancyStatusActivity;->faTabTextViewIds:Ljava/util/Map;

    sget v1, Lcom/argusoft/sewa/android/app/R$id;->pregStatusFaTab2:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 179
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/PregnancyStatusActivity;->faTabTextViewIds:Ljava/util/Map;

    sget v1, Lcom/argusoft/sewa/android/app/R$id;->pregStatusFaTab3:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 181
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/PregnancyStatusActivity;->ifaTabTextViewIds:Ljava/util/Map;

    .line 182
    sget v1, Lcom/argusoft/sewa/android/app/R$id;->pregStatusIfaTab1:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 183
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/PregnancyStatusActivity;->ifaTabTextViewIds:Ljava/util/Map;

    sget v1, Lcom/argusoft/sewa/android/app/R$id;->pregStatusIfaTab2:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v5, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 184
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/PregnancyStatusActivity;->ifaTabTextViewIds:Ljava/util/Map;

    sget v1, Lcom/argusoft/sewa/android/app/R$id;->pregStatusIfaTab3:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v6, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 185
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/PregnancyStatusActivity;->ifaTabTextViewIds:Ljava/util/Map;

    sget v1, Lcom/argusoft/sewa/android/app/R$id;->pregStatusIfaTab4:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v7, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 186
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/PregnancyStatusActivity;->ifaTabTextViewIds:Ljava/util/Map;

    sget v1, Lcom/argusoft/sewa/android/app/R$id;->pregStatusIfaTab5:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v8, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 187
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/PregnancyStatusActivity;->ifaTabTextViewIds:Ljava/util/Map;

    sget v1, Lcom/argusoft/sewa/android/app/R$id;->pregStatusIfaTab6:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v9, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 190
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/PregnancyStatusActivity;->calciumTabTextViewIds:Ljava/util/Map;

    .line 191
    sget v1, Lcom/argusoft/sewa/android/app/R$id;->pregStatusCalciumTab1:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 192
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/PregnancyStatusActivity;->calciumTabTextViewIds:Ljava/util/Map;

    sget v1, Lcom/argusoft/sewa/android/app/R$id;->pregStatusCalciumTab2:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v5, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 193
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/PregnancyStatusActivity;->calciumTabTextViewIds:Ljava/util/Map;

    sget v1, Lcom/argusoft/sewa/android/app/R$id;->pregStatusCalciumTab3:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v6, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 194
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/PregnancyStatusActivity;->calciumTabTextViewIds:Ljava/util/Map;

    sget v1, Lcom/argusoft/sewa/android/app/R$id;->pregStatusCalciumTab4:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v7, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 195
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/PregnancyStatusActivity;->calciumTabTextViewIds:Ljava/util/Map;

    sget v1, Lcom/argusoft/sewa/android/app/R$id;->pregStatusCalciumTab5:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v8, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 196
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/PregnancyStatusActivity;->calciumTabTextViewIds:Ljava/util/Map;

    sget v1, Lcom/argusoft/sewa/android/app/R$id;->pregStatusCalciumTab6:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v9, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private setData()V
    .locals 13

    .line 200
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "dd\nMMM"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 201
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "dd/MM/yyyy"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 203
    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/PregnancyStatusActivity;->memberPregnancyStatusBean:Lcom/argusoft/sewa/android/app/model/MemberPregnancyStatusBean;

    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/model/MemberPregnancyStatusBean;->getRegDate()Ljava/util/Date;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 204
    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/PregnancyStatusActivity;->memberBean:Lcom/argusoft/sewa/android/app/model/MemberBean;

    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/model/MemberBean;->getLmpDate()Ljava/util/Date;

    move-result-object v2

    iget-object v3, p0, Lcom/argusoft/sewa/android/app/activity/PregnancyStatusActivity;->memberPregnancyStatusBean:Lcom/argusoft/sewa/android/app/model/MemberPregnancyStatusBean;

    invoke-virtual {v3}, Lcom/argusoft/sewa/android/app/model/MemberPregnancyStatusBean;->getRegDate()Ljava/util/Date;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/argusoft/sewa/android/app/util/UtilBean;->calculateMonthsBetweenDates(Ljava/util/Date;Ljava/util/Date;)I

    move-result v2

    .line 205
    iget-object v3, p0, Lcom/argusoft/sewa/android/app/activity/PregnancyStatusActivity;->regDateTextViewIds:Ljava/util/Map;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    if-eqz v2, :cond_0

    .line 207
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/argusoft/sewa/android/app/activity/PregnancyStatusActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 208
    iget-object v3, p0, Lcom/argusoft/sewa/android/app/activity/PregnancyStatusActivity;->memberPregnancyStatusBean:Lcom/argusoft/sewa/android/app/model/MemberPregnancyStatusBean;

    invoke-virtual {v3}, Lcom/argusoft/sewa/android/app/model/MemberPregnancyStatusBean;->getRegDate()Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 209
    iget-object v3, p0, Lcom/argusoft/sewa/android/app/activity/PregnancyStatusActivity;->context:Landroid/content/Context;

    sget v4, Lcom/argusoft/sewa/android/app/R$color;->pregnancyStatusTextSelected:I

    invoke-static {v3, v4}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 213
    :cond_0
    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/PregnancyStatusActivity;->memberPregnancyStatusBean:Lcom/argusoft/sewa/android/app/model/MemberPregnancyStatusBean;

    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/model/MemberPregnancyStatusBean;->getAncDate()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const-string v4, ","

    const/4 v5, 0x0

    if-eqz v2, :cond_2

    .line 214
    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/PregnancyStatusActivity;->memberPregnancyStatusBean:Lcom/argusoft/sewa/android/app/model/MemberPregnancyStatusBean;

    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/model/MemberPregnancyStatusBean;->getAncDate()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 215
    array-length v6, v2

    const/4 v7, 0x0

    :goto_0
    if-ge v7, v6, :cond_2

    aget-object v8, v2, v7

    .line 217
    :try_start_0
    invoke-virtual {v1, v8}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v8

    .line 218
    iget-object v9, p0, Lcom/argusoft/sewa/android/app/activity/PregnancyStatusActivity;->memberBean:Lcom/argusoft/sewa/android/app/model/MemberBean;

    invoke-virtual {v9}, Lcom/argusoft/sewa/android/app/model/MemberBean;->getLmpDate()Ljava/util/Date;

    move-result-object v9

    invoke-static {v9, v8}, Lcom/argusoft/sewa/android/app/util/UtilBean;->calculateMonthsBetweenDates(Ljava/util/Date;Ljava/util/Date;)I

    move-result v9

    .line 219
    iget-object v10, p0, Lcom/argusoft/sewa/android/app/activity/PregnancyStatusActivity;->ancDateTextViewIds:Ljava/util/Map;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v10, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    if-eqz v9, :cond_1

    .line 221
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-virtual {p0, v9}, Lcom/argusoft/sewa/android/app/activity/PregnancyStatusActivity;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    .line 222
    invoke-virtual {v0, v8}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v9, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 223
    iget-object v8, p0, Lcom/argusoft/sewa/android/app/activity/PregnancyStatusActivity;->context:Landroid/content/Context;

    sget v10, Lcom/argusoft/sewa/android/app/R$drawable;->pregnancy_status_textview_background_green:I

    invoke-static {v8, v10}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    invoke-virtual {v9, v8}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v8

    .line 226
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9, v3, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    :goto_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 232
    :cond_2
    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/PregnancyStatusActivity;->memberPregnancyStatusBean:Lcom/argusoft/sewa/android/app/model/MemberPregnancyStatusBean;

    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/model/MemberPregnancyStatusBean;->getBp()Ljava/lang/String;

    move-result-object v2

    const-string v6, "#"

    const/4 v7, 0x1

    if-eqz v2, :cond_4

    .line 233
    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/PregnancyStatusActivity;->memberPregnancyStatusBean:Lcom/argusoft/sewa/android/app/model/MemberPregnancyStatusBean;

    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/model/MemberPregnancyStatusBean;->getBp()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 234
    array-length v8, v2

    const/4 v9, 0x0

    :goto_2
    if-ge v9, v8, :cond_4

    aget-object v10, v2, v9

    .line 235
    invoke-virtual {v10, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    .line 237
    :try_start_1
    aget-object v11, v10, v5

    invoke-virtual {v1, v11}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v11

    .line 238
    iget-object v12, p0, Lcom/argusoft/sewa/android/app/activity/PregnancyStatusActivity;->memberBean:Lcom/argusoft/sewa/android/app/model/MemberBean;

    invoke-virtual {v12}, Lcom/argusoft/sewa/android/app/model/MemberBean;->getLmpDate()Ljava/util/Date;

    move-result-object v12

    invoke-static {v12, v11}, Lcom/argusoft/sewa/android/app/util/UtilBean;->calculateMonthsBetweenDates(Ljava/util/Date;Ljava/util/Date;)I

    move-result v11

    .line 239
    iget-object v12, p0, Lcom/argusoft/sewa/android/app/activity/PregnancyStatusActivity;->bpTextViewIds:Ljava/util/Map;

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-interface {v12, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    if-eqz v11, :cond_3

    .line 241
    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    invoke-virtual {p0, v11}, Lcom/argusoft/sewa/android/app/activity/PregnancyStatusActivity;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    .line 242
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v10, v10, v7

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "\nmmHg"

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 243
    invoke-virtual {v11, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 244
    iget-object v10, p0, Lcom/argusoft/sewa/android/app/activity/PregnancyStatusActivity;->context:Landroid/content/Context;

    sget v12, Lcom/argusoft/sewa/android/app/R$color;->pregnancyStatusTextSelected:I

    invoke-static {v10, v12}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v10

    invoke-virtual {v11, v10}, Landroid/widget/TextView;->setTextColor(I)V

    .line 245
    iget-object v10, p0, Lcom/argusoft/sewa/android/app/activity/PregnancyStatusActivity;->context:Landroid/content/Context;

    sget v12, Lcom/argusoft/sewa/android/app/R$drawable;->pregnancy_status_textview_background_white:I

    invoke-static {v10, v12}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    invoke-virtual {v11, v10}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V
    :try_end_1
    .catch Ljava/text/ParseException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_3

    :catch_1
    move-exception v10

    .line 248
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11, v3, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_3
    :goto_3
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .line 253
    :cond_4
    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/PregnancyStatusActivity;->memberPregnancyStatusBean:Lcom/argusoft/sewa/android/app/model/MemberPregnancyStatusBean;

    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/model/MemberPregnancyStatusBean;->getHaemoglobin()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_6

    .line 254
    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/PregnancyStatusActivity;->memberPregnancyStatusBean:Lcom/argusoft/sewa/android/app/model/MemberPregnancyStatusBean;

    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/model/MemberPregnancyStatusBean;->getHaemoglobin()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 255
    array-length v8, v2

    const/4 v9, 0x0

    :goto_4
    if-ge v9, v8, :cond_6

    aget-object v10, v2, v9

    .line 256
    invoke-virtual {v10, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    .line 258
    :try_start_2
    aget-object v11, v10, v5

    invoke-virtual {v1, v11}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v11

    .line 259
    iget-object v12, p0, Lcom/argusoft/sewa/android/app/activity/PregnancyStatusActivity;->memberBean:Lcom/argusoft/sewa/android/app/model/MemberBean;

    invoke-virtual {v12}, Lcom/argusoft/sewa/android/app/model/MemberBean;->getLmpDate()Ljava/util/Date;

    move-result-object v12

    invoke-static {v12, v11}, Lcom/argusoft/sewa/android/app/util/UtilBean;->calculateMonthsBetweenDates(Ljava/util/Date;Ljava/util/Date;)I

    move-result v11

    .line 260
    iget-object v12, p0, Lcom/argusoft/sewa/android/app/activity/PregnancyStatusActivity;->hbTextViewIds:Ljava/util/Map;

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-interface {v12, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    if-eqz v11, :cond_5

    .line 262
    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    invoke-virtual {p0, v11}, Lcom/argusoft/sewa/android/app/activity/PregnancyStatusActivity;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    .line 263
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v10, v10, v7

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "\ng/dl"

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 264
    invoke-virtual {v11, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 265
    iget-object v10, p0, Lcom/argusoft/sewa/android/app/activity/PregnancyStatusActivity;->context:Landroid/content/Context;

    sget v12, Lcom/argusoft/sewa/android/app/R$color;->pregnancyStatusTextSelected:I

    invoke-static {v10, v12}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v10

    invoke-virtual {v11, v10}, Landroid/widget/TextView;->setTextColor(I)V

    .line 266
    iget-object v10, p0, Lcom/argusoft/sewa/android/app/activity/PregnancyStatusActivity;->context:Landroid/content/Context;

    sget v12, Lcom/argusoft/sewa/android/app/R$drawable;->pregnancy_status_textview_background_white:I

    invoke-static {v10, v12}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    invoke-virtual {v11, v10}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V
    :try_end_2
    .catch Ljava/text/ParseException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_5

    :catch_2
    move-exception v10

    .line 269
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11, v3, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_5
    :goto_5
    add-int/lit8 v9, v9, 0x1

    goto :goto_4

    .line 274
    :cond_6
    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/PregnancyStatusActivity;->memberPregnancyStatusBean:Lcom/argusoft/sewa/android/app/model/MemberPregnancyStatusBean;

    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/model/MemberPregnancyStatusBean;->getUrineTest()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_8

    .line 275
    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/PregnancyStatusActivity;->memberPregnancyStatusBean:Lcom/argusoft/sewa/android/app/model/MemberPregnancyStatusBean;

    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/model/MemberPregnancyStatusBean;->getUrineTest()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 276
    array-length v8, v2

    const/4 v9, 0x0

    :goto_6
    if-ge v9, v8, :cond_8

    aget-object v10, v2, v9

    .line 277
    invoke-virtual {v10, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    .line 279
    :try_start_3
    aget-object v11, v10, v5

    invoke-virtual {v1, v11}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v11

    .line 280
    iget-object v12, p0, Lcom/argusoft/sewa/android/app/activity/PregnancyStatusActivity;->memberBean:Lcom/argusoft/sewa/android/app/model/MemberBean;

    invoke-virtual {v12}, Lcom/argusoft/sewa/android/app/model/MemberBean;->getLmpDate()Ljava/util/Date;

    move-result-object v12

    invoke-static {v12, v11}, Lcom/argusoft/sewa/android/app/util/UtilBean;->calculateMonthsBetweenDates(Ljava/util/Date;Ljava/util/Date;)I

    move-result v11

    .line 281
    iget-object v12, p0, Lcom/argusoft/sewa/android/app/activity/PregnancyStatusActivity;->urineTextViewIds:Ljava/util/Map;

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-interface {v12, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    if-eqz v11, :cond_7

    .line 283
    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    invoke-virtual {p0, v11}, Lcom/argusoft/sewa/android/app/activity/PregnancyStatusActivity;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    .line 284
    aget-object v10, v10, v7

    invoke-virtual {v11, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 285
    iget-object v10, p0, Lcom/argusoft/sewa/android/app/activity/PregnancyStatusActivity;->context:Landroid/content/Context;

    sget v12, Lcom/argusoft/sewa/android/app/R$color;->pregnancyStatusTextSelected:I

    invoke-static {v10, v12}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v10

    invoke-virtual {v11, v10}, Landroid/widget/TextView;->setTextColor(I)V

    .line 286
    iget-object v10, p0, Lcom/argusoft/sewa/android/app/activity/PregnancyStatusActivity;->context:Landroid/content/Context;

    sget v12, Lcom/argusoft/sewa/android/app/R$drawable;->pregnancy_status_textview_background_white:I

    invoke-static {v10, v12}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    invoke-virtual {v11, v10}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V
    :try_end_3
    .catch Ljava/text/ParseException; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_7

    :catch_3
    move-exception v10

    .line 289
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11, v3, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_7
    :goto_7
    add-int/lit8 v9, v9, 0x1

    goto :goto_6

    .line 294
    :cond_8
    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/PregnancyStatusActivity;->memberPregnancyStatusBean:Lcom/argusoft/sewa/android/app/model/MemberPregnancyStatusBean;

    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/model/MemberPregnancyStatusBean;->getWeight()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_a

    .line 295
    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/PregnancyStatusActivity;->memberPregnancyStatusBean:Lcom/argusoft/sewa/android/app/model/MemberPregnancyStatusBean;

    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/model/MemberPregnancyStatusBean;->getWeight()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 296
    array-length v8, v2

    const/4 v9, 0x0

    :goto_8
    if-ge v9, v8, :cond_a

    aget-object v10, v2, v9

    .line 297
    invoke-virtual {v10, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    .line 299
    :try_start_4
    aget-object v11, v10, v5

    invoke-virtual {v1, v11}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v11

    .line 300
    iget-object v12, p0, Lcom/argusoft/sewa/android/app/activity/PregnancyStatusActivity;->memberBean:Lcom/argusoft/sewa/android/app/model/MemberBean;

    invoke-virtual {v12}, Lcom/argusoft/sewa/android/app/model/MemberBean;->getLmpDate()Ljava/util/Date;

    move-result-object v12

    invoke-static {v12, v11}, Lcom/argusoft/sewa/android/app/util/UtilBean;->calculateMonthsBetweenDates(Ljava/util/Date;Ljava/util/Date;)I

    move-result v11

    .line 301
    iget-object v12, p0, Lcom/argusoft/sewa/android/app/activity/PregnancyStatusActivity;->weightTextViewIds:Ljava/util/Map;

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-interface {v12, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    if-eqz v11, :cond_9

    .line 303
    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    invoke-virtual {p0, v11}, Lcom/argusoft/sewa/android/app/activity/PregnancyStatusActivity;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    .line 304
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v10, v10, v7

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "\nKgs"

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 305
    invoke-virtual {v11, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 306
    iget-object v10, p0, Lcom/argusoft/sewa/android/app/activity/PregnancyStatusActivity;->context:Landroid/content/Context;

    sget v12, Lcom/argusoft/sewa/android/app/R$color;->pregnancyStatusTextSelected:I

    invoke-static {v10, v12}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v10

    invoke-virtual {v11, v10}, Landroid/widget/TextView;->setTextColor(I)V

    .line 307
    iget-object v10, p0, Lcom/argusoft/sewa/android/app/activity/PregnancyStatusActivity;->context:Landroid/content/Context;

    sget v12, Lcom/argusoft/sewa/android/app/R$drawable;->pregnancy_status_textview_background_white:I

    invoke-static {v10, v12}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    invoke-virtual {v11, v10}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V
    :try_end_4
    .catch Ljava/text/ParseException; {:try_start_4 .. :try_end_4} :catch_4

    goto :goto_9

    :catch_4
    move-exception v10

    .line 310
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11, v3, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_9
    :goto_9
    add-int/lit8 v9, v9, 0x1

    goto :goto_8

    .line 315
    :cond_a
    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/PregnancyStatusActivity;->memberPregnancyStatusBean:Lcom/argusoft/sewa/android/app/model/MemberPregnancyStatusBean;

    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/model/MemberPregnancyStatusBean;->getImmunisation()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_c

    .line 316
    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/PregnancyStatusActivity;->memberPregnancyStatusBean:Lcom/argusoft/sewa/android/app/model/MemberPregnancyStatusBean;

    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/model/MemberPregnancyStatusBean;->getImmunisation()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 317
    array-length v8, v2

    const/4 v9, 0x0

    :goto_a
    if-ge v9, v8, :cond_c

    aget-object v10, v2, v9

    .line 318
    invoke-virtual {v10, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    .line 320
    :try_start_5
    aget-object v10, v10, v5

    invoke-virtual {v1, v10}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v10

    .line 321
    iget-object v11, p0, Lcom/argusoft/sewa/android/app/activity/PregnancyStatusActivity;->memberBean:Lcom/argusoft/sewa/android/app/model/MemberBean;

    invoke-virtual {v11}, Lcom/argusoft/sewa/android/app/model/MemberBean;->getLmpDate()Ljava/util/Date;

    move-result-object v11

    invoke-static {v11, v10}, Lcom/argusoft/sewa/android/app/util/UtilBean;->calculateMonthsBetweenDates(Ljava/util/Date;Ljava/util/Date;)I

    move-result v11

    .line 322
    iget-object v12, p0, Lcom/argusoft/sewa/android/app/activity/PregnancyStatusActivity;->vaccineTextViewIds:Ljava/util/Map;

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-interface {v12, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    if-eqz v11, :cond_b

    .line 324
    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    invoke-virtual {p0, v11}, Lcom/argusoft/sewa/android/app/activity/PregnancyStatusActivity;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    .line 325
    invoke-virtual {v0, v10}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v11, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 326
    iget-object v10, p0, Lcom/argusoft/sewa/android/app/activity/PregnancyStatusActivity;->context:Landroid/content/Context;

    sget v12, Lcom/argusoft/sewa/android/app/R$drawable;->pregnancy_status_textview_background_green:I

    invoke-static {v10, v12}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    invoke-virtual {v11, v10}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V
    :try_end_5
    .catch Ljava/text/ParseException; {:try_start_5 .. :try_end_5} :catch_5

    goto :goto_b

    :catch_5
    move-exception v10

    .line 329
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11, v3, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_b
    :goto_b
    add-int/lit8 v9, v9, 0x1

    goto :goto_a

    .line 334
    :cond_c
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/PregnancyStatusActivity;->memberPregnancyStatusBean:Lcom/argusoft/sewa/android/app/model/MemberPregnancyStatusBean;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/model/MemberPregnancyStatusBean;->getFaTablets()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_e

    .line 335
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/PregnancyStatusActivity;->memberPregnancyStatusBean:Lcom/argusoft/sewa/android/app/model/MemberPregnancyStatusBean;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/model/MemberPregnancyStatusBean;->getFaTablets()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 336
    array-length v2, v0

    const/4 v8, 0x0

    :goto_c
    if-ge v8, v2, :cond_e

    aget-object v9, v0, v8

    .line 337
    invoke-virtual {v9, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    .line 339
    :try_start_6
    aget-object v10, v9, v5

    invoke-virtual {v1, v10}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v10

    .line 340
    iget-object v11, p0, Lcom/argusoft/sewa/android/app/activity/PregnancyStatusActivity;->memberBean:Lcom/argusoft/sewa/android/app/model/MemberBean;

    invoke-virtual {v11}, Lcom/argusoft/sewa/android/app/model/MemberBean;->getLmpDate()Ljava/util/Date;

    move-result-object v11

    invoke-static {v11, v10}, Lcom/argusoft/sewa/android/app/util/UtilBean;->calculateMonthsBetweenDates(Ljava/util/Date;Ljava/util/Date;)I

    move-result v10

    .line 341
    iget-object v11, p0, Lcom/argusoft/sewa/android/app/activity/PregnancyStatusActivity;->faTabTextViewIds:Ljava/util/Map;

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v11, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    if-eqz v10, :cond_d

    .line 343
    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-virtual {p0, v10}, Lcom/argusoft/sewa/android/app/activity/PregnancyStatusActivity;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    .line 344
    aget-object v9, v9, v7

    invoke-virtual {v10, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_6
    .catch Ljava/text/ParseException; {:try_start_6 .. :try_end_6} :catch_6

    goto :goto_d

    :catch_6
    move-exception v9

    .line 347
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10, v3, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_d
    :goto_d
    add-int/lit8 v8, v8, 0x1

    goto :goto_c

    .line 352
    :cond_e
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/PregnancyStatusActivity;->memberPregnancyStatusBean:Lcom/argusoft/sewa/android/app/model/MemberPregnancyStatusBean;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/model/MemberPregnancyStatusBean;->getIfaTablets()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_10

    .line 353
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/PregnancyStatusActivity;->memberPregnancyStatusBean:Lcom/argusoft/sewa/android/app/model/MemberPregnancyStatusBean;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/model/MemberPregnancyStatusBean;->getIfaTablets()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 354
    array-length v2, v0

    const/4 v8, 0x0

    :goto_e
    if-ge v8, v2, :cond_10

    aget-object v9, v0, v8

    .line 355
    invoke-virtual {v9, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    .line 357
    :try_start_7
    aget-object v10, v9, v5

    invoke-virtual {v1, v10}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v10

    .line 358
    iget-object v11, p0, Lcom/argusoft/sewa/android/app/activity/PregnancyStatusActivity;->memberBean:Lcom/argusoft/sewa/android/app/model/MemberBean;

    invoke-virtual {v11}, Lcom/argusoft/sewa/android/app/model/MemberBean;->getLmpDate()Ljava/util/Date;

    move-result-object v11

    invoke-static {v11, v10}, Lcom/argusoft/sewa/android/app/util/UtilBean;->calculateMonthsBetweenDates(Ljava/util/Date;Ljava/util/Date;)I

    move-result v10

    .line 359
    iget-object v11, p0, Lcom/argusoft/sewa/android/app/activity/PregnancyStatusActivity;->ifaTabTextViewIds:Ljava/util/Map;

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v11, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    if-eqz v10, :cond_f

    .line 361
    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-virtual {p0, v10}, Lcom/argusoft/sewa/android/app/activity/PregnancyStatusActivity;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    .line 362
    aget-object v9, v9, v7

    invoke-virtual {v10, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_7
    .catch Ljava/text/ParseException; {:try_start_7 .. :try_end_7} :catch_7

    goto :goto_f

    :catch_7
    move-exception v9

    .line 365
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10, v3, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_f
    :goto_f
    add-int/lit8 v8, v8, 0x1

    goto :goto_e

    .line 370
    :cond_10
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/PregnancyStatusActivity;->memberPregnancyStatusBean:Lcom/argusoft/sewa/android/app/model/MemberPregnancyStatusBean;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/model/MemberPregnancyStatusBean;->getCalciumTablets()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_12

    .line 371
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/PregnancyStatusActivity;->memberPregnancyStatusBean:Lcom/argusoft/sewa/android/app/model/MemberPregnancyStatusBean;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/model/MemberPregnancyStatusBean;->getCalciumTablets()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 372
    array-length v2, v0

    const/4 v4, 0x0

    :goto_10
    if-ge v4, v2, :cond_12

    aget-object v8, v0, v4

    .line 373
    invoke-virtual {v8, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .line 375
    :try_start_8
    aget-object v9, v8, v5

    invoke-virtual {v1, v9}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v9

    .line 376
    iget-object v10, p0, Lcom/argusoft/sewa/android/app/activity/PregnancyStatusActivity;->memberBean:Lcom/argusoft/sewa/android/app/model/MemberBean;

    invoke-virtual {v10}, Lcom/argusoft/sewa/android/app/model/MemberBean;->getLmpDate()Ljava/util/Date;

    move-result-object v10

    invoke-static {v10, v9}, Lcom/argusoft/sewa/android/app/util/UtilBean;->calculateMonthsBetweenDates(Ljava/util/Date;Ljava/util/Date;)I

    move-result v9

    .line 377
    iget-object v10, p0, Lcom/argusoft/sewa/android/app/activity/PregnancyStatusActivity;->calciumTabTextViewIds:Ljava/util/Map;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v10, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    if-eqz v9, :cond_11

    .line 379
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-virtual {p0, v9}, Lcom/argusoft/sewa/android/app/activity/PregnancyStatusActivity;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    .line 380
    aget-object v8, v8, v7

    invoke-virtual {v9, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_8
    .catch Ljava/text/ParseException; {:try_start_8 .. :try_end_8} :catch_8

    goto :goto_11

    :catch_8
    move-exception v8

    .line 383
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9, v3, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_11
    :goto_11
    add-int/lit8 v4, v4, 0x1

    goto :goto_10

    :cond_12
    return-void
.end method


# virtual methods
.method public initView()V
    .locals 1

    .line 93
    sget v0, Lcom/argusoft/sewa/android/app/R$layout;->activity_pregnancy_status:I

    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/activity/PregnancyStatusActivity;->setContentView(I)V

    .line 94
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/PregnancyStatusActivity;->initMaps()V

    .line 95
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/activity/PregnancyStatusActivity;->setData()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6

    .line 56
    invoke-super {p0, p1}, Lcom/argusoft/sewa/android/app/activity/MenuActivity;->onCreate(Landroid/os/Bundle;)V

    .line 57
    iput-object p0, p0, Lcom/argusoft/sewa/android/app/activity/PregnancyStatusActivity;->context:Landroid/content/Context;

    .line 58
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/PregnancyStatusActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/PregnancyStatusActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "memberId"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    goto :goto_0

    :cond_0
    const-wide/16 v0, -0x1

    :goto_0
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    .line 59
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/PregnancyStatusActivity;->fhsService:Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;

    invoke-virtual {v0, p1}, Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;->retrievePregnancyStatusBeanByMemberId(Ljava/lang/Long;)Lcom/argusoft/sewa/android/app/model/MemberPregnancyStatusBean;

    move-result-object v0

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/PregnancyStatusActivity;->memberPregnancyStatusBean:Lcom/argusoft/sewa/android/app/model/MemberPregnancyStatusBean;

    .line 60
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/PregnancyStatusActivity;->fhsService:Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;

    invoke-virtual {v0, p1}, Lcom/argusoft/sewa/android/app/core/impl/SewaFhsServiceImpl;->retrieveMemberBeanByActualId(Ljava/lang/Long;)Lcom/argusoft/sewa/android/app/model/MemberBean;

    move-result-object p1

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/PregnancyStatusActivity;->memberBean:Lcom/argusoft/sewa/android/app/model/MemberBean;

    .line 61
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/PregnancyStatusActivity;->memberPregnancyStatusBean:Lcom/argusoft/sewa/android/app/model/MemberPregnancyStatusBean;

    if-nez p1, :cond_1

    .line 62
    new-instance v4, Lcom/argusoft/sewa/android/app/activity/PregnancyStatusActivity$1;

    invoke-direct {v4, p0}, Lcom/argusoft/sewa/android/app/activity/PregnancyStatusActivity$1;-><init>(Lcom/argusoft/sewa/android/app/activity/PregnancyStatusActivity;)V

    .line 69
    new-instance p1, Lcom/argusoft/sewa/android/app/component/MyAlertDialog;

    const-string v0, "No pregnancy details found"

    .line 70
    invoke-static {v0}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/16 v5, -0x69

    const/4 v2, 0x0

    move-object v0, p1

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/argusoft/sewa/android/app/component/MyAlertDialog;-><init>(Landroid/content/Context;ZLjava/lang/String;Landroid/view/View$OnClickListener;I)V

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/PregnancyStatusActivity;->alertDialog:Lcom/argusoft/sewa/android/app/component/MyAlertDialog;

    .line 72
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/PregnancyStatusActivity;->alertDialog:Lcom/argusoft/sewa/android/app/component/MyAlertDialog;

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/component/MyAlertDialog;->show()V

    goto :goto_1

    .line 74
    :cond_1
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/PregnancyStatusActivity;->initView()V

    :goto_1
    return-void
.end method

.method protected onResume()V
    .locals 2

    .line 80
    invoke-super {p0}, Lcom/argusoft/sewa/android/app/activity/MenuActivity;->onResume()V

    .line 81
    sget-boolean v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->isLogin:Z

    if-nez v0, :cond_0

    .line 82
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/argusoft/sewa/android/app/activity/LoginActivity_;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x14000000

    .line 83
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 85
    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/activity/PregnancyStatusActivity;->startActivity(Landroid/content/Intent;)V

    .line 86
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/PregnancyStatusActivity;->finish()V

    .line 88
    :cond_0
    const-string v0, "Pregnancy Status"

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getTitleText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/activity/PregnancyStatusActivity;->setTitle(Ljava/lang/String;)V

    return-void
.end method
