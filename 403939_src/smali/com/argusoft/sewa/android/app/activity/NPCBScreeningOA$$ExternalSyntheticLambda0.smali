.class public final synthetic Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/text/InputFilter;


# instance fields
.field public final synthetic f$0:Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA;


# direct methods
.method public synthetic constructor <init>(Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA$$ExternalSyntheticLambda0;->f$0:Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA;

    return-void
.end method


# virtual methods
.method public final filter(Ljava/lang/CharSequence;IILandroid/text/Spanned;II)Ljava/lang/CharSequence;
    .locals 7

    .line 0
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA$$ExternalSyntheticLambda0;->f$0:Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move v5, p5

    move v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/argusoft/sewa/android/app/activity/NPCBScreeningOA;->lambda$applyDetailsSearchInput$12$com-argusoft-sewa-android-app-activity-NPCBScreeningOA(Ljava/lang/CharSequence;IILandroid/text/Spanned;II)Ljava/lang/CharSequence;

    move-result-object p1

    return-object p1
.end method
