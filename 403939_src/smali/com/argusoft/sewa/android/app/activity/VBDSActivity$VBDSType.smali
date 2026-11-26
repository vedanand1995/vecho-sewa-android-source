.class final enum Lcom/argusoft/sewa/android/app/activity/VBDSActivity$VBDSType;
.super Ljava/lang/Enum;
.source "VBDSActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/argusoft/sewa/android/app/activity/VBDSActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "VBDSType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/argusoft/sewa/android/app/activity/VBDSActivity$VBDSType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/argusoft/sewa/android/app/activity/VBDSActivity$VBDSType;

.field public static final enum ANTILARVAL_ACTIVITIES:Lcom/argusoft/sewa/android/app/activity/VBDSActivity$VBDSType;

.field public static final enum ANTI_VECTOR_INTERVENTIONS:Lcom/argusoft/sewa/android/app/activity/VBDSActivity$VBDSType;

.field public static final enum OTHER_ACTIVITY:Lcom/argusoft/sewa/android/app/activity/VBDSActivity$VBDSType;

.field public static final enum PARADOMESTIC_ANTILARVAL_ACTIVITIES:Lcom/argusoft/sewa/android/app/activity/VBDSActivity$VBDSType;

.field public static final enum SLIDE_COLLECTION:Lcom/argusoft/sewa/android/app/activity/VBDSActivity$VBDSType;

.field public static final enum TPT_EVALUATION:Lcom/argusoft/sewa/android/app/activity/VBDSActivity$VBDSType;

.field public static final enum WATER_QUALITY_MONITORING:Lcom/argusoft/sewa/android/app/activity/VBDSActivity$VBDSType;


# instance fields
.field private final activityClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private final formType:Ljava/lang/String;

.field private final label:Ljava/lang/String;

.field private final memberBased:Z


# direct methods
.method private static synthetic $values()[Lcom/argusoft/sewa/android/app/activity/VBDSActivity$VBDSType;
    .locals 3

    const/4 v0, 0x7

    .line 435
    new-array v0, v0, [Lcom/argusoft/sewa/android/app/activity/VBDSActivity$VBDSType;

    sget-object v1, Lcom/argusoft/sewa/android/app/activity/VBDSActivity$VBDSType;->WATER_QUALITY_MONITORING:Lcom/argusoft/sewa/android/app/activity/VBDSActivity$VBDSType;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/argusoft/sewa/android/app/activity/VBDSActivity$VBDSType;->ANTILARVAL_ACTIVITIES:Lcom/argusoft/sewa/android/app/activity/VBDSActivity$VBDSType;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/argusoft/sewa/android/app/activity/VBDSActivity$VBDSType;->SLIDE_COLLECTION:Lcom/argusoft/sewa/android/app/activity/VBDSActivity$VBDSType;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lcom/argusoft/sewa/android/app/activity/VBDSActivity$VBDSType;->PARADOMESTIC_ANTILARVAL_ACTIVITIES:Lcom/argusoft/sewa/android/app/activity/VBDSActivity$VBDSType;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lcom/argusoft/sewa/android/app/activity/VBDSActivity$VBDSType;->ANTI_VECTOR_INTERVENTIONS:Lcom/argusoft/sewa/android/app/activity/VBDSActivity$VBDSType;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sget-object v1, Lcom/argusoft/sewa/android/app/activity/VBDSActivity$VBDSType;->TPT_EVALUATION:Lcom/argusoft/sewa/android/app/activity/VBDSActivity$VBDSType;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sget-object v1, Lcom/argusoft/sewa/android/app/activity/VBDSActivity$VBDSType;->OTHER_ACTIVITY:Lcom/argusoft/sewa/android/app/activity/VBDSActivity$VBDSType;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 17

    .line 436
    new-instance v6, Lcom/argusoft/sewa/android/app/activity/VBDSActivity$VBDSType;

    const-string v4, "VBDS_WATER_QUALITY_MONITORING"

    const/4 v5, 0x0

    const-string v1, "WATER_QUALITY_MONITORING"

    const/4 v2, 0x0

    const-string v3, "Water Quality Monitoring"

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/argusoft/sewa/android/app/activity/VBDSActivity$VBDSType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Z)V

    sput-object v6, Lcom/argusoft/sewa/android/app/activity/VBDSActivity$VBDSType;->WATER_QUALITY_MONITORING:Lcom/argusoft/sewa/android/app/activity/VBDSActivity$VBDSType;

    .line 437
    new-instance v0, Lcom/argusoft/sewa/android/app/activity/VBDSActivity$VBDSType;

    const-string v11, "VBDS_ANTILARVAL_ACTIVITIES"

    const/4 v12, 0x0

    const-string v8, "ANTILARVAL_ACTIVITIES"

    const/4 v9, 0x1

    const-string v10, "Intradomestic Antilarval Activities"

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lcom/argusoft/sewa/android/app/activity/VBDSActivity$VBDSType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Z)V

    sput-object v0, Lcom/argusoft/sewa/android/app/activity/VBDSActivity$VBDSType;->ANTILARVAL_ACTIVITIES:Lcom/argusoft/sewa/android/app/activity/VBDSActivity$VBDSType;

    .line 438
    new-instance v0, Lcom/argusoft/sewa/android/app/activity/VBDSActivity$VBDSType;

    const-string v1, "Slide Collection"

    const-class v2, Lcom/argusoft/sewa/android/app/activity/LabTestScreeningActivity_;

    const-string v3, "SLIDE_COLLECTION"

    const/4 v4, 0x2

    invoke-direct {v0, v3, v4, v1, v2}, Lcom/argusoft/sewa/android/app/activity/VBDSActivity$VBDSType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Class;)V

    sput-object v0, Lcom/argusoft/sewa/android/app/activity/VBDSActivity$VBDSType;->SLIDE_COLLECTION:Lcom/argusoft/sewa/android/app/activity/VBDSActivity$VBDSType;

    .line 439
    new-instance v0, Lcom/argusoft/sewa/android/app/activity/VBDSActivity$VBDSType;

    const-string v9, "VBDS_ANTILARVAL_ACTIVITIES"

    const/4 v10, 0x0

    const-string v6, "PARADOMESTIC_ANTILARVAL_ACTIVITIES"

    const/4 v7, 0x3

    const-string v8, "Paradomestic Antilarval Activities"

    move-object v5, v0

    invoke-direct/range {v5 .. v10}, Lcom/argusoft/sewa/android/app/activity/VBDSActivity$VBDSType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Z)V

    sput-object v0, Lcom/argusoft/sewa/android/app/activity/VBDSActivity$VBDSType;->PARADOMESTIC_ANTILARVAL_ACTIVITIES:Lcom/argusoft/sewa/android/app/activity/VBDSActivity$VBDSType;

    .line 440
    new-instance v0, Lcom/argusoft/sewa/android/app/activity/VBDSActivity$VBDSType;

    const-string v15, "VBDS_ANTI_VECTOR_INTERVENTIONS"

    const/16 v16, 0x0

    const-string v12, "ANTI_VECTOR_INTERVENTIONS"

    const/4 v13, 0x4

    const-string v14, "Anti-vector Interventions"

    move-object v11, v0

    invoke-direct/range {v11 .. v16}, Lcom/argusoft/sewa/android/app/activity/VBDSActivity$VBDSType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Z)V

    sput-object v0, Lcom/argusoft/sewa/android/app/activity/VBDSActivity$VBDSType;->ANTI_VECTOR_INTERVENTIONS:Lcom/argusoft/sewa/android/app/activity/VBDSActivity$VBDSType;

    .line 441
    new-instance v0, Lcom/argusoft/sewa/android/app/activity/VBDSActivity$VBDSType;

    const-string v5, "VBDS_TPT_EVALUATION"

    const/4 v6, 0x1

    const-string v2, "TPT_EVALUATION"

    const/4 v3, 0x5

    const-string v4, "TPT Evaluation"

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/argusoft/sewa/android/app/activity/VBDSActivity$VBDSType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Z)V

    sput-object v0, Lcom/argusoft/sewa/android/app/activity/VBDSActivity$VBDSType;->TPT_EVALUATION:Lcom/argusoft/sewa/android/app/activity/VBDSActivity$VBDSType;

    .line 442
    new-instance v0, Lcom/argusoft/sewa/android/app/activity/VBDSActivity$VBDSType;

    const-string v11, "VBDS_ANTILARVAL_ACTIVITIES"

    const/4 v12, 0x0

    const-string v8, "OTHER_ACTIVITY"

    const/4 v9, 0x6

    const-string v10, "Other Activity"

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lcom/argusoft/sewa/android/app/activity/VBDSActivity$VBDSType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Z)V

    sput-object v0, Lcom/argusoft/sewa/android/app/activity/VBDSActivity$VBDSType;->OTHER_ACTIVITY:Lcom/argusoft/sewa/android/app/activity/VBDSActivity$VBDSType;

    .line 435
    invoke-static {}, Lcom/argusoft/sewa/android/app/activity/VBDSActivity$VBDSType;->$values()[Lcom/argusoft/sewa/android/app/activity/VBDSActivity$VBDSType;

    move-result-object v0

    sput-object v0, Lcom/argusoft/sewa/android/app/activity/VBDSActivity$VBDSType;->$VALUES:[Lcom/argusoft/sewa/android/app/activity/VBDSActivity$VBDSType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Class;)V
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000,
            0x0,
            0x0
        }
        names = {
            null,
            null,
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v6, p4

    .line 454
    invoke-direct/range {v0 .. v6}, Lcom/argusoft/sewa/android/app/activity/VBDSActivity$VBDSType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ZLjava/lang/Class;)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Z)V
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000,
            0x0,
            0x0,
            0x0
        }
        names = {
            null,
            null,
            null,
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z)V"
        }
    .end annotation

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    .line 450
    invoke-direct/range {v0 .. v6}, Lcom/argusoft/sewa/android/app/activity/VBDSActivity$VBDSType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ZLjava/lang/Class;)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ZLjava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            null,
            null,
            null,
            null,
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 457
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 458
    iput-object p3, p0, Lcom/argusoft/sewa/android/app/activity/VBDSActivity$VBDSType;->label:Ljava/lang/String;

    .line 459
    iput-object p4, p0, Lcom/argusoft/sewa/android/app/activity/VBDSActivity$VBDSType;->formType:Ljava/lang/String;

    .line 460
    iput-boolean p5, p0, Lcom/argusoft/sewa/android/app/activity/VBDSActivity$VBDSType;->memberBased:Z

    .line 461
    iput-object p6, p0, Lcom/argusoft/sewa/android/app/activity/VBDSActivity$VBDSType;->activityClass:Ljava/lang/Class;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/argusoft/sewa/android/app/activity/VBDSActivity$VBDSType;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            null
        }
    .end annotation

    .line 435
    const-class v0, Lcom/argusoft/sewa/android/app/activity/VBDSActivity$VBDSType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/argusoft/sewa/android/app/activity/VBDSActivity$VBDSType;

    return-object p0
.end method

.method public static values()[Lcom/argusoft/sewa/android/app/activity/VBDSActivity$VBDSType;
    .locals 1

    .line 435
    sget-object v0, Lcom/argusoft/sewa/android/app/activity/VBDSActivity$VBDSType;->$VALUES:[Lcom/argusoft/sewa/android/app/activity/VBDSActivity$VBDSType;

    invoke-virtual {v0}, [Lcom/argusoft/sewa/android/app/activity/VBDSActivity$VBDSType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/argusoft/sewa/android/app/activity/VBDSActivity$VBDSType;

    return-object v0
.end method


# virtual methods
.method public getActivityClass()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 477
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/VBDSActivity$VBDSType;->activityClass:Ljava/lang/Class;

    return-object v0
.end method

.method public getFormType()Ljava/lang/String;
    .locals 1

    .line 469
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/VBDSActivity$VBDSType;->formType:Ljava/lang/String;

    return-object v0
.end method

.method public getLabel()Ljava/lang/String;
    .locals 1

    .line 465
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/VBDSActivity$VBDSType;->label:Ljava/lang/String;

    return-object v0
.end method

.method public isMemberBased()Z
    .locals 1

    .line 473
    iget-boolean v0, p0, Lcom/argusoft/sewa/android/app/activity/VBDSActivity$VBDSType;->memberBased:Z

    return v0
.end method
