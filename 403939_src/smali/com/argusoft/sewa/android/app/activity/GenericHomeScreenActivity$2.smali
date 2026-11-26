.class Lcom/argusoft/sewa/android/app/activity/GenericHomeScreenActivity$2;
.super Ljava/lang/Object;
.source "GenericHomeScreenActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/argusoft/sewa/android/app/activity/GenericHomeScreenActivity;->checkNetworkAvailability()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/argusoft/sewa/android/app/activity/GenericHomeScreenActivity;


# direct methods
.method constructor <init>(Lcom/argusoft/sewa/android/app/activity/GenericHomeScreenActivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 468
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/GenericHomeScreenActivity$2;->this$0:Lcom/argusoft/sewa/android/app/activity/GenericHomeScreenActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 0

    .line 471
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/GenericHomeScreenActivity$2;->this$0:Lcom/argusoft/sewa/android/app/activity/GenericHomeScreenActivity;

    iget-object p1, p1, Lcom/argusoft/sewa/android/app/activity/GenericHomeScreenActivity;->alertDialog:Lcom/argusoft/sewa/android/app/component/MyAlertDialog;

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/component/MyAlertDialog;->dismiss()V

    return-void
.end method
