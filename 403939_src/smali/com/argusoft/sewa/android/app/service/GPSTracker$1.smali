.class Lcom/argusoft/sewa/android/app/service/GPSTracker$1;
.super Ljava/lang/Object;
.source "GPSTracker.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/argusoft/sewa/android/app/service/GPSTracker;->showSettingsAlert(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/argusoft/sewa/android/app/service/GPSTracker;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/argusoft/sewa/android/app/service/GPSTracker;Landroid/content/Context;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 111
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/service/GPSTracker$1;->this$0:Lcom/argusoft/sewa/android/app/service/GPSTracker;

    iput-object p2, p0, Lcom/argusoft/sewa/android/app/service/GPSTracker$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 115
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/service/GPSTracker$1;->this$0:Lcom/argusoft/sewa/android/app/service/GPSTracker;

    invoke-static {p1}, Lcom/argusoft/sewa/android/app/service/GPSTracker;->access$000(Lcom/argusoft/sewa/android/app/service/GPSTracker;)Lcom/argusoft/sewa/android/app/component/MyAlertDialog;

    move-result-object p1

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/component/MyAlertDialog;->dismiss()V

    .line 116
    new-instance p1, Landroid/content/Intent;

    const-string v0, "android.settings.LOCATION_SOURCE_SETTINGS"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 117
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/service/GPSTracker$1;->val$context:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    const/16 v1, 0x6f

    invoke-virtual {v0, p1, v1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method
