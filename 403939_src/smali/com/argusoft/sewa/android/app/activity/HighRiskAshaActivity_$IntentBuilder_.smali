.class public Lcom/argusoft/sewa/android/app/activity/HighRiskAshaActivity_$IntentBuilder_;
.super Lorg/androidannotations/api/builder/ActivityIntentBuilder;
.source "HighRiskAshaActivity_.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/argusoft/sewa/android/app/activity/HighRiskAshaActivity_;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "IntentBuilder_"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/androidannotations/api/builder/ActivityIntentBuilder<",
        "Lcom/argusoft/sewa/android/app/activity/HighRiskAshaActivity_$IntentBuilder_;",
        ">;"
    }
.end annotation


# instance fields
.field private fragmentSupport_:Landroidx/fragment/app/Fragment;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 217
    const-class v0, Lcom/argusoft/sewa/android/app/activity/HighRiskAshaActivity_;

    invoke-direct {p0, p1, v0}, Lorg/androidannotations/api/builder/ActivityIntentBuilder;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    return-void
.end method

.method public constructor <init>(Landroidx/fragment/app/Fragment;)V
    .locals 2

    .line 221
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const-class v1, Lcom/argusoft/sewa/android/app/activity/HighRiskAshaActivity_;

    invoke-direct {p0, v0, v1}, Lorg/androidannotations/api/builder/ActivityIntentBuilder;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 222
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/HighRiskAshaActivity_$IntentBuilder_;->fragmentSupport_:Landroidx/fragment/app/Fragment;

    return-void
.end method


# virtual methods
.method public startForResult(I)Lorg/androidannotations/api/builder/PostActivityStarter;
    .locals 3

    .line 227
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/HighRiskAshaActivity_$IntentBuilder_;->fragmentSupport_:Landroidx/fragment/app/Fragment;

    if-eqz v0, :cond_0

    .line 228
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/HighRiskAshaActivity_$IntentBuilder_;->intent:Landroid/content/Intent;

    invoke-virtual {v0, v1, p1}, Landroidx/fragment/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 230
    :cond_0
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/HighRiskAshaActivity_$IntentBuilder_;->context:Landroid/content/Context;

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_1

    .line 231
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/HighRiskAshaActivity_$IntentBuilder_;->context:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    .line 232
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/HighRiskAshaActivity_$IntentBuilder_;->intent:Landroid/content/Intent;

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/HighRiskAshaActivity_$IntentBuilder_;->lastOptions:Landroid/os/Bundle;

    invoke-static {v0, v1, p1, v2}, Landroidx/core/app/ActivityCompat;->startActivityForResult(Landroid/app/Activity;Landroid/content/Intent;ILandroid/os/Bundle;)V

    goto :goto_0

    .line 234
    :cond_1
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/HighRiskAshaActivity_$IntentBuilder_;->context:Landroid/content/Context;

    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/HighRiskAshaActivity_$IntentBuilder_;->intent:Landroid/content/Intent;

    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 237
    :goto_0
    new-instance p1, Lorg/androidannotations/api/builder/PostActivityStarter;

    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/HighRiskAshaActivity_$IntentBuilder_;->context:Landroid/content/Context;

    invoke-direct {p1, v0}, Lorg/androidannotations/api/builder/PostActivityStarter;-><init>(Landroid/content/Context;)V

    return-object p1
.end method
