.class public Lcom/argusoft/sewa/android/app/core/impl/RoutineImmunisationServiceImpl;
.super Ljava/lang/Object;
.source "RoutineImmunisationServiceImpl.java"

# interfaces
.implements Lcom/argusoft/sewa/android/app/core/RoutineImmunisationService;


# static fields
.field private static final SERVICE_CHILDREN_5_TO_7:Ljava/lang/String; = "childrenAbove5"

.field private static final SERVICE_CHILDREN_GREATER_THAN_2:Ljava/lang/String; = "childrenGreaterThan2"

.field private static final SERVICE_CHILDREN_UPTO_2:Ljava/lang/String; = "childrenUpto2"

.field private static final SERVICE_CHILDREN_UPTO_5:Ljava/lang/String; = "childrenUpto5"

.field private static final SERVICE_ELIGIBLE_COUPLES:Ljava/lang/String; = "eligibleCouples"

.field private static final SERVICE_NEWLY_WED:Ljava/lang/String; = "newlyWed"

.field private static final SERVICE_PNC_MOTHERS:Ljava/lang/String; = "pncMothers"

.field private static final SERVICE_PREGNANCY_OUTCOME:Ljava/lang/String; = "pregnancyOutcome"

.field private static final SERVICE_PREGNANT_WOMEN:Ljava/lang/String; = "pregnantWomen"

.field private static final TAG:Ljava/lang/String; = "RIServiceImpl"


# instance fields
.field familyBeanDao:Lcom/j256/ormlite/dao/Dao;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/j256/ormlite/dao/Dao<",
            "Lcom/argusoft/sewa/android/app/model/FamilyBean;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field inventoryBeanDao:Lcom/j256/ormlite/dao/Dao;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/j256/ormlite/dao/Dao<",
            "Lcom/argusoft/sewa/android/app/model/RISessionInventoryBean;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field memberBeanDao:Lcom/j256/ormlite/dao/Dao;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/j256/ormlite/dao/Dao<",
            "Lcom/argusoft/sewa/android/app/model/MemberBean;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field sewaService:Lcom/argusoft/sewa/android/app/core/impl/SewaServiceImpl;

.field sewaServiceRestClient:Lcom/argusoft/sewa/android/app/core/impl/SewaServiceRestClientImpl;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private addSearchTypeConditionAccordingly(Lcom/j256/ormlite/stmt/Where;Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/j256/ormlite/stmt/Where<",
            "Lcom/argusoft/sewa/android/app/model/MemberBean;",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Date;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 74
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, -0x1

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "MOBILE_NUMBER"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v4, 0x5

    goto :goto_0

    :sswitch_1
    const-string v0, "FAMILY_ID"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v4, 0x4

    goto :goto_0

    :sswitch_2
    const-string v0, "ABHA_NUMBER"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_2

    goto :goto_0

    :cond_2
    const/4 v4, 0x3

    goto :goto_0

    :sswitch_3
    const-string v0, "NAME"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_3

    goto :goto_0

    :cond_3
    const/4 v4, 0x2

    goto :goto_0

    :sswitch_4
    const-string v0, "DOB"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_4

    goto :goto_0

    :cond_4
    const/4 v4, 0x1

    goto :goto_0

    :sswitch_5
    const-string v0, "MEMBER_ID"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_5

    goto :goto_0

    :cond_5
    const/4 v4, 0x0

    :goto_0
    const-string p2, "familyId"

    const-string v0, "%"

    packed-switch v4, :pswitch_data_0

    goto/16 :goto_2

    .line 76
    :pswitch_0
    new-instance p4, Ljava/util/ArrayList;

    invoke-direct {p4}, Ljava/util/ArrayList;-><init>()V

    .line 77
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/core/impl/RoutineImmunisationServiceImpl;->memberBeanDao:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v1}, Lcom/j256/ormlite/dao/Dao;->queryBuilder()Lcom/j256/ormlite/stmt/QueryBuilder;

    move-result-object v1

    filled-new-array {p2}, [Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/j256/ormlite/stmt/QueryBuilder;->selectColumns([Ljava/lang/String;)Lcom/j256/ormlite/stmt/QueryBuilder;

    move-result-object v1

    .line 78
    invoke-virtual {v1}, Lcom/j256/ormlite/stmt/QueryBuilder;->where()Lcom/j256/ormlite/stmt/Where;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const-string v0, "mobileNumber"

    invoke-virtual {v1, v0, p3}, Lcom/j256/ormlite/stmt/Where;->like(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    move-result-object p3

    invoke-virtual {p3}, Lcom/j256/ormlite/stmt/Where;->query()Ljava/util/List;

    move-result-object p3

    .line 79
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_1
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/argusoft/sewa/android/app/model/MemberBean;

    .line 80
    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/model/MemberBean;->getFamilyId()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 82
    :cond_6
    invoke-virtual {p1}, Lcom/j256/ormlite/stmt/Where;->and()Lcom/j256/ormlite/stmt/Where;

    move-result-object p1

    invoke-virtual {p1, p2, p4}, Lcom/j256/ormlite/stmt/Where;->in(Ljava/lang/String;Ljava/lang/Iterable;)Lcom/j256/ormlite/stmt/Where;

    goto/16 :goto_2

    .line 88
    :pswitch_1
    invoke-virtual {p1}, Lcom/j256/ormlite/stmt/Where;->and()Lcom/j256/ormlite/stmt/Where;

    move-result-object p1

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Lcom/j256/ormlite/stmt/Where;->like(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    goto/16 :goto_2

    .line 92
    :pswitch_2
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result p2

    const/16 p4, 0xe

    if-ne p2, p4, :cond_7

    .line 93
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string p3, "-"

    invoke-virtual {p2, v1, p3}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 94
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 p2, 0x7

    invoke-virtual {p4, p2, p3}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 95
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 p2, 0xc

    invoke-virtual {p4, p2, p3}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    .line 97
    :cond_7
    invoke-virtual {p1}, Lcom/j256/ormlite/stmt/Where;->and()Lcom/j256/ormlite/stmt/Where;

    move-result-object p2

    const-string p4, "healthId"

    .line 98
    invoke-virtual {p1, p4, p3}, Lcom/j256/ormlite/stmt/Where;->eq(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    move-result-object p4

    const-string v0, "healthIdNumber"

    .line 99
    invoke-virtual {p1, v0, p3}, Lcom/j256/ormlite/stmt/Where;->eq(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    move-result-object p1

    new-array p3, v3, [Lcom/j256/ormlite/stmt/Where;

    .line 97
    invoke-virtual {p2, p4, p1, p3}, Lcom/j256/ormlite/stmt/Where;->or(Lcom/j256/ormlite/stmt/Where;Lcom/j256/ormlite/stmt/Where;[Lcom/j256/ormlite/stmt/Where;)Lcom/j256/ormlite/stmt/Where;

    goto/16 :goto_2

    .line 105
    :pswitch_3
    invoke-virtual {p1}, Lcom/j256/ormlite/stmt/Where;->and()Lcom/j256/ormlite/stmt/Where;

    move-result-object p2

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 106
    invoke-virtual {p3}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    const-string v1, "firstName"

    invoke-virtual {p1, v1, p4}, Lcom/j256/ormlite/stmt/Where;->like(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    move-result-object p4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 107
    invoke-virtual {p3}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v4, "middleName"

    invoke-virtual {p1, v4, v1}, Lcom/j256/ormlite/stmt/Where;->like(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v1

    new-array v2, v2, [Lcom/j256/ormlite/stmt/Where;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 108
    invoke-virtual {p3}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const-string v0, "lastName"

    invoke-virtual {p1, v0, p3}, Lcom/j256/ormlite/stmt/Where;->like(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    move-result-object p1

    aput-object p1, v2, v3

    .line 105
    invoke-virtual {p2, p4, v1, v2}, Lcom/j256/ormlite/stmt/Where;->or(Lcom/j256/ormlite/stmt/Where;Lcom/j256/ormlite/stmt/Where;[Lcom/j256/ormlite/stmt/Where;)Lcom/j256/ormlite/stmt/Where;

    goto :goto_2

    .line 102
    :pswitch_4
    invoke-virtual {p1}, Lcom/j256/ormlite/stmt/Where;->and()Lcom/j256/ormlite/stmt/Where;

    move-result-object p1

    const-string p2, "dob"

    invoke-virtual {p1, p2, p4}, Lcom/j256/ormlite/stmt/Where;->eq(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    goto :goto_2

    .line 85
    :pswitch_5
    invoke-virtual {p1}, Lcom/j256/ormlite/stmt/Where;->and()Lcom/j256/ormlite/stmt/Where;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "uniqueHealthId"

    invoke-virtual {p1, p3, p2}, Lcom/j256/ormlite/stmt/Where;->like(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    :goto_2
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x9e6cf20 -> :sswitch_5
        0x10917 -> :sswitch_4
        0x24728b -> :sswitch_3
        0x7c7f64e -> :sswitch_2
        0x550d33d6 -> :sswitch_1
        0x58802d86 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public addImmunisationToInventory(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    if-eqz p1, :cond_24

    .line 565
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_24

    const-string v0, "null"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_2

    .line 568
    :cond_0
    invoke-virtual {p0, p1}, Lcom/argusoft/sewa/android/app/core/impl/RoutineImmunisationServiceImpl;->getRiInventoryBySessionId(Ljava/lang/String;)Lcom/argusoft/sewa/android/app/model/RISessionInventoryBean;

    move-result-object p1

    if-nez p1, :cond_1

    return-void

    .line 573
    :cond_1
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, -0x1

    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v0, "DPT_BOOSTER_2"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_2

    goto/16 :goto_0

    :cond_2
    const/16 v2, 0x21

    goto/16 :goto_0

    :sswitch_1
    const-string v0, "TD_BOOSTER"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_3

    goto/16 :goto_0

    :cond_3
    const/16 v2, 0x20

    goto/16 :goto_0

    :sswitch_2
    const-string v0, "DPT_BOOSTER"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_4

    goto/16 :goto_0

    :cond_4
    const/16 v2, 0x1f

    goto/16 :goto_0

    :sswitch_3
    const-string v0, "F_IPV_3"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_5

    goto/16 :goto_0

    :cond_5
    const/16 v2, 0x1e

    goto/16 :goto_0

    :sswitch_4
    const-string v0, "ROTA_VIRUS_3"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_6

    goto/16 :goto_0

    :cond_6
    const/16 v2, 0x1d

    goto/16 :goto_0

    :sswitch_5
    const-string v0, "ROTA_VIRUS_2"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_7

    goto/16 :goto_0

    :cond_7
    const/16 v2, 0x1c

    goto/16 :goto_0

    :sswitch_6
    const-string v0, "ROTA_VIRUS_1"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_8

    goto/16 :goto_0

    :cond_8
    const/16 v2, 0x1b

    goto/16 :goto_0

    :sswitch_7
    const-string v0, "TD_16"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_9

    goto/16 :goto_0

    :cond_9
    const/16 v2, 0x1a

    goto/16 :goto_0

    :sswitch_8
    const-string v0, "TD_10"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_a

    goto/16 :goto_0

    :cond_a
    const/16 v2, 0x19

    goto/16 :goto_0

    :sswitch_9
    const-string v0, "PCV_2"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_b

    goto/16 :goto_0

    :cond_b
    const/16 v2, 0x18

    goto/16 :goto_0

    :sswitch_a
    const-string v0, "PCV_1"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_c

    goto/16 :goto_0

    :cond_c
    const/16 v2, 0x17

    goto/16 :goto_0

    :sswitch_b
    const-string v0, "OPV_3"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_d

    goto/16 :goto_0

    :cond_d
    const/16 v2, 0x16

    goto/16 :goto_0

    :sswitch_c
    const-string v0, "OPV_2"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_e

    goto/16 :goto_0

    :cond_e
    const/16 v2, 0x15

    goto/16 :goto_0

    :sswitch_d
    const-string v0, "OPV_1"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_f

    goto/16 :goto_0

    :cond_f
    const/16 v2, 0x14

    goto/16 :goto_0

    :sswitch_e
    const-string v0, "OPV_0"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_10

    goto/16 :goto_0

    :cond_10
    const/16 v2, 0x13

    goto/16 :goto_0

    :sswitch_f
    const-string v0, "DPT_3"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_11

    goto/16 :goto_0

    :cond_11
    const/16 v2, 0x12

    goto/16 :goto_0

    :sswitch_10
    const-string v0, "DPT_2"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_12

    goto/16 :goto_0

    :cond_12
    const/16 v2, 0x11

    goto/16 :goto_0

    :sswitch_11
    const-string v0, "DPT_1"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_13

    goto/16 :goto_0

    :cond_13
    const/16 v2, 0x10

    goto/16 :goto_0

    :sswitch_12
    const-string v0, "MEASLES_RUBELLA_2"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_14

    goto/16 :goto_0

    :cond_14
    const/16 v2, 0xf

    goto/16 :goto_0

    :sswitch_13
    const-string v0, "MEASLES_RUBELLA_1"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_15

    goto/16 :goto_0

    :cond_15
    const/16 v2, 0xe

    goto/16 :goto_0

    :sswitch_14
    const-string v0, "PENTA_3"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_16

    goto/16 :goto_0

    :cond_16
    const/16 v2, 0xd

    goto/16 :goto_0

    :sswitch_15
    const-string v0, "PENTA_2"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_17

    goto/16 :goto_0

    :cond_17
    const/16 v2, 0xc

    goto/16 :goto_0

    :sswitch_16
    const-string v0, "PENTA_1"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_18

    goto/16 :goto_0

    :cond_18
    const/16 v2, 0xb

    goto/16 :goto_0

    :sswitch_17
    const-string v0, "PCV_BOOSTER"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_19

    goto/16 :goto_0

    :cond_19
    const/16 v2, 0xa

    goto/16 :goto_0

    :sswitch_18
    const-string v0, "TD2"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1a

    goto/16 :goto_0

    :cond_1a
    const/16 v2, 0x9

    goto/16 :goto_0

    :sswitch_19
    const-string v0, "TD1"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1b

    goto/16 :goto_0

    :cond_1b
    const/16 v2, 0x8

    goto/16 :goto_0

    :sswitch_1a
    const-string v0, "BCG"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1c

    goto :goto_0

    :cond_1c
    const/4 v2, 0x7

    goto :goto_0

    :sswitch_1b
    const-string v0, "HEPATITIS_B_0"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1d

    goto :goto_0

    :cond_1d
    const/4 v2, 0x6

    goto :goto_0

    :sswitch_1c
    const-string v0, "OPV_BOOSTER"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1e

    goto :goto_0

    :cond_1e
    const/4 v2, 0x5

    goto :goto_0

    :sswitch_1d
    const-string v0, "MEASLES_2"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1f

    goto :goto_0

    :cond_1f
    const/4 v2, 0x4

    goto :goto_0

    :sswitch_1e
    const-string v0, "MEASLES_1"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_20

    goto :goto_0

    :cond_20
    const/4 v2, 0x3

    goto :goto_0

    :sswitch_1f
    const-string v0, "F_IPV_2_05"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_21

    goto :goto_0

    :cond_21
    const/4 v2, 0x2

    goto :goto_0

    :sswitch_20
    const-string v0, "F_IPV_2_01"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_22

    goto :goto_0

    :cond_22
    const/4 v2, 0x1

    goto :goto_0

    :sswitch_21
    const-string v0, "F_IPV_1_01"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_23

    goto :goto_0

    :cond_23
    const/4 v2, 0x0

    :goto_0
    packed-switch v2, :pswitch_data_0

    goto/16 :goto_1

    .line 627
    :pswitch_0
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/model/RISessionInventoryBean;->getRotaUsed()Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    add-int/2addr p2, v1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/argusoft/sewa/android/app/model/RISessionInventoryBean;->setRotaUsed(Ljava/lang/Integer;)V

    goto/16 :goto_1

    .line 588
    :pswitch_1
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/model/RISessionInventoryBean;->getDptUsed()Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    add-int/2addr p2, v1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/argusoft/sewa/android/app/model/RISessionInventoryBean;->setDptUsed(Ljava/lang/Integer;)V

    goto/16 :goto_1

    .line 600
    :pswitch_2
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/model/RISessionInventoryBean;->getPentaUsed()Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    add-int/2addr p2, v1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/argusoft/sewa/android/app/model/RISessionInventoryBean;->setPentaUsed(Ljava/lang/Integer;)V

    goto/16 :goto_1

    .line 611
    :pswitch_3
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/model/RISessionInventoryBean;->getPcvUsed()Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    add-int/2addr p2, v1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/argusoft/sewa/android/app/model/RISessionInventoryBean;->setPcvUsed(Ljava/lang/Integer;)V

    goto :goto_1

    .line 595
    :pswitch_4
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/model/RISessionInventoryBean;->getTdUsed()Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    add-int/2addr p2, v1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/argusoft/sewa/android/app/model/RISessionInventoryBean;->setTdUsed(Ljava/lang/Integer;)V

    goto :goto_1

    .line 575
    :pswitch_5
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/model/RISessionInventoryBean;->getBcgUsed()Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    add-int/2addr p2, v1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/argusoft/sewa/android/app/model/RISessionInventoryBean;->setBcgUsed(Ljava/lang/Integer;)V

    goto :goto_1

    .line 630
    :pswitch_6
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/model/RISessionInventoryBean;->getHepUsed()Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    add-int/2addr p2, v1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/argusoft/sewa/android/app/model/RISessionInventoryBean;->setHepUsed(Ljava/lang/Integer;)V

    goto :goto_1

    .line 622
    :pswitch_7
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/model/RISessionInventoryBean;->getOpvUsed()Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    add-int/2addr p2, v1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/argusoft/sewa/android/app/model/RISessionInventoryBean;->setOpvUsed(Ljava/lang/Integer;)V

    goto :goto_1

    .line 581
    :pswitch_8
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/model/RISessionInventoryBean;->getMrUsed()Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    add-int/2addr p2, v1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/argusoft/sewa/android/app/model/RISessionInventoryBean;->setMrUsed(Ljava/lang/Integer;)V

    goto :goto_1

    .line 606
    :pswitch_9
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/model/RISessionInventoryBean;->getFipvUsed()Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    add-int/2addr p2, v1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/argusoft/sewa/android/app/model/RISessionInventoryBean;->setFipvUsed(Ljava/lang/Integer;)V

    .line 635
    :goto_1
    :try_start_0
    iget-object p2, p0, Lcom/argusoft/sewa/android/app/core/impl/RoutineImmunisationServiceImpl;->inventoryBeanDao:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {p2, p1}, Lcom/j256/ormlite/dao/Dao;->update(Ljava/lang/Object;)I
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    .line 637
    const-string p2, "RIServiceImpl"

    invoke-virtual {p1}, Ljava/sql/SQLException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_24
    :goto_2
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x6f4a6128 -> :sswitch_21
        -0x6f49ecc9 -> :sswitch_20
        -0x6f49ecc5 -> :sswitch_1f
        -0x6752a25e -> :sswitch_1e
        -0x6752a25d -> :sswitch_1d
        -0x2c422c3a -> :sswitch_1c
        -0x27a1c3d1 -> :sswitch_1b
        0x10026 -> :sswitch_1a
        0x143c1 -> :sswitch_19
        0x143c2 -> :sswitch_18
        0xe7c7f4 -> :sswitch_17
        0x2233f58 -> :sswitch_16
        0x2233f59 -> :sswitch_15
        0x2233f5a -> :sswitch_14
        0x351009e -> :sswitch_13
        0x351009f -> :sswitch_12
        0x3e3e2fa -> :sswitch_11
        0x3e3e2fb -> :sswitch_10
        0x3e3e2fc -> :sswitch_f
        0x47eed06 -> :sswitch_e
        0x47eed07 -> :sswitch_d
        0x47eed08 -> :sswitch_c
        0x47eed09 -> :sswitch_b
        0x4871bb5 -> :sswitch_a
        0x4871bb6 -> :sswitch_9
        0x4c00a4e -> :sswitch_8
        0x4c00a54 -> :sswitch_7
        0xa18317a -> :sswitch_6
        0xa18317b -> :sswitch_5
        0xa18317c -> :sswitch_4
        0x1d3af6ca -> :sswitch_3
        0x45614779 -> :sswitch_2
        0x4580a0a1 -> :sswitch_1
        0x722d58ec -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_8
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_8
        :pswitch_8
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_3
        :pswitch_3
        :pswitch_4
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_9
        :pswitch_1
        :pswitch_4
        :pswitch_1
    .end packed-switch
.end method

.method public checkImmunisationStockAvailable(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    .line 474
    invoke-virtual {p0, p1}, Lcom/argusoft/sewa/android/app/core/impl/RoutineImmunisationServiceImpl;->getRiInventoryBySessionId(Ljava/lang/String;)Lcom/argusoft/sewa/android/app/model/RISessionInventoryBean;

    move-result-object p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 478
    :cond_0
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v2, 0x19

    const/16 v3, 0x14

    const/4 v4, 0x5

    const/16 v5, 0xa

    const/4 v6, -0x1

    sparse-switch v1, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v1, "DPT_BOOSTER_2"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1

    goto/16 :goto_0

    :cond_1
    const/16 v6, 0x21

    goto/16 :goto_0

    :sswitch_1
    const-string v1, "TD_BOOSTER"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_2

    goto/16 :goto_0

    :cond_2
    const/16 v6, 0x20

    goto/16 :goto_0

    :sswitch_2
    const-string v1, "DPT_BOOSTER"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_3

    goto/16 :goto_0

    :cond_3
    const/16 v6, 0x1f

    goto/16 :goto_0

    :sswitch_3
    const-string v1, "F_IPV_3"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_4

    goto/16 :goto_0

    :cond_4
    const/16 v6, 0x1e

    goto/16 :goto_0

    :sswitch_4
    const-string v1, "ROTA_VIRUS_3"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_5

    goto/16 :goto_0

    :cond_5
    const/16 v6, 0x1d

    goto/16 :goto_0

    :sswitch_5
    const-string v1, "ROTA_VIRUS_2"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_6

    goto/16 :goto_0

    :cond_6
    const/16 v6, 0x1c

    goto/16 :goto_0

    :sswitch_6
    const-string v1, "ROTA_VIRUS_1"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_7

    goto/16 :goto_0

    :cond_7
    const/16 v6, 0x1b

    goto/16 :goto_0

    :sswitch_7
    const-string v1, "TD_16"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_8

    goto/16 :goto_0

    :cond_8
    const/16 v6, 0x1a

    goto/16 :goto_0

    :sswitch_8
    const-string v1, "TD_10"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_9

    goto/16 :goto_0

    :cond_9
    const/16 v6, 0x19

    goto/16 :goto_0

    :sswitch_9
    const-string v1, "PCV_2"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_a

    goto/16 :goto_0

    :cond_a
    const/16 v6, 0x18

    goto/16 :goto_0

    :sswitch_a
    const-string v1, "PCV_1"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_b

    goto/16 :goto_0

    :cond_b
    const/16 v6, 0x17

    goto/16 :goto_0

    :sswitch_b
    const-string v1, "OPV_3"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_c

    goto/16 :goto_0

    :cond_c
    const/16 v6, 0x16

    goto/16 :goto_0

    :sswitch_c
    const-string v1, "OPV_2"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_d

    goto/16 :goto_0

    :cond_d
    const/16 v6, 0x15

    goto/16 :goto_0

    :sswitch_d
    const-string v1, "OPV_1"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_e

    goto/16 :goto_0

    :cond_e
    const/16 v6, 0x14

    goto/16 :goto_0

    :sswitch_e
    const-string v1, "OPV_0"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_f

    goto/16 :goto_0

    :cond_f
    const/16 v6, 0x13

    goto/16 :goto_0

    :sswitch_f
    const-string v1, "DPT_3"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_10

    goto/16 :goto_0

    :cond_10
    const/16 v6, 0x12

    goto/16 :goto_0

    :sswitch_10
    const-string v1, "DPT_2"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_11

    goto/16 :goto_0

    :cond_11
    const/16 v6, 0x11

    goto/16 :goto_0

    :sswitch_11
    const-string v1, "DPT_1"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_12

    goto/16 :goto_0

    :cond_12
    const/16 v6, 0x10

    goto/16 :goto_0

    :sswitch_12
    const-string v1, "MEASLES_RUBELLA_2"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_13

    goto/16 :goto_0

    :cond_13
    const/16 v6, 0xf

    goto/16 :goto_0

    :sswitch_13
    const-string v1, "MEASLES_RUBELLA_1"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_14

    goto/16 :goto_0

    :cond_14
    const/16 v6, 0xe

    goto/16 :goto_0

    :sswitch_14
    const-string v1, "PENTA_3"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_15

    goto/16 :goto_0

    :cond_15
    const/16 v6, 0xd

    goto/16 :goto_0

    :sswitch_15
    const-string v1, "PENTA_2"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_16

    goto/16 :goto_0

    :cond_16
    const/16 v6, 0xc

    goto/16 :goto_0

    :sswitch_16
    const-string v1, "PENTA_1"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_17

    goto/16 :goto_0

    :cond_17
    const/16 v6, 0xb

    goto/16 :goto_0

    :sswitch_17
    const-string v1, "PCV_BOOSTER"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_18

    goto/16 :goto_0

    :cond_18
    const/16 v6, 0xa

    goto/16 :goto_0

    :sswitch_18
    const-string v1, "TD2"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_19

    goto/16 :goto_0

    :cond_19
    const/16 v6, 0x9

    goto/16 :goto_0

    :sswitch_19
    const-string v1, "TD1"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1a

    goto/16 :goto_0

    :cond_1a
    const/16 v6, 0x8

    goto/16 :goto_0

    :sswitch_1a
    const-string v1, "BCG"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1b

    goto :goto_0

    :cond_1b
    const/4 v6, 0x7

    goto :goto_0

    :sswitch_1b
    const-string v1, "HEPATITIS_B_0"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1c

    goto :goto_0

    :cond_1c
    const/4 v6, 0x6

    goto :goto_0

    :sswitch_1c
    const-string v1, "OPV_BOOSTER"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1d

    goto :goto_0

    :cond_1d
    const/4 v6, 0x5

    goto :goto_0

    :sswitch_1d
    const-string v1, "MEASLES_2"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1e

    goto :goto_0

    :cond_1e
    const/4 v6, 0x4

    goto :goto_0

    :sswitch_1e
    const-string v1, "MEASLES_1"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1f

    goto :goto_0

    :cond_1f
    const/4 v6, 0x3

    goto :goto_0

    :sswitch_1f
    const-string v1, "F_IPV_2_05"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_20

    goto :goto_0

    :cond_20
    const/4 v6, 0x2

    goto :goto_0

    :sswitch_20
    const-string v1, "F_IPV_2_01"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_21

    goto :goto_0

    :cond_21
    const/4 v6, 0x1

    goto :goto_0

    :sswitch_21
    const-string v1, "F_IPV_1_01"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_22

    goto :goto_0

    :cond_22
    const/4 v6, 0x0

    :goto_0
    const-string p2, "Vaccine not in stock"

    packed-switch v6, :pswitch_data_0

    goto/16 :goto_1

    .line 550
    :pswitch_0
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/model/RISessionInventoryBean;->getRotaUsed()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/model/RISessionInventoryBean;->getRotaNew()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/model/RISessionInventoryBean;->getRotaOpen()Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    add-int/2addr v2, p1

    mul-int/lit8 v2, v2, 0x5

    if-lt v1, v2, :cond_23

    return-object p2

    .line 497
    :pswitch_1
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/model/RISessionInventoryBean;->getDptUsed()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/model/RISessionInventoryBean;->getDptNew()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/model/RISessionInventoryBean;->getDptOpen()Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    add-int/2addr v2, p1

    mul-int/lit8 v2, v2, 0xa

    if-lt v1, v2, :cond_23

    return-object p2

    .line 513
    :pswitch_2
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/model/RISessionInventoryBean;->getPentaUsed()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/model/RISessionInventoryBean;->getPentaNew()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/model/RISessionInventoryBean;->getPentaOpen()Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    add-int/2addr v2, p1

    mul-int/lit8 v2, v2, 0xa

    if-lt v1, v2, :cond_23

    return-object p2

    .line 528
    :pswitch_3
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/model/RISessionInventoryBean;->getPcvUsed()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/model/RISessionInventoryBean;->getPcvNew()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/model/RISessionInventoryBean;->getPcvOpen()Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    add-int/2addr v2, p1

    mul-int/lit8 v2, v2, 0x5

    if-lt v1, v2, :cond_23

    return-object p2

    .line 506
    :pswitch_4
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/model/RISessionInventoryBean;->getTdUsed()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/model/RISessionInventoryBean;->getTdNew()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/model/RISessionInventoryBean;->getTdOpen()Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    add-int/2addr v2, p1

    mul-int/lit8 v2, v2, 0xa

    if-lt v1, v2, :cond_23

    return-object p2

    .line 480
    :pswitch_5
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/model/RISessionInventoryBean;->getBcgUsed()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/model/RISessionInventoryBean;->getBcgNew()Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    mul-int/lit8 p1, p1, 0xa

    if-lt v1, p1, :cond_23

    return-object p2

    .line 555
    :pswitch_6
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/model/RISessionInventoryBean;->getHepUsed()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/model/RISessionInventoryBean;->getHepNew()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/model/RISessionInventoryBean;->getHepOpen()Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    add-int/2addr v2, p1

    mul-int/lit8 v2, v2, 0xa

    if-lt v1, v2, :cond_23

    return-object p2

    .line 543
    :pswitch_7
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/model/RISessionInventoryBean;->getOpvUsed()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/model/RISessionInventoryBean;->getOpvNew()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/model/RISessionInventoryBean;->getOpvOpen()Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    add-int/2addr v2, p1

    mul-int/lit8 v2, v2, 0x14

    if-lt v1, v2, :cond_23

    return-object p2

    .line 488
    :pswitch_8
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/model/RISessionInventoryBean;->getMrUsed()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/model/RISessionInventoryBean;->getMrNew()Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    mul-int/lit8 p1, p1, 0x5

    if-lt v1, p1, :cond_23

    return-object p2

    .line 521
    :pswitch_9
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/model/RISessionInventoryBean;->getFipvUsed()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/model/RISessionInventoryBean;->getFipvNew()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/model/RISessionInventoryBean;->getFipvOpen()Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    add-int/2addr v3, p1

    mul-int/lit8 v3, v3, 0x19

    if-lt v1, v3, :cond_23

    return-object p2

    :cond_23
    :goto_1
    return-object v0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x6f4a6128 -> :sswitch_21
        -0x6f49ecc9 -> :sswitch_20
        -0x6f49ecc5 -> :sswitch_1f
        -0x6752a25e -> :sswitch_1e
        -0x6752a25d -> :sswitch_1d
        -0x2c422c3a -> :sswitch_1c
        -0x27a1c3d1 -> :sswitch_1b
        0x10026 -> :sswitch_1a
        0x143c1 -> :sswitch_19
        0x143c2 -> :sswitch_18
        0xe7c7f4 -> :sswitch_17
        0x2233f58 -> :sswitch_16
        0x2233f59 -> :sswitch_15
        0x2233f5a -> :sswitch_14
        0x351009e -> :sswitch_13
        0x351009f -> :sswitch_12
        0x3e3e2fa -> :sswitch_11
        0x3e3e2fb -> :sswitch_10
        0x3e3e2fc -> :sswitch_f
        0x47eed06 -> :sswitch_e
        0x47eed07 -> :sswitch_d
        0x47eed08 -> :sswitch_c
        0x47eed09 -> :sswitch_b
        0x4871bb5 -> :sswitch_a
        0x4871bb6 -> :sswitch_9
        0x4c00a4e -> :sswitch_8
        0x4c00a54 -> :sswitch_7
        0xa18317a -> :sswitch_6
        0xa18317b -> :sswitch_5
        0xa18317c -> :sswitch_4
        0x1d3af6ca -> :sswitch_3
        0x45614779 -> :sswitch_2
        0x4580a0a1 -> :sswitch_1
        0x722d58ec -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_8
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_8
        :pswitch_8
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_3
        :pswitch_3
        :pswitch_4
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_9
        :pswitch_1
        :pswitch_4
        :pswitch_1
    .end packed-switch
.end method

.method public getRiInventoryBySessionId(Ljava/lang/String;)Lcom/argusoft/sewa/android/app/model/RISessionInventoryBean;
    .locals 2

    .line 353
    :try_start_0
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/core/impl/RoutineImmunisationServiceImpl;->inventoryBeanDao:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v0}, Lcom/j256/ormlite/dao/Dao;->queryBuilder()Lcom/j256/ormlite/stmt/QueryBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/j256/ormlite/stmt/QueryBuilder;->where()Lcom/j256/ormlite/stmt/Where;

    move-result-object v0

    const-string v1, "sessionId"

    invoke-virtual {v0, v1, p1}, Lcom/j256/ormlite/stmt/Where;->eq(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    move-result-object p1

    invoke-virtual {p1}, Lcom/j256/ormlite/stmt/Where;->queryForFirst()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/argusoft/sewa/android/app/model/RISessionInventoryBean;
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 355
    const-string v0, "RIServiceImpl"

    invoke-virtual {p1}, Ljava/sql/SQLException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p1, 0x0

    return-object p1
.end method

.method public removeImmunisationFromInventory(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    if-eqz p1, :cond_24

    .line 642
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_24

    const-string v0, "null"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_2

    .line 645
    :cond_0
    invoke-virtual {p0, p1}, Lcom/argusoft/sewa/android/app/core/impl/RoutineImmunisationServiceImpl;->getRiInventoryBySessionId(Ljava/lang/String;)Lcom/argusoft/sewa/android/app/model/RISessionInventoryBean;

    move-result-object p1

    if-nez p1, :cond_1

    return-void

    .line 650
    :cond_1
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, -0x1

    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v0, "DPT_BOOSTER_2"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_2

    goto/16 :goto_0

    :cond_2
    const/16 v2, 0x21

    goto/16 :goto_0

    :sswitch_1
    const-string v0, "TD_BOOSTER"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_3

    goto/16 :goto_0

    :cond_3
    const/16 v2, 0x20

    goto/16 :goto_0

    :sswitch_2
    const-string v0, "DPT_BOOSTER"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_4

    goto/16 :goto_0

    :cond_4
    const/16 v2, 0x1f

    goto/16 :goto_0

    :sswitch_3
    const-string v0, "F_IPV_3"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_5

    goto/16 :goto_0

    :cond_5
    const/16 v2, 0x1e

    goto/16 :goto_0

    :sswitch_4
    const-string v0, "ROTA_VIRUS_3"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_6

    goto/16 :goto_0

    :cond_6
    const/16 v2, 0x1d

    goto/16 :goto_0

    :sswitch_5
    const-string v0, "ROTA_VIRUS_2"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_7

    goto/16 :goto_0

    :cond_7
    const/16 v2, 0x1c

    goto/16 :goto_0

    :sswitch_6
    const-string v0, "ROTA_VIRUS_1"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_8

    goto/16 :goto_0

    :cond_8
    const/16 v2, 0x1b

    goto/16 :goto_0

    :sswitch_7
    const-string v0, "TD_16"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_9

    goto/16 :goto_0

    :cond_9
    const/16 v2, 0x1a

    goto/16 :goto_0

    :sswitch_8
    const-string v0, "TD_10"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_a

    goto/16 :goto_0

    :cond_a
    const/16 v2, 0x19

    goto/16 :goto_0

    :sswitch_9
    const-string v0, "PCV_2"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_b

    goto/16 :goto_0

    :cond_b
    const/16 v2, 0x18

    goto/16 :goto_0

    :sswitch_a
    const-string v0, "PCV_1"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_c

    goto/16 :goto_0

    :cond_c
    const/16 v2, 0x17

    goto/16 :goto_0

    :sswitch_b
    const-string v0, "OPV_3"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_d

    goto/16 :goto_0

    :cond_d
    const/16 v2, 0x16

    goto/16 :goto_0

    :sswitch_c
    const-string v0, "OPV_2"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_e

    goto/16 :goto_0

    :cond_e
    const/16 v2, 0x15

    goto/16 :goto_0

    :sswitch_d
    const-string v0, "OPV_1"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_f

    goto/16 :goto_0

    :cond_f
    const/16 v2, 0x14

    goto/16 :goto_0

    :sswitch_e
    const-string v0, "OPV_0"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_10

    goto/16 :goto_0

    :cond_10
    const/16 v2, 0x13

    goto/16 :goto_0

    :sswitch_f
    const-string v0, "DPT_3"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_11

    goto/16 :goto_0

    :cond_11
    const/16 v2, 0x12

    goto/16 :goto_0

    :sswitch_10
    const-string v0, "DPT_2"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_12

    goto/16 :goto_0

    :cond_12
    const/16 v2, 0x11

    goto/16 :goto_0

    :sswitch_11
    const-string v0, "DPT_1"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_13

    goto/16 :goto_0

    :cond_13
    const/16 v2, 0x10

    goto/16 :goto_0

    :sswitch_12
    const-string v0, "MEASLES_RUBELLA_2"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_14

    goto/16 :goto_0

    :cond_14
    const/16 v2, 0xf

    goto/16 :goto_0

    :sswitch_13
    const-string v0, "MEASLES_RUBELLA_1"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_15

    goto/16 :goto_0

    :cond_15
    const/16 v2, 0xe

    goto/16 :goto_0

    :sswitch_14
    const-string v0, "PENTA_3"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_16

    goto/16 :goto_0

    :cond_16
    const/16 v2, 0xd

    goto/16 :goto_0

    :sswitch_15
    const-string v0, "PENTA_2"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_17

    goto/16 :goto_0

    :cond_17
    const/16 v2, 0xc

    goto/16 :goto_0

    :sswitch_16
    const-string v0, "PENTA_1"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_18

    goto/16 :goto_0

    :cond_18
    const/16 v2, 0xb

    goto/16 :goto_0

    :sswitch_17
    const-string v0, "PCV_BOOSTER"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_19

    goto/16 :goto_0

    :cond_19
    const/16 v2, 0xa

    goto/16 :goto_0

    :sswitch_18
    const-string v0, "TD2"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1a

    goto/16 :goto_0

    :cond_1a
    const/16 v2, 0x9

    goto/16 :goto_0

    :sswitch_19
    const-string v0, "TD1"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1b

    goto/16 :goto_0

    :cond_1b
    const/16 v2, 0x8

    goto/16 :goto_0

    :sswitch_1a
    const-string v0, "BCG"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1c

    goto :goto_0

    :cond_1c
    const/4 v2, 0x7

    goto :goto_0

    :sswitch_1b
    const-string v0, "HEPATITIS_B_0"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1d

    goto :goto_0

    :cond_1d
    const/4 v2, 0x6

    goto :goto_0

    :sswitch_1c
    const-string v0, "OPV_BOOSTER"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1e

    goto :goto_0

    :cond_1e
    const/4 v2, 0x5

    goto :goto_0

    :sswitch_1d
    const-string v0, "MEASLES_2"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1f

    goto :goto_0

    :cond_1f
    const/4 v2, 0x4

    goto :goto_0

    :sswitch_1e
    const-string v0, "MEASLES_1"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_20

    goto :goto_0

    :cond_20
    const/4 v2, 0x3

    goto :goto_0

    :sswitch_1f
    const-string v0, "F_IPV_2_05"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_21

    goto :goto_0

    :cond_21
    const/4 v2, 0x2

    goto :goto_0

    :sswitch_20
    const-string v0, "F_IPV_2_01"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_22

    goto :goto_0

    :cond_22
    const/4 v2, 0x1

    goto :goto_0

    :sswitch_21
    const-string v0, "F_IPV_1_01"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_23

    goto :goto_0

    :cond_23
    const/4 v2, 0x0

    :goto_0
    packed-switch v2, :pswitch_data_0

    goto/16 :goto_1

    .line 704
    :pswitch_0
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/model/RISessionInventoryBean;->getRotaUsed()Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    sub-int/2addr p2, v1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/argusoft/sewa/android/app/model/RISessionInventoryBean;->setRotaUsed(Ljava/lang/Integer;)V

    goto/16 :goto_1

    .line 665
    :pswitch_1
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/model/RISessionInventoryBean;->getDptUsed()Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    sub-int/2addr p2, v1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/argusoft/sewa/android/app/model/RISessionInventoryBean;->setDptUsed(Ljava/lang/Integer;)V

    goto/16 :goto_1

    .line 677
    :pswitch_2
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/model/RISessionInventoryBean;->getPentaUsed()Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    sub-int/2addr p2, v1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/argusoft/sewa/android/app/model/RISessionInventoryBean;->setPentaUsed(Ljava/lang/Integer;)V

    goto/16 :goto_1

    .line 688
    :pswitch_3
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/model/RISessionInventoryBean;->getPcvUsed()Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    sub-int/2addr p2, v1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/argusoft/sewa/android/app/model/RISessionInventoryBean;->setPcvUsed(Ljava/lang/Integer;)V

    goto :goto_1

    .line 672
    :pswitch_4
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/model/RISessionInventoryBean;->getTdUsed()Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    sub-int/2addr p2, v1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/argusoft/sewa/android/app/model/RISessionInventoryBean;->setTdUsed(Ljava/lang/Integer;)V

    goto :goto_1

    .line 652
    :pswitch_5
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/model/RISessionInventoryBean;->getBcgUsed()Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    sub-int/2addr p2, v1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/argusoft/sewa/android/app/model/RISessionInventoryBean;->setBcgUsed(Ljava/lang/Integer;)V

    goto :goto_1

    .line 707
    :pswitch_6
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/model/RISessionInventoryBean;->getHepUsed()Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    sub-int/2addr p2, v1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/argusoft/sewa/android/app/model/RISessionInventoryBean;->setHepUsed(Ljava/lang/Integer;)V

    goto :goto_1

    .line 699
    :pswitch_7
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/model/RISessionInventoryBean;->getOpvUsed()Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    sub-int/2addr p2, v1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/argusoft/sewa/android/app/model/RISessionInventoryBean;->setOpvUsed(Ljava/lang/Integer;)V

    goto :goto_1

    .line 658
    :pswitch_8
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/model/RISessionInventoryBean;->getMrUsed()Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    sub-int/2addr p2, v1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/argusoft/sewa/android/app/model/RISessionInventoryBean;->setMrUsed(Ljava/lang/Integer;)V

    goto :goto_1

    .line 683
    :pswitch_9
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/model/RISessionInventoryBean;->getFipvUsed()Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    sub-int/2addr p2, v1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/argusoft/sewa/android/app/model/RISessionInventoryBean;->setFipvUsed(Ljava/lang/Integer;)V

    .line 712
    :goto_1
    :try_start_0
    iget-object p2, p0, Lcom/argusoft/sewa/android/app/core/impl/RoutineImmunisationServiceImpl;->inventoryBeanDao:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {p2, p1}, Lcom/j256/ormlite/dao/Dao;->update(Ljava/lang/Object;)I
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    .line 714
    const-string p2, "RIServiceImpl"

    invoke-virtual {p1}, Ljava/sql/SQLException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_24
    :goto_2
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x6f4a6128 -> :sswitch_21
        -0x6f49ecc9 -> :sswitch_20
        -0x6f49ecc5 -> :sswitch_1f
        -0x6752a25e -> :sswitch_1e
        -0x6752a25d -> :sswitch_1d
        -0x2c422c3a -> :sswitch_1c
        -0x27a1c3d1 -> :sswitch_1b
        0x10026 -> :sswitch_1a
        0x143c1 -> :sswitch_19
        0x143c2 -> :sswitch_18
        0xe7c7f4 -> :sswitch_17
        0x2233f58 -> :sswitch_16
        0x2233f59 -> :sswitch_15
        0x2233f5a -> :sswitch_14
        0x351009e -> :sswitch_13
        0x351009f -> :sswitch_12
        0x3e3e2fa -> :sswitch_11
        0x3e3e2fb -> :sswitch_10
        0x3e3e2fc -> :sswitch_f
        0x47eed06 -> :sswitch_e
        0x47eed07 -> :sswitch_d
        0x47eed08 -> :sswitch_c
        0x47eed09 -> :sswitch_b
        0x4871bb5 -> :sswitch_a
        0x4871bb6 -> :sswitch_9
        0x4c00a4e -> :sswitch_8
        0x4c00a54 -> :sswitch_7
        0xa18317a -> :sswitch_6
        0xa18317b -> :sswitch_5
        0xa18317c -> :sswitch_4
        0x1d3af6ca -> :sswitch_3
        0x45614779 -> :sswitch_2
        0x4580a0a1 -> :sswitch_1
        0x722d58ec -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_8
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_8
        :pswitch_8
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_3
        :pswitch_3
        :pswitch_4
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_9
        :pswitch_1
        :pswitch_4
        :pswitch_1
    .end packed-switch
.end method

.method public retrieveChildrenForRoutineImmunisation(Ljava/lang/CharSequence;JJLjava/util/LinkedHashMap;Ljava/lang/String;Ljava/util/Date;Ljava/util/List;Ljava/lang/Boolean;)Ljava/util/List;
    .locals 17
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

    move-object/from16 v1, p0

    move-object/from16 v0, p6

    move-object/from16 v2, p7

    move-object/from16 v3, p8

    move-object/from16 v4, p9

    .line 116
    const-string v5, "healthIdNumber"

    const-string v6, "healthId"

    const-string v7, "familyId"

    const-string v8, "%"

    const-string v9, "dob"

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 118
    :try_start_0
    iget-object v12, v1, Lcom/argusoft/sewa/android/app/core/impl/RoutineImmunisationServiceImpl;->familyBeanDao:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v12}, Lcom/j256/ormlite/dao/Dao;->queryBuilder()Lcom/j256/ormlite/stmt/QueryBuilder;

    move-result-object v12

    filled-new-array {v7}, [Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcom/j256/ormlite/stmt/QueryBuilder;->selectColumns([Ljava/lang/String;)Lcom/j256/ormlite/stmt/QueryBuilder;

    move-result-object v12

    invoke-virtual {v12}, Lcom/j256/ormlite/stmt/QueryBuilder;->where()Lcom/j256/ormlite/stmt/Where;

    move-result-object v12
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_4

    .line 120
    const-string v13, "state"

    if-eqz v4, :cond_0

    .line 121
    :try_start_1
    sget-object v15, Lcom/argusoft/sewa/android/app/constants/FhsConstants;->FHS_INACTIVE_CRITERIA_FAMILY_STATES:Ljava/util/List;

    invoke-virtual {v12, v13, v15}, Lcom/j256/ormlite/stmt/Where;->notIn(Ljava/lang/String;Ljava/lang/Iterable;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v15

    const-string v11, "locationId"

    .line 123
    invoke-virtual {v12, v11, v4}, Lcom/j256/ormlite/stmt/Where;->in(Ljava/lang/String;Ljava/lang/Iterable;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v11

    const-string v14, "areaId"

    .line 124
    invoke-virtual {v12, v14, v4}, Lcom/j256/ormlite/stmt/Where;->in(Ljava/lang/String;Ljava/lang/Iterable;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v4
    :try_end_1
    .catch Ljava/sql/SQLException; {:try_start_1 .. :try_end_1} :catch_0

    move-object/from16 v16, v10

    const/4 v14, 0x0

    :try_start_2
    new-array v10, v14, [Lcom/j256/ormlite/stmt/Where;

    .line 122
    invoke-virtual {v12, v11, v4, v10}, Lcom/j256/ormlite/stmt/Where;->or(Lcom/j256/ormlite/stmt/Where;Lcom/j256/ormlite/stmt/Where;[Lcom/j256/ormlite/stmt/Where;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v4

    new-array v10, v14, [Lcom/j256/ormlite/stmt/Where;

    .line 121
    invoke-virtual {v12, v15, v4, v10}, Lcom/j256/ormlite/stmt/Where;->and(Lcom/j256/ormlite/stmt/Where;Lcom/j256/ormlite/stmt/Where;[Lcom/j256/ormlite/stmt/Where;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v4

    .line 125
    invoke-virtual {v4}, Lcom/j256/ormlite/stmt/Where;->query()Ljava/util/List;

    move-result-object v4

    goto :goto_0

    :catch_0
    move-exception v0

    move-object/from16 v16, v10

    goto/16 :goto_7

    :cond_0
    move-object/from16 v16, v10

    .line 127
    sget-object v4, Lcom/argusoft/sewa/android/app/constants/FhsConstants;->FHS_INACTIVE_CRITERIA_FAMILY_STATES:Ljava/util/List;

    invoke-virtual {v12, v13, v4}, Lcom/j256/ormlite/stmt/Where;->notIn(Ljava/lang/String;Ljava/lang/Iterable;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v4

    invoke-virtual {v4}, Lcom/j256/ormlite/stmt/Where;->query()Ljava/util/List;

    move-result-object v4

    :goto_0
    if-eqz v4, :cond_8

    .line 129
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v10

    if-eqz v10, :cond_1

    goto/16 :goto_6

    .line 132
    :cond_1
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 133
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/argusoft/sewa/android/app/model/FamilyBean;

    .line 134
    invoke-virtual {v11}, Lcom/argusoft/sewa/android/app/model/FamilyBean;->getFamilyId()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v10, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 136
    :cond_2
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v4

    .line 137
    invoke-static {v4}, Lcom/argusoft/sewa/android/app/util/UtilBean;->clearTimeFromDate(Ljava/util/Calendar;)Ljava/util/Calendar;

    const/4 v11, -0x5

    const/4 v12, 0x1

    .line 138
    invoke-virtual {v4, v12, v11}, Ljava/util/Calendar;->add(II)V

    .line 139
    invoke-virtual {v4}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v11

    const/4 v14, -0x2

    .line 140
    invoke-virtual {v4, v12, v14}, Ljava/util/Calendar;->add(II)V

    .line 141
    invoke-virtual {v4}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v4

    .line 142
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 143
    iget-object v14, v1, Lcom/argusoft/sewa/android/app/core/impl/RoutineImmunisationServiceImpl;->memberBeanDao:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v14}, Lcom/j256/ormlite/dao/Dao;->queryBuilder()Lcom/j256/ormlite/stmt/QueryBuilder;

    move-result-object v14

    invoke-static/range {p2 .. p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    invoke-virtual {v14, v15}, Lcom/j256/ormlite/stmt/QueryBuilder;->limit(Ljava/lang/Long;)Lcom/j256/ormlite/stmt/QueryBuilder;

    move-result-object v14

    invoke-static/range {p4 .. p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    invoke-virtual {v14, v15}, Lcom/j256/ormlite/stmt/QueryBuilder;->offset(Ljava/lang/Long;)Lcom/j256/ormlite/stmt/QueryBuilder;

    move-result-object v14

    const/4 v15, 0x0

    invoke-virtual {v14, v9, v15}, Lcom/j256/ormlite/stmt/QueryBuilder;->orderBy(Ljava/lang/String;Z)Lcom/j256/ormlite/stmt/QueryBuilder;

    move-result-object v14

    invoke-virtual {v14}, Lcom/j256/ormlite/stmt/QueryBuilder;->where()Lcom/j256/ormlite/stmt/Where;

    move-result-object v14

    .line 145
    invoke-virtual/range {p10 .. p10}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v15

    if-nez v15, :cond_3

    .line 147
    invoke-virtual {v14, v7, v10}, Lcom/j256/ormlite/stmt/Where;->in(Ljava/lang/String;Ljava/lang/Iterable;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v4

    sget-object v7, Lcom/argusoft/sewa/android/app/constants/FhsConstants;->FHS_INACTIVE_CRITERIA_MEMBER_STATES:Ljava/util/List;

    .line 148
    invoke-virtual {v14, v13, v7}, Lcom/j256/ormlite/stmt/Where;->notIn(Ljava/lang/String;Ljava/lang/Iterable;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v7

    new-array v10, v12, [Lcom/j256/ormlite/stmt/Where;

    .line 149
    invoke-virtual {v14, v9, v11}, Lcom/j256/ormlite/stmt/Where;->ge(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v9

    const/4 v11, 0x0

    aput-object v9, v10, v11

    .line 146
    invoke-virtual {v14, v4, v7, v10}, Lcom/j256/ormlite/stmt/Where;->and(Lcom/j256/ormlite/stmt/Where;Lcom/j256/ormlite/stmt/Where;[Lcom/j256/ormlite/stmt/Where;)Lcom/j256/ormlite/stmt/Where;

    goto :goto_2

    .line 153
    :cond_3
    invoke-virtual {v14, v7, v10}, Lcom/j256/ormlite/stmt/Where;->in(Ljava/lang/String;Ljava/lang/Iterable;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v7

    sget-object v10, Lcom/argusoft/sewa/android/app/constants/FhsConstants;->FHS_INACTIVE_CRITERIA_MEMBER_STATES:Ljava/util/List;

    .line 154
    invoke-virtual {v14, v13, v10}, Lcom/j256/ormlite/stmt/Where;->notIn(Ljava/lang/String;Ljava/lang/Iterable;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v10

    const/4 v13, 0x2

    new-array v13, v13, [Lcom/j256/ormlite/stmt/Where;

    .line 155
    invoke-virtual {v14, v9, v4}, Lcom/j256/ormlite/stmt/Where;->ge(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v4

    const/4 v15, 0x0

    aput-object v4, v13, v15

    .line 156
    invoke-virtual {v14, v9, v11}, Lcom/j256/ormlite/stmt/Where;->lt(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v4

    aput-object v4, v13, v12

    .line 152
    invoke-virtual {v14, v7, v10, v13}, Lcom/j256/ormlite/stmt/Where;->and(Lcom/j256/ormlite/stmt/Where;Lcom/j256/ormlite/stmt/Where;[Lcom/j256/ormlite/stmt/Where;)Lcom/j256/ormlite/stmt/Where;

    :goto_2
    if-eqz v0, :cond_4

    .line 160
    const-string v4, "isQrCodeScan"

    invoke-virtual {v0, v4}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    const-string v7, "true"

    invoke-static {v4, v7}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 161
    invoke-virtual {v14}, Lcom/j256/ormlite/stmt/Where;->and()Lcom/j256/ormlite/stmt/Where;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 162
    invoke-virtual {v0, v6}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v14, v6, v3}, Lcom/j256/ormlite/stmt/Where;->like(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 163
    invoke-virtual {v0, v5}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v14, v5, v0}, Lcom/j256/ormlite/stmt/Where;->like(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v0

    const/4 v4, 0x0

    new-array v4, v4, [Lcom/j256/ormlite/stmt/Where;

    .line 161
    invoke-virtual {v2, v3, v0, v4}, Lcom/j256/ormlite/stmt/Where;->or(Lcom/j256/ormlite/stmt/Where;Lcom/j256/ormlite/stmt/Where;[Lcom/j256/ormlite/stmt/Where;)Lcom/j256/ormlite/stmt/Where;
    :try_end_2
    .catch Ljava/sql/SQLException; {:try_start_2 .. :try_end_2} :catch_3

    goto :goto_4

    :cond_4
    if-eqz v2, :cond_6

    if-eqz p1, :cond_5

    .line 167
    :try_start_3
    invoke-interface/range {p1 .. p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0
    :try_end_3
    .catch Ljava/sql/SQLException; {:try_start_3 .. :try_end_3} :catch_1

    const/4 v4, 0x0

    :try_start_4
    invoke-direct {v1, v14, v2, v0, v4}, Lcom/argusoft/sewa/android/app/core/impl/RoutineImmunisationServiceImpl;->addSearchTypeConditionAccordingly(Lcom/j256/ormlite/stmt/Where;Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;)V

    goto :goto_3

    :catch_1
    move-exception v0

    const/4 v4, 0x0

    goto :goto_7

    :cond_5
    const/4 v4, 0x0

    :goto_3
    if-eqz v3, :cond_6

    .line 170
    invoke-direct {v1, v14, v2, v4, v3}, Lcom/argusoft/sewa/android/app/core/impl/RoutineImmunisationServiceImpl;->addSearchTypeConditionAccordingly(Lcom/j256/ormlite/stmt/Where;Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;)V

    .line 173
    :cond_6
    :goto_4
    invoke-virtual {v14}, Lcom/j256/ormlite/stmt/Where;->query()Ljava/util/List;

    move-result-object v0

    .line 174
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/argusoft/sewa/android/app/model/MemberBean;

    .line 175
    new-instance v3, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;

    invoke-direct {v3, v2}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;-><init>(Lcom/argusoft/sewa/android/app/model/MemberBean;)V
    :try_end_4
    .catch Ljava/sql/SQLException; {:try_start_4 .. :try_end_4} :catch_3

    move-object/from16 v2, v16

    :try_start_5
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_5
    .catch Ljava/sql/SQLException; {:try_start_5 .. :try_end_5} :catch_2

    move-object/from16 v16, v2

    goto :goto_5

    :catch_2
    move-exception v0

    goto :goto_8

    :cond_7
    move-object/from16 v2, v16

    goto :goto_9

    :cond_8
    :goto_6
    move-object/from16 v2, v16

    return-object v2

    :catch_3
    move-exception v0

    :goto_7
    move-object/from16 v2, v16

    goto :goto_8

    :catch_4
    move-exception v0

    move-object v2, v10

    .line 179
    :goto_8
    const-string v3, "RIServiceImpl"

    const/4 v4, 0x0

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_9
    return-object v2
.end method

.method public retrieveCountForRIServices(Ljava/lang/Integer;)Ljava/util/Map;
    .locals 24
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

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    .line 720
    const-string v2, "familyId"

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 729
    :try_start_0
    iget-object v5, v1, Lcom/argusoft/sewa/android/app/core/impl/RoutineImmunisationServiceImpl;->familyBeanDao:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v5}, Lcom/j256/ormlite/dao/Dao;->queryBuilder()Lcom/j256/ormlite/stmt/QueryBuilder;

    move-result-object v5

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/j256/ormlite/stmt/QueryBuilder;->selectColumns([Ljava/lang/String;)Lcom/j256/ormlite/stmt/QueryBuilder;

    move-result-object v5

    invoke-virtual {v5}, Lcom/j256/ormlite/stmt/QueryBuilder;->where()Lcom/j256/ormlite/stmt/Where;

    move-result-object v5
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_3

    .line 731
    const-string v6, "state"

    if-eqz v0, :cond_0

    .line 732
    :try_start_1
    sget-object v7, Lcom/argusoft/sewa/android/app/constants/FhsConstants;->FHS_INACTIVE_CRITERIA_FAMILY_STATES:Ljava/util/List;

    invoke-virtual {v5, v6, v7}, Lcom/j256/ormlite/stmt/Where;->notIn(Ljava/lang/String;Ljava/lang/Iterable;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v7

    const-string v8, "locationId"

    .line 734
    invoke-virtual {v5, v8, v0}, Lcom/j256/ormlite/stmt/Where;->eq(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v8

    const-string v9, "areaId"

    .line 735
    invoke-virtual {v5, v9, v0}, Lcom/j256/ormlite/stmt/Where;->eq(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v0

    new-array v9, v3, [Lcom/j256/ormlite/stmt/Where;

    .line 733
    invoke-virtual {v5, v8, v0, v9}, Lcom/j256/ormlite/stmt/Where;->or(Lcom/j256/ormlite/stmt/Where;Lcom/j256/ormlite/stmt/Where;[Lcom/j256/ormlite/stmt/Where;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v0

    new-array v8, v3, [Lcom/j256/ormlite/stmt/Where;

    .line 732
    invoke-virtual {v5, v7, v0, v8}, Lcom/j256/ormlite/stmt/Where;->and(Lcom/j256/ormlite/stmt/Where;Lcom/j256/ormlite/stmt/Where;[Lcom/j256/ormlite/stmt/Where;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v0

    .line 736
    invoke-virtual {v0}, Lcom/j256/ormlite/stmt/Where;->query()Ljava/util/List;

    move-result-object v0

    goto :goto_0

    .line 738
    :cond_0
    sget-object v0, Lcom/argusoft/sewa/android/app/constants/FhsConstants;->FHS_INACTIVE_CRITERIA_FAMILY_STATES:Ljava/util/List;

    invoke-virtual {v5, v6, v0}, Lcom/j256/ormlite/stmt/Where;->notIn(Ljava/lang/String;Ljava/lang/Iterable;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v0

    invoke-virtual {v0}, Lcom/j256/ormlite/stmt/Where;->query()Ljava/util/List;

    move-result-object v0

    .line 741
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_17

    .line 743
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 744
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/argusoft/sewa/android/app/model/FamilyBean;

    .line 745
    invoke-virtual {v7}, Lcom/argusoft/sewa/android/app/model/FamilyBean;->getFamilyId()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v5, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 749
    :cond_1
    iget-object v0, v1, Lcom/argusoft/sewa/android/app/core/impl/RoutineImmunisationServiceImpl;->memberBeanDao:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v0}, Lcom/j256/ormlite/dao/Dao;->queryBuilder()Lcom/j256/ormlite/stmt/QueryBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/j256/ormlite/stmt/QueryBuilder;->where()Lcom/j256/ormlite/stmt/Where;

    move-result-object v0

    .line 751
    invoke-virtual {v0, v2, v5}, Lcom/j256/ormlite/stmt/Where;->in(Ljava/lang/String;Ljava/lang/Iterable;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v2

    sget-object v5, Lcom/argusoft/sewa/android/app/constants/FhsConstants;->FHS_INACTIVE_CRITERIA_MEMBER_STATES:Ljava/util/List;

    .line 752
    invoke-virtual {v0, v6, v5}, Lcom/j256/ormlite/stmt/Where;->notIn(Ljava/lang/String;Ljava/lang/Iterable;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v5

    new-array v3, v3, [Lcom/j256/ormlite/stmt/Where;

    .line 750
    invoke-virtual {v0, v2, v5, v3}, Lcom/j256/ormlite/stmt/Where;->and(Lcom/j256/ormlite/stmt/Where;Lcom/j256/ormlite/stmt/Where;[Lcom/j256/ormlite/stmt/Where;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v0

    .line 753
    invoke-virtual {v0}, Lcom/j256/ormlite/stmt/Where;->query()Ljava/util/List;

    move-result-object v0

    .line 755
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    const/4 v3, -0x5

    const/4 v5, 0x1

    .line 756
    invoke-virtual {v2, v5, v3}, Ljava/util/Calendar;->add(II)V

    .line 757
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v3

    const/4 v6, -0x7

    .line 758
    invoke-virtual {v3, v5, v6}, Ljava/util/Calendar;->add(II)V

    .line 759
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v6

    const/16 v7, -0xa

    const/4 v8, 0x2

    .line 760
    invoke-virtual {v6, v8, v7}, Ljava/util/Calendar;->add(II)V

    .line 761
    invoke-static {v6}, Lcom/argusoft/sewa/android/app/util/UtilBean;->clearTimeFromDate(Ljava/util/Calendar;)Ljava/util/Calendar;

    .line 762
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v6

    const/4 v7, -0x6

    .line 763
    invoke-virtual {v6, v8, v7}, Ljava/util/Calendar;->add(II)V

    .line 764
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v7

    const/4 v9, -0x3

    .line 765
    invoke-virtual {v7, v5, v9}, Ljava/util/Calendar;->add(II)V

    .line 766
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v10

    const/16 v11, -0xf

    .line 767
    invoke-virtual {v10, v5, v11}, Ljava/util/Calendar;->add(II)V

    .line 768
    invoke-virtual {v10}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v11

    const/16 v12, -0x22

    .line 769
    invoke-virtual {v10, v5, v12}, Ljava/util/Calendar;->add(II)V

    .line 770
    invoke-virtual {v10}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v10

    .line 771
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v12

    .line 772
    invoke-virtual {v12, v8, v9}, Ljava/util/Calendar;->add(II)V

    .line 773
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v9

    .line 774
    invoke-static {v9}, Lcom/argusoft/sewa/android/app/util/UtilBean;->clearTimeFromDate(Ljava/util/Calendar;)Ljava/util/Calendar;

    const/4 v13, -0x1

    .line 775
    invoke-virtual {v9, v5, v13}, Ljava/util/Calendar;->add(II)V

    .line 776
    invoke-virtual {v9}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v9

    .line 777
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v14

    .line 778
    invoke-virtual {v14, v8, v13}, Ljava/util/Calendar;->add(II)V

    .line 780
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0
    :try_end_1
    .catch Ljava/sql/SQLException; {:try_start_1 .. :try_end_1} :catch_3

    move-object v8, v4

    move-object v13, v8

    move-object v15, v13

    move-object/from16 v16, v15

    move-object/from16 v17, v16

    move-object/from16 v18, v17

    :goto_2
    :try_start_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_16

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/argusoft/sewa/android/app/model/MemberBean;

    .line 781
    invoke-virtual/range {v19 .. v19}, Lcom/argusoft/sewa/android/app/model/MemberBean;->getDob()Ljava/util/Date;

    move-result-object v20
    :try_end_2
    .catch Ljava/sql/SQLException; {:try_start_2 .. :try_end_2} :catch_2

    if-eqz v20, :cond_2

    :try_start_3
    invoke-virtual/range {v19 .. v19}, Lcom/argusoft/sewa/android/app/model/MemberBean;->getDob()Ljava/util/Date;

    move-result-object v5

    move-object/from16 v20, v0

    invoke-virtual {v2}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 782
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v5, 0x1

    add-int/2addr v0, v5

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4
    :try_end_3
    .catch Ljava/sql/SQLException; {:try_start_3 .. :try_end_3} :catch_0

    :goto_3
    move-object/from16 v0, v20

    const/4 v5, 0x1

    goto :goto_2

    :catch_0
    move-exception v0

    goto/16 :goto_7

    :cond_2
    move-object/from16 v20, v0

    .line 785
    :cond_3
    :try_start_4
    invoke-virtual/range {v19 .. v19}, Lcom/argusoft/sewa/android/app/model/MemberBean;->getDob()Ljava/util/Date;

    move-result-object v0
    :try_end_4
    .catch Ljava/sql/SQLException; {:try_start_4 .. :try_end_4} :catch_2

    if-eqz v0, :cond_4

    :try_start_5
    invoke-virtual/range {v19 .. v19}, Lcom/argusoft/sewa/android/app/model/MemberBean;->getDob()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v2}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/Date;->before(Ljava/util/Date;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 786
    invoke-virtual/range {v19 .. v19}, Lcom/argusoft/sewa/android/app/model/MemberBean;->getDob()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v3}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 787
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v5, 0x1

    add-int/2addr v0, v5

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8
    :try_end_5
    .catch Ljava/sql/SQLException; {:try_start_5 .. :try_end_5} :catch_0

    goto :goto_3

    .line 790
    :cond_4
    :try_start_6
    invoke-virtual/range {v19 .. v19}, Lcom/argusoft/sewa/android/app/model/MemberBean;->getGender()Ljava/lang/String;

    move-result-object v0
    :try_end_6
    .catch Ljava/sql/SQLException; {:try_start_6 .. :try_end_6} :catch_2

    const-string v5, "F"

    if-eqz v0, :cond_6

    :try_start_7
    invoke-virtual/range {v19 .. v19}, Lcom/argusoft/sewa/android/app/model/MemberBean;->getGender()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 791
    invoke-virtual/range {v19 .. v19}, Lcom/argusoft/sewa/android/app/model/MemberBean;->getIsPregnantFlag()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual/range {v19 .. v19}, Lcom/argusoft/sewa/android/app/model/MemberBean;->getCurPregRegDetId()Ljava/lang/Long;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 792
    invoke-virtual/range {v19 .. v19}, Lcom/argusoft/sewa/android/app/model/MemberBean;->getLmpDate()Ljava/util/Date;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-virtual/range {v19 .. v19}, Lcom/argusoft/sewa/android/app/model/MemberBean;->getDob()Ljava/util/Date;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 793
    invoke-virtual/range {v19 .. v19}, Lcom/argusoft/sewa/android/app/model/MemberBean;->getDob()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v0, v11}, Ljava/util/Date;->before(Ljava/util/Date;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 794
    invoke-virtual/range {v19 .. v19}, Lcom/argusoft/sewa/android/app/model/MemberBean;->getDob()Ljava/util/Date;

    move-result-object v0

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/util/UtilBean;->clearTimeFromDate(Ljava/util/Date;)Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v0, v11}, Ljava/util/Date;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 795
    :cond_5
    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x1

    add-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    .line 796
    invoke-virtual/range {v19 .. v19}, Lcom/argusoft/sewa/android/app/model/MemberBean;->getEdd()Ljava/util/Date;

    move-result-object v0

    if-eqz v0, :cond_7

    invoke-virtual/range {v19 .. v19}, Lcom/argusoft/sewa/android/app/model/MemberBean;->getEdd()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v14}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 797
    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x1

    add-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15
    :try_end_7
    .catch Ljava/sql/SQLException; {:try_start_7 .. :try_end_7} :catch_0

    goto :goto_4

    .line 801
    :cond_6
    :try_start_8
    invoke-virtual/range {v19 .. v19}, Lcom/argusoft/sewa/android/app/model/MemberBean;->getLastDeliveryDate()Ljava/util/Date;

    move-result-object v0
    :try_end_8
    .catch Ljava/sql/SQLException; {:try_start_8 .. :try_end_8} :catch_2

    if-eqz v0, :cond_8

    :try_start_9
    invoke-virtual/range {v19 .. v19}, Lcom/argusoft/sewa/android/app/model/MemberBean;->getLastDeliveryDate()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v6}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 802
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x1

    add-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16
    :try_end_9
    .catch Ljava/sql/SQLException; {:try_start_9 .. :try_end_9} :catch_0

    :cond_7
    :goto_4
    const/4 v5, 0x1

    move-object/from16 v1, p0

    move-object/from16 v0, v20

    goto/16 :goto_2

    .line 805
    :cond_8
    :try_start_a
    invoke-virtual/range {v19 .. v19}, Lcom/argusoft/sewa/android/app/model/MemberBean;->getGender()Ljava/lang/String;

    move-result-object v0
    :try_end_a
    .catch Ljava/sql/SQLException; {:try_start_a .. :try_end_a} :catch_2

    const-string v1, "MLSTR"

    move-object/from16 v21, v2

    const-string v2, "FMLSTR"

    move-object/from16 v22, v3

    const-string v3, "629"

    if-eqz v0, :cond_e

    :try_start_b
    invoke-virtual/range {v19 .. v19}, Lcom/argusoft/sewa/android/app/model/MemberBean;->getGender()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 806
    invoke-virtual/range {v19 .. v19}, Lcom/argusoft/sewa/android/app/model/MemberBean;->getMaritalStatus()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_e

    invoke-virtual/range {v19 .. v19}, Lcom/argusoft/sewa/android/app/model/MemberBean;->getMaritalStatus()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 807
    invoke-virtual/range {v19 .. v19}, Lcom/argusoft/sewa/android/app/model/MemberBean;->getDob()Ljava/util/Date;

    move-result-object v0

    if-eqz v0, :cond_e

    invoke-virtual/range {v19 .. v19}, Lcom/argusoft/sewa/android/app/model/MemberBean;->getDob()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v0, v10}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-virtual/range {v19 .. v19}, Lcom/argusoft/sewa/android/app/model/MemberBean;->getDob()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v0, v11}, Ljava/util/Date;->before(Ljava/util/Date;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 808
    invoke-virtual/range {v19 .. v19}, Lcom/argusoft/sewa/android/app/model/MemberBean;->getIsPregnantFlag()Ljava/lang/Boolean;

    move-result-object v0
    :try_end_b
    .catch Ljava/sql/SQLException; {:try_start_b .. :try_end_b} :catch_2

    if-eqz v0, :cond_9

    :try_start_c
    invoke-virtual/range {v19 .. v19}, Lcom/argusoft/sewa/android/app/model/MemberBean;->getIsPregnantFlag()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0
    :try_end_c
    .catch Ljava/sql/SQLException; {:try_start_c .. :try_end_c} :catch_0

    if-nez v0, :cond_e

    .line 809
    :cond_9
    :try_start_d
    invoke-virtual/range {v19 .. v19}, Lcom/argusoft/sewa/android/app/model/MemberBean;->getMenopauseArrived()Ljava/lang/Boolean;

    move-result-object v0
    :try_end_d
    .catch Ljava/sql/SQLException; {:try_start_d .. :try_end_d} :catch_2

    if-eqz v0, :cond_a

    :try_start_e
    invoke-virtual/range {v19 .. v19}, Lcom/argusoft/sewa/android/app/model/MemberBean;->getMenopauseArrived()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0
    :try_end_e
    .catch Ljava/sql/SQLException; {:try_start_e .. :try_end_e} :catch_0

    if-nez v0, :cond_e

    .line 810
    :cond_a
    :try_start_f
    invoke-virtual/range {v19 .. v19}, Lcom/argusoft/sewa/android/app/model/MemberBean;->getHysterectomyDone()Ljava/lang/Boolean;

    move-result-object v0
    :try_end_f
    .catch Ljava/sql/SQLException; {:try_start_f .. :try_end_f} :catch_2

    if-eqz v0, :cond_b

    :try_start_10
    invoke-virtual/range {v19 .. v19}, Lcom/argusoft/sewa/android/app/model/MemberBean;->getHysterectomyDone()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0
    :try_end_10
    .catch Ljava/sql/SQLException; {:try_start_10 .. :try_end_10} :catch_0

    if-nez v0, :cond_e

    .line 811
    :cond_b
    :try_start_11
    invoke-virtual/range {v19 .. v19}, Lcom/argusoft/sewa/android/app/model/MemberBean;->getLastMethodOfContraception()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_d

    .line 812
    invoke-virtual/range {v19 .. v19}, Lcom/argusoft/sewa/android/app/model/MemberBean;->getLastMethodOfContraception()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_11
    .catch Ljava/sql/SQLException; {:try_start_11 .. :try_end_11} :catch_2

    if-nez v0, :cond_c

    .line 813
    :try_start_12
    invoke-virtual/range {v19 .. v19}, Lcom/argusoft/sewa/android/app/model/MemberBean;->getLastMethodOfContraception()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_12
    .catch Ljava/sql/SQLException; {:try_start_12 .. :try_end_12} :catch_0

    if-eqz v0, :cond_d

    .line 814
    :cond_c
    :try_start_13
    invoke-virtual/range {v19 .. v19}, Lcom/argusoft/sewa/android/app/model/MemberBean;->getFpInsertOperateDate()Ljava/util/Date;

    move-result-object v0

    if-eqz v0, :cond_e

    invoke-virtual/range {v19 .. v19}, Lcom/argusoft/sewa/android/app/model/MemberBean;->getFpInsertOperateDate()Ljava/util/Date;

    move-result-object v0
    :try_end_13
    .catch Ljava/sql/SQLException; {:try_start_13 .. :try_end_13} :catch_2

    move-object/from16 v23, v4

    :try_start_14
    invoke-virtual {v7}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    move-result v0

    if-eqz v0, :cond_f

    goto :goto_5

    :cond_d
    move-object/from16 v23, v4

    .line 815
    :goto_5
    invoke-virtual/range {v17 .. v17}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x1

    add-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    goto/16 :goto_6

    :cond_e
    move-object/from16 v23, v4

    .line 818
    :cond_f
    invoke-virtual/range {v19 .. v19}, Lcom/argusoft/sewa/android/app/model/MemberBean;->getGender()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_15

    invoke-virtual/range {v19 .. v19}, Lcom/argusoft/sewa/android/app/model/MemberBean;->getGender()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 819
    invoke-virtual/range {v19 .. v19}, Lcom/argusoft/sewa/android/app/model/MemberBean;->getMaritalStatus()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_15

    invoke-virtual/range {v19 .. v19}, Lcom/argusoft/sewa/android/app/model/MemberBean;->getMaritalStatus()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 820
    invoke-virtual/range {v19 .. v19}, Lcom/argusoft/sewa/android/app/model/MemberBean;->getDob()Ljava/util/Date;

    move-result-object v0

    if-eqz v0, :cond_15

    invoke-virtual/range {v19 .. v19}, Lcom/argusoft/sewa/android/app/model/MemberBean;->getDob()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v0, v10}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    move-result v0

    if-eqz v0, :cond_15

    invoke-virtual/range {v19 .. v19}, Lcom/argusoft/sewa/android/app/model/MemberBean;->getDob()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v0, v11}, Ljava/util/Date;->before(Ljava/util/Date;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 821
    invoke-virtual/range {v19 .. v19}, Lcom/argusoft/sewa/android/app/model/MemberBean;->getIsPregnantFlag()Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_10

    invoke-virtual/range {v19 .. v19}, Lcom/argusoft/sewa/android/app/model/MemberBean;->getIsPregnantFlag()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_15

    .line 822
    :cond_10
    invoke-virtual/range {v19 .. v19}, Lcom/argusoft/sewa/android/app/model/MemberBean;->getMenopauseArrived()Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_11

    invoke-virtual/range {v19 .. v19}, Lcom/argusoft/sewa/android/app/model/MemberBean;->getMenopauseArrived()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_15

    .line 823
    :cond_11
    invoke-virtual/range {v19 .. v19}, Lcom/argusoft/sewa/android/app/model/MemberBean;->getHysterectomyDone()Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_12

    invoke-virtual/range {v19 .. v19}, Lcom/argusoft/sewa/android/app/model/MemberBean;->getHysterectomyDone()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_15

    .line 824
    :cond_12
    invoke-virtual/range {v19 .. v19}, Lcom/argusoft/sewa/android/app/model/MemberBean;->getDateOfWedding()Ljava/util/Date;

    move-result-object v0

    if-eqz v0, :cond_15

    invoke-virtual/range {v19 .. v19}, Lcom/argusoft/sewa/android/app/model/MemberBean;->getDateOfWedding()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 825
    invoke-virtual/range {v19 .. v19}, Lcom/argusoft/sewa/android/app/model/MemberBean;->getLastMethodOfContraception()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_14

    .line 826
    invoke-virtual/range {v19 .. v19}, Lcom/argusoft/sewa/android/app/model/MemberBean;->getLastMethodOfContraception()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_13

    .line 827
    invoke-virtual/range {v19 .. v19}, Lcom/argusoft/sewa/android/app/model/MemberBean;->getLastMethodOfContraception()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 828
    :cond_13
    invoke-virtual/range {v19 .. v19}, Lcom/argusoft/sewa/android/app/model/MemberBean;->getFpInsertOperateDate()Ljava/util/Date;

    move-result-object v0

    if-eqz v0, :cond_15

    invoke-virtual/range {v19 .. v19}, Lcom/argusoft/sewa/android/app/model/MemberBean;->getFpInsertOperateDate()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v12}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 829
    :cond_14
    invoke-virtual/range {v18 .. v18}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x1

    add-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18
    :try_end_14
    .catch Ljava/sql/SQLException; {:try_start_14 .. :try_end_14} :catch_1

    goto :goto_6

    :cond_15
    const/4 v1, 0x1

    :goto_6
    const/4 v5, 0x1

    move-object/from16 v1, p0

    move-object/from16 v0, v20

    move-object/from16 v2, v21

    move-object/from16 v3, v22

    move-object/from16 v4, v23

    goto/16 :goto_2

    :catch_1
    move-exception v0

    move-object/from16 v4, v23

    goto :goto_7

    :cond_16
    move-object/from16 v23, v4

    goto :goto_8

    :catch_2
    move-exception v0

    move-object/from16 v23, v4

    goto :goto_7

    :cond_17
    move-object v8, v4

    move-object v13, v8

    move-object v15, v13

    move-object/from16 v16, v15

    move-object/from16 v17, v16

    move-object/from16 v18, v17

    goto :goto_8

    :catch_3
    move-exception v0

    move-object v8, v4

    move-object v13, v8

    move-object v15, v13

    move-object/from16 v16, v15

    move-object/from16 v17, v16

    move-object/from16 v18, v17

    .line 834
    :goto_7
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_8
    move-object/from16 v0, v16

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    .line 837
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 838
    const-string v5, "childrenUpto5"

    invoke-interface {v3, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 839
    const-string v4, "childrenAbove5"

    invoke-interface {v3, v4, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 840
    const-string v4, "pregnantWomen"

    invoke-interface {v3, v4, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 841
    const-string v4, "pregnancyOutcome"

    invoke-interface {v3, v4, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 842
    const-string v4, "pncMothers"

    invoke-interface {v3, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 843
    const-string v0, "eligibleCouples"

    invoke-interface {v3, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 844
    const-string v0, "newlyWed"

    invoke-interface {v3, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v3
.end method

.method public retrievePregnantWomenForRoutineImmunisation(Ljava/lang/CharSequence;JJLjava/util/LinkedHashMap;Ljava/lang/String;Ljava/util/Date;Ljava/util/List;)Ljava/util/List;
    .locals 20
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

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v2, p6

    move-object/from16 v3, p7

    move-object/from16 v4, p9

    .line 186
    const-string v5, "-"

    const-string v6, "familyId"

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 189
    :try_start_0
    iget-object v8, v1, Lcom/argusoft/sewa/android/app/core/impl/RoutineImmunisationServiceImpl;->familyBeanDao:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v8}, Lcom/j256/ormlite/dao/Dao;->queryBuilder()Lcom/j256/ormlite/stmt/QueryBuilder;

    move-result-object v8

    filled-new-array {v6}, [Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/j256/ormlite/stmt/QueryBuilder;->selectColumns([Ljava/lang/String;)Lcom/j256/ormlite/stmt/QueryBuilder;

    move-result-object v8

    invoke-virtual {v8}, Lcom/j256/ormlite/stmt/QueryBuilder;->where()Lcom/j256/ormlite/stmt/Where;

    move-result-object v8
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_2

    .line 191
    const-string v9, "state"

    const/4 v10, 0x0

    if-eqz v4, :cond_0

    .line 192
    :try_start_1
    sget-object v11, Lcom/argusoft/sewa/android/app/constants/FhsConstants;->FHS_INACTIVE_CRITERIA_FAMILY_STATES:Ljava/util/List;

    invoke-virtual {v8, v9, v11}, Lcom/j256/ormlite/stmt/Where;->notIn(Ljava/lang/String;Ljava/lang/Iterable;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v11

    const-string v12, "locationId"

    .line 194
    invoke-virtual {v8, v12, v4}, Lcom/j256/ormlite/stmt/Where;->in(Ljava/lang/String;Ljava/lang/Iterable;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v12

    const-string v13, "areaId"

    .line 195
    invoke-virtual {v8, v13, v4}, Lcom/j256/ormlite/stmt/Where;->in(Ljava/lang/String;Ljava/lang/Iterable;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v4

    new-array v13, v10, [Lcom/j256/ormlite/stmt/Where;

    .line 193
    invoke-virtual {v8, v12, v4, v13}, Lcom/j256/ormlite/stmt/Where;->or(Lcom/j256/ormlite/stmt/Where;Lcom/j256/ormlite/stmt/Where;[Lcom/j256/ormlite/stmt/Where;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v4

    new-array v12, v10, [Lcom/j256/ormlite/stmt/Where;

    .line 192
    invoke-virtual {v8, v11, v4, v12}, Lcom/j256/ormlite/stmt/Where;->and(Lcom/j256/ormlite/stmt/Where;Lcom/j256/ormlite/stmt/Where;[Lcom/j256/ormlite/stmt/Where;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v4

    .line 196
    invoke-virtual {v4}, Lcom/j256/ormlite/stmt/Where;->query()Ljava/util/List;

    move-result-object v4

    goto :goto_0

    .line 198
    :cond_0
    sget-object v4, Lcom/argusoft/sewa/android/app/constants/FhsConstants;->FHS_INACTIVE_CRITERIA_FAMILY_STATES:Ljava/util/List;

    invoke-virtual {v8, v9, v4}, Lcom/j256/ormlite/stmt/Where;->notIn(Ljava/lang/String;Ljava/lang/Iterable;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v4

    invoke-virtual {v4}, Lcom/j256/ormlite/stmt/Where;->query()Ljava/util/List;

    move-result-object v4

    :goto_0
    if-eqz v4, :cond_11

    .line 202
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_1

    goto/16 :goto_5

    .line 206
    :cond_1
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 207
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/argusoft/sewa/android/app/model/FamilyBean;

    .line 208
    invoke-virtual {v11}, Lcom/argusoft/sewa/android/app/model/FamilyBean;->getFamilyId()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v8, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 211
    :cond_2
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v4

    const/16 v11, -0xf

    const/4 v12, 0x1

    .line 212
    invoke-virtual {v4, v12, v11}, Ljava/util/Calendar;->add(II)V

    .line 213
    invoke-virtual {v4}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v4

    .line 215
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 216
    iget-object v13, v1, Lcom/argusoft/sewa/android/app/core/impl/RoutineImmunisationServiceImpl;->memberBeanDao:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v13}, Lcom/j256/ormlite/dao/Dao;->queryBuilder()Lcom/j256/ormlite/stmt/QueryBuilder;

    move-result-object v13

    invoke-static/range {p2 .. p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    invoke-virtual {v13, v14}, Lcom/j256/ormlite/stmt/QueryBuilder;->limit(Ljava/lang/Long;)Lcom/j256/ormlite/stmt/QueryBuilder;

    move-result-object v13

    invoke-static/range {p4 .. p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    invoke-virtual {v13, v14}, Lcom/j256/ormlite/stmt/QueryBuilder;->offset(Ljava/lang/Long;)Lcom/j256/ormlite/stmt/QueryBuilder;

    move-result-object v13

    const-string v14, "edd"

    invoke-virtual {v13, v14, v12}, Lcom/j256/ormlite/stmt/QueryBuilder;->orderBy(Ljava/lang/String;Z)Lcom/j256/ormlite/stmt/QueryBuilder;

    move-result-object v13

    invoke-virtual {v13}, Lcom/j256/ormlite/stmt/QueryBuilder;->where()Lcom/j256/ormlite/stmt/Where;

    move-result-object v13
    :try_end_1
    .catch Ljava/sql/SQLException; {:try_start_1 .. :try_end_1} :catch_2

    .line 218
    const-string v14, "F"

    const-string v15, "healthIdNumber"

    const-string v12, "healthId"

    const/16 v16, 0x4

    const-string v10, "curPregRegDetId"

    const-string v1, "isPregnantFlag"

    move-object/from16 v17, v11

    const-string v11, "%"

    move-object/from16 v18, v7

    const-string v7, "dob"

    if-eqz v2, :cond_3

    move-object/from16 p5, v14

    :try_start_2
    const-string v14, "isQrCodeScan"

    invoke-virtual {v2, v14}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    move-object/from16 v19, v5

    const-string v5, "true"

    invoke-static {v14, v5}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 219
    invoke-virtual {v13, v6, v8}, Lcom/j256/ormlite/stmt/Where;->in(Ljava/lang/String;Ljava/lang/Iterable;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v0

    sget-object v3, Lcom/argusoft/sewa/android/app/constants/FhsConstants;->FHS_INACTIVE_CRITERIA_MEMBER_STATES:Ljava/util/List;

    .line 220
    invoke-virtual {v13, v9, v3}, Lcom/j256/ormlite/stmt/Where;->notIn(Ljava/lang/String;Ljava/lang/Iterable;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v3

    const/4 v5, 0x5

    new-array v5, v5, [Lcom/j256/ormlite/stmt/Where;

    sget-object v6, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 221
    invoke-virtual {v13, v1, v6}, Lcom/j256/ormlite/stmt/Where;->eq(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v1

    const/4 v6, 0x0

    aput-object v1, v5, v6

    .line 222
    invoke-virtual {v13, v7}, Lcom/j256/ormlite/stmt/Where;->isNotNull(Ljava/lang/String;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v1

    const/4 v6, 0x1

    aput-object v1, v5, v6

    .line 223
    invoke-virtual {v13, v7, v4}, Lcom/j256/ormlite/stmt/Where;->le(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v1

    const/4 v4, 0x2

    aput-object v1, v5, v4

    .line 225
    invoke-virtual {v13, v10}, Lcom/j256/ormlite/stmt/Where;->isNotNull(Ljava/lang/String;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v1

    const/4 v4, 0x3

    aput-object v1, v5, v4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 226
    invoke-virtual {v2, v12}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v13, v12, v1}, Lcom/j256/ormlite/stmt/Where;->like(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 227
    invoke-virtual {v2, v15}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v13, v15, v2}, Lcom/j256/ormlite/stmt/Where;->like(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v2

    const/4 v4, 0x0

    new-array v4, v4, [Lcom/j256/ormlite/stmt/Where;

    .line 226
    invoke-virtual {v13, v1, v2, v4}, Lcom/j256/ormlite/stmt/Where;->or(Lcom/j256/ormlite/stmt/Where;Lcom/j256/ormlite/stmt/Where;[Lcom/j256/ormlite/stmt/Where;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v1

    aput-object v1, v5, v16

    .line 219
    invoke-virtual {v13, v0, v3, v5}, Lcom/j256/ormlite/stmt/Where;->and(Lcom/j256/ormlite/stmt/Where;Lcom/j256/ormlite/stmt/Where;[Lcom/j256/ormlite/stmt/Where;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v0

    .line 228
    invoke-virtual {v0}, Lcom/j256/ormlite/stmt/Where;->query()Ljava/util/List;

    move-result-object v11

    goto :goto_2

    :catch_0
    move-exception v0

    move-object/from16 v2, v18

    goto/16 :goto_6

    :cond_3
    move-object/from16 v19, v5

    move-object/from16 p5, v14

    :cond_4
    if-eqz v3, :cond_d

    if-eqz v0, :cond_d

    .line 230
    const-string v2, "MOBILE_NUMBER"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 232
    invoke-virtual {v13, v6, v8}, Lcom/j256/ormlite/stmt/Where;->in(Ljava/lang/String;Ljava/lang/Iterable;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v2

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 233
    invoke-virtual {v13, v1, v3}, Lcom/j256/ormlite/stmt/Where;->eq(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v1

    const/4 v3, 0x5

    new-array v3, v3, [Lcom/j256/ormlite/stmt/Where;

    .line 234
    invoke-virtual {v13, v7}, Lcom/j256/ormlite/stmt/Where;->isNotNull(Ljava/lang/String;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v3, v6

    .line 235
    invoke-virtual {v13, v7, v4}, Lcom/j256/ormlite/stmt/Where;->le(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v4

    const/4 v5, 0x1

    aput-object v4, v3, v5

    sget-object v4, Lcom/argusoft/sewa/android/app/constants/FhsConstants;->FHS_INACTIVE_CRITERIA_MEMBER_STATES:Ljava/util/List;

    .line 237
    invoke-virtual {v13, v9, v4}, Lcom/j256/ormlite/stmt/Where;->notIn(Ljava/lang/String;Ljava/lang/Iterable;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v4

    const/4 v5, 0x2

    aput-object v4, v3, v5

    const-string v4, "mobileNumber"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 238
    invoke-interface/range {p1 .. p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v13, v4, v0}, Lcom/j256/ormlite/stmt/Where;->like(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v0

    const/4 v4, 0x3

    aput-object v0, v3, v4

    .line 239
    invoke-virtual {v13, v10}, Lcom/j256/ormlite/stmt/Where;->isNotNull(Ljava/lang/String;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v0

    aput-object v0, v3, v16

    .line 231
    invoke-virtual {v13, v2, v1, v3}, Lcom/j256/ormlite/stmt/Where;->and(Lcom/j256/ormlite/stmt/Where;Lcom/j256/ormlite/stmt/Where;[Lcom/j256/ormlite/stmt/Where;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v0

    .line 240
    invoke-virtual {v0}, Lcom/j256/ormlite/stmt/Where;->query()Ljava/util/List;

    move-result-object v11

    :goto_2
    move-object/from16 v6, p5

    goto/16 :goto_3

    .line 241
    :cond_5
    const-string v2, "MEMBER_ID"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 243
    invoke-virtual {v13, v6, v8}, Lcom/j256/ormlite/stmt/Where;->in(Ljava/lang/String;Ljava/lang/Iterable;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v2

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 244
    invoke-virtual {v13, v1, v3}, Lcom/j256/ormlite/stmt/Where;->eq(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v1

    const/4 v3, 0x5

    new-array v3, v3, [Lcom/j256/ormlite/stmt/Where;

    .line 245
    invoke-virtual {v13, v7}, Lcom/j256/ormlite/stmt/Where;->isNotNull(Ljava/lang/String;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v3, v6

    .line 246
    invoke-virtual {v13, v7, v4}, Lcom/j256/ormlite/stmt/Where;->le(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v4

    const/4 v5, 0x1

    aput-object v4, v3, v5

    sget-object v4, Lcom/argusoft/sewa/android/app/constants/FhsConstants;->FHS_INACTIVE_CRITERIA_MEMBER_STATES:Ljava/util/List;

    .line 248
    invoke-virtual {v13, v9, v4}, Lcom/j256/ormlite/stmt/Where;->notIn(Ljava/lang/String;Ljava/lang/Iterable;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v4

    const/4 v5, 0x2

    aput-object v4, v3, v5

    const-string v4, "uniqueHealthId"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 249
    invoke-interface/range {p1 .. p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v13, v4, v0}, Lcom/j256/ormlite/stmt/Where;->like(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v0

    const/4 v4, 0x3

    aput-object v0, v3, v4

    .line 250
    invoke-virtual {v13, v10}, Lcom/j256/ormlite/stmt/Where;->isNotNull(Ljava/lang/String;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v0

    aput-object v0, v3, v16

    .line 242
    invoke-virtual {v13, v2, v1, v3}, Lcom/j256/ormlite/stmt/Where;->and(Lcom/j256/ormlite/stmt/Where;Lcom/j256/ormlite/stmt/Where;[Lcom/j256/ormlite/stmt/Where;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v0

    .line 251
    invoke-virtual {v0}, Lcom/j256/ormlite/stmt/Where;->query()Ljava/util/List;

    move-result-object v11

    goto :goto_2

    .line 252
    :cond_6
    const-string v2, "FAMILY_ID"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 254
    invoke-virtual {v13, v6, v8}, Lcom/j256/ormlite/stmt/Where;->in(Ljava/lang/String;Ljava/lang/Iterable;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v2

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 255
    invoke-virtual {v13, v1, v3}, Lcom/j256/ormlite/stmt/Where;->eq(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v1

    const/4 v3, 0x5

    new-array v3, v3, [Lcom/j256/ormlite/stmt/Where;

    .line 257
    invoke-virtual {v13, v7}, Lcom/j256/ormlite/stmt/Where;->isNotNull(Ljava/lang/String;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v5

    const/4 v8, 0x0

    aput-object v5, v3, v8

    .line 258
    invoke-virtual {v13, v7, v4}, Lcom/j256/ormlite/stmt/Where;->le(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v4

    const/4 v5, 0x1

    aput-object v4, v3, v5

    sget-object v4, Lcom/argusoft/sewa/android/app/constants/FhsConstants;->FHS_INACTIVE_CRITERIA_MEMBER_STATES:Ljava/util/List;

    .line 259
    invoke-virtual {v13, v9, v4}, Lcom/j256/ormlite/stmt/Where;->notIn(Ljava/lang/String;Ljava/lang/Iterable;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v4

    const/4 v5, 0x2

    aput-object v4, v3, v5

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 260
    invoke-interface/range {p1 .. p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v13, v6, v0}, Lcom/j256/ormlite/stmt/Where;->like(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v0

    const/4 v4, 0x3

    aput-object v0, v3, v4

    .line 261
    invoke-virtual {v13, v10}, Lcom/j256/ormlite/stmt/Where;->isNotNull(Ljava/lang/String;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v0

    aput-object v0, v3, v16

    .line 253
    invoke-virtual {v13, v2, v1, v3}, Lcom/j256/ormlite/stmt/Where;->and(Lcom/j256/ormlite/stmt/Where;Lcom/j256/ormlite/stmt/Where;[Lcom/j256/ormlite/stmt/Where;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v0

    .line 262
    invoke-virtual {v0}, Lcom/j256/ormlite/stmt/Where;->query()Ljava/util/List;

    move-result-object v11

    goto/16 :goto_2

    .line 263
    :cond_7
    const-string v2, "ABHA_NUMBER"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 264
    invoke-interface/range {p1 .. p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    .line 265
    invoke-interface/range {p1 .. p1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    const/16 v5, 0xe

    if-ne v3, v5, :cond_8

    .line 266
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/CharSequence;)V

    move-object/from16 v0, v19

    const/4 v3, 0x2

    invoke-virtual {v2, v3, v0}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 267
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x7

    invoke-virtual {v3, v2, v0}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 268
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v2, 0xc

    invoke-virtual {v3, v2, v0}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 271
    :cond_8
    invoke-virtual {v13, v6, v8}, Lcom/j256/ormlite/stmt/Where;->in(Ljava/lang/String;Ljava/lang/Iterable;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v0

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 272
    invoke-virtual {v13, v1, v3}, Lcom/j256/ormlite/stmt/Where;->eq(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v1

    const/4 v3, 0x5

    new-array v3, v3, [Lcom/j256/ormlite/stmt/Where;

    .line 274
    invoke-virtual {v13, v7}, Lcom/j256/ormlite/stmt/Where;->isNotNull(Ljava/lang/String;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v3, v6

    .line 275
    invoke-virtual {v13, v7, v4}, Lcom/j256/ormlite/stmt/Where;->le(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v4

    const/4 v5, 0x1

    aput-object v4, v3, v5

    sget-object v4, Lcom/argusoft/sewa/android/app/constants/FhsConstants;->FHS_INACTIVE_CRITERIA_MEMBER_STATES:Ljava/util/List;

    .line 276
    invoke-virtual {v13, v9, v4}, Lcom/j256/ormlite/stmt/Where;->notIn(Ljava/lang/String;Ljava/lang/Iterable;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v4

    const/4 v5, 0x2

    aput-object v4, v3, v5

    .line 277
    invoke-virtual {v13, v10}, Lcom/j256/ormlite/stmt/Where;->isNotNull(Ljava/lang/String;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v4

    const/4 v5, 0x3

    aput-object v4, v3, v5

    .line 279
    invoke-virtual {v13, v12, v2}, Lcom/j256/ormlite/stmt/Where;->eq(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v4

    .line 280
    invoke-virtual {v13, v15, v2}, Lcom/j256/ormlite/stmt/Where;->eq(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v2

    const/4 v5, 0x0

    new-array v5, v5, [Lcom/j256/ormlite/stmt/Where;

    .line 278
    invoke-virtual {v13, v4, v2, v5}, Lcom/j256/ormlite/stmt/Where;->or(Lcom/j256/ormlite/stmt/Where;Lcom/j256/ormlite/stmt/Where;[Lcom/j256/ormlite/stmt/Where;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v2

    aput-object v2, v3, v16

    .line 270
    invoke-virtual {v13, v0, v1, v3}, Lcom/j256/ormlite/stmt/Where;->and(Lcom/j256/ormlite/stmt/Where;Lcom/j256/ormlite/stmt/Where;[Lcom/j256/ormlite/stmt/Where;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v0

    .line 281
    invoke-virtual {v0}, Lcom/j256/ormlite/stmt/Where;->query()Ljava/util/List;

    move-result-object v11

    goto/16 :goto_2

    .line 282
    :cond_9
    const-string v2, "DOB"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 284
    invoke-virtual {v13, v6, v8}, Lcom/j256/ormlite/stmt/Where;->in(Ljava/lang/String;Ljava/lang/Iterable;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v0

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 285
    invoke-virtual {v13, v1, v2}, Lcom/j256/ormlite/stmt/Where;->eq(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v1

    const/4 v2, 0x5

    new-array v2, v2, [Lcom/j256/ormlite/stmt/Where;

    .line 287
    invoke-virtual {v13, v7}, Lcom/j256/ormlite/stmt/Where;->isNotNull(Ljava/lang/String;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v3

    const/4 v5, 0x0

    aput-object v3, v2, v5

    .line 288
    invoke-virtual {v13, v7, v4}, Lcom/j256/ormlite/stmt/Where;->le(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v2, v4

    sget-object v3, Lcom/argusoft/sewa/android/app/constants/FhsConstants;->FHS_INACTIVE_CRITERIA_MEMBER_STATES:Ljava/util/List;

    .line 289
    invoke-virtual {v13, v9, v3}, Lcom/j256/ormlite/stmt/Where;->notIn(Ljava/lang/String;Ljava/lang/Iterable;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v3

    const/4 v4, 0x2

    aput-object v3, v2, v4

    move-object/from16 v3, p8

    .line 290
    invoke-virtual {v13, v7, v3}, Lcom/j256/ormlite/stmt/Where;->eq(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v3

    const/4 v4, 0x3

    aput-object v3, v2, v4

    .line 291
    invoke-virtual {v13, v10}, Lcom/j256/ormlite/stmt/Where;->isNotNull(Ljava/lang/String;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v3

    aput-object v3, v2, v16

    .line 283
    invoke-virtual {v13, v0, v1, v2}, Lcom/j256/ormlite/stmt/Where;->and(Lcom/j256/ormlite/stmt/Where;Lcom/j256/ormlite/stmt/Where;[Lcom/j256/ormlite/stmt/Where;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v0

    .line 292
    invoke-virtual {v0}, Lcom/j256/ormlite/stmt/Where;->query()Ljava/util/List;

    move-result-object v11

    goto/16 :goto_2

    .line 293
    :cond_a
    const-string v2, "NAME"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 295
    invoke-virtual {v13, v6, v8}, Lcom/j256/ormlite/stmt/Where;->in(Ljava/lang/String;Ljava/lang/Iterable;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v2

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 296
    invoke-virtual {v13, v1, v3}, Lcom/j256/ormlite/stmt/Where;->eq(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v1

    const/4 v3, 0x5

    new-array v3, v3, [Lcom/j256/ormlite/stmt/Where;

    .line 298
    invoke-virtual {v13, v7}, Lcom/j256/ormlite/stmt/Where;->isNotNull(Ljava/lang/String;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v3, v6

    .line 299
    invoke-virtual {v13, v7, v4}, Lcom/j256/ormlite/stmt/Where;->le(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v4

    const/4 v5, 0x1

    aput-object v4, v3, v5

    sget-object v4, Lcom/argusoft/sewa/android/app/constants/FhsConstants;->FHS_INACTIVE_CRITERIA_MEMBER_STATES:Ljava/util/List;

    .line 300
    invoke-virtual {v13, v9, v4}, Lcom/j256/ormlite/stmt/Where;->notIn(Ljava/lang/String;Ljava/lang/Iterable;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v4

    const/4 v5, 0x2

    aput-object v4, v3, v5

    .line 301
    invoke-virtual {v13, v10}, Lcom/j256/ormlite/stmt/Where;->isNotNull(Ljava/lang/String;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v4

    const/4 v5, 0x3

    aput-object v4, v3, v5

    const-string v4, "firstName"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 303
    invoke-interface/range {p1 .. p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v13, v4, v5}, Lcom/j256/ormlite/stmt/Where;->like(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v4

    const-string v5, "middleName"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 304
    invoke-interface/range {p1 .. p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v13, v5, v6}, Lcom/j256/ormlite/stmt/Where;->like(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v5

    const/4 v6, 0x1

    new-array v6, v6, [Lcom/j256/ormlite/stmt/Where;

    const-string v7, "lastName"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 305
    invoke-interface/range {p1 .. p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v13, v7, v0}, Lcom/j256/ormlite/stmt/Where;->like(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v0

    const/4 v7, 0x0

    aput-object v0, v6, v7

    .line 302
    invoke-virtual {v13, v4, v5, v6}, Lcom/j256/ormlite/stmt/Where;->or(Lcom/j256/ormlite/stmt/Where;Lcom/j256/ormlite/stmt/Where;[Lcom/j256/ormlite/stmt/Where;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v0

    aput-object v0, v3, v16

    .line 294
    invoke-virtual {v13, v2, v1, v3}, Lcom/j256/ormlite/stmt/Where;->and(Lcom/j256/ormlite/stmt/Where;Lcom/j256/ormlite/stmt/Where;[Lcom/j256/ormlite/stmt/Where;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v0

    .line 306
    invoke-virtual {v0}, Lcom/j256/ormlite/stmt/Where;->query()Ljava/util/List;

    move-result-object v11

    goto/16 :goto_2

    .line 307
    :cond_b
    const-string v0, "LOCATION_USER"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 308
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 309
    invoke-virtual {v13, v1, v0}, Lcom/j256/ormlite/stmt/Where;->eq(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v0

    .line 311
    invoke-virtual {v13, v7}, Lcom/j256/ormlite/stmt/Where;->isNotNull(Ljava/lang/String;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v1

    const/4 v2, 0x3

    new-array v2, v2, [Lcom/j256/ormlite/stmt/Where;

    .line 312
    invoke-virtual {v13, v7, v4}, Lcom/j256/ormlite/stmt/Where;->le(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    .line 313
    invoke-virtual {v13, v6, v8}, Lcom/j256/ormlite/stmt/Where;->in(Ljava/lang/String;Ljava/lang/Iterable;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v2, v4

    .line 314
    invoke-virtual {v13, v10}, Lcom/j256/ormlite/stmt/Where;->isNotNull(Ljava/lang/String;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v3

    const/4 v4, 0x2

    aput-object v3, v2, v4

    .line 308
    invoke-virtual {v13, v0, v1, v2}, Lcom/j256/ormlite/stmt/Where;->and(Lcom/j256/ormlite/stmt/Where;Lcom/j256/ormlite/stmt/Where;[Lcom/j256/ormlite/stmt/Where;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v0

    .line 315
    invoke-virtual {v0}, Lcom/j256/ormlite/stmt/Where;->query()Ljava/util/List;

    move-result-object v11

    goto/16 :goto_2

    :cond_c
    move-object/from16 v6, p5

    move-object/from16 v11, v17

    goto :goto_3

    .line 319
    :cond_d
    invoke-virtual {v13, v6, v8}, Lcom/j256/ormlite/stmt/Where;->in(Ljava/lang/String;Ljava/lang/Iterable;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v0

    sget-object v2, Lcom/argusoft/sewa/android/app/constants/FhsConstants;->FHS_INACTIVE_CRITERIA_MEMBER_STATES:Ljava/util/List;

    .line 320
    invoke-virtual {v13, v9, v2}, Lcom/j256/ormlite/stmt/Where;->notIn(Ljava/lang/String;Ljava/lang/Iterable;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v2

    const/4 v3, 0x5

    new-array v3, v3, [Lcom/j256/ormlite/stmt/Where;

    const-string v5, "gender"

    move-object/from16 v6, p5

    .line 321
    invoke-virtual {v13, v5, v6}, Lcom/j256/ormlite/stmt/Where;->eq(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v5

    const/4 v8, 0x0

    aput-object v5, v3, v8

    sget-object v5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 322
    invoke-virtual {v13, v1, v5}, Lcom/j256/ormlite/stmt/Where;->eq(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v1

    const/4 v5, 0x1

    aput-object v1, v3, v5

    .line 323
    invoke-virtual {v13, v7}, Lcom/j256/ormlite/stmt/Where;->isNotNull(Ljava/lang/String;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v1

    const/4 v5, 0x2

    aput-object v1, v3, v5

    .line 324
    invoke-virtual {v13, v7, v4}, Lcom/j256/ormlite/stmt/Where;->le(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v1

    const/4 v4, 0x3

    aput-object v1, v3, v4

    .line 326
    invoke-virtual {v13, v10}, Lcom/j256/ormlite/stmt/Where;->isNotNull(Ljava/lang/String;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v1

    aput-object v1, v3, v16

    .line 318
    invoke-virtual {v13, v0, v2, v3}, Lcom/j256/ormlite/stmt/Where;->and(Lcom/j256/ormlite/stmt/Where;Lcom/j256/ormlite/stmt/Where;[Lcom/j256/ormlite/stmt/Where;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v0

    .line 327
    invoke-virtual {v0}, Lcom/j256/ormlite/stmt/Where;->query()Ljava/util/List;

    move-result-object v11

    .line 330
    :goto_3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 331
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 333
    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_e
    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_10

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/argusoft/sewa/android/app/model/MemberBean;

    .line 334
    invoke-virtual {v3}, Lcom/argusoft/sewa/android/app/model/MemberBean;->getGender()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_e

    invoke-virtual {v3}, Lcom/argusoft/sewa/android/app/model/MemberBean;->getGender()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_e

    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v3}, Lcom/argusoft/sewa/android/app/model/MemberBean;->getIsPregnantFlag()Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_e

    .line 335
    invoke-virtual {v3}, Lcom/argusoft/sewa/android/app/model/MemberBean;->getEdd()Ljava/util/Date;

    move-result-object v4

    if-eqz v4, :cond_f

    .line 336
    new-instance v4, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;

    invoke-direct {v4, v3}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;-><init>(Lcom/argusoft/sewa/android/app/model/MemberBean;)V

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 338
    :cond_f
    new-instance v4, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;

    invoke-direct {v4, v3}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;-><init>(Lcom/argusoft/sewa/android/app/model/MemberBean;)V

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/sql/SQLException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_4

    :cond_10
    move-object/from16 v2, v18

    .line 343
    :try_start_3
    invoke-interface {v2, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 344
    invoke-interface {v2, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
    :try_end_3
    .catch Ljava/sql/SQLException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_7

    :catch_1
    move-exception v0

    goto :goto_6

    :cond_11
    :goto_5
    move-object v2, v7

    return-object v2

    :catch_2
    move-exception v0

    move-object v2, v7

    .line 346
    :goto_6
    const-string v1, "RIServiceImpl"

    const/4 v3, 0x0

    invoke-static {v1, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_7
    return-object v2
.end method

.method public retrieveWpdWomenByArea(Ljava/lang/CharSequence;JJLjava/util/LinkedHashMap;Ljava/lang/String;Ljava/util/Date;Ljava/util/List;)Ljava/util/List;
    .locals 21
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

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v2, p6

    move-object/from16 v3, p7

    move-object/from16 v4, p9

    .line 851
    const-string v5, "-"

    const-string v6, "edd"

    const-string v7, "familyId"

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 854
    :try_start_0
    iget-object v9, v1, Lcom/argusoft/sewa/android/app/core/impl/RoutineImmunisationServiceImpl;->familyBeanDao:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v9}, Lcom/j256/ormlite/dao/Dao;->queryBuilder()Lcom/j256/ormlite/stmt/QueryBuilder;

    move-result-object v9

    filled-new-array {v7}, [Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/j256/ormlite/stmt/QueryBuilder;->selectColumns([Ljava/lang/String;)Lcom/j256/ormlite/stmt/QueryBuilder;

    move-result-object v9

    invoke-virtual {v9}, Lcom/j256/ormlite/stmt/QueryBuilder;->where()Lcom/j256/ormlite/stmt/Where;

    move-result-object v9
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_2

    .line 856
    const-string v10, "state"

    const/4 v11, 0x0

    if-eqz v4, :cond_0

    .line 857
    :try_start_1
    sget-object v12, Lcom/argusoft/sewa/android/app/constants/FhsConstants;->FHS_INACTIVE_CRITERIA_FAMILY_STATES:Ljava/util/List;

    invoke-virtual {v9, v10, v12}, Lcom/j256/ormlite/stmt/Where;->notIn(Ljava/lang/String;Ljava/lang/Iterable;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v12

    const-string v13, "locationId"

    .line 859
    invoke-virtual {v9, v13, v4}, Lcom/j256/ormlite/stmt/Where;->in(Ljava/lang/String;Ljava/lang/Iterable;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v13

    const-string v14, "areaId"

    .line 860
    invoke-virtual {v9, v14, v4}, Lcom/j256/ormlite/stmt/Where;->in(Ljava/lang/String;Ljava/lang/Iterable;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v4

    new-array v14, v11, [Lcom/j256/ormlite/stmt/Where;

    .line 858
    invoke-virtual {v9, v13, v4, v14}, Lcom/j256/ormlite/stmt/Where;->or(Lcom/j256/ormlite/stmt/Where;Lcom/j256/ormlite/stmt/Where;[Lcom/j256/ormlite/stmt/Where;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v4

    new-array v13, v11, [Lcom/j256/ormlite/stmt/Where;

    .line 857
    invoke-virtual {v9, v12, v4, v13}, Lcom/j256/ormlite/stmt/Where;->and(Lcom/j256/ormlite/stmt/Where;Lcom/j256/ormlite/stmt/Where;[Lcom/j256/ormlite/stmt/Where;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v4

    .line 861
    invoke-virtual {v4}, Lcom/j256/ormlite/stmt/Where;->query()Ljava/util/List;

    move-result-object v4

    goto :goto_0

    .line 863
    :cond_0
    sget-object v4, Lcom/argusoft/sewa/android/app/constants/FhsConstants;->FHS_INACTIVE_CRITERIA_FAMILY_STATES:Ljava/util/List;

    invoke-virtual {v9, v10, v4}, Lcom/j256/ormlite/stmt/Where;->notIn(Ljava/lang/String;Ljava/lang/Iterable;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v4

    invoke-virtual {v4}, Lcom/j256/ormlite/stmt/Where;->query()Ljava/util/List;

    move-result-object v4

    :goto_0
    if-eqz v4, :cond_f

    .line 867
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_1

    goto/16 :goto_4

    .line 871
    :cond_1
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 872
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/argusoft/sewa/android/app/model/FamilyBean;

    .line 873
    invoke-virtual {v12}, Lcom/argusoft/sewa/android/app/model/FamilyBean;->getFamilyId()Ljava/lang/String;

    move-result-object v12

    invoke-interface {v9, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 876
    :cond_2
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v4

    const/16 v12, -0xa

    const/4 v13, 0x2

    .line 877
    invoke-virtual {v4, v13, v12}, Ljava/util/Calendar;->add(II)V

    .line 878
    invoke-static {v4}, Lcom/argusoft/sewa/android/app/util/UtilBean;->clearTimeFromDate(Ljava/util/Calendar;)Ljava/util/Calendar;

    .line 879
    invoke-virtual {v4}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v4

    .line 880
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v12

    const/4 v14, -0x1

    .line 881
    invoke-virtual {v12, v13, v14}, Ljava/util/Calendar;->add(II)V

    .line 882
    invoke-virtual {v12}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v12

    .line 883
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 884
    iget-object v15, v1, Lcom/argusoft/sewa/android/app/core/impl/RoutineImmunisationServiceImpl;->memberBeanDao:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v15}, Lcom/j256/ormlite/dao/Dao;->queryBuilder()Lcom/j256/ormlite/stmt/QueryBuilder;

    move-result-object v15

    invoke-static/range {p2 .. p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    invoke-virtual {v15, v13}, Lcom/j256/ormlite/stmt/QueryBuilder;->limit(Ljava/lang/Long;)Lcom/j256/ormlite/stmt/QueryBuilder;

    move-result-object v13

    invoke-static/range {p4 .. p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    invoke-virtual {v13, v15}, Lcom/j256/ormlite/stmt/QueryBuilder;->offset(Ljava/lang/Long;)Lcom/j256/ormlite/stmt/QueryBuilder;

    move-result-object v13

    const/4 v15, 0x1

    invoke-virtual {v13, v6, v15}, Lcom/j256/ormlite/stmt/QueryBuilder;->orderBy(Ljava/lang/String;Z)Lcom/j256/ormlite/stmt/QueryBuilder;

    move-result-object v13

    invoke-virtual {v13}, Lcom/j256/ormlite/stmt/QueryBuilder;->where()Lcom/j256/ormlite/stmt/Where;

    move-result-object v13
    :try_end_1
    .catch Ljava/sql/SQLException; {:try_start_1 .. :try_end_1} :catch_2

    .line 886
    const-string v15, "healthIdNumber"

    const-string v11, "healthId"

    const-string v1, "curPregRegDetId"

    move-object/from16 v16, v14

    const-string v14, "lmpDate"

    move-object/from16 v17, v8

    const-string v8, "isPregnantFlag"

    move-object/from16 v18, v5

    const-string v5, "%"

    if-eqz v2, :cond_3

    move-object/from16 v19, v6

    :try_start_2
    const-string v6, "isQrCodeScan"

    invoke-virtual {v2, v6}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    move-object/from16 v20, v12

    const-string v12, "true"

    invoke-static {v6, v12}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 887
    invoke-virtual {v13, v7, v9}, Lcom/j256/ormlite/stmt/Where;->in(Ljava/lang/String;Ljava/lang/Iterable;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v0

    sget-object v3, Lcom/argusoft/sewa/android/app/constants/FhsConstants;->FHS_INACTIVE_CRITERIA_MEMBER_STATES:Ljava/util/List;

    .line 888
    invoke-virtual {v13, v10, v3}, Lcom/j256/ormlite/stmt/Where;->notIn(Ljava/lang/String;Ljava/lang/Iterable;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v3

    const/4 v6, 0x4

    new-array v6, v6, [Lcom/j256/ormlite/stmt/Where;

    sget-object v7, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 889
    invoke-virtual {v13, v8, v7}, Lcom/j256/ormlite/stmt/Where;->eq(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v7

    const/4 v8, 0x0

    aput-object v7, v6, v8

    .line 890
    invoke-virtual {v13, v14, v4}, Lcom/j256/ormlite/stmt/Where;->ge(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v4

    const/4 v7, 0x1

    aput-object v4, v6, v7

    .line 891
    invoke-virtual {v13, v1}, Lcom/j256/ormlite/stmt/Where;->isNotNull(Ljava/lang/String;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v1

    const/4 v4, 0x2

    aput-object v1, v6, v4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 892
    invoke-virtual {v2, v11}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v13, v11, v1}, Lcom/j256/ormlite/stmt/Where;->like(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 893
    invoke-virtual {v2, v15}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v13, v15, v2}, Lcom/j256/ormlite/stmt/Where;->like(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v2

    const/4 v4, 0x0

    new-array v4, v4, [Lcom/j256/ormlite/stmt/Where;

    .line 892
    invoke-virtual {v13, v1, v2, v4}, Lcom/j256/ormlite/stmt/Where;->or(Lcom/j256/ormlite/stmt/Where;Lcom/j256/ormlite/stmt/Where;[Lcom/j256/ormlite/stmt/Where;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v6, v2

    .line 887
    invoke-virtual {v13, v0, v3, v6}, Lcom/j256/ormlite/stmt/Where;->and(Lcom/j256/ormlite/stmt/Where;Lcom/j256/ormlite/stmt/Where;[Lcom/j256/ormlite/stmt/Where;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v0

    .line 894
    invoke-virtual {v0}, Lcom/j256/ormlite/stmt/Where;->query()Ljava/util/List;

    move-result-object v14

    goto/16 :goto_2

    :catch_0
    move-exception v0

    move-object/from16 v1, v17

    goto/16 :goto_5

    :cond_3
    move-object/from16 v19, v6

    move-object/from16 v20, v12

    :cond_4
    const/4 v2, 0x5

    if-eqz v3, :cond_d

    if-eqz v0, :cond_d

    .line 896
    const-string v6, "MOBILE_NUMBER"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 898
    invoke-virtual {v13, v7, v9}, Lcom/j256/ormlite/stmt/Where;->in(Ljava/lang/String;Ljava/lang/Iterable;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v3

    sget-object v6, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 899
    invoke-virtual {v13, v8, v6}, Lcom/j256/ormlite/stmt/Where;->eq(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v6

    new-array v2, v2, [Lcom/j256/ormlite/stmt/Where;

    .line 900
    invoke-virtual {v13, v14, v4}, Lcom/j256/ormlite/stmt/Where;->ge(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v4

    const/4 v7, 0x0

    aput-object v4, v2, v7

    move-object/from16 v4, v19

    move-object/from16 v12, v20

    .line 901
    invoke-virtual {v13, v4, v12}, Lcom/j256/ormlite/stmt/Where;->ge(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v4

    const/4 v7, 0x1

    aput-object v4, v2, v7

    sget-object v4, Lcom/argusoft/sewa/android/app/constants/FhsConstants;->FHS_INACTIVE_CRITERIA_MEMBER_STATES:Ljava/util/List;

    .line 902
    invoke-virtual {v13, v10, v4}, Lcom/j256/ormlite/stmt/Where;->notIn(Ljava/lang/String;Ljava/lang/Iterable;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v4

    const/4 v7, 0x2

    aput-object v4, v2, v7

    const-string v4, "mobileNumber"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 903
    invoke-interface/range {p1 .. p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v13, v4, v0}, Lcom/j256/ormlite/stmt/Where;->like(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v0

    const/4 v4, 0x3

    aput-object v0, v2, v4

    .line 904
    invoke-virtual {v13, v1}, Lcom/j256/ormlite/stmt/Where;->isNotNull(Ljava/lang/String;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v0

    const/4 v1, 0x4

    aput-object v0, v2, v1

    .line 897
    invoke-virtual {v13, v3, v6, v2}, Lcom/j256/ormlite/stmt/Where;->and(Lcom/j256/ormlite/stmt/Where;Lcom/j256/ormlite/stmt/Where;[Lcom/j256/ormlite/stmt/Where;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v0

    .line 905
    invoke-virtual {v0}, Lcom/j256/ormlite/stmt/Where;->query()Ljava/util/List;

    move-result-object v14

    goto/16 :goto_2

    :cond_5
    move-object/from16 v6, v19

    move-object/from16 v12, v20

    .line 906
    const-string v2, "MEMBER_ID"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 908
    invoke-virtual {v13, v7, v9}, Lcom/j256/ormlite/stmt/Where;->in(Ljava/lang/String;Ljava/lang/Iterable;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v2

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 909
    invoke-virtual {v13, v8, v3}, Lcom/j256/ormlite/stmt/Where;->eq(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v3

    const/4 v7, 0x5

    new-array v7, v7, [Lcom/j256/ormlite/stmt/Where;

    .line 910
    invoke-virtual {v13, v14, v4}, Lcom/j256/ormlite/stmt/Where;->ge(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v4

    const/4 v8, 0x0

    aput-object v4, v7, v8

    .line 911
    invoke-virtual {v13, v6, v12}, Lcom/j256/ormlite/stmt/Where;->ge(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v4

    const/4 v6, 0x1

    aput-object v4, v7, v6

    sget-object v4, Lcom/argusoft/sewa/android/app/constants/FhsConstants;->FHS_INACTIVE_CRITERIA_MEMBER_STATES:Ljava/util/List;

    .line 912
    invoke-virtual {v13, v10, v4}, Lcom/j256/ormlite/stmt/Where;->notIn(Ljava/lang/String;Ljava/lang/Iterable;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v4

    const/4 v6, 0x2

    aput-object v4, v7, v6

    const-string v4, "uniqueHealthId"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 913
    invoke-interface/range {p1 .. p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v13, v4, v0}, Lcom/j256/ormlite/stmt/Where;->like(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v0

    const/4 v4, 0x3

    aput-object v0, v7, v4

    .line 914
    invoke-virtual {v13, v1}, Lcom/j256/ormlite/stmt/Where;->isNotNull(Ljava/lang/String;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v0

    const/4 v1, 0x4

    aput-object v0, v7, v1

    .line 907
    invoke-virtual {v13, v2, v3, v7}, Lcom/j256/ormlite/stmt/Where;->and(Lcom/j256/ormlite/stmt/Where;Lcom/j256/ormlite/stmt/Where;[Lcom/j256/ormlite/stmt/Where;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v0

    .line 915
    invoke-virtual {v0}, Lcom/j256/ormlite/stmt/Where;->query()Ljava/util/List;

    move-result-object v14

    goto/16 :goto_2

    .line 916
    :cond_6
    const-string v2, "FAMILY_ID"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 918
    invoke-virtual {v13, v7, v9}, Lcom/j256/ormlite/stmt/Where;->in(Ljava/lang/String;Ljava/lang/Iterable;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v2

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 919
    invoke-virtual {v13, v8, v3}, Lcom/j256/ormlite/stmt/Where;->eq(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v3

    const/4 v8, 0x5

    new-array v8, v8, [Lcom/j256/ormlite/stmt/Where;

    .line 920
    invoke-virtual {v13, v14, v4}, Lcom/j256/ormlite/stmt/Where;->ge(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v4

    const/4 v9, 0x0

    aput-object v4, v8, v9

    .line 921
    invoke-virtual {v13, v6, v12}, Lcom/j256/ormlite/stmt/Where;->ge(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v4

    const/4 v6, 0x1

    aput-object v4, v8, v6

    sget-object v4, Lcom/argusoft/sewa/android/app/constants/FhsConstants;->FHS_INACTIVE_CRITERIA_MEMBER_STATES:Ljava/util/List;

    .line 922
    invoke-virtual {v13, v10, v4}, Lcom/j256/ormlite/stmt/Where;->notIn(Ljava/lang/String;Ljava/lang/Iterable;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v4

    const/4 v6, 0x2

    aput-object v4, v8, v6

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 923
    invoke-interface/range {p1 .. p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v13, v7, v0}, Lcom/j256/ormlite/stmt/Where;->like(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v0

    const/4 v4, 0x3

    aput-object v0, v8, v4

    .line 924
    invoke-virtual {v13, v1}, Lcom/j256/ormlite/stmt/Where;->isNotNull(Ljava/lang/String;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v0

    const/4 v1, 0x4

    aput-object v0, v8, v1

    .line 917
    invoke-virtual {v13, v2, v3, v8}, Lcom/j256/ormlite/stmt/Where;->and(Lcom/j256/ormlite/stmt/Where;Lcom/j256/ormlite/stmt/Where;[Lcom/j256/ormlite/stmt/Where;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v0

    .line 925
    invoke-virtual {v0}, Lcom/j256/ormlite/stmt/Where;->query()Ljava/util/List;

    move-result-object v14

    goto/16 :goto_2

    .line 926
    :cond_7
    const-string v2, "ABHA_NUMBER"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 927
    invoke-interface/range {p1 .. p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    .line 928
    invoke-interface/range {p1 .. p1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    const/16 v5, 0xe

    if-ne v3, v5, :cond_8

    .line 929
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/CharSequence;)V

    move-object/from16 v0, v18

    const/4 v3, 0x2

    invoke-virtual {v2, v3, v0}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 930
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x7

    invoke-virtual {v3, v2, v0}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 931
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v2, 0xc

    invoke-virtual {v3, v2, v0}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 934
    :cond_8
    invoke-virtual {v13, v7, v9}, Lcom/j256/ormlite/stmt/Where;->in(Ljava/lang/String;Ljava/lang/Iterable;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v0

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 935
    invoke-virtual {v13, v8, v3}, Lcom/j256/ormlite/stmt/Where;->eq(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v3

    const/4 v5, 0x5

    new-array v5, v5, [Lcom/j256/ormlite/stmt/Where;

    .line 936
    invoke-virtual {v13, v14, v4}, Lcom/j256/ormlite/stmt/Where;->ge(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v4

    const/4 v7, 0x0

    aput-object v4, v5, v7

    .line 937
    invoke-virtual {v13, v6, v12}, Lcom/j256/ormlite/stmt/Where;->ge(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v4

    const/4 v6, 0x1

    aput-object v4, v5, v6

    sget-object v4, Lcom/argusoft/sewa/android/app/constants/FhsConstants;->FHS_INACTIVE_CRITERIA_MEMBER_STATES:Ljava/util/List;

    .line 938
    invoke-virtual {v13, v10, v4}, Lcom/j256/ormlite/stmt/Where;->notIn(Ljava/lang/String;Ljava/lang/Iterable;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v4

    const/4 v6, 0x2

    aput-object v4, v5, v6

    .line 939
    invoke-virtual {v13, v1}, Lcom/j256/ormlite/stmt/Where;->isNotNull(Ljava/lang/String;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v1

    const/4 v4, 0x3

    aput-object v1, v5, v4

    .line 941
    invoke-virtual {v13, v11, v2}, Lcom/j256/ormlite/stmt/Where;->eq(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v1

    .line 942
    invoke-virtual {v13, v15, v2}, Lcom/j256/ormlite/stmt/Where;->eq(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v2

    const/4 v4, 0x0

    new-array v4, v4, [Lcom/j256/ormlite/stmt/Where;

    .line 940
    invoke-virtual {v13, v1, v2, v4}, Lcom/j256/ormlite/stmt/Where;->or(Lcom/j256/ormlite/stmt/Where;Lcom/j256/ormlite/stmt/Where;[Lcom/j256/ormlite/stmt/Where;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v5, v2

    .line 933
    invoke-virtual {v13, v0, v3, v5}, Lcom/j256/ormlite/stmt/Where;->and(Lcom/j256/ormlite/stmt/Where;Lcom/j256/ormlite/stmt/Where;[Lcom/j256/ormlite/stmt/Where;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v0

    .line 943
    invoke-virtual {v0}, Lcom/j256/ormlite/stmt/Where;->query()Ljava/util/List;

    move-result-object v14

    goto/16 :goto_2

    .line 944
    :cond_9
    const-string v2, "DOB"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 946
    invoke-virtual {v13, v7, v9}, Lcom/j256/ormlite/stmt/Where;->in(Ljava/lang/String;Ljava/lang/Iterable;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v0

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 947
    invoke-virtual {v13, v8, v2}, Lcom/j256/ormlite/stmt/Where;->eq(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v2

    const/4 v3, 0x5

    new-array v3, v3, [Lcom/j256/ormlite/stmt/Where;

    .line 948
    invoke-virtual {v13, v14, v4}, Lcom/j256/ormlite/stmt/Where;->ge(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    .line 949
    invoke-virtual {v13, v6, v12}, Lcom/j256/ormlite/stmt/Where;->ge(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v4

    const/4 v5, 0x1

    aput-object v4, v3, v5

    sget-object v4, Lcom/argusoft/sewa/android/app/constants/FhsConstants;->FHS_INACTIVE_CRITERIA_MEMBER_STATES:Ljava/util/List;

    .line 950
    invoke-virtual {v13, v10, v4}, Lcom/j256/ormlite/stmt/Where;->notIn(Ljava/lang/String;Ljava/lang/Iterable;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v4

    const/4 v5, 0x2

    aput-object v4, v3, v5

    const-string v4, "dob"

    move-object/from16 v5, p8

    .line 951
    invoke-virtual {v13, v4, v5}, Lcom/j256/ormlite/stmt/Where;->eq(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v4

    const/4 v5, 0x3

    aput-object v4, v3, v5

    .line 952
    invoke-virtual {v13, v1}, Lcom/j256/ormlite/stmt/Where;->isNotNull(Ljava/lang/String;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v1

    const/4 v4, 0x4

    aput-object v1, v3, v4

    .line 945
    invoke-virtual {v13, v0, v2, v3}, Lcom/j256/ormlite/stmt/Where;->and(Lcom/j256/ormlite/stmt/Where;Lcom/j256/ormlite/stmt/Where;[Lcom/j256/ormlite/stmt/Where;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v0

    .line 953
    invoke-virtual {v0}, Lcom/j256/ormlite/stmt/Where;->query()Ljava/util/List;

    move-result-object v14

    goto/16 :goto_2

    .line 954
    :cond_a
    const-string v2, "NAME"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 956
    invoke-virtual {v13, v7, v9}, Lcom/j256/ormlite/stmt/Where;->in(Ljava/lang/String;Ljava/lang/Iterable;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v2

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 957
    invoke-virtual {v13, v8, v3}, Lcom/j256/ormlite/stmt/Where;->eq(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v3

    const/4 v7, 0x5

    new-array v7, v7, [Lcom/j256/ormlite/stmt/Where;

    .line 958
    invoke-virtual {v13, v14, v4}, Lcom/j256/ormlite/stmt/Where;->ge(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v4

    const/4 v8, 0x0

    aput-object v4, v7, v8

    .line 959
    invoke-virtual {v13, v6, v12}, Lcom/j256/ormlite/stmt/Where;->ge(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v4

    const/4 v6, 0x1

    aput-object v4, v7, v6

    sget-object v4, Lcom/argusoft/sewa/android/app/constants/FhsConstants;->FHS_INACTIVE_CRITERIA_MEMBER_STATES:Ljava/util/List;

    .line 960
    invoke-virtual {v13, v10, v4}, Lcom/j256/ormlite/stmt/Where;->notIn(Ljava/lang/String;Ljava/lang/Iterable;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v4

    const/4 v6, 0x2

    aput-object v4, v7, v6

    .line 961
    invoke-virtual {v13, v1}, Lcom/j256/ormlite/stmt/Where;->isNotNull(Ljava/lang/String;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v1

    const/4 v4, 0x3

    aput-object v1, v7, v4

    const-string v1, "firstName"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 963
    invoke-interface/range {p1 .. p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v13, v1, v4}, Lcom/j256/ormlite/stmt/Where;->like(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v1

    const-string v4, "middleName"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 964
    invoke-interface/range {p1 .. p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v13, v4, v6}, Lcom/j256/ormlite/stmt/Where;->like(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v4

    const/4 v6, 0x1

    new-array v6, v6, [Lcom/j256/ormlite/stmt/Where;

    const-string v8, "lastName"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 965
    invoke-interface/range {p1 .. p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v13, v8, v0}, Lcom/j256/ormlite/stmt/Where;->like(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v0

    const/4 v5, 0x0

    aput-object v0, v6, v5

    .line 962
    invoke-virtual {v13, v1, v4, v6}, Lcom/j256/ormlite/stmt/Where;->or(Lcom/j256/ormlite/stmt/Where;Lcom/j256/ormlite/stmt/Where;[Lcom/j256/ormlite/stmt/Where;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v0

    const/4 v1, 0x4

    aput-object v0, v7, v1

    .line 955
    invoke-virtual {v13, v2, v3, v7}, Lcom/j256/ormlite/stmt/Where;->and(Lcom/j256/ormlite/stmt/Where;Lcom/j256/ormlite/stmt/Where;[Lcom/j256/ormlite/stmt/Where;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v0

    .line 966
    invoke-virtual {v0}, Lcom/j256/ormlite/stmt/Where;->query()Ljava/util/List;

    move-result-object v14

    goto/16 :goto_2

    .line 967
    :cond_b
    const-string v0, "LOCATION_USER"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 968
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 969
    invoke-virtual {v13, v8, v0}, Lcom/j256/ormlite/stmt/Where;->eq(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v0

    .line 970
    invoke-virtual {v13, v14, v4}, Lcom/j256/ormlite/stmt/Where;->ge(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v2

    const/4 v3, 0x3

    new-array v3, v3, [Lcom/j256/ormlite/stmt/Where;

    .line 971
    invoke-virtual {v13, v6, v12}, Lcom/j256/ormlite/stmt/Where;->ge(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    .line 972
    invoke-virtual {v13, v7, v9}, Lcom/j256/ormlite/stmt/Where;->in(Ljava/lang/String;Ljava/lang/Iterable;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v4

    const/4 v5, 0x1

    aput-object v4, v3, v5

    .line 973
    invoke-virtual {v13, v1}, Lcom/j256/ormlite/stmt/Where;->isNotNull(Ljava/lang/String;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v1

    const/4 v4, 0x2

    aput-object v1, v3, v4

    .line 968
    invoke-virtual {v13, v0, v2, v3}, Lcom/j256/ormlite/stmt/Where;->and(Lcom/j256/ormlite/stmt/Where;Lcom/j256/ormlite/stmt/Where;[Lcom/j256/ormlite/stmt/Where;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v0

    .line 974
    invoke-virtual {v0}, Lcom/j256/ormlite/stmt/Where;->query()Ljava/util/List;

    move-result-object v14

    goto :goto_2

    :cond_c
    move-object/from16 v14, v16

    goto :goto_2

    :cond_d
    move-object/from16 v6, v19

    move-object/from16 v12, v20

    .line 978
    invoke-virtual {v13, v7, v9}, Lcom/j256/ormlite/stmt/Where;->in(Ljava/lang/String;Ljava/lang/Iterable;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v0

    sget-object v2, Lcom/argusoft/sewa/android/app/constants/FhsConstants;->FHS_INACTIVE_CRITERIA_MEMBER_STATES:Ljava/util/List;

    .line 979
    invoke-virtual {v13, v10, v2}, Lcom/j256/ormlite/stmt/Where;->notIn(Ljava/lang/String;Ljava/lang/Iterable;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v2

    const/4 v3, 0x5

    new-array v3, v3, [Lcom/j256/ormlite/stmt/Where;

    const-string v5, "gender"

    const-string v7, "F"

    .line 980
    invoke-virtual {v13, v5, v7}, Lcom/j256/ormlite/stmt/Where;->eq(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v5

    const/4 v7, 0x0

    aput-object v5, v3, v7

    sget-object v5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 981
    invoke-virtual {v13, v8, v5}, Lcom/j256/ormlite/stmt/Where;->eq(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v5

    const/4 v7, 0x1

    aput-object v5, v3, v7

    .line 982
    invoke-virtual {v13, v14, v4}, Lcom/j256/ormlite/stmt/Where;->ge(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v4

    const/4 v5, 0x2

    aput-object v4, v3, v5

    .line 983
    invoke-virtual {v13, v6, v12}, Lcom/j256/ormlite/stmt/Where;->ge(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v4

    const/4 v5, 0x3

    aput-object v4, v3, v5

    .line 984
    invoke-virtual {v13, v1}, Lcom/j256/ormlite/stmt/Where;->isNotNull(Ljava/lang/String;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v1

    const/4 v4, 0x4

    aput-object v1, v3, v4

    .line 977
    invoke-virtual {v13, v0, v2, v3}, Lcom/j256/ormlite/stmt/Where;->and(Lcom/j256/ormlite/stmt/Where;Lcom/j256/ormlite/stmt/Where;[Lcom/j256/ormlite/stmt/Where;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v0

    .line 985
    invoke-virtual {v0}, Lcom/j256/ormlite/stmt/Where;->query()Ljava/util/List;

    move-result-object v14

    .line 987
    :goto_2
    invoke-interface {v14}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/argusoft/sewa/android/app/model/MemberBean;

    .line 988
    new-instance v2, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;

    invoke-direct {v2, v1}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;-><init>(Lcom/argusoft/sewa/android/app/model/MemberBean;)V
    :try_end_2
    .catch Ljava/sql/SQLException; {:try_start_2 .. :try_end_2} :catch_0

    move-object/from16 v1, v17

    :try_start_3
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catch Ljava/sql/SQLException; {:try_start_3 .. :try_end_3} :catch_1

    move-object/from16 v17, v1

    goto :goto_3

    :catch_1
    move-exception v0

    goto :goto_5

    :cond_e
    move-object/from16 v1, v17

    goto :goto_6

    :cond_f
    :goto_4
    move-object v1, v8

    return-object v1

    :catch_2
    move-exception v0

    move-object v1, v8

    .line 991
    :goto_5
    const-string v2, "RIServiceImpl"

    const/4 v3, 0x0

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_6
    return-object v1
.end method

.method public submitRIInventoryForm(Lcom/argusoft/sewa/android/app/model/RISessionInventoryBean;)V
    .locals 5

    .line 362
    :try_start_0
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/core/impl/RoutineImmunisationServiceImpl;->inventoryBeanDao:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v0, p1}, Lcom/j256/ormlite/dao/Dao;->create(Ljava/lang/Object;)I
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 364
    const-string v1, "RIServiceImpl"

    invoke-virtual {v0}, Ljava/sql/SQLException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 367
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/argusoft/sewa/android/app/transformer/SewaTransformer;->loginBean:Lcom/argusoft/sewa/android/app/model/LoginBean;

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/model/LoginBean;->getUsername()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 369
    new-instance v1, Lcom/argusoft/sewa/android/app/model/StoreAnswerBean;

    invoke-direct {v1}, Lcom/argusoft/sewa/android/app/model/StoreAnswerBean;-><init>()V

    .line 370
    const-string v2, "RI_SESSION_INVENTORY"

    invoke-virtual {v1, v2}, Lcom/argusoft/sewa/android/app/model/StoreAnswerBean;->setAnswerEntity(Ljava/lang/String;)V

    .line 371
    new-instance v3, Lcom/google/gson/Gson;

    invoke-direct {v3}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v3, p1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/argusoft/sewa/android/app/model/StoreAnswerBean;->setAnswer(Ljava/lang/String;)V

    .line 372
    invoke-virtual {v1, v0}, Lcom/argusoft/sewa/android/app/model/StoreAnswerBean;->setChecksum(Ljava/lang/String;)V

    .line 373
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/argusoft/sewa/android/app/model/StoreAnswerBean;->setDateOfMobile(Ljava/lang/Long;)V

    const-wide/16 v3, 0x0

    .line 374
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/argusoft/sewa/android/app/model/StoreAnswerBean;->setFormFilledUpTime(Ljava/lang/Long;)V

    .line 375
    const-string p1, "-1"

    invoke-virtual {v1, p1}, Lcom/argusoft/sewa/android/app/model/StoreAnswerBean;->setMorbidityAnswer(Ljava/lang/String;)V

    const-wide/16 v3, -0x1

    .line 376
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/argusoft/sewa/android/app/model/StoreAnswerBean;->setNotificationId(Ljava/lang/Long;)V

    .line 377
    sget-object v3, Lcom/argusoft/sewa/android/app/util/WSConstants;->CONTEXT_URL_TECHO:Ljava/lang/String;

    invoke-virtual {v1, v3}, Lcom/argusoft/sewa/android/app/model/StoreAnswerBean;->setRecordUrl(Ljava/lang/String;)V

    .line 378
    invoke-virtual {v1, p1}, Lcom/argusoft/sewa/android/app/model/StoreAnswerBean;->setRelatedInstance(Ljava/lang/String;)V

    .line 379
    sget-object p1, Lcom/argusoft/sewa/android/app/transformer/SewaTransformer;->loginBean:Lcom/argusoft/sewa/android/app/model/LoginBean;

    if-eqz p1, :cond_0

    .line 380
    sget-object p1, Lcom/argusoft/sewa/android/app/transformer/SewaTransformer;->loginBean:Lcom/argusoft/sewa/android/app/model/LoginBean;

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/model/LoginBean;->getUserToken()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/argusoft/sewa/android/app/model/StoreAnswerBean;->setToken(Ljava/lang/String;)V

    .line 381
    sget-object p1, Lcom/argusoft/sewa/android/app/transformer/SewaTransformer;->loginBean:Lcom/argusoft/sewa/android/app/model/LoginBean;

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/model/LoginBean;->getUserID()Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/argusoft/sewa/android/app/model/StoreAnswerBean;->setUserId(Ljava/lang/Long;)V

    .line 383
    :cond_0
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/core/impl/RoutineImmunisationServiceImpl;->sewaService:Lcom/argusoft/sewa/android/app/core/impl/SewaServiceImpl;

    invoke-virtual {p1, v1}, Lcom/argusoft/sewa/android/app/core/impl/SewaServiceImpl;->createStoreAnswerBean(Lcom/argusoft/sewa/android/app/model/StoreAnswerBean;)Ljava/lang/Integer;

    .line 385
    new-instance p1, Lcom/argusoft/sewa/android/app/model/LoggerBean;

    invoke-direct {p1}, Lcom/argusoft/sewa/android/app/model/LoggerBean;-><init>()V

    .line 386
    invoke-virtual {p1, v0}, Lcom/argusoft/sewa/android/app/model/LoggerBean;->setCheckSum(Ljava/lang/String;)V

    .line 387
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/argusoft/sewa/android/app/model/LoggerBean;->setDate(Ljava/lang/Long;)V

    .line 388
    const-string v0, "P"

    invoke-virtual {p1, v0}, Lcom/argusoft/sewa/android/app/model/LoggerBean;->setStatus(Ljava/lang/String;)V

    .line 389
    sget-object v0, Lcom/argusoft/sewa/android/app/util/WSConstants;->CONTEXT_URL_TECHO:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/argusoft/sewa/android/app/model/LoggerBean;->setRecordUrl(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 390
    invoke-virtual {p1, v0}, Lcom/argusoft/sewa/android/app/model/LoggerBean;->setNoOfAttempt(I)V

    .line 391
    const-string v0, "RI Inventory for Session"

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/argusoft/sewa/android/app/model/LoggerBean;->setBeneficiaryName(Ljava/lang/String;)V

    .line 392
    const-string v0, "RI Inventory"

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/argusoft/sewa/android/app/model/LoggerBean;->setTaskName(Ljava/lang/String;)V

    .line 393
    invoke-virtual {p1, v2}, Lcom/argusoft/sewa/android/app/model/LoggerBean;->setFormType(Ljava/lang/String;)V

    .line 394
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/core/impl/RoutineImmunisationServiceImpl;->sewaService:Lcom/argusoft/sewa/android/app/core/impl/SewaServiceImpl;

    invoke-virtual {v0, p1}, Lcom/argusoft/sewa/android/app/core/impl/SewaServiceImpl;->createLoggerBean(Lcom/argusoft/sewa/android/app/model/LoggerBean;)Ljava/lang/Integer;

    return-void
.end method

.method public submitRIInventoryReturnForm(Lcom/argusoft/sewa/android/app/model/RISessionInventoryBean;)V
    .locals 4

    .line 422
    :try_start_0
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/core/impl/RoutineImmunisationServiceImpl;->inventoryBeanDao:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v0, p1}, Lcom/j256/ormlite/dao/Dao;->update(Ljava/lang/Object;)I
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 424
    const-string v1, "RIServiceImpl"

    invoke-virtual {v0}, Ljava/sql/SQLException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 427
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/argusoft/sewa/android/app/transformer/SewaTransformer;->loginBean:Lcom/argusoft/sewa/android/app/model/LoginBean;

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/model/LoginBean;->getUsername()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 428
    new-instance v1, Lcom/argusoft/sewa/android/app/model/StoreAnswerBean;

    invoke-direct {v1}, Lcom/argusoft/sewa/android/app/model/StoreAnswerBean;-><init>()V

    .line 429
    const-string v2, "RI_SESSION_INVENTORY_RETURN"

    invoke-virtual {v1, v2}, Lcom/argusoft/sewa/android/app/model/StoreAnswerBean;->setAnswerEntity(Ljava/lang/String;)V

    .line 430
    new-instance v2, Lcom/google/gson/Gson;

    invoke-direct {v2}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v2, p1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/argusoft/sewa/android/app/model/StoreAnswerBean;->setAnswer(Ljava/lang/String;)V

    .line 431
    invoke-virtual {v1, v0}, Lcom/argusoft/sewa/android/app/model/StoreAnswerBean;->setChecksum(Ljava/lang/String;)V

    .line 432
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/argusoft/sewa/android/app/model/StoreAnswerBean;->setDateOfMobile(Ljava/lang/Long;)V

    const-wide/16 v2, 0x0

    .line 433
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/argusoft/sewa/android/app/model/StoreAnswerBean;->setFormFilledUpTime(Ljava/lang/Long;)V

    .line 434
    const-string p1, "-1"

    invoke-virtual {v1, p1}, Lcom/argusoft/sewa/android/app/model/StoreAnswerBean;->setMorbidityAnswer(Ljava/lang/String;)V

    const-wide/16 v2, -0x1

    .line 435
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/argusoft/sewa/android/app/model/StoreAnswerBean;->setNotificationId(Ljava/lang/Long;)V

    .line 436
    sget-object v2, Lcom/argusoft/sewa/android/app/util/WSConstants;->CONTEXT_URL_TECHO:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/argusoft/sewa/android/app/model/StoreAnswerBean;->setRecordUrl(Ljava/lang/String;)V

    .line 437
    invoke-virtual {v1, p1}, Lcom/argusoft/sewa/android/app/model/StoreAnswerBean;->setRelatedInstance(Ljava/lang/String;)V

    .line 438
    sget-object p1, Lcom/argusoft/sewa/android/app/transformer/SewaTransformer;->loginBean:Lcom/argusoft/sewa/android/app/model/LoginBean;

    if-eqz p1, :cond_0

    .line 439
    sget-object p1, Lcom/argusoft/sewa/android/app/transformer/SewaTransformer;->loginBean:Lcom/argusoft/sewa/android/app/model/LoginBean;

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/model/LoginBean;->getUserToken()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/argusoft/sewa/android/app/model/StoreAnswerBean;->setToken(Ljava/lang/String;)V

    .line 440
    sget-object p1, Lcom/argusoft/sewa/android/app/transformer/SewaTransformer;->loginBean:Lcom/argusoft/sewa/android/app/model/LoginBean;

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/model/LoginBean;->getUserID()Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/argusoft/sewa/android/app/model/StoreAnswerBean;->setUserId(Ljava/lang/Long;)V

    .line 442
    :cond_0
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/core/impl/RoutineImmunisationServiceImpl;->sewaService:Lcom/argusoft/sewa/android/app/core/impl/SewaServiceImpl;

    invoke-virtual {p1, v1}, Lcom/argusoft/sewa/android/app/core/impl/SewaServiceImpl;->createStoreAnswerBean(Lcom/argusoft/sewa/android/app/model/StoreAnswerBean;)Ljava/lang/Integer;

    .line 444
    new-instance p1, Lcom/argusoft/sewa/android/app/model/LoggerBean;

    invoke-direct {p1}, Lcom/argusoft/sewa/android/app/model/LoggerBean;-><init>()V

    .line 445
    invoke-virtual {p1, v0}, Lcom/argusoft/sewa/android/app/model/LoggerBean;->setCheckSum(Ljava/lang/String;)V

    .line 446
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/argusoft/sewa/android/app/model/LoggerBean;->setDate(Ljava/lang/Long;)V

    .line 447
    const-string v0, "P"

    invoke-virtual {p1, v0}, Lcom/argusoft/sewa/android/app/model/LoggerBean;->setStatus(Ljava/lang/String;)V

    .line 448
    sget-object v0, Lcom/argusoft/sewa/android/app/util/WSConstants;->CONTEXT_URL_TECHO:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/argusoft/sewa/android/app/model/LoggerBean;->setRecordUrl(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 449
    invoke-virtual {p1, v0}, Lcom/argusoft/sewa/android/app/model/LoggerBean;->setNoOfAttempt(I)V

    .line 450
    const-string v0, "RI Inventory Return after session end"

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/argusoft/sewa/android/app/model/LoggerBean;->setBeneficiaryName(Ljava/lang/String;)V

    .line 451
    const-string v0, "RI Inventory Return"

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/argusoft/sewa/android/app/model/LoggerBean;->setTaskName(Ljava/lang/String;)V

    .line 452
    const-string v0, "RI_SESSION_INVENTORY"

    invoke-virtual {p1, v0}, Lcom/argusoft/sewa/android/app/model/LoggerBean;->setFormType(Ljava/lang/String;)V

    .line 453
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/core/impl/RoutineImmunisationServiceImpl;->sewaService:Lcom/argusoft/sewa/android/app/core/impl/SewaServiceImpl;

    invoke-virtual {v0, p1}, Lcom/argusoft/sewa/android/app/core/impl/SewaServiceImpl;->createLoggerBean(Lcom/argusoft/sewa/android/app/model/LoggerBean;)Ljava/lang/Integer;

    return-void
.end method

.method public submitRIInventoryReturnFormOnline(Lcom/argusoft/sewa/android/app/model/RISessionInventoryBean;)V
    .locals 3

    .line 399
    :try_start_0
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/core/impl/RoutineImmunisationServiceImpl;->inventoryBeanDao:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v0, p1}, Lcom/j256/ormlite/dao/Dao;->update(Ljava/lang/Object;)I

    .line 400
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/core/impl/RoutineImmunisationServiceImpl;->sewaServiceRestClient:Lcom/argusoft/sewa/android/app/core/impl/SewaServiceRestClientImpl;

    invoke-virtual {v0, p1}, Lcom/argusoft/sewa/android/app/core/impl/SewaServiceRestClientImpl;->storeReturnInventoryDetailsToServer(Lcom/argusoft/sewa/android/app/model/RISessionInventoryBean;)Ljava/lang/Integer;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 401
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-lez p1, :cond_0

    .line 402
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v0, Lcom/argusoft/sewa/android/app/transformer/SewaTransformer;->loginBean:Lcom/argusoft/sewa/android/app/model/LoginBean;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/model/LoginBean;->getUsername()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 404
    new-instance v0, Lcom/argusoft/sewa/android/app/model/LoggerBean;

    invoke-direct {v0}, Lcom/argusoft/sewa/android/app/model/LoggerBean;-><init>()V

    .line 405
    invoke-virtual {v0, p1}, Lcom/argusoft/sewa/android/app/model/LoggerBean;->setCheckSum(Ljava/lang/String;)V

    .line 406
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/argusoft/sewa/android/app/model/LoggerBean;->setDate(Ljava/lang/Long;)V

    .line 407
    const-string p1, "S"

    invoke-virtual {v0, p1}, Lcom/argusoft/sewa/android/app/model/LoggerBean;->setStatus(Ljava/lang/String;)V

    .line 408
    sget-object p1, Lcom/argusoft/sewa/android/app/util/WSConstants;->CONTEXT_URL_TECHO:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/argusoft/sewa/android/app/model/LoggerBean;->setRecordUrl(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 409
    invoke-virtual {v0, p1}, Lcom/argusoft/sewa/android/app/model/LoggerBean;->setNoOfAttempt(I)V

    .line 410
    const-string p1, "RI Inventory for Online Session"

    invoke-static {p1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/argusoft/sewa/android/app/model/LoggerBean;->setBeneficiaryName(Ljava/lang/String;)V

    .line 411
    const-string p1, "RI Inventory online"

    invoke-static {p1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/argusoft/sewa/android/app/model/LoggerBean;->setTaskName(Ljava/lang/String;)V

    .line 412
    const-string p1, "RI_SESSION_INVENTORY"

    invoke-virtual {v0, p1}, Lcom/argusoft/sewa/android/app/model/LoggerBean;->setFormType(Ljava/lang/String;)V

    .line 413
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/core/impl/RoutineImmunisationServiceImpl;->sewaService:Lcom/argusoft/sewa/android/app/core/impl/SewaServiceImpl;

    invoke-virtual {p1, v0}, Lcom/argusoft/sewa/android/app/core/impl/SewaServiceImpl;->createLoggerBean(Lcom/argusoft/sewa/android/app/model/LoggerBean;)Ljava/lang/Integer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 416
    const-string v0, "RIServiceImpl"

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return-void
.end method

.method public updatePWImmunisationUsedInInventory()V
    .locals 3

    .line 457
    sget-object v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->relatedPropertyHashTable:Ljava/util/Map;

    const-string v1, "sessionId"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 458
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "null"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 461
    :cond_0
    invoke-virtual {p0, v0}, Lcom/argusoft/sewa/android/app/core/impl/RoutineImmunisationServiceImpl;->getRiInventoryBySessionId(Ljava/lang/String;)Lcom/argusoft/sewa/android/app/model/RISessionInventoryBean;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    .line 465
    :cond_1
    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/model/RISessionInventoryBean;->getTdUsed()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/argusoft/sewa/android/app/model/RISessionInventoryBean;->setTdUsed(Ljava/lang/Integer;)V

    .line 467
    :try_start_0
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/core/impl/RoutineImmunisationServiceImpl;->inventoryBeanDao:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v1, v0}, Lcom/j256/ormlite/dao/Dao;->update(Ljava/lang/Object;)I
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 469
    const-string v1, "RIServiceImpl"

    invoke-virtual {v0}, Ljava/sql/SQLException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_2
    :goto_0
    return-void
.end method
